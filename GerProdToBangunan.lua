local barang = {
    ["Besi"] = "267176888",
    ["Kayu"] = "2090874750",
    ["Plastik"] = "-1270634091",
}

local MaxisDaniel = {
    ["Puri Maxis"] = "925375395",
    ["Patung Walikota Terhebat"] = "2040088750",
    ["Maxis Man"] = "-2089966647",
}

local LembahBangunan10 = {
    ["Institusi Lab"] = "-61527945",
    ["Perhentian Taksi"] = "776814664",
    ["Aula Mahjong"] = "1225598517",
    ["Rumah Minum Teh"] = "-1053961458",
}

local BuildingCategories = {
    ["Maxis & Walikota"] = MaxisDaniel,
    ["Taman Lembah"] = LembahBangunan10,
}

function mainMenu()
    while true do
        local pilihanBarang = gg.choice({
            "Besi",
            "Kayu",
            "Plastik",
            "Keluar",
        }, nil, "Pilih Barang Yang Ingin Kamu Ubah")

        if pilihanBarang == 1 then
            ubahBarang("Besi")
        elseif pilihanBarang == 2 then
            ubahBarang("Kayu")
        elseif pilihanBarang == 3 then
            ubahBarang("Plastik")
        elseif pilihanBarang == 4 then
            Keluar()
        elseif pilihanBarang == nil then
            gg.setVisible(false)
            while true do
                if gg.isVisible() then
                    gg.setVisible(false)
                    mainMenu()
                end
            end
        end
    end
end

function ubahBarang(barangPilih)
    while true do
        local pilihanKategori = gg.choice({
            "Maxis & Walikota",
            "Taman Lembah",
            "Kembali",
        }, nil, "Pilih Kategori Bangunan untuk Barang: " .. barangPilih)

        if pilihanKategori == nil then
            return
        elseif pilihanKategori == 3 then
            return
        else
            local kategoriNama = ""
            if pilihanKategori == 1 then
                kategoriNama = "Maxis & Walikota"
            elseif pilihanKategori == 2 then
                kategoriNama = "Taman Lembah"
            end

            if kategoriNama ~= "" then
                ubahBooster(barangPilih, BuildingCategories[kategoriNama], kategoriNama)
            else
                gg.alert("Error, Coba Ulangi Lagi Yaa...")
                return
            end
        end
    end
end

function ubahBooster(barangPilih, boosterKategori, kategoriNama)
    while true do
        local pilihanBooster = {}
        for boosterNama, _ in pairs(boosterKategori) do
            table.insert(pilihanBooster, boosterNama)
        end
        table.insert(pilihanBooster, "Kembali")

        local pilihan = gg.choice(pilihanBooster, nil, "Pilih Bangunan dari Kategori " .. kategoriNama)

        if pilihan == nil then
            gg.setVisible(false)
            while true do
                if gg.isVisible() then
                    gg.setVisible(false)
                    return mainMenu()
                end
            end
        elseif pilihan == #pilihanBooster then
            return
        else
            local boosterNama = pilihanBooster[pilihan]
            local nilaiBaru = boosterKategori[boosterNama]
            gantiNilai(barang[barangPilih], nilaiBaru, boosterNama, barangPilih)
        end
    end
end

function gantiNilai(nilaiLama, nilaiBaru, pilihanNama, barangPilih)
    gg.setVisible(false)
    gg.clearResults()
    gg.searchNumber(nilaiLama, gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    local hasil = gg.getResults(200)
    
    if #hasil == 0 then
        gg.alert("Data tidak ditemukan, coba lagi atau pastikan jumlah barang cukup!")
        return
    end
    
    gg.editAll(nilaiBaru, gg.TYPE_DWORD)
    gg.toast("Sip, " .. barangPilih .. "nya Udah Diubah Jadi " .. pilihanNama .. " Yaa, Sekarang Keluar Dari Game, Lalu Masuk Lagi...")
    gg.clearResults()
end

function Keluar()
    gg.toast("Script Keluar, Skibidi BageRun Sigma King Mewing")
    os.exit()
end

mainMenu()