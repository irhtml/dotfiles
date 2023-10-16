return {

  {
    "phpactor/phpactor",
    ft = "php",
    run = "composer install --no-dev --optimize-autoloader",
    keys = {
      { "<leader>pm", "<cmd>PhpactorContextMenu<cr>", desc = "Phpactor" },
    },
  },
}
