return {
  "jose-elias-alvarez/null-ls.nvim",
  opts = function(_, config)
    -- config variable is the default configuration table for the setup function call
    local null_ls = require "null-ls"

    -- Check supported formatters and linters
    -- https://github.com/jose-elias-alvarez/null-ls.nvim/tree/main/lua/null-ls/builtins/formatting
    -- https://github.com/jose-elias-alvarez/null-ls.nvim/tree/main/lua/null-ls/builtins/diagnostics
    config.sources = {
      -- Set a formatter
      null_ls.builtins.formatting.stylua,
      null_ls.builtins.formatting.prettier,
      null_ls.builtins.diagnostics.mypy.with {
        args = function(params)
          -- local virtual = os.getenv("VIRTUAL_ENV") or os.getenv("CONDA_DEFAULT_ENV")
          -- local anaconda_python_env_path = "C:/Users/kiriy/anaconda3/envs/"
          local default_python_env_path = "C:/Users/kiriy/anaconda3/envs/dl/"
          return {
            "--python-executable=" .. default_python_env_path .. "python",
            "--hide-error-codes",
            "--hide-error-context",
            "--no-color-output",
            "--show-absolute-path",
            "--show-column-numbers",
            "--show-error-codes",
            "--no-error-summary",
            "--no-pretty",
            "--shadow-file",
            params.bufname,
            params.temp_path,
            params.bufname,
          }
        end,
      },
    }
    return config -- return final config table
  end,
}
