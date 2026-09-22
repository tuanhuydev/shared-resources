return {
  "stevearc/conform.nvim",
  event = { "BufReadPre", "BufNewFile" }, -- Load the plugin when opening a file
  config = function()
    local conform = require("conform")

    conform.setup({
      -- Define formatters by file type
      formatters_by_ft = {
        javascript = { "prettier" },
        typescript = { "prettier" },
        javascriptreact = { "prettier" },
        typescriptreact = { "prettier" },
        svelte = { "prettier" },
        css = { "prettier" },
        html = { "prettier" },
        json = { "prettier" },
        yaml = { "prettier" },
        markdown = { "prettier" },
        graphql = { "prettier" },
      },
      
      -- Set up format-on-save
      format_on_save = {
        lsp_fallback = true, -- Use LSP formatter if prettier isn't available
        async = false,       -- Disable async to ensure formatting completes before saving
        timeout_ms = 500,    -- Timeout for the formatter
      },
    })

    -- Optional: Keymap to manually trigger formatting with `<leader>f`
    vim.keymap.set({ "n", "v" }, "<leader>f", function()
      conform.format({
        lsp_fallback = true,
        async = false,
        timeout_ms = 500,
      })
    end, { desc = "Format file or range" })
  end,
}

