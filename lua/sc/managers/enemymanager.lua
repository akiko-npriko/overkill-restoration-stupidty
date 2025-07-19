--dofile(ModPath .. "core.lua")

function EnemyManager:start_autumn_blackout()
	--deprecated
	restoration.log_shit("SC: HEY YOU!!!!!!!!!!!! YOU CALLED EnemyManager:start_autumn_blackout(), DON'T DO THAT!! use groupaistate:do_blackout(true) or related functions instead!")
end

function EnemyManager:end_autumn_blackout()
	--deprecated
	restoration.log_shit("SC: HEY YOU!!!!!!!!!!!! YOU CALLED EnemyManager:end_autumn_blackout(), DON'T DO THAT!! use groupaistate:do_blackout(false) or related functions instead!")
end

--Stuff for mutators
Hooks:PostHook(EnemyManager, "on_enemy_died", "ResOnEnemyDied", function(self, dead_unit, damage_info)
	if Network:is_server() and managers.mutators:is_mutator_active(MutatorBirthday) and dead_unit:base():has_tag("special") and managers.mutators:is_mutator_active(MutatorBirthday) then
		local birthday_mutator = managers.mutators:get_mutator(MutatorBirthday)

		birthday_mutator:on_special_killed(dead_unit)
	end
	
	if managers.mutators:is_mutator_active(MutatorCG22) and dead_unit:base():has_tag("snowman") then
		local cg22_mutator = managers.mutators:get_mutator(MutatorCG22)

		cg22_mutator:on_snowman_killed(dead_unit, damage_info)
	end
	
	if managers.mutators:is_mutator_active(MutatorPiggyRevenge) then
		local piggyrevenge_mutator = managers.mutators:get_mutator(MutatorPiggyRevenge)

		if Network:is_server() and piggyrevenge_mutator:can_spawn_bag() then
			piggyrevenge_mutator:on_enemy_killed(dead_unit, damage_info)
		end

		if dead_unit:base():has_tag("eventboss") then
			piggyrevenge_mutator:on_boss_killed(dead_unit, damage_info)
		end
	end
	
end)

function EnemyManager:reindex_tasks()
    local new_tasks_tbl = {}
    for i=1,#self._queued_tasks do
        local v = self._queued_tasks[i]
        if not v.was_executed then
            table.insert(new_tasks_tbl, v)
        end
    end
    self._queued_tasks = new_tasks_tbl
end

function EnemyManager:_update_queued_tasks(t, dt)
    local tasks_executed = 0

    -- Get the max task allowance for this frame
    --local max_tasks_this_frame = math.ceil(ThinkFaster.current_throughput * dt)
	local max_tasks_this_frame = math.ceil(500 * dt)

    -- Instead of breaking the loop when the default tickrate is reached, go up to n tasks per second. Waiting tasks don't count.
    -- Also don't use ipairs for performance-critical stuff, rawdog it with a for-loop

    -- DON'T use a "while tasks, do tasks" pattern. The majority of tasks will actually add more tasks to the queue when executed.
    -- Overkill intended for these to be handled one frame later.
    -- So don't do "while task do task", only go as far as the initial queue size
    -- (Or as far as the task allowance for this frame, whichever is smaller)
    -- If you handle them on the same frame that they were added, you may experience occasional crashes, with the crash log blaming a vanilla function somewhere.
    for i=1, #self._queued_tasks do
        local task_data = self._queued_tasks[i]

        if not task_data.t or task_data.t < t then
            self:_execute_queued_task(i)
            tasks_executed = tasks_executed + 1
        elseif task_data.asap then
            self:_execute_queued_task(i)
            tasks_executed = tasks_executed + 1
        end

        -- If we reached the max allowance, stop
        if tasks_executed > max_tasks_this_frame then
            break
        end

        i = i + 1
    end

	local all_clbks = self._delayed_clbks

	if all_clbks[1] and all_clbks[1][2] < t then
		local clbk = table.remove(all_clbks, 1)[3]

		clbk()
    end
    
    -- Clean up done tasks from the queue while preserving queue order
    -- The order of the task queue is EXTREMELY important, and pairs() and next() cannot guarantee ordering,
    -- while ipairs doesn't work nicely with nil values.
    -- So therefore, the only solution is to set a "done" flag on the task itself,
    -- then make a new table containing only the "not done" tasks and replace the queue with it.
    -- Vanilla uses table.remove but this is extremely slow, this was proven with a benchmark
    self:reindex_tasks()
end

-- Same as vanilla but no table.remove, that function is super super slow
function EnemyManager:_execute_queued_task(i)
    local task = self._queued_tasks[i]
    if task.was_executed then
        -- This happens if a task was canceled/unqueued, don't worry about it
        return
    end

    task.was_executed = true
    
	self._queued_task_executed = true

	if task.v_cb then
		task.v_cb(task.id)
	end

    task.clbk(task.data)
end

-- No table.remove
function EnemyManager:unqueue_task(id)
	local tasks = self._queued_tasks
	local i = #tasks

	while i > 0 do
		if tasks[i].id == id then
			tasks[i].was_executed = true
			return
		end

		i = i - 1
	end
end
