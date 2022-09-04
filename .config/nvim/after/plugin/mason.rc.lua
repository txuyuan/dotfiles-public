local status, lsp_installer = pcall(require, "mason")
if (not status) then return end

lsp_installer.setup()
