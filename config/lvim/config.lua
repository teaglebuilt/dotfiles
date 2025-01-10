lvim.builtin.nvimtree.setup.view.side = "left"
lvim.builtin.nvimtree.setup.renderer.icons.show.git = false

lvim.builtin.nvimtree.setup.filters = {
  dotfiles = false,
  custom = { ".git" }
}


lvim.builtin.nvimtree.setup.filters = {
  dotfiles = false,
  custom = { ".git" }
}

lvim.builtin.treesitter.ensure_installed = {
  "bash",
  "c",
  "javascript",
  "json",
  "lua",
  "python",
  "typescript",
  "tsx",
  "css",
  "rust",
  "java",
  "yaml",
  "hcl",
  "latex",
  "c"
}

lvim.builtin.treesitter.ignore_install = { "haskell" }
lvim.builtin.treesitter.highlight.enable = true
lvim.builtin.comment.active = true

lvim.plugins = {
    {
      "folke/trouble.nvim",
      cmd = "TroubleToggle",
    },
    "williamboman/mason.nvim",
    "sheerun/vim-polyglot",
    { "towolf/vim-helm" },
    { "lervag/vimtex" },
    { "iamcco/markdown-preview.nvim" },
    {
      "rmagatti/goto-preview",
        config = function()
        require('goto-preview').setup {
          width = 120; -- Width of the f loating window
          height = 25; -- Height of the floating window
          default_mappings = false; -- Bind default mappings
          debug = false; -- Print debug information
          opacity = nil; -- 0-100 opacity level of the floating window where 100 is fully transparent.
          post_open_hook = nil -- A function taking two arguments, a buffer and a window to be ran as a hook.
              -- You can use "default_mappings = true" setup option
              -- Or explicitly set keybindings
              -- vim.cmd("nnoremap gpd <cmd>lua require('goto-preview').goto_preview_definition()<CR>")
              -- vim.cmd("nnoremap gpi <cmd>lua require('goto-preview').goto_preview_implementation()<CR>")
              -- vim.cmd("nnoremap gP <cmd>lua require('goto-preview').close_all_win()<CR>")
      }
      end
    },
}

vim.g.vimtex_compiler_method = "latexmk"
vim.g.vimtex_compiler_latexmk = {
  build_dir = "",
  options = {
    "-shell-escape", "-xelatex"
  },
}
vim.g.tex_flavor = "nvr"
vim.g.vimtex_view_general_viewer = "open -a Skim"
