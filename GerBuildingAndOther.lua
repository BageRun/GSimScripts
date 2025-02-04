function MenuUtama()
    gg.setVisible(false)
    local pilihan = gg.choice({
        "Bangunan Biasa",
        "Bangunan Epik",
        "Utilitas",
        "Keluar"
    }, nil, "Fitur Mana Yang Ingin Kamu Gunakan?")

    if pilihan == nil then
        gg.setVisible(false)
        while true do
            if gg.isVisible(true) then
                gg.setVisible(false)
                MenuUtama()
            end
            gg.sleep(100)
        end
    end

    if pilihan == 1 then
        OpsiBangunanBiasa()
    elseif pilihan == 2 then
        EpikMana()
    elseif pilihan == 3 then
        OpsiUtilitasMana()
    elseif pilihan == 4 then
        Keluar()
    end
    GerUI = -1
end

function OpsiBangunanBiasa()
    local BangunanBiasaTipe = gg.choice({
        "Puri Maxis, Daniel, Ect.",
        "Rumah Kota",
        "Rumah Lembah Kota",
        "Taman Lembah Kota",
        "Kembali"
    }, nil, "Epik Mana Yang Ingin Kamu Gunakan? Epik Biasa Bangunannya Tidak Random, Sebaliknya Epik Random.")

    if BangunanBiasaTipe == nil then
        return MenuUtama()
    end

    if BangunanBiasaTipe == 1 then
        MaxisDaniel()
    elseif BangunanBiasaTipe == 2 then
        OpsiRumahKotaUtama()
    elseif BangunanBiasaTipe == 3 then
        OpsiRumahLembahKota()
    elseif BangunanBiasaTipe == 4 then
        OpsiTamanLembahKota()
    elseif BangunanBiasaTipe == 5 then
        MenuUtama()
        return
    end
end

function OpsiRumahLembahKota()
    local ORLK = gg.multiChoice({
        "Rumah Lembah Hijau Maksimal [Pemadam Kebakaran Kecil]",
        "Rumah Ngarai Kaktus Maksimal [Kantor Polisi Kecil]",
        "Rumah Kepulauan Cerah Maksimal [Klinik Kesehatan Kecil]",
        "Rumah Fyord Beku Maksimal [Taman Air Mancur Kecil]",
        "Rumah Tebing Batu Kapur Maksimal [Taman Seni Modern]",
        "Kembali"
    }, nil, "Pilih Bangunan Mana Yang Kamu Inginkan?")

    if not ORLK then
        return OpsiBangunanBiasa()
    end

    if ORLK[1] then searchAndEdit("583140736", "973877747") end
    if ORLK[2] then searchAndEdit("-150077002", "-1528167776") end
    if ORLK[3] then searchAndEdit("-66177429", "-1220248775") end
    if ORLK[4] then searchAndEdit("-1672104106", "2038647854") end
    if ORLK[5] then searchAndEdit("712780976", "-46404375") end
    if ORLK[6] then return end
    GerUI = -1
end

function OpsiTamanLembahKota()
    local OTLK = gg.multiChoice({
        "Institut Riset Cahaya Utara L10 [Taman Damai]",
        "Perhentian Taksi L10 [Plaza Urban]",
        "Aula Mahjong L10 [Taman Kota Kasino]",
        "Rumah Minum Teh L10 [Pasar Ikan]",
        "Kembali"
    }, nil, "Pilih Bangunan Mana Yang Kamu Inginkan?")

    if not OTLK then
        return OpsiBangunanBiasa()
    end

    if OTLK[1] then searchAndEdit("-958560911", "-61527945") end
    if OTLK[2] then searchAndEdit("-958560910", "776814664") end
    if OTLK[3] then searchAndEdit("-383906791", "1225598517") end
    if OTLK[4] then searchAndEdit("-1685111278", "-1053961458") end
    if OTLK[5] then return end
    GerUI = -1
end

function MaxisDaniel()
    local PMPD = gg.multiChoice({
        "Puri Maxis (Listrik Tenaga Angin Kecil)",
        "Patung Walikota Terhebat (Menara Air Kecil)",
        "Patung Maxis Man (Pipa Pembuangan Kecil)",
        "Kincir Angin Tua (Taman Kolam Refleksi)",
        "Kembali"
    }, nil, "Pilih Bangunan Mana Yang Kamu Inginkan?")

    if not PMPD then
        return OpsiBangunanBiasa()
    end

    if PMPD[1] then searchAndEdit("751144117", "925375395") end
    if PMPD[2] then searchAndEdit("139346164", "2040088750") end
    if PMPD[3] then searchAndEdit("182280403", "-2089966647") end
    if PMPD[4] then searchAndEdit("-1250093364", "1321420829") end
    if PMPD[5] then return end
    GerUI = -1
end

