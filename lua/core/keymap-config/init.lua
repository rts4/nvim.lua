local map = vim.keymap.set
local opts = { noremap = true, silent = true }

vim.g.mapleader = " " -- leader key

--#region plugin maps
--> main keymaps <--
map("n", "<leader>nh", ":nohl<CR>", opts)
map("n", "<leader>+", "<C-a>", opts)
map("n", "<leader>-", "<C-x>", opts)
map("n", "<leader>sv", "<C-w>v", opts)
map("n", "<leader>sh", "<C-w>s", opts)
map("n", "<leader>se", "<C-w>=", opts)
map("n", "<leader>sx", ":close<CR>", opts)
--> truezen <--
map("n", "<leader>za", ":TZAtaraxis<CR>", {})
map("n", "<leader>zm", ":TZMinimalist<CR>", {})
--> nvim tree mappings <--
map("n", "<leader>n", ":NvimTreeToggle<CR>", opts)
map("n", "<leader>gn", ":NvimTreeFocus<CR>", opts)
--> telescope mappings <--
map("n", "<leader>ff", ":Telescope find_files<CR>", opts)
map("n", "<leader>fg", ":Telescope live_grep<CR>", opts)
map("n", "<leader>fn", ":Telescope notify<CR>", opts)
map("n", "<leader>fc", ":Telescope neoclip<CR>", opts)
map("n", "<leader>fb", ":Telescope file_browser<CR>", opts)
--> lazygit <--
map("n", "<leader>gg", ":LazyGit<CR>", opts)
map("n", "<leader>gt", ':lua require("telescope").extensions.lazygit.lazygit()<CR>', opts)
--> gitsigns <--
map("n", "<leader>hp", ":Gitsigns preview_hunk<CR>", opts)
map({ "n", "v" }, "<leader>hs", ":Gitsigns stage_hunk<CR>", opts)
map({ "n", "v" }, "<leader>hr", ":Gitsigns reset_hunk<CR>", opts)
map("n", "<leader>hu", ":Gitsigns undo_stage_hunk<CR>", opts)
--> barbar mappings <--
map("n", "<A-,>", ":BufferPrevious<CR>", opts)
map("n", "<A-.>", ":BufferNext<CR>", opts)
map("n", "<A-<>", ":BufferMovePrevious<CR>", opts)
map("n", "<A->>", ":BufferMoveNext<CR>", opts)
map("n", "<A-1>", ":BufferGoto 1<CR>", opts)
map("n", "<A-2>", ":BufferGoto 2<CR>", opts)
map("n", "<A-3>", ":BufferGoto 3<CR>", opts)
map("n", "<A-4>", ":BufferGoto 4<CR>", opts)
map("n", "<A-5>", ":BufferGoto 5<CR>", opts)
map("n", "<A-6>", ":BufferGoto 6<CR>", opts)
map("n", "<A-7>", ":BufferGoto 7<CR>", opts)
map("n", "<A-8>", ":BufferGoto 8<CR>", opts)
map("n", "<A-9>", ":BufferGoto 9<CR>", opts)
map("n", "<A-0>", ":BufferLast<CR>", opts)
map("n", "<A-c>", ":BufferClose<CR>", opts)
map("n", "<A-t>", ":tabnew<CR>", opts)
map("n", "<C-p>", ":BufferPick<CR>", opts)
map("n", "<leader>bb", ":BufferOrderByBufferNumber<CR>", opts)
map("n", "<leader>bd", ":BufferOrderByDirectory<CR>", opts)
map("n", "<leader>bl", ":BufferOrderByLanguage<CR>", opts)
--> trouble mappings <--
map("n", "<leader>tt", ":Trouble<CR>", opts)
--> dap <--
map("n", "<leader>tb", ':lua require("dap").toggle_breakpoint()<CR>', opts)
map("n", "<leader>so", ':lua require("dap").step_over()<CR>', opts)
map("n", "<leader>si", ':lua require("dap").step_into()<CR>', opts)
map("n", "<leader>dd", ':lua require("dapui").toggle()<CR>', opts)
--> mind <--
map("n", "<leader>mo", ":MindOpenMain<CR>", opts)
map("n", "<leader>mr", ":MindReloadState<CR>", opts)
map("n", "<leader>mc", ":MindClose<CR>", opts)
--> lspsaga <--
map({ "n", "v" }, "<leader>ca", ":Lspsaga code_action<CR>", opts)
map("n", "<leader>gh", ":Lspsaga lsp_finder<CR>", opts)
map("n", "<leader>gr", ":Lspsaga rename<CR>", opts)
map("n", "<leader>sl", ":Lspsaga show_line_diagnostics<CR>", opts)
map("n", "<leader>go", ":Lspsaga outline<CR>", opts)
--#endregion
--#region other maps
--> super duper fancy notifier featuring your current date time !!!!!!!!!!!!!!!!!!! <--
map("n", "<leader>dt", ":lua require('core.functions').notify_c_time()<CR>", opts)
--> clear notification history <--
map("n", "<leader>cn", ":lua require('core.functions').clear_notify_history()<CR>", opts)
--#endregion
