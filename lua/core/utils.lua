local Job = require("plenary.job")

local M = {}

function M.is_buffer_empty()
	return vim.fn.empty(vim.fn.expand("%:t")) == 1
end

function M.has_width_gt(cols)
	return vim.fn.winwidth(0) / 2 > cols
end

function M.get_os_command_output(cmd, cwd)
	if type(cmd) ~= "table" then
		print("utils (get_os_command_output): cmd must be a table")
		return {}
	end
	local command = table.remove(cmd, 1)
	local stderr = {}
	local stdout, ret = Job:new({
		command = command,
		args = cmd,
		cwd = cwd,
		on_stderr = function(_, data)
			table.insert(stderr, data)
		end,
	}):sync()
	return stdout, ret, stderr
end

return M
