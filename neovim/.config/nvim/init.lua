vim.cmd[[
set runtimepath^=~/.vim runtimepath+=~/.vim/after
source ~/.vimrc
]]

vim.opt.laststatus = 3

vim.diagnostic.config({
    severity_sort = true,
    underline = false,
    signs = {
        text = {
            [vim.diagnostic.severity.ERROR] = "■ ",
            [vim.diagnostic.severity.WARN] = "■ ",
            [vim.diagnostic.severity.INFO] = "■ ",
            [vim.diagnostic.severity.HINT] = "■ ",
        },
    },
    virtual_text = {
        source = "if_many",
        spacing = 2,
        format = function(diagnostic)
            local diagnostic_message = {
                [vim.diagnostic.severity.ERROR] = diagnostic.message,
                [vim.diagnostic.severity.WARN] = diagnostic.message,
                [vim.diagnostic.severity.INFO] = diagnostic.message,
                [vim.diagnostic.severity.HINT] = diagnostic.message,
            }
            return diagnostic_message[diagnostic.severity]
        end,
    },
})

vim.lsp.config("*", {
    root_markers = { ".git" },
    capabilities = {
        textDocument = {
            diagnostic = {
                dynamicRegistration = true,
                relatedDocumentSupport = true,
            }
        }
    }
})

vim.lsp.config("lua-language-server", {
    cmd = { "lua-language-server" },
    filetypes = { "lua" },
    root_markers = { ".luarc.json", ".luarc.jsonc", ".luacheckrc", ".stylua.toml", "stylua.toml" },
    on_init = function(client)
        client.settings = vim.tbl_deep_extend("force", client.settings, {
            Lua = {
                runtime = {
                    version = "LuaJIT",
                },
                workspace = {
                    checkThirdParty = false,
                    library = {
                        vim.env.VIMRUNTIME,
                    }
                }
            }
        })
    end
})

vim.lsp.config("marksman", {
    cmd = { "marksman", "server" },
    filetypes = { "markdown", "markdown.mdx" },
    root_markers = { ".marksman.toml" },
})

vim.lsp.config("rust-analyzer", {
    cmd = { "rust-analyzer" },
    filetypes = { "rust" },
    root_markers = { "Cargo.toml", "Cargo.lock" },
})

vim.lsp.config("sourcekit-lsp", {
    cmd = { "sourcekit-lsp" },
    filetypes = { "swift" },
    root_markers = { "Package.swift" },
})

vim.lsp.config("gopls", {
    cmd = { "gopls" },
    filetypes = { "go", "gomod", "gowork", "gotmpl" },
    root_markers = { "go.work", "go.mod" }
})

vim.lsp.config("typescript-language-server", {
    cmd = { "typescript-language-server", "--stdio" },
    root_markers = { "tsconfig.json", "jsconfig.json", "package.json" },
    filetypes = { "javascript", "javascriptreact", "javascript.jsx", "typescript", "typescriptreact", "typescript.tsx" },
})

vim.lsp.enable("lua-language-server")
vim.lsp.enable("marksman")
vim.lsp.enable("rust-analyzer")
vim.lsp.enable("sourcekit-lsp")
vim.lsp.enable("gopls")
vim.lsp.enable("typescript-language-server")

vim.api.nvim_create_autocmd("LspAttach", {
    group = vim.api.nvim_create_augroup("UserLspAttach", { clear = true }),
    callback = function(event)
        local client = vim.lsp.get_client_by_id(event.data.client_id)

        if not client then return end

        if client:supports_method("textDocument/formatting") then
            vim.api.nvim_create_autocmd("BufWritePre", {
                buffer = event.buf,
                callback = function()
                    vim.lsp.buf.format({ bufnr = event.buf, id = client.id })
                end
            })
        end

        if client:supports_method("textDocument/completion") then
            vim.lsp.completion.enable(true, client.id, event.buf, { autotrigger = false })
        end

        vim.keymap.set("n", "<leader>q", vim.diagnostic.setloclist, { desc = "Open diagnostic [Q]uickfix list" })

        local map = function(keys, func, desc, mode)
            mode = mode or "n"
            vim.keymap.set(mode, keys, func, { buffer = event.buf, desc = "LSP: " .. desc })
        end

        map("<leader>rn", vim.lsp.buf.rename, "[R]e[n]ame")

        map("<leader>ca", vim.lsp.buf.code_action, "[C]ode [A]ction", { "n", "x" })

        map("<C-p>", vim.lsp.completion.trigger, "Trigger autocompletion", "i")

        local lsp_diagnostics_augroup = vim.api.nvim_create_augroup("UserLspDiagnostics", { clear = true })

        local function show_diagnostics()
            vim.diagnostic.enable(true)
            vim.cmd("redrawstatus")
        end

        local function hide_diagnostics()
            vim.diagnostic.enable(false)
            vim.cmd("redrawstatus")
        end

        vim.api.nvim_create_autocmd("BufWritePre", {
            group = lsp_diagnostics_augroup,
            buffer = event.buf,
            callback = show_diagnostics
        })

        vim.api.nvim_create_autocmd("ModeChanged", {
            group = lsp_diagnostics_augroup,
            pattern = "n:*",
            callback = hide_diagnostics
        })

        vim.api.nvim_create_autocmd("ModeChanged", {
            group = lsp_diagnostics_augroup,
            pattern = "*:n",
            callback = show_diagnostics
        })

        show_diagnostics()
    end,
})
