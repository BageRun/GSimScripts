local Gerjalan = 0

function AkuNew49K()
    gg.setVisible(false)
    gg.searchNumber("1500000;32::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    local EarlyGame = gg.getResults(gg.getResultsCount())

    local sc32 = {}
    local satukoma5 = {}
    
    for i, v in ipairs(EarlyGame) do
        if v.value == 32 then
            table.insert(sc32, v)
        elseif v.value == 1500000 then
            table.insert(satukoma5, v)
        end
    end

    if #sc32 > 0 then
        for i, v in ipairs(sc32) do
            v.value = 49000
        end
        gg.setValues(sc32)
    else
        gg.toast("Gak Ketemu Simcashnya...")
    end

    if #satukoma5 > 0 then
        for i, v in ipairs(satukoma5) do
            v.value = 0
        end
        gg.setValues(satukoma5)
    else
        gg.toast("Gak Ketemu Achievementnya...")
    end

    gg.clearResults()
    gg.alert("Semuanya Siap, Langsung Ambil Simcashnya Yaa...")
end

function AchievementPilihan()
    local Gerjalan = 0

    local input = gg.prompt(
        {
            "Masukkan Angka Persyaratan Achievement...",
            "Masukkan Jumlah Hadiah Simcashnya...",
            "Masukkan Jumlah Simcash yang Diinginkan...",
            "Checklist Jika Achievement Nya Terkunci"
        },
        nil,
        {
            "number",
            "number",
            "number",
            "checkbox"
        }
    )

    if input == nil then
        MenuUtama()
    end

    local persyaratanAchievement = tonumber(input[1])
    local jumlahSimcashSekarang = tonumber(input[2])
    local jumlahSimcashDiinginkan = tonumber(input[3])
    local achievementTerkunci = input[4]

    if not persyaratanAchievement or not jumlahSimcashSekarang or not jumlahSimcashDiinginkan then
        gg.toast("Angkanya Gak Valid, Pastikan Yang Kamu Masukkan Angkanya Saja Yaa...")
        return
    end

    local backupPersyaratan = {}
    local backupSimcash = {}

    gg.setVisible(false)
    gg.searchNumber(persyaratanAchievement .. ";" .. jumlahSimcashSekarang .. "::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    local hasilPencarian = gg.getResults(gg.getResultsCount())

    local targetInfo = gg.getTargetInfo()
    local is64bit = targetInfo.x64
    local hasilPersyaratan = {}
    local hasilSimcash = {}

    for i, v in ipairs(hasilPencarian) do
        local addressHex = string.format("%X", v.address)

        if is64bit then
            -- Validasi untuk 64-bit
            if string.sub(addressHex, 1, 2) == "7F" then
                if v.value == persyaratanAchievement then
                    table.insert(hasilPersyaratan, v)
                elseif v.value == jumlahSimcashSekarang then
                    table.insert(hasilSimcash, v)
                end
            end
        else
            -- Validasi untuk 32-bit
            if string.match(string.sub(addressHex, 1, 1), "[789]") then
                if v.value == persyaratanAchievement then
                    table.insert(hasilPersyaratan, v)
                elseif v.value == jumlahSimcashSekarang then
                    table.insert(hasilSimcash, v)
                end
            end
        end
    end

    if #hasilPersyaratan > 0 then
        if achievementTerkunci then
            for i, v in ipairs(hasilPersyaratan) do
                table.insert(backupPersyaratan, {address = v.address, value = v.value, flags = v.flags})
                v.value = 0
            end
            gg.setValues(hasilPersyaratan)
            gg.toast("Achievement Ketemu & Diunlock, Tunggu...")
        else
            gg.toast("Achievement Ketemu, Tunggu...")
        end
    else
        gg.toast("Syarat Achievement Gak Ketemu...")
    end

    if #hasilSimcash > 0 then
        for i, v in ipairs(hasilSimcash) do
            table.insert(backupSimcash, {address = v.address, value = v.value, flags = v.flags})
            v.value = jumlahSimcashDiinginkan
        end
        gg.setValues(hasilSimcash)
        gg.alert("Hadiah Simcash Udah Diubah Jadi " .. jumlahSimcashDiinginkan .. ", Silakan Ambil Hadiah di Mansion Yaa...")
    else
        gg.toast("Hadiah Simcash Gak Ketemu...")
        return
    end

    Gerjalan = 1

    while true do
        if Gerjalan == 1 and gg.isVisible(true) then
            gg.setVisible(false)
            local resetPrompt = gg.choice(
                {"Reset Achievement", "Simpan Achievement"},
                nil,
                "Pilih Reset Agar Achievement Nya Kembali Seperti Semula..."
            )

            if resetPrompt == 1 then
                if #backupPersyaratan > 0 then
                    gg.setValues(backupPersyaratan)
                    gg.toast("Achievement Direset...")
                end

                if #backupSimcash > 0 then
                    gg.setValues(backupSimcash)
                    gg.toast("Hadiah Simcash Direset...")
                end

                gg.alert("Semuanya Sudah Direset...")
                break
            elseif resetPrompt == 2 then
                gg.toast("Achievement Tidak Direset, Selesai...")
                break
            else
                gg.toast("Tidak Ada Opsi Dipilih, Keluar...")
                break
            end
        end
    end

    gg.clearResults()
end

function AchievementPresisi()
    local input = gg.prompt(
        {
            "Masukkan Angka Persyaratan Achievement...",
            "Masukkan Jumlah Hadiah Simcashnya...",
            "Masukkan Jumlah Simcash yang Diinginkan..."
        },
        nil,
        {"number", "number", "number"}
    )

    if input == nil then
        MenuUtama()
    end

    local persyaratanAchievement = tonumber(input[1])
    local jumlahSimcashSekarang = tonumber(input[2])
    local jumlahSimcashDiinginkan = tonumber(input[3])

    if not persyaratanAchievement or not jumlahSimcashSekarang or not jumlahSimcashDiinginkan then
        gg.toast("Angkanya Gak Valid, Pastikan Yang Kamu Masukkan Angkanya Saja Yaa...")
        return
    end

    gg.toast("Pencarian Dimulai...")
    gg.clearResults()
    gg.setVisible(false)
    gg.searchNumber(persyaratanAchievement .. ";" .. jumlahSimcashSekarang .. "::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)

    local hasilPencarian = gg.getResults(gg.getResultsCount())
    gg.toast("Ketemu Hasilnya, Jumlahnya " .. #hasilPencarian .. ", Jadi Sabar Yaa... Sambil Nunggu, Lanjutin Aja Mainnya...")

    if #hasilPencarian == 0 then
        gg.toast("Pencarian Presisi Gagal, Kembali Ke Awal...")
        return
    end

    local targetInfo = gg.getTargetInfo()
    local is64bit = targetInfo.x64
    local validAddress = {}
    local backupValues = {}

    for i, v in ipairs(hasilPencarian) do
        local addressHex = string.format("%X", v.address)

        if is64bit then
            -- Validasi untuk 64-bit
            if string.sub(addressHex, 1, 2) == "7F" and v.value == persyaratanAchievement then
                table.insert(validAddress, v)
                table.insert(backupValues, {address = v.address, value = v.value, flags = v.flags})
            end
        else
            -- Validasi untuk 32-bit
            if string.match(string.sub(addressHex, 1, 1), "[789]") and v.value == persyaratanAchievement then
                table.insert(validAddress, v)
                table.insert(backupValues, {address = v.address, value = v.value, flags = v.flags})
            end
        end
    end

    if #validAddress > 0 then
        for i, v in ipairs(validAddress) do
            v.value = 0
            gg.setValues({v})

            local nextAddress = v.address + 4
            local nextValue = gg.getValues({{address = nextAddress, flags = gg.TYPE_DWORD}})[1].value
            if nextValue == jumlahSimcashSekarang then
                gg.setValues({{address = nextAddress, value = jumlahSimcashDiinginkan, flags = gg.TYPE_DWORD}})
            end
        end
        gg.alert("Hadiah Simcash Udah Diubah Jadi " .. jumlahSimcashDiinginkan .. ", Cek Ke Mansion Yaa...")
    else
        gg.toast("Address Hadiah Gak Valid...")
    end

    gg.clearResults()
end

function Keluar()
    gg.toast("Apa Yang Dicari Orang Sigma? Bintang Skibidi, P Diddy Ahh Mango Still Water Balkan Rage In Ohio Pay With Aura, By BageRun") 
    os.exit()
end

function MenuUtama()
    local pilihan = gg.choice({
        "Pencarian Biasa",
        "Pencarian Presisi",
        "Lainnya",
        "Keluar"
    }, nil, "Pilih Opsi Pencarian Achievement... (Gunakan Pencarian Presisi Jika Nominalnya Sedikit (Misal 3000 Sims, 2 Simcash.)")

    if pilihan == nil then
        return
    end

    if pilihan == 1 then
        AchievementPilihan()
    elseif pilihan == 2 then
        AchievementPresisi()
    elseif pilihan == 3 then
        AkunBaru49K()
    elseif pilihan == 4 then
        Keluar()
    end
end

function AkunBaru49K()
    local PilihAchievement = gg.choice({
        "Akun Baru",
        "Kembali"
    }, nil, "Ini Khusus Buat Akun Baru Yaa, Kalo Bukan, Pake Pencarian Biasa / Presisi Aja.")

    if PilihAchievement == nil then
        return
    end

    if PilihAchievement == 1 then
        AkuNew49K()
    elseif PilihAchievement == 2 then
        MenuUtama()
    end
end

while true do 
    if gg.isVisible(true) then 
        Gerjalan = 1 
        gg.setVisible(false) 
    end

    if Gerjalan == 1 then
        MenuUtama()
        Gerjalan = 0
    end
end
