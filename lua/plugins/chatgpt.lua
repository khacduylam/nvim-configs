--[[

setup_chatgpt - Function to set up the ChatGPT plugin with specified parameters

This function initializes the ChatGPT plugin with the provided parameters. It configures the model to use, along with various settings such as frequency_penalty, presence_penalty, max_tokens, temperature, top_p, and n.

Parameters:
  None

Returns:
  None

Errors:
  None

Example:
  setup_chatgpt()

--]]


local setup_chatgpt = function()
  require('chatgpt').setup({
    --openai_params = {
      --model = 'gpt-4-1106-preview',
      --frequency_penalty = 0,
      --presence_penalty = 0,
      --max_tokens = 4095,
      --temperature = 0.2,
      --top_p = 0.1,
      --n = 1,
    --},

    popup_input = {
      submit = '<C-s>',
    }
  })
end

return {
  'jackMort/ChatGPT.nvim',
  event = 'VeryLazy',
  dependencies = {
    'MunifTanjim/nui.nvim',
    'nvim-lua/plenary.nvim',
    'folke/trouble.nvim', -- optional
    'nvim-telescope/telescope.nvim'
  },
  config = setup_chatgpt
}