function OpsiRumahKotaUtama()
    local ORKU = gg.multiChoice({
        "Rumah Biasa Max [Listrik Batu Bara]",
        "Rumah Tokyo Max [Pipa Pembuangan Besar]",
        "Rumah Paris Max [Pembuangan Sampah Kecil]",
        "Rumah London Max [Pembuangan Sampah Besar]",
        "Rumah Neo Max [Listrik Tenaga Angin Besar]",
        "Kembali"
    }, nil, "Pilih Bangunan Mana Yang Kamu Inginkan?")

    if not ORKU then
        return OpsiBangunanBiasa()
    end

    if ORKU[1] then searchAndEdit("-1297331478", "1522778650") end
    if ORKU[2] then searchAndEdit("-12118437", "1493262871") end
    if ORKU[3] then searchAndEdit("-741284489", "2050186616") end
    if ORKU[4] then searchAndEdit("-935683329", "-1203406301") end
    if ORKU[5] then searchAndEdit("43959869", "-1430868908") end
    if ORKU[6] then return end
    GerUI = -1
end

function EpikMana()
    local EpikManaTipe = gg.choice({
        "Bangunan Epik Biasa",
        "Bangunan Epik Random",
        "Kembali"
    }, nil, "Epik Mana Yang Ingin Kamu Gunakan? Epik Biasa Bangunannya Tidak Random, Sebaliknya Epik Random.")

    if EpikManaTipe == nil then
        return MenuUtama()
    end

    if EpikManaTipe == 1 then
        BangunanEpik()
    elseif EpikManaTipe == 2 then
        EpikAcak()
    elseif EpikManaTipe == 3 then
        return MenuUtama()
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

    if not Epik then
        gg.setVisible(false)
        while true do
            if gg.isVisible(true) then
                return MenuUtama()
            end
            gg.sleep(100)
        end
    end
    
    if Epik[1] then searchAndEditEpik("-1415031897", "-1881032548") end
    if Epik[2] then searchAndEditEpik("612373322", "-691412735") end
    if Epik[3] then searchAndEditEpik("-1199642511", "-447372290") end
    if Epik[4] then searchAndEditEpik("388741896", "1813794920") end
    if Epik[5] then searchAndEditEpik("-1397016258", "-113962678") end
    if Epik[6] then searchAndEditEpik("1155556851", "-1999290445") end
    if Epik[7] then searchAndEditEpik("58778652", "995463179") end
    if Epik[8] then return end
    GerUI = -1
end

function RefreshFiturUtilitas()
    local RFU = gg.multiChoice({
        "Papan Iklan Menjadi Spider", 
        "Refresh Projek Epik", 
        "Kembali",
    }, nil, "Pilih Fitur Mana Yang Kamu Inginkan?")

    if not RFU then
        return OpsiUtilitasMana()
    end

    if RFU[1] then EditUtilitas("49899925", "-1323273224") end
    if RFU[2] then EditUtilitas("43200000", "0") end
    if RFU[3] then return end
    GerUI = -1
end

function OpsiVuNeoMallMana() 
    OVNMM = gg.multiChoice({ 
    "Unlock Menara Vu Level Max", 
    "Unlock Neo Mall", 
    "Tutup Neo Mall", 
    "Refresh Neo Mall", 
    "Kembali",
    }, nil, "Fungsi Jelqing Akan Infinity Aura W's Update") 

    if not OVNMM then
        return OpsiUtilitasMana()
    end

    if OVNMM[1] then
        EditUtilitas("2019791904", "1362697172")
    end
    if OVNMM[2] then
        EditUtilitas("424671600", "2087261488")
    end
    if OVNMM[3] then
        EditUtilitas("2087261488", "424671600")
    end
    if OVNMM[4] then
        EditUtilitas("21600000", "0")
    end
    if OVNMM[5] then
        return
    end
    GerUI = -1
end

function OpsiUtilitasMana()
    local OUM = gg.choice({
        "Gudang Max", 
        "Vu & Neo Mall", 
        "Lainnya", 
        "Kembali"
    }, nil, "Pilih Fitur Mana Yang Kamu Inginkan?")

    if OUM == nil then
        return MenuUtama()
    end

    if OUM == 4 then
        return
    elseif OUM == 1 then
        OpsiGudangMaxMana()
    elseif OUM == 2 then
        OpsiVuNeoMallMana()
    elseif OUM == 3 then
        RefreshFiturUtilitas()
    end
end

function OpsiGudangMaxMana()
    local OGMM = gg.multiChoice({
        "Gudang Kota Max", 
        "Gudang omega Max (Gudang Omega Awal)", 
        "Penyimpanan Neo Bank Max (Neo Bank Awal)", 
        "Kembali",
    }, nil, "Pilih Fitur Mana Yang Kamu Inginkan?")

    if not OGMM then
        return OpsiUtilitasMana()
    end
    if OGMM[1] then
        gg.alert("Total Penyimpanan Gudang Harus 40! Jika Lebih, Fitur Tidak Akan Berhasil.")
        EditUtilitas("1785034572", "-1223401048") end
    if OGMM[2] then
        EditUtilitas("-5428496", "-179140214") end
    if OGMM[3] then
        EditUtilitas("1148880551", "-741647391") end
    if OGMM[4] then return end
    GerUI = -1
