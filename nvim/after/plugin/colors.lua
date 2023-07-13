function Solid(color)
    color = color or "rose-pine-dawn";
    vim.cmd("TransparentDisable")
    vim.cmd(string.format("colorscheme %s", color));
end

function Clear(color)
    color = color or "rose-pine-moon";
    vim.cmd("TransparentEnable");
    vim.cmd(string.format("colorscheme %s", color));
end

Clear();
