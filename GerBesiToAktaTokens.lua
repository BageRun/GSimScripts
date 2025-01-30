if nil then mainMenu()
end

local barang = {
    ["Besi"] = "267176888",
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
        local pilihanBarang = gg.choice({
            "Besi",
            "Keluar",
        }, nil, "Pilih Barang Yang Ingin Kamu Ubah Yaa... Sekarang Cuma Ada Metal / Besi.")

        if pilihanBarang == 1 then
            ubahBarang("Besi")
        elseif pilihanBarang == 2 then
            Keluar()
        elseif pilihanBarang == nil then
            gg.setVisible(false)
            while true do
                if gg.isVisible(true) then
                    gg.setVisible(false)
                    mainMenu()
                end
            end
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
            gg.setVisible(false)
            while true do
                if gg.isVisible(true) then
                    gg.setVisible(false)
                    mainMenu()
				end
			end

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
    gg.setVisible(false)
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

mainMenu()