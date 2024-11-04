return {
  "gen740/SmoothCursor.nvim",
  config = function()
    require("smoothcursor").setup({
      autostart = true,     -- Automatically start SmoothCursor
      always_redraw = true, -- Redraw the screen on each update
      speed = 25,           -- Max speed is 100 to stick with your crrent position
      intervals = 16,       -- Update interval in ms
      priority = 10,        -- Priority of the cursor
      timeout = 3000,       -- Timeout for animations in ms
      threshhold = 1,       -- Animate if cursor moves by this many lines
    })
  end
}
