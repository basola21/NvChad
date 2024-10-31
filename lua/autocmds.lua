vim.api.nvim_create_autocmd("BufReadPost", {
  pattern = "*.pdf",
  file_path = vim.api.nvim_buf_get_name(0)  
  callback = function()
    require("pdfview").open()
  end,
})
