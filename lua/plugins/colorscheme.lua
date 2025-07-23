return {
    "navarasu/onedark.nvim",
    lazy = false,
    priority = 1000,
    config = function()
        -- Habilitar soporte para colores verdaderos
        vim.opt.termguicolors = true

        -- Configurar el tema onedark
        require('onedark').setup {
            style = 'darker' -- Opciones: 'dark', 'darker', 'cool', 'deep', 'warm', 'warmer', 'light'
        }

        -- Aplicar el tema
        vim.o.background = "dark"
        vim.cmd.colorscheme "onedark"
    end,
}
