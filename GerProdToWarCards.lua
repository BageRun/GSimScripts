local barang = {
    ["Besi"] = "267176888",
    ["Kayu"] = "2090874750",
    ["Plastik"] = "-1270634091",
}

local ClassSWarcard = {
    ["Hand Comics"] = "1430583743",
    ["Shrink Ray"] = "1430583746",
    ["Giant Rock Monsters"] = "-35376651",
    ["Not In Kansas"] = "1430583747",
}

local ClassMWarcard = {
    ["Magnetism"] = "1430583749",
    ["Tentacle Vortex"] = "1430583748",
    ["Flying Vu Robot"] = "-35376655",
    ["Disco Twister"] = "-35376689",
}

local ClassLWarcard = {
    ["Plant Monster"] = "-35376688",
    ["Blizzaster"] = "1430583750",
    ["Fishaster"] = "-35376685",
    ["Ancient Curse"] = "-35376684",
}

local ClassXXLWarcard = {
    ["Building Portal"] = "-35376681",
    ["B Movie Monster"] = "-35376654",
    ["Hissy Fit"] = "-35376648",
    ["Mellow Bellow"] = "-35376647",
}

local ClassXLWarcard = {
    ["Hands Of Doom"] = "1430583751",
    ["16 Tons"] = "-35376683",
    ["Spiders"] = "-35376680",
    ["Dance Shoes"] = "-35376687",
}

local ClassAPlusWarcard = {
    ["Doomsday Quack"] = "-35376650",
    ["Electric Deity"] = "-35376649",
    ["Shield Buster"] = "-35376623",
    ["Zest From Above"] = "-35376622",
}

local WarcardClasses = {
    ["Class S"] = ClassSWarcard,
    ["Class M"] = ClassMWarcard,
    ["Class L"] = ClassLWarcard,
    ["Class XXL"] = ClassXXLWarcard,
    ["Class XL"] = ClassXLWarcard,
    ["Class A+"] = ClassAPlusWarcard,
}

function mainMenu()
    while true do
        local pilihanBarang = gg.choice({
            "Besi",
            "Kayu",
            "Plastik",
            "Keluar",
        }, nil, "Pilih Barang Yang Ingin Kamu Ubah, Batas Aman 280 Yaa...")

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
        local pilihanClass = gg.choice({
            "Class S",
            "Class M",
            "Class L",
            "Class XXL",
            "Class XL",
            "Class A+",
            "Kembali",
        }, nil, "Pilih Class Kartu Perang untuk Barang: " .. barangPilih)

        if pilihanClass == nil then
            gg.setVisible(false)
            while true do
                if gg.isVisible(true) then
                    gg.setVisible(false)
                    ubahBarang()
				end
			end

        elseif pilihanClass == 7 then
            return
        else
            local classNama = ""
            if pilihanClass == 1 then
                classNama = "Class S"
            elseif pilihanClass == 2 then
                classNama = "Class M"
            elseif pilihanClass == 3 then
                classNama = "Class L"
            elseif pilihanClass == 4 then
                classNama = "Class XXL"
            elseif pilihanClass == 5 then
                classNama = "Class XL"
            elseif pilihanClass == 6 then
                classNama = "Class A+"
            end

            if classNama ~= "" then
                ubahKartu(barangPilih, WarcardClasses[classNama], classNama)
            else
                return
            end
        end
    end
end

function ubahKartu(barangPilih, kartuClass, classNama)
    while true do
        local pilihanKartu = {}
        for kartuNama, _ in pairs(kartuClass) do
            table.insert(pilihanKartu, kartuNama)
        end
        table.insert(pilihanKartu, "Kembali")

        local pilihan = gg.choice(pilihanKartu, nil, "Pilih Kartu dari " .. classNama)

        if pilihan == nil then
            return
        elseif pilihan == #pilihanKartu then
            return
        else
            local kartuNama = pilihanKartu[pilihan]
            local nilaiBaru = kartuClass[kartuNama]
            gantiNilai(barang[barangPilih], nilaiBaru, kartuNama, barangPilih)
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
