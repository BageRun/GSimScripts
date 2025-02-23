local barang = {
    ["Besi"] = "267176888",
    ["Kayu"] = "2090874750",
    ["Plastik"] = "-1270634091",
}

local BoosterEnergy = {
    ["Energy Pump 3"] = "1965976284",
    ["Energy Pump 2"] = "1965976283",
    ["Energy Pump 1"] = "1965976282",
}

local BoosterJackpot = {
    ["Jackpot 1"] = "1692935226",
    ["Jackpot 2"] = "1692935227",
    ["Jackpot 3"] = "1692935228",
}

local BoosterDuD = {
    ["DuD 3"] = "91798753",
    ["DuD 2"] = "91798752",
    ["DuD 1"] = "91798751",
}

local BoosterFreeze = {
    ["Freeze 3"] = "924894803",
    ["Freeze 2"] = "924894802",
    ["Freeze 1"] = "924894801",
}

local BoosterNegativeEnergy = {
    ["Negative Energy 3"] = "1736317038",
    ["Negative Energy 2"] = "1736317037",
    ["Negative Energy 1"] = "1736317036",
}

local BoosterUmbrella = {
    ["Umbrella 3"] = "1587235434",
    ["Umbrella 2"] = "1587235433",
    ["Umbrella 1"] = "1587235432",
}

local BoosterCategories = {
    ["Energy"] = BoosterEnergy,
    ["Jackpot"] = BoosterJackpot,
    ["DuD"] = BoosterDuD,
    ["Freeze"] = BoosterFreeze,
    ["Negative Energy"] = BoosterNegativeEnergy,
    ["Umbrella"] = BoosterUmbrella,
}

function mainMenu()
    while true do
        local pilihanBarang = gg.choice({
            "Besi",
            "Kayu",
            "Plastik",
            "Keluar",
        }, nil, "Pilih Barang Yang Ingin Kamu Ubah, Batas Aman 200 Yaa...")

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
            "Energy",
            "Jackpot",
            "DuD",
            "Freeze",
            "Negative Energy",
            "Umbrella",
            "Kembali",
        }, nil, "Pilih Kategori Booster untuk Barang: " .. barangPilih)

        if pilihanKategori == nil then
            return
        elseif pilihanKategori == 7 then
            return
        else
            local kategoriNama = ""
            if pilihanKategori == 1 then
                kategoriNama = "Energy"
            elseif pilihanKategori == 2 then
                kategoriNama = "Jackpot"
            elseif pilihanKategori == 3 then
                kategoriNama = "DuD"
            elseif pilihanKategori == 4 then
                kategoriNama = "Freeze"
            elseif pilihanKategori == 5 then
                kategoriNama = "Negative Energy"
            elseif pilihanKategori == 6 then
                kategoriNama = "Umbrella"
            end

            if kategoriNama ~= "" then
                ubahBooster(barangPilih, BoosterCategories[kategoriNama], kategoriNama)
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

        local pilihan = gg.choice(pilihanBooster, nil, "Pilih Booster dari Kategori " .. kategoriNama)

        if pilihan == nil then
            gg.setVisible(false)
            while true do
                if gg.isVisible(true) then
                    gg.setVisible(false)
                    mainMenu()
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
    gg.searchNumber(nilaiLama, gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(200)
    gg.editAll(nilaiBaru, gg.TYPE_DWORD)
    gg.toast("Sip, " .. barangPilih .. "nya Udah Diubah Jadi " .. pilihanNama .. " Yaa, Sekarang Keluar Dari Game, Lalu Masuk Lagi...")
    gg.clearResults()
end

function Keluar()
    gg.toast("Script Keluar, Skibidi BageRun Sigma King Mewing")
    os.exit()
end

mainMenu()
