return {
  "WhoIsSethDaniel/mason-tool-installer.nvim",
  lazy = false,
  config = function()
    require('mason-tool-installer').setup {
      ensure_installed = {
        'lua-language-server',
        'stylua',
      },
    }
  end
}
