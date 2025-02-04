local GerUI = 0
local scriptRunning = false

local scripts = {
    Essentials = {
        {name = "Unlock Bangunan & Fitur Essentials", url = "https://raw.githubusercontent.com/BageRun/GerSim/refs/heads/GerMain/GerBuildingAndOther.lua"},
        {name = "Ger Achievement Grab & Edit", url = "https://raw.githubusercontent.com/BageRun/GerSim/refs/heads/GerMain/GerAchievementSimcashGrabber.lua"},
        {name = "Season Pass Editor (Beta)", url = "https://raw.githubusercontent.com/BageRun/GerSim/refs/heads/GerMain/GerCityPassClaimer.lua"}
    },
    Perang = {
        {name = "Zero War Goods (64-bit)", url = "https://raw.githubusercontent.com/BageRun/GerSim/refs/heads/GerMain/GerZeroWarItems.lua", require64 = true},
        {name = "War Goods To War Boosters (BaperToBoosters)", url = "https://raw.githubusercontent.com/BageRun/GerSim/refs/heads/GerMain/GerBaperToBoosters.lua"}
    },
    Expert = {
        {name = "Metal Factory Changer (Pengubah Metal di Pabrik)", 
         url = {
            ["32"] = "https://raw.githubusercontent.com/BageRun/GerSim/refs/heads/GerMain/GerMetal32.lua",
            ["64"] = "https://raw.githubusercontent.com/BageRun/GerSim/refs/heads/GerMain/GerMetal64.lua"
         }},
        {name = "Besi To War Boosters (Booster Perang)", url = "https://raw.githubusercontent.com/BageRun/GerSim/refs/heads/GerMain/GerBesiToWarBoosters.lua"},
        {name = "Besi To War Cards (Kartu Perang)", url = "https://raw.githubusercontent.com/BageRun/GerSim/refs/heads/GerMain/GerBesiToWarCards.lua"},
        {name = "Besi To War Goods (Barang Perang)", url = "https://raw.githubusercontent.com/BageRun/GerSim/refs/heads/GerMain/GerBesiToWarItems.lua"},
        {name = "Besi To Akta & Tokens", url = "https://raw.githubusercontent.com/BageRun/GerSim/refs/heads/GerMain/GerBesiToAktaTokens.lua"}
    }
}

function detectArchitecture()
    local targetInfo = gg.getTargetInfo()
    return targetInfo.x64 and "64" or "32"
end

function loadScriptFromURL(url)
    local response = gg.makeRequest(url)
    if response and response.content then
        local success, err = pcall(load(response.content))
        if not success then
            gg.toast("Keluar Dari Script, Kembali Ke GerAiO")
        end
    else
        gg.alert("Scriptnya Gagal Dimuat Nih, Periksa Koneksi Internet Kamu Yaa, Kembali Ke GerAiO...")
    end
end

function displayScripts(category)
    local options = {}
    for i, script in ipairs(scripts[category]) do
        table.insert(options, script.name)
    end
    table.insert(options, "Kembali")

    while true do
        local choice = gg.choice(options, nil, "Script " .. category .. "Mana Yang Ingin Kamu Gunakan?")

        if choice == nil or choice == #options then
            return
        elseif choice and choice <= #scripts[category] then
            local selectedScript = scripts[category][choice]
            local arch = detectArchitecture()
            
            if selectedScript.require64 and arch ~= "64" then
                gg.alert("Script Ini Cuma Bisa Digunakan Di 64-bit, Device-mu " .. arch .. "-bit.")
            elseif type(selectedScript.url) == "table" then
                local url = selectedScript.url[arch]
                if url then
                    gg.toast("Script ini dibuat oleh Lii 'BageRun' Khisya")
                    loadScriptFromURL(url)
                else
                    gg.alert("Script tidak tersedia untuk " .. arch .. "-bit.")
                end
            else
                loadScriptFromURL(selectedScript.url)
            end
        end
    end
end

function PilihScripts()
    while true do
        local categories = {"Essentials", "Perang", "Expert Only!", "Keluar"}
        local choice = gg.choice(categories, nil, "Pilih Kategori Scripts Yang Ingin Kamu Gunakan...")

        if choice == nil then
            gg.setVisible(false)
            while true do
                if gg.isVisible(true) then
                    return HideUI()
                end
            end
        elseif choice == 1 then 
            displayScripts("Essentials")
        elseif choice == 2 then 
            displayScripts("Perang")
        elseif choice == 3 then 
            displayScripts("Expert")
        elseif choice == 4 then 
            exitScript()
        end
    end
end

function HideUI()
    while true do
        if gg.isVisible(true) then
            GerUI = 1
            gg.setVisible(false)
        end
        
        if GerUI == 1 then
            gg.setVisible(false)
            gg.sleep(300)
            return PilihScripts()
        end
        
        gg.sleep(700) 
    end
end

function exitScript()
    local confirm = gg.alert("Kamu Yakin Mau keluar Script?", "Ya", "Tidak")
    if confirm == 1 then
        gg.toast("Keluar Dari Scripts, By Lii 'BageRun' Khisya, Contact For More : BageRun#4240")
        os.exit()
    end
end

HideUI()