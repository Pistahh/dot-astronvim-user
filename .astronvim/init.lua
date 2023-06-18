return {
  plugins = {
    "AstroNvim/astrocommunity",
    { import = "astrocommunity.motion.leap-nvim" },
    { import = "astrocommunity.motion.hop-nvim", enabled = false },
    { import = "astrocommunity.syntax.vim-easy-align" }

    -- ... import any community contributed plugins here
  }
}
