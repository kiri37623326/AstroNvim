return {
  i = {
    ["kk"] = { "<Esc>" },
    ["kj"] = { "<Esc>" },
    ["<C-k>"] = { "<C-o>k" },
  },
  -- first key is the mode
  n = {
    ["<leader>d"] = { "\"_d" },
    ["<leader>c"] = { "\"_c" },

    ["ss"] = { ":<C-u>sp<CR>" },
    ["sv"] = { ":<C-u>vs<CR>" },
    ["sJ"] = { "<C-w>J" },
    ["sK"] = { "<C-w>K" },
    ["sL"] = { "<C-w>L" },
    ["sH"] = { "<C-w>H" },
    ["sj"] = { "<C-w>j" },
    ["sk"] = { "<C-w>k" },
    ["sl"] = { "<C-w>l" },
    ["sh"] = { "<C-w>h" },
    ["s>"] = { "<C-w>>" },
    ["s<"] = { "<C-w><" },
    ["s+"] = { "<C-w>+" },
    ["s-"] = { "<C-w>-" },
    ["s="] = { "<C-w>=" },
    ["s_"] = { "<C-w>_" },
    ["sc"] = { "<C-w>c" },
    ["sn"] = { "<C-w>w" },
    ["sp"] = { "<C-w>W" },
    ["sx"] = { ":q<CR>" },

    -- ["<Leader>L"] = { "gt" },
    -- ["<Leader>H"] = { "gT" },
    ["<Leader><"] = { ":tabm -1<CR>" },
    ["<Leader>>"] = { ":tabm -1<CR>" },
    ["<Leader>x"] = { ":q<CR>" },
    ["gh"] = { "^" },
    ["gH"] = { "0" },
    ["gl"] = { "$" },
    ["<C-j>"] = { "+" },
    ["<C-k>"] = { "-" },
    ["zj"] = { "zt" },
    ["zk"] = { "zb" },
    ["<Left>"] = { "<Nop>" },
    ["<Down>"] = { "<Nop>" },
    ["<Up>"] = { "<Nop>" },
    ["<Right>"] = { "<Nop>" },
    ["<C-l>"] = { "<Del>" },
    ["+"] = { "<C-a>" },
    ["-"] = { "<C-x>" },
    ["<Leader>re"] = { ":%s;\\<<C-R><C-W>\\>;g<Left><Left>;" },


    -- hop.nvim mapping
    ["<leader>jw"] = {"<cmd>HopWord<CR>"}, -- jump word
    ["<leader>jv"] = {"<cmd>HopVertical<CR>"}, -- jump vertical
    
    -- edgemotion mapping
		["<Leader>J"] = {"<Plug>(edgemotion-j)"},
		["<Leader>K"] = {"<Plug>(edgemotion-k)"},
  },
  o = {
    ["8"] = { "i(" },
    ["2"] = { 'i"' },
    ["7"] = { "i'" },
    ["@"] = { "i`" },
    ["["] = { "i[" },
    ["{"] = { "i{" },
  },
  t = {
    ["jj"] = { "<C-\\><C-n>" },
  },
}
