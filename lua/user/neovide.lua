if vim.g.neovide then
    -- vim.o.guifont = "M+CodeLatx Nerd Font Propo:h13.0"
    vim.o.guifont = "JetBrainsMono Nerd Font Propo:h14"
    -- vim.opt.linespace = 8

    vim.g.neovide_theme = 'auto'

    vim.g.neovide_scale_factor = 1.0
    local change_scale_factor = function(delta)
        vim.g.neovide_scale_factor = vim.g.neovide_scale_factor * delta
    end
    vim.keymap.set("n", "<C-=>", function()
        change_scale_factor(1.05)
    end)
    vim.keymap.set("n", "<C-->", function()
        change_scale_factor(1 / 1.05)
    end)
    vim.g.neovide_input_use_logo = 1            -- enable use of the logo (cmd) key
    vim.keymap.set("n", "<D-s>", ":w<CR>")      -- Save
    vim.keymap.set("v", "<D-c>", '"+y')         -- Copy
    vim.keymap.set("n", "<D-v>", '"+P')         -- Paste normal mode
    vim.keymap.set("v", "<D-v>", '"+P')         -- Paste visual mode
    vim.keymap.set("c", "<D-v>", "<C-R>+")      -- Paste command mode
    vim.keymap.set("i", "<D-v>", '<ESC>l"+Pli') -- Paste insert mode

    -- Helper function for transparency formatting
    local alpha = function()
        return string.format("%x", math.floor(255 * 1))
    end

    -- g:neovide_transparency should be 0 if you want to unify transparency of content and title bar.

    -- Ustawienie vim.g.neovide_transparency pozwala colorschemes na forsowanie bg
    -- vim.g.neovide_transparency = 0
    -- vim.g.transparency = 0

    -- vim.g.neovide_background_color = "#12161c" .. alpha()

    -- vim.g.neovide_background_color = "#000000" .. alpha()
    if vim.g.neovide_background_color == "#000000" .. alpha() then
        vim.cmd("set nocursorcolumn")
        vim.cmd("set nocursorline")
    end


    --
    vim.g.neovide_input_macos_alt_is_meta = false
    vim.g.neovide_confirm_quit = true
    vim.g.neovide_cursor_antialiasing = true

    vim.g.neovie_remember_window_size = false
    vim.g.neovide_hide_mouse_when_typing = true

    vim.g.neovide_padding_top = 0
    vim.g.neovide_padding_bottom = 0
    vim.g.neovide_padding_right = 0
    vim.g.neovide_padding_left = 0

    -- animations --
    vim.g.neovide_cursor_animate_command_line = true
    vim.g.neovide_cursor_trail_size = 0.3
    vim.g.neovide_cursor_vfx_mode = "sonicboom"
    vim.g.neovide_cursor_animate_in_insert_mode = true
    vim.g.neovide_cursor_animation_length = 0.13
end
