-- Direcory Navigation
vim.keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>", { noremap = true, silent = true })

-- Set goto end of line to gl
vim.keymap.set("n", "gl", "$", { noremap = true, silent = true })
vim.keymap.set("v", "gl", "$", { noremap = true, silent = true })
-- Set goto start of line to gh
vim.keymap.set("n", "gh", "0", { noremap = true, silent = true })
vim.keymap.set("v", "gh", "0", { noremap = true, silent = true })

-- Buffer navigation
vim.api.nvim_set_keymap("n", "<leader>p", ":bprevious<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>n", ":bnext<CR>", { noremap = true, silent = true })

-- Split pane shortcut
vim.keymap.set("n", "<leader>sh", ":split<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>sv", ":vsplit<CR>", { noremap = true, silent = true })

-- Pane navigation
vim.keymap.set("n", "<C-h>", "<C-w>h", { noremap = true, silent = true }) -- navigate left
vim.keymap.set("n", "<C-j>", "<C-w>j", { noremap = true, silent = true }) -- navigate down
vim.keymap.set("n", "<C-k>", "<C-w>k", { noremap = true, silent = true }) -- navigate up
vim.keymap.set("n", "<C-l>", "<C-w>l", { noremap = true, silent = true }) -- navigate right

-- map keys for numeric navigation between tabs
vim.api.nvim_set_keymap("n", "<Leader>1", ":tabnext 1<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<Leader>2", ":tabnext 2<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<Leader>3", ":tabnext 3<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<Leader>4", ":tabnext 4<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<Leader>5", ":tabnext 5<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<Leader>6", ":tabnext 6<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<Leader>7", ":tabnext 7<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<Leader>8", ":tabnext 8<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<Leader>9", ":tabnext 9<CR>", { noremap = true, silent = true })

-- Indenting
vim.keymap.set("v", "<", "<gv")
vim.keymap.set("v", ">", ">gv")

-- Comment plugin
vim.api.nvim_set_keymap("n", "<leader>ac", "gcc", { noremap = false })
vim.api.nvim_set_keymap("v", "<leader>ac", "gcc", { noremap = false })
vim.api.nvim_set_keymap("n", "<leader>bc", "gbc", { noremap = false })
vim.api.nvim_set_keymap("v", "<leader>bc", "gbc", { noremap = false })

-- work around to format on save for javascript
vim.api.nvim_set_keymap(
	"n",
	"<leader>jsf",
	":!npx standard --fix %<CR>:set autoread<<CR>",
	{ noremap = true, silent = true }
)

-- Harpoon keymaps
-- harpoon ui / menu
vim.api.nvim_set_keymap(
	"n",
	"<Leader>hui",
	':lua require("harpoon.ui").toggle_quick_menu()<CR>',
	{ noremap = true, silent = true }
)
--harpoon add file / mark file
vim.api.nvim_set_keymap(
	"n",
	"<Leader>hm",
	':lua require("harpoon.mark").add_file()<CR>',
	{ noremap = true, silent = true }
)
-- harpoon next mark
vim.api.nvim_set_keymap(
	"n",
	"<Leader>hn",
	':lua require("harpoon.ui").nav_next()<CR>',
	{ noremap = true, silent = true }
)
-- harpoon prev mark
vim.api.nvim_set_keymap(
	"n",
	"<Leader>hp",
	':lua require("harpoon.ui").nav_prev()<CR>',
	{ noremap = true, silent = true }
)
-- harpoon goto index 1
vim.api.nvim_set_keymap(
	"n",
	"<Leader>h1",
	':lua require("harpoon.ui").nav_file(1)<CR>',
	{ noremap = true, silent = true }
) -- harpoon goto index 2
vim.api.nvim_set_keymap(
	"n",
	"<Leader>h2",
	':lua require("harpoon.ui").nav_file(2)<CR>',
	{ noremap = true, silent = true }
) -- harpoon goto index 3
vim.api.nvim_set_keymap(
	"n",
	"<Leader>h3",
	':lua require("harpoon.ui").nav_file(3)<CR>',
	{ noremap = true, silent = true }
) -- harpoon goto index 4
vim.api.nvim_set_keymap(
	"n",
	"<Leader>h4",
	':lua require("harpoon.ui").nav_file(4)<CR>',
	{ noremap = true, silent = true }
) -- harpoon goto index 5
vim.api.nvim_set_keymap(
	"n",
	"<Leader>h5",
	':lua require("harpoon.ui").nav_file(5)<CR>',
	{ noremap = true, silent = true }
) -- harpoon goto index 6
vim.api.nvim_set_keymap(
	"n",
	"<Leader>h6",
	':lua require("harpoon.ui").nav_file(6)<CR>',
	{ noremap = true, silent = true }
)
