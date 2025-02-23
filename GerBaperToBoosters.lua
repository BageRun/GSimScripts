local UI = 0
local lastFunction = nil

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

local BarangPerang = {
    ["Teropong"] = "1560176023",
    ["Hidran Kebarakan"] = "860715237",
    ["Jerigen Bensin"] = "-916988905",
    ["Pengeras Suara"] = "-1540742631",
    ["Tang"] = "352219700",
    ["Penyedot WC"] = "-1247109630",
    ["Baling-Baling"] = "-1962827238",
    ["Sepatu Kuning"] = "-1607480754",
    ["Bebek"] = "471968558",
    ["Kotak P3K"] = "226338627",
    ["Kotak Peluru"] = "2090081903",
    ["Anvil"] = "253271711",
}

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
        mainMenu()
    end
end

function mainMenu()
    lastFunction = mainMenu
    while true do
        local pilihanBarang = gg.choice({
            "Barang Perang",
            "Keluar",
        }, nil, "Pilih Barang Yang Ingin Kamu Ubah")

        if pilihanBarang == 1 then
            pilihBarangPerang()
        elseif pilihanBarang == 2 then
            Keluar()
        elseif pilihanBarang == nil then
            hideUI()
        end
    end
end

function pilihBarangPerang()
    lastFunction = pilihBarangPerang
    local pilihanBarangPerang = {}
    for namaBarang, _ in pairs(BarangPerang) do
        table.insert(pilihanBarangPerang, namaBarang)
    end
    table.insert(pilihanBarangPerang, "Kembali")

    local pilihan = gg.choice(pilihanBarangPerang, nil, "Pilih Barang Perang untuk Diubah")

    if pilihan == nil or pilihan == #pilihanBarangPerang then
        return
    else
        local namaBarangPerang = pilihanBarangPerang[pilihan]
        pilihBooster(namaBarangPerang)
    end
end

function pilihBooster(barangNamaPerang)
    lastFunction = function()
        pilihBooster(barangNamaPerang)
    end
    local pilihanBooster = {}
    for kategori, booster in pairs(BoosterCategories) do
        for namaBooster, _ in pairs(booster) do
            table.insert(pilihanBooster, namaBooster)
        end
    end
    table.insert(pilihanBooster, "Kembali")

    local pilihan = gg.choice(pilihanBooster, nil, "Pilih Booster untuk " .. barangNamaPerang)

    if pilihan == nil or pilihan == #pilihanBooster then
        return
    else
        local namaBoosterYangDipilih = pilihanBooster[pilihan]
        local boosterYangDipilih
        for kategori, booster in pairs(BoosterCategories) do
            if booster[namaBoosterYangDipilih] then
                boosterYangDipilih = booster[namaBoosterYangDipilih]
                break
            end
        end
        gantiNilai(barangNamaPerang, boosterYangDipilih, namaBoosterYangDipilih)
    end
end

function gantiNilai(barangNamaPerang, boosterYangDipilih, boosterNama)
    gg.clearResults()
    gg.searchNumber(BarangPerang[barangNamaPerang], gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(200)
    gg.editAll(boosterYangDipilih, gg.TYPE_DWORD)
    gg.toast("Sip, " .. barangNamaPerang .. "nya Udah Diubah Jadi " .. boosterNama .. " Yaa, Sekarang Keluar Dari Game, Lalu Masuk Lagi...")
    hideUI()
end

function Keluar()
    gg.toast("Script Keluar, Skibidi BageRun Sigma King Mewing")
    os.exit()
end

while true do
    if gg.isVisible(true) then
        UI = 1
        gg.setVisible(false)
    end

    if UI == 1 then
        mainMenu()
        UI = 0
    end
end

mainMenu()
