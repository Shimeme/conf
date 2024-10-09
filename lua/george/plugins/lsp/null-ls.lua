-- import null-ls plugin safely
local setup, null_ls = pcall(require, "null-ls")
if not setup then
  return
end

-- configure null_ls
null_ls.setup({
    sources = {
        -- Formatting
        null_ls.builtins.formatting.prettier,
        null_ls.builtins.formatting.eslint,
        null_ls.builtins.formatting.black,
        null_ls.builtins.formatting.clang_format,
        null_ls.builtins.formatting.stylua,
        null_ls.builtins.formatting.shfmt,
        -- Linting
        null_ls.builtins.diagnostics.eslint,
        null_ls.builtins.diagnostics.flake8,
        null_ls.builtins.diagnostics.cppcheck,
        null_ls.builtins.diagnostics.shellcheck,
    }
})
