return {
  n = {
    -- Remap for dealing with word wrap
    ["k"] = { "v:count == 0 ? 'gk' : 'k'", expr = true, silent = true },
    ["j"] = { "v:count == 0 ? 'gj' : 'j'", expr = true, silent = true },
    -- Do not copy when deletting
    ["d"] = { '"_d' },
    ["x"] = { '"_x' },
    ["c"] = { '"_c' },
    ["D"] = { '"_D' },
    ["X"] = { '"_X' },
    ["C"] = { '"_C' },
    -- Remap to keep cursor on middle of the screen
    ["<C-d>"] = { "<C-d>zz" },
    ["<C-u>"] = { "<C-u>zz" },
    ["n"] = { "nzzzv" },
    ["N"] = { "Nzzzv" },
    ["<leader>ff"] = { function() require("telescope.builtin").git_files() end, desc = "Search files" },
    ["<leader>gol"] = { "<cmd>Octo pr list<cr>" },
    ["<leader>gos"] = { "<cmd>Octo review start<cr>" },
    ["<leader>gov"] = { "<cmd>Octo review submit<cr>" },
    ["<leader>god"] = { "<cmd>Octo review discard<cr>" },
    ["<leader>gor"] = { "<cmd>Octo review resume<cr>" },
    ["<leader>goc"] = { "<cmd>Octo review commit<cr>" },
    ["gdh"] = { "<cmd>diffget //2<cr>" },
    ["gdl"] = { "<cmd>diffget //3<cr>" },
    ["L"] = { function() require("astronvim.utils.buffer").nav(vim.v.count > 0 and vim.v.count or 1) end, desc =
    "Next buffer" },
    ["H"] = { function() require("astronvim.utils.buffer").nav(-(vim.v.count > 0 and vim.v.count or 1)) end, desc =
    "Previous buffer" }
  },
  v = {
    -- Do not copy when deletting
    ["d"] = { '"_d' },
    ["x"] = { '"_x' },
    ["c"] = { '"_c' },
    ["D"] = { '"_D' },
    ["X"] = { '"_X' },
    ["C"] = { '"_C' },
    -- Remap to move highlighted lines
    ["J"] = { ":m '>+1<CR>gv=gv" },
    ["K"] = { ":m '<-2<CR>gv=gv" },
    ["<leader>r"] = { "\"hy:s/<C-r>h/" },
    ["<leader>R"] = { "\"hy:%s/<C-r>h/" }
  },
  x = {
    -- Do not copy when deletting
    ["p"] = { '"_dP' }
  }
}
