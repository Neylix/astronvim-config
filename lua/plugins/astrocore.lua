-- AstroCore provides a central place to modify mappings, vim options, autocommands, and more!
-- Configuration documentation can be found with `:h astrocore`
-- NOTE: We highly recommend setting up the Lua Language Server (`:LspInstall lua_ls`)
--       as this provides autocomplete and documentation while editing

---@type LazySpec
return {
  "AstroNvim/astrocore",
  ---@type AstroCoreOpts
  opts = {
    -- vim options can be configured here
    options = {
      opt = { -- vim.opt.<key>
        wrap = true, -- sets vim.opt.wrap
        cmdheight = 1,
        scrolloff = 8,
        sidescrolloff = 8
      },
    },
    -- Mappings can be configured through AstroCore as well.
    -- NOTE: keycodes follow the casing in the vimdocs. For example, `<Leader>` must be capitalized
    mappings = {
      -- first key is the mode
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
        ["<Leader>ff"] = { function() require("telescope.builtin").git_files() end, desc = "Search files" },
        ["<Leader>gol"] = { "<cmd>Octo pr list<cr>" },
        ["<Leader>gos"] = { "<cmd>Octo review start<cr>" },
        ["<Leader>gov"] = { "<cmd>Octo review submit<cr>" },
        ["<Leader>god"] = { "<cmd>Octo review discard<cr>" },
        ["<Leader>gor"] = { "<cmd>Octo review resume<cr>" },
        ["<Leader>goc"] = { "<cmd>Octo review commit<cr>" },
        ["gdh"] = { "<cmd>diffget //2<cr>" },
        ["gdl"] = { "<cmd>diffget //3<cr>" },
        ["L"] = { function() require("astrocore.buffer").nav(vim.v.count > 0 and vim.v.count or 1) end, desc =
        "Next buffer" },
        ["H"] = { function() require("astrocore.buffer").nav(-(vim.v.count > 0 and vim.v.count or 1)) end, desc =
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
        ["<Leader>r"] = { "\"hy:s/<C-r>h/" },
        ["<Leader>R"] = { "\"hy:%s/<C-r>h/" }
      },
      x = {
        -- Do not copy when deletting
        ["p"] = { '"_dP' }
      }
    },
  },
}
