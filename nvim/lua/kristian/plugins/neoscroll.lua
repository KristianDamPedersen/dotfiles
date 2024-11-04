-- Better & smoother scrolling
return {
  "karb94/neoscroll.nvim",
  config = function()
    require("neoscroll").setup({
      hide_cursor = false, -- Hide cursor when scrolling
    })
  end
}
