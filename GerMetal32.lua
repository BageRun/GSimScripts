function Pembuka()
    local pilihan = gg.multiChoice({
        "Sudah",
        "Keluar"
    }, nil, "Siapkan 4 metal/besi, buka depot, pilih metal/besi, lalu set metal 1 dengan harga 7")

    if not pilihan then return end

    if pilihan[1] then
        AngkaTujuh()
    elseif pilihan[2] then
        gg.toast("Script Berakhir.")
        os.exit() -- Pastikan script benar-benar berakhir
    end
end

function AngkaTujuh()
    gg.clearResults()
    gg.searchNumber("7", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.setVisible(false)
    gg.toast("Set metal menjadi 4 dengan harga 28!")
    gg.sleep(3333) -- Tunggu pemain mengubah data
    KonfirTujuh()
end

function KonfirTujuh()
    local pilihan = gg.multiChoice({
        "Sudah",
        "Belum"
    }, nil, "Apakah kamu sudah mengubahnya?")

    if not pilihan then return end

    if pilihan[2] then
        gg.toast("Ubah Dulu...")
        gg.sleep(3333)
        KonfirTujuh()
    elseif pilihan[1] then
        gg.refineNumber("28", gg.TYPE_DWORD, false, gg.SIGN_EQUAL)
        local results = gg.getResults(1)

        if #results == 0 then
            gg.toast("28 Gak Ketemu...")
            KonfirTujuh() -- Panggil ulang jika tidak ditemukan
            return
        end

        local address28Metal = results[1].address
        gg.toast("Harga Metal Ketemu, Next...")

        -- Verifikasi apakah address valid
        -- Menggunakan cara manual untuk memeriksa awalan "7" dan akhiran "68"
        local addressHex = string.format("%X", address28Metal)  -- Ubah address ke format hexadecimal string
        local validAddress = string.sub(addressHex, 1, 1) == "7" and string.sub(addressHex, -2) == "68"

        if not validAddress then
            gg.toast("Address Tidak Valid, Cek Kembali...")
            KonfirTujuh()
            return
        end

        -- Offset langsung turun 3 kebawah
        local targetAddress = address28Metal + 0xC -- Offset tetap
        local targetValue = gg.getValues({{address = targetAddress, flags = gg.TYPE_DWORD}})[1].value

        if targetValue == 0 then
            gg.toast("Values Metal Tidak Ditemukan...")
            return
        end

        gg.clearResults()
        gg.searchNumber(tostring(targetValue), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
        local finalResults = gg.getResults(1)

        if #finalResults > 0 then
            gg.toast("Values Metal Berhasil Dicari...")
            Akhir(results[1].address, targetValue)
        else
            gg.toast("Values Metal Gagal Dicari...")
            AngkaTujuh()
        end
    end
end

function Akhir(savedAddress, targetValue)
    local pilihan = gg.multiChoice({
        "Nanti",
        "Update Barang",
        "Keluar"
    }, nil, "Semuanya berhasil, Next?")

    if not pilihan then return end

    if pilihan[3] then
        gg.toast("Script Selesai...")
        local savedList = gg.getResults(gg.getResultsCount())
        gg.addListItems(savedList)
        os.exit() -- Berhenti total
    elseif pilihan[2] then
        gg.toast("Pilih Barang Di Depot Yang Ingin Kamu Perbanyak...")
        gg.sleep(5555) -- Tunggu pemain mengubah barang di depot dari metal ke barang yang mereka inginkan

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
                gg.toast("Barang Di Pabrik Berhasil Diubah, Cek Pabrikmu, Jika Tidak Berubah, Lakukan Lagi...")
            else
                gg.toast("Tidak Ada Values Yang Berubah...")
            end
        else
            gg.toast("Saved List kosong...")
        end

        gg.setVisible(false) -- Menutup UI GG Agar Pemain Melanjutkan Permainan
        while true do
            if gg.isVisible(true) then
                gg.setVisible(false)
                Akhir(savedAddress, targetValue) -- Balik Ke Function Akhir Jika UI GG Dibuka Oleh Pemain
                break
            end
            gg.sleep(100)
        end
    elseif pilihan[1] then
        local savedList = gg.getResults(gg.getResultsCount())
        gg.addListItems(savedList)
        gg.toast("Data disimpan, kembali ke menu.")
        gg.setVisible(false) -- Menutup UI GG Agar Pemain Melanjutkan Permainan
        while true do
            if gg.isVisible(true) then
                gg.setVisible(false)
                Akhir(savedAddress, targetValue) -- Balik Ke Function Akhir Jika UI GG Dibuka Oleh Pemain
                break
            end
            gg.sleep(100)
        end
    end
end

Pembuka()
