local UI = 0

local barang = {
    ["Besi"] = "267176888",
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

function mainMenu()
    while true do
        local pilihanBarang = gg.choice({
            "Besi",
            "Keluar",
        }, nil, "Pilih Barang Yang Ingin Kamu Ubah, 500 Kayaknya Aman Sih, Tapi Kalo Takut Terbang, 280 Aja Yaa...")

        if pilihanBarang == 1 then
            ubahBarang("Besi")
        elseif pilihanBarang == 2 or pilihanBarang == nil then
            Keluar()
        end
    end
end

function ubahBarang(barangPilih)
    while true do
        local pilihanBarangPerang = {}
        for namaBarang, _ in pairs(BarangPerang) do
            table.insert(pilihanBarangPerang, namaBarang)
        end
        table.insert(pilihanBarangPerang, "Kembali")

        local pilihan = gg.choice(pilihanBarangPerang, nil, "Pilih Barang Perang untuk " .. barangPilih)

        if pilihan == nil then
            return
        elseif pilihan == #pilihanBarangPerang then
            return
        else
            local barangNama = pilihanBarangPerang[pilihan]
            local nilaiBaru = BarangPerang[barangNama]
            gantiNilai(barang[barangPilih], nilaiBaru, barangNama, barangPilih)
        end
    end
end

function gantiNilai(nilaiLama, nilaiBaru, pilihanNama, barangPilih)
    gg.clearResults()
    gg.searchNumber(nilaiLama, gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber(nilaiLama, gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(200)
    gg.editAll(nilaiBaru, gg.TYPE_DWORD)
    gg.toast("Sip, " .. barangPilih .. "nya Udah Diubah Jadi " .. pilihanNama .. " Yaa, Sekarang Keluar Dari Game, Lalu Masuk Lagi...")
    gg.clearResults()
    mainMenu()
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
