lastFunction = nil

function hideUI()
    gg.sleep(100)
    gg.setVisible(false)
    while not gg.isVisible() do
        gg.sleep(100)
    end
    gg.setVisible(false)
    resumeLastFunction()
end

function resumeLastFunction()
    if lastFunction then
        lastFunction()
    else
        Pembuka()
    end
end

function Pembuka()
    lastFunction = Pembuka
    local pilihan = gg.choice({
        "Sudah",
        "Batal & Keluar"
    }, nil, "Siapkan 4 metal/besi, buka depot, pilih metal/besi, lalu set metal 1 dengan harga 7")

    if not pilihan then hideUI() end

    if pilihan == 1 then
        AngkaTujuh()
    elseif pilihan == 2 then
        gg.toast("Keluar, By Lii 'BageRun' Khisya")
        os.exit()
    end
end

function AngkaTujuh()
    lastFunction = AngkaTujuh
    gg.clearResults()
    gg.searchNumber("7", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.setVisible(false)
    gg.toast("Set metal menjadi 4 dengan harga 28!")
    gg.sleep(3333)
    KonfirTujuh()
end

function KonfirTujuh()
    lastFunction = KonfirTujuh
    local pilihan = gg.choice({
        "Sudah",
        "Belum",
        "Keluar"
    }, nil, "Udah Diubah Belum Metal / Besi Nya Jadi 4 Harganya 28 Simoleon?")

    if not pilihan then hideUI() end

    

    if pilihan == 2 then
        gg.toast("Ubah Dulu, kalo Udah, Buka Lagi GG Nya...")
        hideUI()
    elseif pilihan == 3 then
        os.exit()
    elseif pilihan == 1 then
        gg.refineNumber("28", gg.TYPE_DWORD, false, gg.SIGN_EQUAL)
        local results = gg.getResults(1)

        if #results == 0 then
            gg.toast("Kayaknya Ada Yang Salah Deh, Gak Ketemu Soalnya, Coba Lagi Yaa...")
            resumeLastFunction()
        end

        local address28Metal = results[1].address
        gg.toast("Harga Metal Ketemu, Next...")

        local addressHex = string.format("%X", address28Metal)
        local validAddress = string.sub(addressHex, 1, 1) == "7" and string.sub(addressHex, -2) == "80"

        if not validAddress then
            gg.toast("Addressnya Gak Valid Nih, Coba Restart Gamenya Dulu Yaa...")
            resumeLastFunction()
        end

        local targetAddress = address28Metal + 0x10
        local targetValue = gg.getValues({{address = targetAddress, flags = gg.TYPE_DWORD}})[1].value

        if targetValue == 0 then
            gg.toast("Gak Kedeteksi Info Barangnya Nih, Coba Ulangi Lagi Yaa...")
            resumeLastFunction()
        end

        gg.clearResults()
        gg.searchNumber(tostring(targetValue), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
        local finalResults = gg.getResults(1)

        if #finalResults > 0 then
            Akhir(results[1].address, targetValue)
        else
            gg.toast("Info Metal / Besinya Gak Ada, Coba Restart Gamenya Yaa...")
            resumeLastFunction()
        end
    end
end

function Akhir(savedAddress, targetValue)
    lastFunction = Akhir
    local pilihan = gg.choice({
        "Simpan & Tutup",
        "Update & Reset Barang",
        "Keluar"
    }, nil, "Semuanya berhasil, Simpan Terlebih Dahulu Agar Update & Reset Dapat Bekerja Yaa... Btw Selanjutnya Apa Nih?")

    if not pilihan then hideUI() end

    if pilihan == 3 then
        gg.toast("Keluar, By Lii 'BageRun' Khisya")
        local savedList = gg.getResults(gg.getResultsCount())
        gg.addListItems(savedList)
        gg.clearResults()
        os.exit()
    elseif pilihan == 2 then
        gg.toast("Pilih Barang Di Depot Yang Ingin Kamu Perbanyak...")
        gg.sleep(4444)

        local savedList = gg.getListItems()
        if #savedList > 0 then
            local updatedValues = gg.getValues(savedList)
            local targetValue = nil

            for i, item in ipairs(savedList) do
                if item.value ~= updatedValues[i].value then
                    targetValue = updatedValues[i].value
                    break
                end
            end

            if targetValue then
                for i, item in ipairs(savedList) do
                    item.value = targetValue
                end
                gg.setValues(savedList)
                gg.toast("Barang Di Pabrik Berhasil Diubah, Cek Pabrik Yaa, Tanda Berhasilnya Besinya Jadi 0, Kalo Tidak Berubah, Coba Lagi...")
                hideUI()
            else
                gg.toast("Gak Ada Yang Berubah, Yakin Barangnya Udah Diubah Di Kotak Depot?")
            end
        else
            gg.toast("Listnya kosong Nih, Simpan Dulu Yaa...")
        end
    elseif pilihan == 1 then
        local savedList = gg.getResults(gg.getResultsCount())
        gg.addListItems(savedList)
        gg.toast("Sip, Address Disimpan.")
        hideUI()
    end
end

Pembuka()