end

function EpikAcak() 
    OpsiEpikAcak = gg.multiChoice({ 
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

    if not OpsiEpikAcak then
        gg.setVisible(false)
        while true do
            if gg.isVisible(true) then
                return MenuUtama()
            end
            gg.sleep(100)
        end
    end

    if OpsiEpikAcak[1] then searchandeditfastepik(1522778645, -1881032548) end 
    if OpsiEpikAcak[2] then searchandeditfastepik(-1881032548, nil, true) end 
    if OpsiEpikAcak[3] then searchandeditfastepik(1522778645, -691412735) end 
    if OpsiEpikAcak[4] then searchandeditfastepik(-691412735, nil, true) end 
    if OpsiEpikAcak[5] then searchandeditfastepik(1522778645, -447372290) end 
    if OpsiEpikAcak[6] then searchandeditfastepik(-447372290, nil, true) end 
    if OpsiEpikAcak[7] then searchandeditfastepik(1522778645, 1813794920) end 
    if OpsiEpikAcak[8] then searchandeditfastepik(1813794920, nil, true) end 
    if OpsiEpikAcak[9] then searchandeditfastepik(1522778645, -113962678) end 
    if OpsiEpikAcak[10] then searchandeditfastepik(-113962678, nil, true) end 
    if OpsiEpikAcak[11] then searchandeditfastepik(1522778645, -1999290445) end 
    if OpsiEpikAcak[12] then searchandeditfastepik(-1999290445, nil, true) end 
    if OpsiEpikAcak[13] then searchandeditfastepik(1522778645, 995463179) end 
    if OpsiEpikAcak[14] then searchandeditfastepik(995463179, nil, true) end 
    if OpsiEpikAcak[15] then return end
    GerUI = -1
end

-- Untuk Biasa
function searchAndEdit(searchValue, editValue)
    gg.clearResults()
    gg.searchNumber(searchValue, gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    local results = gg.getResults(200)
    if #results > 0 then
        gg.editAll(editValue, gg.TYPE_DWORD)
        gg.toast("Selesai, Keluar Dari Game / Pergi Ke Kota Daniel Lalu Kembali Lagi Ke Dalam Game...")
        gg.clearResults()
    else
        gg.toast("Pencarian Gagal, Coba Restart Game Nya Dulu Yaa...")
    end
end

-- Untuk Bangunan Epik
function searchAndEditEpik(searchValue, editValue)
    gg.clearResults()
    gg.searchNumber(searchValue, gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    local results = gg.getResults(200)
    if #results > 0 then
        gg.editAll(editValue, gg.TYPE_DWORD)
        gg.toast("Selesai, Keluar Dari Game / Pergi Ke Kota Daniel Lalu Kembali Lagi Ke Dalam Game...")
        gg.clearResults()
    else
        gg.toast("Pencarian Gagal, Coba Restart Game Nya Dulu Yaa...")
    end
end

-- Untuk Utilitas
function EditUtilitas(searchValue, editValue)
    gg.setVisible(false)
    gg.clearResults()
    gg.searchNumber(searchValue, gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    local results = gg.getResults(200)
    if #results > 0 then
        gg.editAll(editValue, gg.TYPE_DWORD)
        gg.toast("Selesai, Keluar Dari Game / Pergi Ke Kota Daniel Lalu Kembali Lagi Ke Dalam Game...")
        gg.clearResults()
    else
        gg.toast("Pencarian Gagal, Coba Restart Game Nya Dulu Yaa...")
    end
end

-- Untuk Epic Acak
function searchandeditfastepik(searchVal, editVal, isRevert)
    gg.setVisible(false)
    gg.clearResults()
    gg.searchNumber(tostring(searchVal), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    local results = gg.getResults(200)

    if editVal then 
        gg.editAll(tostring(editVal), gg.TYPE_DWORD)
        gg.toast("Bangun Rumah Biasa Level 1, Lalu Pergi Ke Kota Lain, Dan Kembali Lagi...")
        gg.clearResults()
    elseif isRevert then
        if results and #results > 0 then
            gg.setValues(results)
            gg.toast("Berhasil Direset")
            gg.clearResults()
        else
            gg.toast("Gak Ada Yang Bisa Direvert Nih, Coba Restart Game Nya Yaa...")
        end
    end
end

function Keluar() 
    gg.toast("Apa Yang Dicari Orang Sigma? Bintang Skibidi, P Diddy Ahh Mango Still Water Balkan Rage In Ohio Pay With Aura") 
    os.exit()
end

while true do 
    if gg.isVisible(true) then 
      GerUI = 1 
      gg.setVisible(false) 
    end 
    gg.clearResults() 
    if GerUI == 1 then 
      MenuUtama()
    end
    gg.sleep(99)
end

MenuUtama()
