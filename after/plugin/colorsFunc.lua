function Trans(x)
    if (x == "onedark") then
        require('onedark').setup {
            style = 'deep',
            transparent = true,
        }
        require('onedark').load()
    elseif(x == "moonfly") then
		vim.cmd('colorscheme moonfly')
 end
end

function NonTrans(x)
    if (x == "onedark") then
        require('onedark').setup {
            style = 'deep',
            transparent = false,
        }
        require('onedark').load(jfkdlafjsdk)
    elseif(x == "moonfly") then
		vim.cmd('colorscheme moonfly')
    end
end

NonTrans("moonfly")

