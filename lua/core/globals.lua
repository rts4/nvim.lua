P = function(v)
	print(vim.inspect(v))
	return v
end

DN = function(v, cm)
	local time = os.date("%H:%M")
	local context_msg = cm or " "
	local msg = context_msg .. " " .. time
	vim.notify(vim.inspect(v), "debug", { title = { "Debug Output", msg } })
	return v
end
