return {
  "folke/snacks.nvim",
  opts = {
    -- The explorer takes the startup screen instead.
    dashboard = { enabled = false },
  },
  init = function()
    vim.api.nvim_create_autocmd("VimEnter", {
      group = vim.api.nvim_create_augroup("explorer_startup", { clear = true }),
      callback = function()
        -- Only for a bare `nvim`: leaves `nvim file`, piped stdin and session restores alone.
        if vim.fn.argc() > 0 then
          return
        end
        local buf = vim.api.nvim_get_current_buf()
        if vim.api.nvim_buf_get_name(buf) ~= "" or vim.bo[buf].modified or vim.bo[buf].filetype ~= "" then
          return
        end
        if vim.api.nvim_buf_line_count(buf) > 1 then
          return
        end
        vim.schedule(function()
          Snacks.explorer()
        end)
      end,
    })
  end,
}
