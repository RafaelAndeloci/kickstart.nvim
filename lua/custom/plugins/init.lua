-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
vim.keymap.set('n', '<leader>kl', function()
  -- cwd
  local current_dir = vim.fn.expand '%:p:h'
  local input = vim.fn.input('Novo arquivo: ', current_dir .. '/', 'file')
  if input ~= '' then
    vim.cmd('edit ' .. input)
  end
end, { desc = 'New File on current directory' })

return {
  require 'custom.plugins.lualine',
}
