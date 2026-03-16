local KEEP_DEFAULT_RIGHT = false

local function fmt_num(n)
    local s = tostring(n)
    local result = ""
    local mod = #s % 3
    for i = 1, #s do
        if i ~= 1 and (i - 1 - mod) % 3 == 0 then
            result = result .. ","
        end
        result = result .. s:sub(i, i)
    end
    return result
end

local function build_left()
    local mode = lex.get_mode()
    local mode_labels = {
        normal   = "  NORMAL  ",
        files    = "  FILES   ",
        help     = "  HELP    ",
        search   = "  SEARCH  ",
        ["goto"] = "  GOTO    ",
        open     = "  OPEN    ",
        command  = "  CMD     ",
        saveas   = "  SAVE AS ",
        terminal = "  TERM    ",
    }
    local mode_str = mode_labels[mode] or ("  " .. mode:upper() .. "  ")
    local fname = lex.get_filename()
    local dirty = lex.get_dirty()
    local name_part
    if fname then
        local basename = fname:match("[^/]+$") or fname
        name_part = "  " .. (dirty and "*" or "") .. basename .. "  "
    else
        name_part = "  Untitled  "
    end
    return mode_str .. name_part
end

local function build_right()
    local w, l, c = lex.word_count()
    local line, col = lex.get_cursor_pos()
    local lang = lex.get_lang()
    local wc = "  W:" .. fmt_num(w) .. "  L:" .. fmt_num(l) .. "  C:" .. fmt_num(c) .. "  "
    if KEEP_DEFAULT_RIGHT then
        return wc .. "  " .. lang .. "  Ln " .. line .. "  Col " .. col .. "  "
    end
    return wc .. "  Ln " .. line .. "  Col " .. col .. "  "
end

ui.on_render(function()
    lex.set_statusbar(build_left(), build_right())
end)