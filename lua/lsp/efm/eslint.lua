-- An extra eslint just for formatting, yeey
return {
  formatCommand = "eslint_d --stdin --fix-to-stdout --stdin-filename=${INPUT}",
  formatStdin = true
}
