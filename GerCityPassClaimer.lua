local HideUI = 0

function MenuUtama()
    PassKota = gg.choice({
        "Simoleon",
        "Simcash",
        "Kunci Emas",
        "Kunci Platinum",
        "Keluar"
    }, nil, "Mana Yang Ingin Kamu Gunakan? Beta Version")

    if PassKota == nil then
        gg.setVisible(false)
        while true do
            if gg.isVisible(true) then
                gg.setVisible(false)
                MenuUtama()
                break
                gg.sleep(333)
            end
        end
    end

    if PassKota == 1 then
        Simoleon()
    elseif PassKota == 2 then
        SimcashPass()
    elseif PassKota == 3 then
        KunciEmasPass()
    elseif PassKota == 4 then
        KunciPlatinumPass()
    elseif PassKota == 5 then
        GerOut()
    end
end

function Simoleon()
    gg.clearResults()
    gg.clearList()
    gg.setVisible(false)
    gg.toast("Pencarian Dimulai...")
    gg.searchNumber("3000;1;250::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.refineNumber("3000", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)

    Simoleon = gg.getResults(25)

    if #Simoleon == 0 then
        gg.alert("Gak Ketemu Nih Simoleon Nya, Restart Game Lalu Coba Lagi Yaa...")
        return
    end

    local input = gg.prompt(
        {
            "Masukkan Simoleon Yang Kamu Inginkan, Maksimal 17 Juta Yaa...",
        },
        nil,
        {
            "number",
        }
    )

    if input == nil then
        MenuUtama()
        return
    end

    local JumlahSimoleonYangDiInginkan = tonumber(input[1])

    for i, v in ipairs(Simoleon) do
        v.value = JumlahSimoleonYangDiInginkan
    end

    gg.setValues(Simoleon)
    gg.toast("Simoleon Sudah Diubah Jadi " .. JumlahSimoleonYangDiInginkan .. " Yaa, Sekarang Claim Di Pass Kota..")
    gg.clearResults()
end

function SimcashPass()
    local pilihanKotak = gg.choice({
        "Kotak 8", 
        "Kotak 48"
    }, nil, "Simcash Di Kotak Mana Yang Ingin Kamu Claim?")

    if pilihanKotak == nil then
        MenuUtama()
        return
    end

    local searchPattern
    local refinePattern

    if pilihanKotak == 1 then
        searchPattern = "15;20;500;2000::"
        refinePattern = "20"
    elseif pilihanKotak == 2 then
        searchPattern = "10000;550;1::"
        refinePattern = "550"
    end

    local input = gg.prompt(
        {
            "Masukkan Simcash Yang Kamu Inginkan, Maksimal 48888...",
        },
        nil,
        {
            "number",
        }
    )

    if input == nil then
        MenuUtama()
        return
    end

    local jumlahSimcashDiinginkan = tonumber(input[1])

    gg.clearResults()
    gg.toast("Mencari Dan Menambahkan Simcash Menjadi" .. jumlahSimcashDiinginkan)
    gg.setVisible(false)
    gg.searchNumber(searchPattern, gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.refineNumber(refinePattern, gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)

    local SimcashPassRequest = gg.getResults(25)

    if #SimcashPassRequest == 0 then
        gg.alert("Gak Ketemu Nih Simcash Nya, Restart Game Lalu Coba Lagi Yaa...")
        return
    end

    for i, v in ipairs(SimcashPassRequest) do
        v.value = jumlahSimcashDiinginkan
    end

    gg.setValues(SimcashPassRequest)
    gg.toast("Simcash Berhasil Diubah Menjadi " .. jumlahSimcashDiinginkan .. " Yaa... Sekarang Tinggal Claim Aja Di Pass Kota...")
    gg.clearResults()
end

function KunciEmasPass()
    gg.clearResults()
    gg.clearList()
    gg.setVisible(false)
    gg.toast("Pencarian Dimulai...")
    gg.searchNumber("60000;5;15::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.refineNumber("15", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)

    KunciEmas = gg.getResults(99)

    if #KunciEmas == 0 then
        gg.alert("Gak Ketemu Nih Kunci Emas Nya, Restart Game Lalu Coba Lagi Yaa...")
        return
    end

    local input = gg.prompt(
        {
            "Masukkan Kunci Emas Yang Kamu Inginkan, Maksimal 499 Yaa...",
        },
        nil,
        {
            "number",
        }
    )

    if input == nil then
        MenuUtama()
        return
    end

    local JumlahKunciEmasYangDiInginkan = tonumber(input[1])

    for i, v in ipairs(KunciEmas) do
        v.value = JumlahKunciEmasYangDiInginkan
    end

    gg.setValues(KunciEmas)
    gg.toast("Kunci Emas Sudah Diubah Jadi " .. JumlahKunciEmasYangDiInginkan .. " Yaa, Sekarang Claim Di Pass Kota..")
    gg.clearResults()
end

function KunciPlatinumPass()
    gg.clearResults()
    gg.clearList()
    gg.setVisible(false)
    gg.toast("Pencarian Dimulai...")
    gg.searchNumber("45;25;10000::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.refineNumber("25", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)

    KunciPlatinum = gg.getResults(99)

    if #KunciPlatinum == 0 then
        gg.alert("Gak Ketemu Nih Kunci Platinum Nya, Restart Game Lalu Coba Lagi Yaa...")
        return
    end

    local input = gg.prompt(
        {
            "Masukkan Kunci Platinum Yang Kamu Inginkan, Maksimal 499 Yaa...",
        },
        nil,
        {
            "number",
        }
    )

    if input == nil then
        MenuUtama()
        return
    end

    local JumlahKunciPlatinumYangDiInginkan = tonumber(input[1])

    for i, v in ipairs(KunciPlatinum) do
        v.value = JumlahKunciPlatinumYangDiInginkan
    end

    gg.setValues(KunciPlatinum)
    gg.toast("Kunci Platinum Sudah Diubah Jadi " .. JumlahKunciPlatinumYangDiInginkan .. " Yaa, Sekarang Claim Di Pass Kota..")
    gg.clearResults()
end

function GerOut()
    local confirm = gg.alert("Kamu Yakin Mau keluar Script?", "Ya", "Tidak")
    if confirm == 1 then
        gg.toast("Keluar Dari Scripts, By Lii 'BageRun' Khisya.")
        os.exit()
    elseif confirm == 2 then
        return
    end
end

while true do
    if gg.isVisible(true) then
        HideUI = 1
        gg.setVisible(false)
        gg.sleep(222)
    end
    gg.clearResults()
    if HideUI == 1 then
        MenuUtama()
        break
        gg.sleep(222)
    end
end

MenuUtama()