local barang = {
    ["Besi"] = "267176888",
    -- Kamu bisa menambahkan metal lain sesuai kebutuhan
}

local AktaToken = {
    ["Token Kura-Kura"] = "736168197",
    ["Token Cheetah"] = "1813887575",
    ["Akta Pantai"] = "-869378290",
    ["Akta Gunung"] = "222012102",
    ["Akta Kota"] = "1925954004",
}

function mainMenu()
    while true do
        -- Opsi memilih jenis metal terlebih dahulu
        local pilihanBarang = gg.choice({
            "Besi",
            "Keluar",
        }, nil, "Pilih Barang Yang Ingin Kamu Ubah Yaa... Sekarang Cuma Ada Metal / Besi.")

        if pilihanBarang == 1 then
            -- Jika memilih Besi, masuk ke fungsi ubah Barang dan lanjutkan ke Akta/Token
            ubahBarang("Besi")
        elseif pilihanBarang == 2 or pilihanBarang == nil then
            Keluar()
        end
    end
end

function ubahBarang(barangPilih)
    while true do
        -- Opsi untuk memilih apakah akan mengubah menjadi Akta atau Token
        local pilihanAktaToken = {}
        for namaAktaToken, _ in pairs(AktaToken) do
            table.insert(pilihanAktaToken, namaAktaToken)
        end
        table.insert(pilihanAktaToken, "Kembali")

        local pilihan = gg.choice(pilihanAktaToken, nil, "Sekarang " .. barangPilih .. "nya Mau Diubah Jadi Apa Nih?")

        if pilihan == nil then
            return
        elseif pilihan == #pilihanAktaToken then
            return
        else
            local barangNama = pilihanAktaToken[pilihan]
            local nilaiBaru = AktaToken[barangNama]  -- Mengambil nilai dari AktaToken
            gantiNilai(barang[barangPilih], nilaiBaru, barangNama, barangPilih)
        end
    end
end

function gantiNilai(nilaiLama, nilaiBaru, pilihanNama, barangPilih)
    gg.clearResults()
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
