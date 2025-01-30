local HideUI = 0

-- Untuk Bangunan Biasa
function searchAndEdit(searchValue, editValue)
    gg.clearResults()
    gg.searchNumber(searchValue, gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    local results = gg.getResults(200)
    if #results > 0 then
        gg.editAll(editValue, gg.TYPE_DWORD)
        gg.toast("Pergi Ke Ohio Untuk +1000 Aura Lalu Kembali Lagi Ke Kota")
    else
        gg.toast("Pencarian Tidak Ditemukan!")
    end
end

function BangunanBiasa()
    local BiasaPilihan = gg.multiChoice({
        "Puri Maxis [Listrik Tenaga Angin Kecil]",
        "Patung Walikota Terhebat [Menara Air Kecil]",
        "Patung Maxis Man [Pipa Pembuangan Kecil]",
        "Rumah Biasa Maksimal [Listrik Batu Bara]",
        "Rumah Tokyo Maksimal [Pipa Pembuangan Besar]",
        "Rumah Paris Maksimal [Pembuangan Sampah Kecil]",
        "Rumah London Maksimal [Pembuangan Sampah Besar]",
        "Rumah Neo Maksimal [Listrik Tenaga Angin Besar]",
        "Rumah Lembah Hijau Maksimal [Pemadam Kebakaran Kecil]",
        "Rumah Ngarai Kaktus Maksimal [Kantor Polisi Kecil]",
        "Rumah Kepulauan Cerah Maksimal [Klinik Kesehatan Kecil]",
        "Rumah Fyord Beku Maksimal [Taman Air Mancur Kecil]",
        "Rumah Tebing Batu Kapur Maksimal [Taman Seni Modern]",
        "Lanskap Kincir Air Tua [Taman Kolam Refleksi]",
        "Institut Riset Cahaya Utara L10 [Taman Damai]",
        "Perhentian Taksi L10 [Plaza Urban]",
        "Aula Mahjong L10 [Taman Kota Kasino]",
        "Rumah Minum Teh L10 [Pasar Ikan]",
        "Kembali"
    }, nil, "Taruh Bangunan Sigma Yang Tertera Di Scripts Sebelum MeRizz Kai Cenat, Pastikan Tidak L By Fanum Tax")
    
    if BiasaPilihan[1] then searchAndEdit("751144117", "925375395") end
    if BiasaPilihan[2] then searchAndEdit("139346164", "2040088750") end
    if BiasaPilihan[3] then searchAndEdit("182280403", "-2089966647") end
    if BiasaPilihan[4] then searchAndEdit("-1297331478", "1522778650") end
    if BiasaPilihan[5] then searchAndEdit("-12118437", "1493262871") end
    if BiasaPilihan[6] then searchAndEdit("-741284489", "2050186616") end
    if BiasaPilihan[7] then searchAndEdit("-935683329", "-1203406301") end
    if BiasaPilihan[8] then searchAndEdit("43959869", "-1430868908") end
    if BiasaPilihan[9] then searchAndEdit("583140736", "973877747") end
    if BiasaPilihan[10] then searchAndEdit("-150077002", "-1528167776") end
    if BiasaPilihan[11] then searchAndEdit("-66177429", "-1220248775") end
    if BiasaPilihan[12] then searchAndEdit("-1672104106", "2038647854") end
    if BiasaPilihan[13] then searchAndEdit("712780976", "-46404375") end
    if BiasaPilihan[14] then searchAndEdit("-1250093364", "1321420829") end
    if BiasaPilihan[15] then searchAndEdit("-958560911", "-61527945") end
    if BiasaPilihan[16] then searchAndEdit("-958560910", "776814664") end
    if BiasaPilihan[17] then searchAndEdit("-383906791", "1225598517") end
    if BiasaPilihan[18] then searchAndEdit("-1685111278", "-1053961458") end
    if BiasaPilihan[18] then return end
    UI = 0
end

-- Untuk Bangunan Epik
function searchAndEditEpik(searchValue, editValue)
    gg.clearResults()
    gg.searchNumber(searchValue, gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    local results = gg.getResults(200)
    if #results > 0 then
        gg.editAll(editValue, gg.TYPE_DWORD)
        gg.toast("Pergi Ke Ohio Untuk +1000 Aura Lalu Kembali Lagi Ke Kota")
    else
        gg.toast("Pencarian Tidak Ditemukan!")
    end
end

function BangunanEpik() 
    Epik = gg.multiChoice({ 
    "Epik Spesialisasi Pendidikan [Pembakaran Sampah]", 
    "Epik Spesialisasi Perjudian [Pabrik Kecil]", 
    "Epik Spesialisasi Hiburan [Pabrik Dasar]", 
    "Epik Spesialisasi Transportasi [Pemadam Kebakaran Dasar]", 
    "Epik Spesialisasi Bangunan Terkenal [Kantor Polisi Dasar]", 
    "Epik Spesialisasi Pantai [Klinik Kesehatan Dasar]", 
    "Epik Spesialisasi Gunung [Kafetaria Taman Universitas]", 
    "Kembali", 
    }, nil, "Taruh Bangunan Sigma Yang Tertera Di Scripts Sebelum MeRizz Kai Cenat, Pastikan Tidak L By Fanum Tax") 
    
    if Epik[1] then searchAndEditEpik("-1415031897", "-1881032548") end
    if Epik[2] then searchAndEditEpik("612373322", "-691412735") end
    if Epik[3] then searchAndEditEpik("-1199642511", "-447372290") end
    if Epik[4] then searchAndEditEpik("388741896", "1813794920") end
    if Epik[5] then searchAndEditEpik("-1397016258", "-113962678") end
    if Epik[6] then searchAndEditEpik("1155556851", "-1999290445") end
    if Epik[7] then searchAndEditEpik("58778652", "995463179") end
    if Epik[8] then return end
    UI = 0
end

-- Untuk Utilitas
function EditUtilitas(searchValue, editValue)
    gg.clearResults()
    gg.searchNumber(searchValue, gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    local results = gg.getResults(200)
    if #results > 0 then
        gg.editAll(editValue, gg.TYPE_DWORD)
        gg.toast("Pergi Ke Ohio Untuk +1000 Aura Lalu Kembali Lagi Ke Kota")
    else
        gg.toast("Pencarian Tidak Ditemukan!")
    end
end

function Utilitas() 
    Utility = gg.multiChoice({ 
    "Gudang Kota Max [Gudang Kota Awal]", 
    "Gudang Omega Max [Gudang Omega Awal]", 
    "Neo Bank Max [Neo Bank Awal]", 
    "Buka & Upgrade Menara Vu Level 18", 
    "Buka Neo Mall dibawah level 30", 
    "Tutup Neo Mall dibawah level 30", 
    "Ganti Papan Iklan jadi Laba-laba", 
    "Refresh Neo Mall", 
    "Refresh waktu tunggu Projects Sigma Epic", 
    "Kembali", 
    }, nil, "Fungsi Jelqing Akan Infinity Aura W's Update") 
    
    if Utility[1] then EditUtilitas("1785034572", "-1223401048") end
    if Utility[2] then EditUtilitas("-5428496", "-179140214") end
    if Utility[3] then EditUtilitas("1148880551", "-741647391") end
    if Utility[4] then EditUtilitas("2019791904", "1362697172") end
    if Utility[5] then EditUtilitas("424671600", "2087261488") end
    if Utility[6] then EditUtilitas("2087261488", "424671600") end
    if Utility[7] then EditUtilitas("49899925", "-1323273224") end
    if Utility[8] then EditUtilitas("21600000", "0") end
    if Utility[9] then EditUtilitas("43200000", "0") end
    if Utility[10] then return end
    UI = 0
end

function EpikAcak() 
    BD = gg.multiChoice({ 
        "Fast Epic Pendidikan [Bangun Area Rumah Biasa]", 
        "CLEAR EPIC Pendidikan", 
        "Fast Epic Perjudian [Bangun Area Rumah Biasa]", 
        "CLEAR EPIC Perjudian", 
        "Fast Epic Hiburan [Bangun Area Rumah Biasa]", 
        "CLEAR EPIC Hiburan", 
        "Fast Epic Transportasi [Bangun Area Rumah Biasa]", 
        "CLEAR EPIC Transportasi", 
        "Fast Epic Bangunan Terkenal [Bangun Area Rumah Biasa]", 
        "CLEAR EPIC Bangunan Terkenal", 
        "Fast Epic Pantai [Bangun Area Rumah Biasa]", 
        "CLEAR EPIC Pantai", 
        "Fast Epic Gunung [Bangun Area Rumah Biasa]", 
        "CLEAR EPIC Gunung", 
        "Kembali", 
    }, nil, "Setiap Gen Z Mengganti Mewing Streak Fast Epic, Gooning CLEAR EPIC Agar W's Milkshake") 

    if BD[1] then searchandeditfastepik(1522778645, -1881032548) end 
    if BD[2] then searchandeditfastepik(-1881032548, nil, true) end 
    if BD[3] then searchandeditfastepik(1522778645, -691412735) end 
    if BD[4] then searchandeditfastepik(-691412735, nil, true) end 
    if BD[5] then searchandeditfastepik(1522778645, -447372290) end 
    if BD[6] then searchandeditfastepik(-447372290, nil, true) end 
    if BD[7] then searchandeditfastepik(1522778645, 1813794920) end 
    if BD[8] then searchandeditfastepik(1813794920, nil, true) end 
    if BD[9] then searchandeditfastepik(1522778645, -113962678) end 
    if BD[10] then searchandeditfastepik(-113962678, nil, true) end 
    if BD[11] then searchandeditfastepik(1522778645, -1999290445) end 
    if BD[12] then searchandeditfastepik(-1999290445, nil, true) end 
    if BD[13] then searchandeditfastepik(1522778645, 995463179) end 
    if BD[14] then searchandeditfastepik(995463179, nil, true) end 
    if BD[15] then return end
    UI = 0
end

-- Untuk Epic Acak
function searchandeditfastepik(searchVal, editVal, isRevert)
    gg.clearResults()
    gg.searchNumber(tostring(searchVal), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    local results = gg.getResults(200)

    if editVal then 
        gg.editAll(tostring(editVal), gg.TYPE_DWORD)
        gg.toast("Pergi Ke Ohio Untuk +1000 Aura Lalu Kembali Lagi Ke Kota")
    elseif isRevert then
        if results and #results > 0 then
            gg.setValues(results)
            gg.toast("Berhasil Direset")
            MenuUtama()
        else
            gg.toast("Tidak ada hasil yang ditemukan untuk revert!")
            MenuUtama()
        end
    end
end

function MenuUtama()
    local pilihan = gg.choice({
        "Bangunan Biasa",
        "Bangunan Epik",
        "Utilitas",
        "Keluar"
    }, nil, "Fitur Mana Yang Ingin Kamu Gunakan?")

    if pilihan == nil then
        return
    end

    if pilihan == 1 then
        BangunanBiasa()
    elseif pilihan == 2 then
        EpikMana()
    elseif pilihan == 3 then
        Utilitas()
    elseif pilihan == 4 then
        Keluar()
    end
end

function EpikMana()
    local PilihAchievement = gg.choice({
        "Bangunan Epik Biasa",
        "Bangunan Epik Random",
        "Kembali"
    }, nil, "Epik Mana Yang Ingin Kamu Gunakan? Epik Biasa Bangunannya Tidak Random, Sebaliknya Epik Random.")

    if PilihAchievement == nil then
        return
    end

    if PilihAchievement == 1 then
        BangunanEpik()
    elseif PilihAchievement == 2 then
        EpikAcak()
    elseif PilihAchievement == 3 then
        return
    end
end

function Keluar() 
    gg.toast("Apa Yang Dicari Orang Sigma? Bintang Skibidi, P Diddy Ahh Mango Still Water Balkan Rage In Ohio Pay With Aura") 
    os.exit()
end

while true do 
    if gg.isVisible(true) then 
        HideUI = 1 
        gg.setVisible(false) 
    end

    if HideUI == 1 then
        MenuUtama()
        HideUI = 0
    end
end

MenuUtama()