-- Plugin for better managing surrounding symbols
return {
  "kylechui/nvim-surround",
  event  = { "BufReadPre", "BufNewFile" },
  version = "*",
  config = true
}
