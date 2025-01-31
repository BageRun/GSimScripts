function NoBaper()
    gg.clearResults()
    gg.clearList()
    gg.setVisible(false)
    gg.searchNumber("1430583749", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)

    local result = gg.getResults(100000)
    local t = gg.getValues(result)

    for i, v in ipairs(t) do
        v.address = v.address - 0x48
    end
    gg.loadResults(t)
    t = nil
    
    gg.toast("Script Dimulai... By Ger.")
    gg.refineNumber("53", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    result = gg.getResults(1)

    t = gg.getValues(result)
    for i, v in ipairs(t) do
        v.address = v.address - 0x8
    end

    local cardValue = gg.getValues(t)[1].value
    
    gg.clearResults()
    gg.searchNumber(cardValue, gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    result = gg.getResults(100)

    t = gg.getValues(result)
    for i, v in ipairs(t) do
        v.address = v.address + 0x8
    end

    gg.loadResults(t)
    t = nil
    
    gg.refineNumber("53", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    result = gg.getResults(100)

    t = gg.getValues(result)
    for i, v in ipairs(t) do
        v.address = v.address + 0x48
    end

    gg.loadResults(t)
    t = nil
    
    gg.refineNumber("0", gg.TYPE_DWORD, false, gg.SIGN_NOT_EQUAL, 0, -1)
    result = gg.getResults(24)

    t = gg.getValues(result)
    for i, v in ipairs(t) do
        v.address = v.address + 0x238
    end

    gg.addListItems(t)
    t = gg.getListItems()
    for i, v in ipairs(t) do
        v.address = v.address + 0x8
    end

    gg.addListItems(t)
    t = gg.getListItems()
    for i, v in ipairs(t) do
        v.address = v.address + 0x8
    end

    gg.addListItems(t)

    originalValues = gg.getListItems()
    
    for i, v in ipairs(originalValues) do
        v.original = v.value
        v.value = 0
    end

    gg.setValues(originalValues)
    gg.toast("Selesai, Sekarang Kamu Dapat Menyerang Tanpa Mengurangi Barangmu...")
    gg.clearResults()
    gg.setVisible(false)
    
    while true do
        if gg.isVisible(true) then
            gg.setVisible(false)
            ResetBaper()
            break
        end
        gg.sleep(99)
    end
end

function ResetBaper()
    local PakeBaper = gg.alert("Script Sudah Selesai, Pilih Reset Jika Ingin Kembali Menggunakan Barang Perangmu...", "Reset.", "Keluar.")
    if PakeBaper == 1 then
        if not originalValues or #originalValues == 0 then
            gg.toast("Gak Ada Yang Bisa Direset Nih, Langsung Keluar Aja Yaa...")
            gg.clearList()
            os.exit()
        end
        for i, v in ipairs(originalValues) do
            v.value = v.original
        end
        gg.setValues(originalValues)
        gg.toast("Sekarang Kamu Bisa Menyerang Menggunakan Barang Perangmu Lagi...")
        gg.clearList()
        gg.setVisible(false)
        while true do
            if gg.isVisible(true) then
                gg.setVisible(false)
                ResetBaper()
                break
            end
            gg.sleep(99)
        end
    elseif PakeBaper == 2 then
        gg.clearList()
        os.exit()
    end
end

NoBaper()