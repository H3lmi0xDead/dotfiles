require "nvchad.mappings"

-- Add your custom keybindings here
local map = vim.keymap.set

-- General Keybindings
map("n", ";", ":", { desc = "CMD enter command mode" }) -- Use ; to enter command mode
map("i", "jk", "<ESC>", { desc = "Exit insert mode" }) -- Use jk to exit insert mode (like ESC)

-- Save file (Ctrl + S)
map({ "n", "i", "v" }, "<C-s>", "<cmd>w<cr>", { desc = "Save file" })

-- Copy, Cut, Paste (VS Code style)
map("n", "<C-c>", '"+y', { desc = "Copy to system clipboard" }) -- Copy in Normal mode
map("v", "<C-c>", '"+y', { desc = "Copy to system clipboard" }) -- Copy in Visual mode
map("n", "<C-x>", '"+d', { desc = "Cut to system clipboard" }) -- Cut in Normal mode
map("v", "<C-x>", '"+d', { desc = "Cut to system clipboard" }) -- Cut in Visual mode
map("n", "<C-v>", '"+p', { desc = "Paste from system clipboard" }) -- Paste in Normal mode
map("i", "<C-v>", '<ESC>"+pa', { desc = "Paste from system clipboard" }) -- Paste in Insert mode

-- Undo and Redo (VS Code style)
map("n", "<C-z>", "u", { desc = "Undo" }) -- Undo
map("n", "<C-y>", "<C-r>", { desc = "Redo" }) -- Redo

-- Find and Replace (VS Code style)
map("n", "<C-f>", "/", { desc = "Search in file" }) -- Search in file
map("n", "<C-h>", ":%s/", { desc = "Find and replace" }) -- Find and replace

-- File Explorer (VS Code style)
map("n", "<C-e>", "<cmd>NvimTreeToggle<cr>", { desc = "Toggle file explorer" }) -- Toggle file explorer

-- Terminal (VS Code style)
map("n", "<C-`>", "<cmd>ToggleTerm<cr>", { desc = "Toggle terminal" }) -- Toggle terminal

-- Commenting (VS Code style)
map("n", "<C-/>", "gcc", { desc = "Toggle comment" }) -- Toggle comment in Normal mode
map("v", "<C-/>", "gc", { desc = "Toggle comment" }) -- Toggle comment in Visual mode

-- Navigation (VS Code style)
map("n", "<C-p>", "<cmd>Telescope find_files<cr>", { desc = "Find files" }) -- Find files
map("n", "<C-g>", "<cmd>Telescope live_grep<cr>", { desc = "Live grep" }) -- Live grep

-- Tab Management (VS Code style)
map("n", "<C-t>", "<cmd>tabnew<cr>", { desc = "Open new tab" }) -- Open new tab
map("n", "<C-w>", "<cmd>tabclose<cr>", { desc = "Close current tab" }) -- Close current tab
map("n", "<C-Tab>", "<cmd>tabnext<cr>", { desc = "Next tab" }) -- Next tab
map("n", "<C-S-Tab>", "<cmd>tabprevious<cr>", { desc = "Previous tab" }) -- Previous tab

-- Indentation (VS Code style)
map("v", "<Tab>", ">gv", { desc = "Indent selection" }) -- Indent selection
map("v", "<S-Tab>", "<gv", { desc = "Unindent selection" }) -- Unindent selection
