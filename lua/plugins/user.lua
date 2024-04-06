-- You can also add or configure plugins by creating files in this `plugins/` folder
-- Here are some examples:

---@type LazySpec
return {
  -- Disable plugins default plugins
  -- { "mfussenegger/nvim-dap",         enabled = false },
  -- { "jay-babu/mason-nvim-dap.nvim",  enabled = false },
  -- { "rcarriga/nvim-dap-ui",          enabled = false },
  -- { "s1n7ax/nvim-window-picker",     enabled = false },
  -- { "stevearc/aerial.nvim",          enabled = false },
  -- { "Shatur/neovim-session-manager", enabled = false },
  -- { "AstroNvim/astrotheme",          enabled = false },
  -- Install onedark theme
  {
    "navarasu/onedark.nvim",
    name = "onedark",
    config = function() require("onedark").load() end,
  },
  -- Install treesitter-textobjects
  "nvim-treesitter/nvim-treesitter-textobjects",
  -- Install hop
  {
    "phaazon/hop.nvim",
    config = function() require("hop").setup() end,
    event = "User AstroFile",
  },
  -- ### Github ###
  -- vim fugitive
  { "tpope/vim-fugitive", lazy = false },
  -- Octo
  {
    "pwntester/octo.nvim",
    config = function()
      require("octo").setup {
        default_remote = { "upstream" },
        suppress_missing_scope = { projects_v2 = true },
      }
    end,
    lazy = false,
  },
  -- cmp git
  {
    "petertriho/cmp-git",
    name = "cmp_git",
    config = function() require("cmp_git").setup() end,
  },
  -- ### Markdown ###
  {
    "iamcco/markdown-preview.nvim",
    build = "cd app && npm i",
    config = function() vim.g.mkdp_filetypes = { "markdown" } end,
    ft = { "markdown" },
  },
}
