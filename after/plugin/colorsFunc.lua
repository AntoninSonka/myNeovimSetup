function Trans()
    require('onedark').setup {
        style = 'deep',
        transparent = true,
    }
    require('onedark').load()
end

function NonTrans()
    require('onedark').setup {
        style = 'deep',
        transparent = false,
    }
    require('onedark').load()
end

NonTrans()
