local Job = require("plenary.job")
local utils = require("core.utils")

local M = {}

function M.notify_c_time()
	local datetime = vim.fn.strftime("%c")
	require("notify")("Current time: " .. datetime, "info", { title = "Time" })
end

function M.clear_notify_history()
	local choice = vim.fn.confirm("Clear notification history?", "&Yes\n&No")
	if choice == 1 then
		R("notify")
		print("Cleared notification history")
	else
		print("Cancelled")
	end
end

return M
