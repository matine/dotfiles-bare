return {
  "folke/snacks.nvim",
  opts = {
    -- The explorer takes the startup screen instead.
    dashboard = { enabled = false },
    picker = { sources = { explorer = { hidden = true } } },
  },
  init = function()
    -- Called by herdr-reset to return a running nvim to its startup state.
    vim.api.nvim_create_user_command("StartScreen", function()
      Snacks.bufdelete.all()
      for _, picker in ipairs(Snacks.picker.get({ source = "explorer" })) do
        picker:close()
      end
      vim.cmd("silent! only")
      vim.schedule(function()
        Snacks.explorer()
      end)
    end, {})

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
