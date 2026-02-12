-- terminal mode
vim.keymap.set("t", "<ESC><ESC>", "<C-\\><C-n>", { desc = "Exit terminal mode" })

vim.api.nvim_create_autocmd("TermOpen", {
  callback = function()
    vim.wo.number = false
    vim.wo.relativenumber = false
    vim.wo.signcolumn = "no"
  end,
})

-- Automatically reset to global defaults for non-terminal buffers
vim.api.nvim_create_autocmd({ "BufWinEnter", "BufEnter" }, {
  callback = function()
    if vim.bo.buftype ~= "terminal" then
      vim.wo.number = vim.opt.number:get()              -- Reset to global `number` setting
      vim.wo.relativenumber = vim.opt.relativenumber:get() -- Reset to global `relativenumber`
      vim.wo.signcolumn = vim.opt.signcolumn:get()      -- Reset to global `signcolumn`
    end
  end,
})

vim.api.nvim_create_autocmd("BufWriteCmd", {
  pattern = "term://*",
  callback = function()
    -- Get the job ID associated with the terminal buffer
    local job_id = vim.b.terminal_job_id
    if job_id and vim.fn.jobwait({ job_id }, 0)[1] == -1 then
      -- If the job is still running, stop it
      vim.fn.jobstop(job_id)
    end
    if vim.fn.getcmdtype() == ":" and string.match(vim.fn.getcmdline(), "^x") then
      -- Add a delay before deleting the buffer
      vim.defer_fn(function()
        vim.cmd("bd!")
      end, 500) -- Delay of 500ms (adjust as needed)
    end
  end,
})
