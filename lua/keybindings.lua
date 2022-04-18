vim.g.mapleader = " "
vim.g.maplocalleader = " "
-- vim.api.nvim_set_keymap()

-- 保存本地变量
local map = vim.api.nvim_set_keymap
local opt = {noremap = true, silent = true }

-- 之后就可以这样映射按键了
-- map('模式','按键','映射为XX',opt)

-- pluginKeys = {}

-- 代码注释插件
-- see ./lua/plugin-config/comment.lua
--pluginKeys.comment = {
  -- normal 模式
--  toggler = {
--    line = '<leader>c',
--    block = '<leader>bc',
--  },
  -- visual 模式
--  opleader = {
    -- ctrl + /
--    line = '<C-_>',
--    block = 'bc',
--  },
--}
