function Main() 
  PilihanUtama = gg.multiChoice({ 
  "Bangunan Biasa", 
  "Bangunan Epic Lvl Max", 
  "Utility", 
  "Rumah To Epic Building", 
  "Keluar",},nil,"Pilih Fitur Mana Yang Mau Kamu Gunakan?") 
 if PilihanUtama[1] == true then BasicBuilding() end 
 if PilihanUtama[2] == true then EpicBuilding() end 
 if PilihanUtama[3] == true then UtilityHack() end 
 if PilihanUtama[4] == true then BuildEpicBuilding() end 
 if PilihanUtama[5] == true then Keluar() end 
 XGCK = -1 
end 

function BasicBuilding() 
  BangunanBiasa = gg.multiChoice({ 
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
  "Kembali", 
  }, nil, "Taruh Bangunan Sigma Yang Tertera Di Scripts Dikota Kalian Sebelum MeRizz Kai Cenat, Setelah Selesai, Keluar Dari Game Ohio Dan Masuk Kembali...") 
 if BangunanBiasa[1] == true then PuriMaxis() end 
 if BangunanBiasa[2] == true then PatungWalikota() end 
 if BangunanBiasa[3] == true then MaxisMan() end 
 if BangunanBiasa[4] == true then RumahBiasa() end 
 if BangunanBiasa[5] == true then RumahTokyo() end 
 if BangunanBiasa[6] == true then RumahParis() end 
 if BangunanBiasa[7] == true then RumahLondon() end 
 if BangunanBiasa[8] == true then RumahNeo() end 
 if BangunanBiasa[9] == true then LembahHijau() end 
 if BangunanBiasa[10] == true then NgaraiKaktus() end 
 if BangunanBiasa[11] == true then PulauCerah() end 
 if BangunanBiasa[12] == true then FyordBeku() end 
 if BangunanBiasa[13] == true then BatuKapur() end 
 if BangunanBiasa[14] == true then KincirTua() end 
 if BangunanBiasa[15] == true then Pendidikan10() end 
 if BangunanBiasa[16] == true then Transportasi10() end 
 if BangunanBiasa[17] == true then Perjudian10() end 
 if BangunanBiasa[18] == true then Hiburan10() end 
 if BangunanBiasa[19] == true then Main() end 
 XGCK = -1 
end 

function PuriMaxis() 
  gg.clearResults() 
  gg.searchNumber("751144117", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1) 
  gg.searchNumber("751144117", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1) 
  gg.getResults(200) 
  gg.editAll("925375395", gg.TYPE_DWORD) 
  gg.toast("Keluar Dari Game, Lalu Masuk Lagi...") 
end 
function PatungWalikota() 
  gg.clearResults() 
  gg.searchNumber("139346164", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1) 
  gg.searchNumber("139346164", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1) 
  gg.getResults(200) 
  gg.editAll("2040088750", gg.TYPE_DWORD) 
  gg.toast("Keluar Dari Game, Lalu Masuk Lagi...") 
end 
function MaxisMan() 
  gg.clearResults() 
  gg.searchNumber("182280403", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1) 
  gg.searchNumber("182280403", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1) 
  gg.getResults(200) 
  gg.editAll("-2089966647", gg.TYPE_DWORD) 
  gg.toast("Keluar Dari Game, Lalu Masuk Lagi...") 
end 
function RumahBiasa() 
  gg.clearResults() 
  gg.searchNumber("-1297331478", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1) 
  gg.searchNumber("-1297331478", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1) 
  gg.getResults(200) 
  gg.editAll("1522778650", gg.TYPE_DWORD) 
  gg.toast("Keluar Dari Game, Lalu Masuk Lagi...") 
end 
function RumahTokyo() 
  gg.clearResults() 
  gg.searchNumber("-12118437", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1) 
  gg.searchNumber("-12118437", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1) 
  gg.getResults(200) 
  gg.editAll("1493262871", gg.TYPE_DWORD) 
  gg.toast("Keluar Dari Game, Lalu Masuk Lagi...") 
end 
function RumahParis() 
  gg.clearResults() 
  gg.searchNumber("-741284489", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1) 
  gg.searchNumber("-741284489", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1) 
  gg.getResults(200) 
  gg.editAll("2050186616", gg.TYPE_DWORD) 
  gg.toast("Keluar Dari Game, Lalu Masuk Lagi...") 
end 
function RumahLondon() 
  gg.clearResults() 
  gg.searchNumber("-935683329", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1) 
  gg.searchNumber("-935683329", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1) 
  gg.getResults(200) 
  gg.editAll("-1203406301", gg.TYPE_DWORD) 
  gg.toast("Keluar Dari Game, Lalu Masuk Lagi...") 
end 
function RumahNeo() 
  gg.clearResults() 
  gg.searchNumber("43959869", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1) 
  gg.searchNumber("43959869", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1) 
  gg.getResults(200) 
  gg.editAll("-1430868908", gg.TYPE_DWORD) 
  gg.toast("Keluar Dari Game, Lalu Masuk Lagi...") 
end 
function LembahHijau() 
  gg.clearResults() 
  gg.searchNumber("583140736", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1) 
  gg.searchNumber("583140736", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1) 
  gg.getResults(200) 
  gg.editAll("973877747", gg.TYPE_DWORD) 
  gg.toast("Keluar Dari Game, Lalu Masuk Lagi...") 
end 
function NgaraiKaktus() 
  gg.clearResults() 
  gg.searchNumber("-150077002", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1) 
  gg.searchNumber("-150077002", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1) 
  gg.getResults(200) 
  gg.editAll("-1528167776", gg.TYPE_DWORD) 
  gg.toast("Keluar Dari Game, Lalu Masuk Lagi...") 
end 
function PulauCerah() 
  gg.clearResults() 
  gg.searchNumber("-66177429", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1) 
  gg.searchNumber("-66177429", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1) 
  gg.getResults(200) 
  gg.editAll("-1220248775", gg.TYPE_DWORD) 
  gg.toast("Keluar Dari Game, Lalu Masuk Lagi...") 
end 
function FyordBeku() 
  gg.clearResults() 
  gg.searchNumber("-1672104106", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1) 
  gg.searchNumber("-1672104106", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1) 
  gg.getResults(200) 
  gg.editAll("2038647854", gg.TYPE_DWORD) 
  gg.toast("Keluar Dari Game, Lalu Masuk Lagi...") 
end 
function BatuKapur() 
  gg.clearResults() 
  gg.searchNumber("712780976", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1) 
  gg.searchNumber("712780976", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1) 
  gg.getResults(200) 
  gg.editAll("-46404375", gg.TYPE_DWORD) 
  gg.toast("Keluar Dari Game, Lalu Masuk Lagi...") 
end 
function KincirTua() 
  gg.clearResults() 
  gg.searchNumber("-1250093364", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1) 
  gg.searchNumber("-1250093364", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1) 
  gg.getResults(200) 
  gg.editAll("1321420829", gg.TYPE_DWORD) 
  gg.toast("Keluar Dari Game, Lalu Masuk Lagi...") 
end 
function Pendidikan10() 
  gg.clearResults() 
  gg.searchNumber("-958560911", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1) 
  gg.searchNumber("-958560911", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1) 
  gg.getResults(200) 
  gg.editAll("-61527945", gg.TYPE_DWORD) 
  gg.toast("Keluar Dari Game, Lalu Masuk Lagi...") 
end 
function Transportasi10() 
  gg.clearResults() 
  gg.searchNumber("-958560910", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1) 
  gg.searchNumber("-958560910", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1) 
  gg.getResults(200) 
  gg.editAll("776814664", gg.TYPE_DWORD) 
  gg.toast("Keluar Dari Game, Lalu Masuk Lagi...") 
end 
function Perjudian10() 
  gg.clearResults() 
  gg.searchNumber("-383906791", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1) 
  gg.searchNumber("-383906791", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1) 
  gg.getResults(200) 
  gg.editAll("1225598517", gg.TYPE_DWORD) 
  gg.toast("Keluar Dari Game, Lalu Masuk Lagi...") 
end 
function Hiburan10() 
  gg.clearResults() 
  gg.searchNumber("-1685111278", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1) 
  gg.searchNumber("-1685111278", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1) 
  gg.getResults(200) 
  gg.editAll("-1053961458", gg.TYPE_DWORD) 
  gg.toast("Keluar Dari Game, Lalu Masuk Lagi...") 
end 

function EpicBuilding() 
  PilihanEpicBuilding = gg.multiChoice({ 
  "Epik Spesialisasi Pendidikan [Pembakaran Sampah]", 
  "Epik Spesialisasi Perjudian [Pabrik Kecil]", 
  "Epik Spesialisasi Hiburan [Pabrik Dasar]", 
  "Epik Spesialisasi Transportasi [Pemadam Kebakaran Dasar]", 
  "Epik Spesialisasi Bangunan Terkenal [Kantor Polisi Dasar]", 
  "Epik Spesialisasi Pantai [Klinik Kesehatan Dasar]", 
  "Epik Spesialisasi Gunung [Kafetaria Taman Universitas]", 
  "Kembali", 
  },nil,"Taruh Bangunan Sigma Yang Tertera Di Scripts Sebelum MeRizz Kai Cenat, Pastikan Tidak L By Fanum Tax") 
 if PilihanEpicBuilding[1] == true then PendidikanEpic() end 
 if PilihanEpicBuilding[2] == true then PerjudianEpic() end 
 if PilihanEpicBuilding[3] == true then HiburanEpic() end 
 if PilihanEpicBuilding[4] == true then TransportasiEpic() end 
 if PilihanEpicBuilding[5] == true then TerkenalEpic() end 
 if PilihanEpicBuilding[6] == true then PantaiEpic() end 
 if PilihanEpicBuilding[7] == true then GunungEpic() end 
 if PilihanEpicBuilding[8] == true then Main() end 
 XGCK=-1 
end 

function PendidikanEpic() 
  gg.clearResults() 
  gg.searchNumber("-1415031897", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1) 
  gg.searchNumber("-1415031897", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1) 
  gg.getResults(200) 
  gg.editAll("-1881032548", gg.TYPE_DWORD) 
  gg.toast("Keluar Dari Game, Lalu Masuk Lagi...") 
end 
function PerjudianEpic() 
  gg.clearResults() 
  gg.searchNumber("612373322", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1) 
  gg.searchNumber("612373322", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1) 
  gg.getResults(200) 
  gg.editAll("-691412735", gg.TYPE_DWORD) 
  gg.toast("Keluar Dari Game, Lalu Masuk Lagi...") 
end 
function HiburanEpic() 
  gg.clearResults() 
  gg.searchNumber("-1199642511", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1) 
  gg.searchNumber("-1199642511", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1) 
  gg.getResults(200) 
  gg.editAll("-447372290", gg.TYPE_DWORD) 
  gg.toast("Keluar Dari Game, Lalu Masuk Lagi...") 
end 
function TransportasiEpic() 
  gg.clearResults() 
  gg.searchNumber("388741896", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1) 
  gg.searchNumber("388741896", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1) 
  gg.getResults(200) 
  gg.editAll("1813794920", gg.TYPE_DWORD) 
  gg.toast("Keluar Dari Game, Lalu Masuk Lagi...") 
end 
function TerkenalEpic() 
  gg.clearResults() 
  gg.searchNumber("-1397016258", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1) 
  gg.searchNumber("-1397016258", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1) 
  gg.getResults(200) 
  gg.editAll("-113962678", gg.TYPE_DWORD) 
  gg.toast("Keluar Dari Game, Lalu Masuk Lagi...") 
end 
function PantaiEpic() 
  gg.clearResults() 
  gg.searchNumber("1155556851", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1) 
  gg.searchNumber("1155556851", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1) 
  gg.getResults(200) 
  gg.editAll("-1999290445", gg.TYPE_DWORD) 
  gg.toast("Keluar Dari Game, Lalu Masuk Lagi...") 
end 
function GunungEpic() 
  gg.clearResults() 
  gg.searchNumber("58778652", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1) 
  gg.searchNumber("58778652", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1) 
  gg.getResults(200) 
  gg.editAll("995463179", gg.TYPE_DWORD) 
  gg.toast("Keluar Dari Game, Lalu Masuk Lagi...") 
end 

function UtilityHack() 
  PilihanUtilityHack = gg.multiChoice ({ 
  "Gudang Kota Max [Gudang Kota Awal]", 
  "Gudang Omega Max [Gudang Omega Awal]", 
  "Neo Bank Max [Neo Bank Awal]", 
  "Buka & Upgrade Menara Vu Level 18", 
  "Buka Neo Mall dibawah level 30", 
  "Tutup Neo Mall dibawah level 30", 
  "Ganti Papan Iklan jadi Laba-laba", 
  "Refresh Neo Mall", 
  "Refresh waktu tunggu Projects Sigma Epic", 
  "Back", 
  },nil, "Fungsi Jelqing Akan Infinity Aura W's Update") 
 if PilihanUtilityHack[1] == true then GudangKotaMax() end 
 if PilihanUtilityHack[2] == true then GudangOmegaMax() end 
 if PilihanUtilityHack[3] == true then NeoBankMax() end 
 if PilihanUtilityHack[4] == true then VuTowerMax() end 
 if PilihanUtilityHack[5] == true then NeoMallOpen() end 
 if PilihanUtilityHack[6] == true then NeoMallClose() end 
 if PilihanUtilityHack[7] == true then PapanSpider() end 
 if PilihanUtilityHack[8] == true then RefreshNeoMall() end 
 if PilihanUtilityHack[9] == true then RefreshEpic24Jam() end 
 if PilihanUtilityHack[10] == true then Main() end 
 XGCK=-1 
end 

function GudangKotaMax() 
  gg.clearResults() 
  gg.searchNumber("1785034572", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1) 
  gg.searchNumber("1785034572", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1) 
  gg.getResults(200) 
  gg.editAll("-1223401048", gg.TYPE_DWORD) 
  gg.toast("Keluar Dari Game, Lalu Masuk Lagi...") 
end 
function GudangOmegaMax() 
  gg.clearResults() 
  gg.searchNumber("-5428496", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1) 
  gg.searchNumber("-5428496", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1) 
  gg.getResults(200) 
  gg.editAll("-179140214", gg.TYPE_DWORD) 
  gg.toast("Keluar Dari Game, Lalu Masuk Lagi...") 
end 
function NeoBankMax() 
  gg.clearResults() 
  gg.searchNumber("1148880551", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1) 
  gg.searchNumber("1148880551", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1) 
  gg.getResults(200) 
  gg.editAll("-741647391", gg.TYPE_DWORD) 
  gg.toast("Keluar Dari Game, Lalu Masuk Lagi...") 
end 
function VuTowerMax() 
  gg.clearResults() 
  gg.searchNumber("2019791904", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1) 
  gg.searchNumber("2019791904", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1) 
  gg.getResults(200) 
  gg.editAll("1362697172", gg.TYPE_DWORD) 
  gg.toast("Keluar Dari Game, Lalu Masuk Lagi...") 
end 
function NeoMallOpen() 
  gg.clearResults() 
  gg.searchNumber("424671600", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1) 
  gg.searchNumber("424671600", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1) 
  gg.getResults(200) 
  gg.editAll("2087261488", gg.TYPE_DWORD) 
  gg.toast("Keluar Dari Game, Lalu Masuk Lagi...") 
end 
function NeoMallClose() 
  gg.clearResults() 
  gg.searchNumber("2087261488", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1) 
  gg.searchNumber("2087261488", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1) 
  gg.getResults(200) 
  gg.editAll("424671600", gg.TYPE_DWORD) 
  gg.toast("Keluar Dari Game, Lalu Masuk Lagi...") 
end 
function PapanSpider() 
  gg.clearResults() 
  gg.searchNumber("49899925", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1) 
  gg.searchNumber("49899925", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1) 
  gg.getResults(200) 
  gg.editAll("-1323273224", gg.TYPE_DWORD) 
  gg.toast("Keluar Dari Game, Lalu Masuk Lagi...") 
end 
function RefreshNeoMall() 
  gg.clearResults() 
  gg.searchNumber("21600000", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1) 
  gg.searchNumber("21600000", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1) 
  gg.getResults(200) 
  gg.editAll("0", gg.TYPE_DWORD) 
  gg.toast("Berhasil Direset...") 
end 
function RefreshEpic24Jam() 
  gg.clearResults() 
  gg.searchNumber("43200000", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1) 
  gg.searchNumber("43200000", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1) 
  gg.getResults(200) 
  gg.editAll("0", gg.TYPE_DWORD) 
  gg.clearResults() 
  gg.searchNumber("43500000", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1) 
  gg.searchNumber("43500000", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1) 
  gg.getResults(200) 
  gg.editAll("0", gg.TYPE_DWORD) 
  gg.toast("Berhasil Direset...") 
end 

function BuildEpicBuilding() 
  PilihanRumahToEpicBuilding = gg.multiChoice ({ 
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
  },nil, "Setiap Gen Z Mengganti Mewing Streak Fast Epic, Gooning CLEAR EPIC Agar W's Milkshake") 
 if PilihanRumahToEpicBuilding[1] == true then FastEpicPendidikan() end 
 if PilihanRumahToEpicBuilding[2] == true then ClearEpicPendidikan() end 
 if PilihanRumahToEpicBuilding[3] == true then FastEpicJudi() end 
 if PilihanRumahToEpicBuilding[4] == true then ClearEpicJudi() end 
 if PilihanRumahToEpicBuilding[5] == true then FastEpicHiburan() end 
 if PilihanRumahToEpicBuilding[6] == true then ClearEpicHiburan() end 
 if PilihanRumahToEpicBuilding[7] == true then FastEpicTransportasi() end 
 if PilihanRumahToEpicBuilding[8] == true then CLearEpicTransportasi() end 
 if PilihanRumahToEpicBuilding[9] == true then FastEpicTerkenal() end 
 if PilihanRumahToEpicBuilding[10] == true then ClearEpicTerkenal() end 
 if PilihanRumahToEpicBuilding[11] == true then FastEpicPantai() end 
 if PilihanRumahToEpicBuilding[12] == true then ClearEpicPantai() end 
 if PilihanRumahToEpicBuilding[13] == true then FastEpicGunung() end 
 if PilihanRumahToEpicBuilding[14] == true then ClearEpicGunung() end 
 if PilihanRumahToEpicBuilding[15] == true then Main() end 
 XGCK=-1 
end 

function FastEpicPendidikan() 
  gg.clearResults() 
  gg.searchNumber("1522778645", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1) 
  gg.searchNumber("1522778645", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1) 
  revert = gg.getResults(200, nil, nil, nil, nil, nil, nil, nil, nil) 
  gg.editAll("-1881032548", gg.TYPE_DWORD) 
  gg.toast("Keluar Dari Game, Lalu Masuk Lagi...") 
end 
function ClearEpicPendidikan() 
  gg.clearResults() 
  gg.searchNumber("-1881032548", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1) 
  gg.searchNumber("-1881032548", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1) 
  if revert ~= nil then gg.setValues(revert) end 
  gg.toast("Berhasil Direset...") 
end 
function FastEpicJudi() 
  gg.clearResults() 
  gg.searchNumber("1522778645", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1) 
  gg.searchNumber("1522778645", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1) 
  revert = gg.getResults(200, nil, nil, nil, nil, nil, nil, nil, nil) 
  gg.editAll("-691412735", gg.TYPE_DWORD) 
  gg.toast("Keluar Dari Game, Lalu Masuk Lagi...") 
end 
function ClearEpicJudi() 
  gg.clearResults() 
  gg.searchNumber("-691412735", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1) 
  gg.searchNumber("-691412735", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1) 
  if revert ~= nil then gg.setValues(revert) end 
  gg.toast("Berhasil Direset...") 
end 
function FastEpicHiburan() 
  gg.clearResults() 
  gg.searchNumber("1522778645", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1) 
  gg.searchNumber("1522778645", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1) 
  revert = gg.getResults(200, nil, nil, nil, nil, nil, nil, nil, nil) 
  gg.editAll("-447372290", gg.TYPE_DWORD) 
  gg.toast("Keluar Dari Game, Lalu Masuk Lagi...") 
end 
function ClearEpicHiburan() 
  gg.clearResults() 
  gg.searchNumber("-447372290", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1) 
  gg.searchNumber("-447372290", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1) 
  if revert ~= nil then gg.setValues(revert) end 
  gg.toast("Berhasil Direset...") 
end 
function FastEpicTransportasi() 
  gg.clearResults() 
  gg.searchNumber("1522778645", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1) 
  gg.searchNumber("1522778645", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1) 
  revert = gg.getResults(200, nil, nil, nil, nil, nil, nil, nil, nil) 
  gg.editAll("1813794920", gg.TYPE_DWORD) 
  gg.toast("Keluar Dari Game, Lalu Masuk Lagi...") 
end 
function CLearEpicTransportasi() 
  gg.clearResults() 
  gg.searchNumber("1813794920", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1) 
  gg.searchNumber("1813794920", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1) 
  if revert ~= nil then gg.setValues(revert) end 
  gg.toast("Berhasil Direset...") 
end 
function FastEpicTerkenal() 
  gg.clearResults() 
  gg.searchNumber("1522778645", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1) 
  gg.searchNumber("1522778645", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1) 
  revert = gg.getResults(200, nil, nil, nil, nil, nil, nil, nil, nil) 
  gg.editAll("-113962678", gg.TYPE_DWORD) 
  gg.toast("Keluar Dari Game, Lalu Masuk Lagi...") 
end 
function ClearEpicTerkenal() 
  gg.clearResults() 
  gg.searchNumber("-113962678", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1) 
  gg.searchNumber("-113962678", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1) 
  if revert ~= nil then gg.setValues(revert) end 
  gg.toast("Berhasil Direset...") 
end 
function FastEpicPantai() 
  gg.clearResults() 
  gg.searchNumber("1522778645", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1) 
  gg.searchNumber("1522778645", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1) 
  revert = gg.getResults(200, nil, nil, nil, nil, nil, nil, nil, nil) 
  gg.editAll("-1999290445", gg.TYPE_DWORD) 
  gg.toast("Keluar Dari Game, Lalu Masuk Lagi...") 
end 
function ClearEpicPantai() 
  gg.clearResults() 
  gg.searchNumber("-1999290445", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1) 
  gg.searchNumber("-1999290445", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1) 
  if revert ~= nil then gg.setValues(revert) end 
  gg.toast("Berhasil Direset...") 
end 
function FastEpicGunung() 
  gg.clearResults() 
  gg.searchNumber("1522778645", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1) 
  gg.searchNumber("1522778645", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1) 
  revert = gg.getResults(200, nil, nil, nil, nil, nil, nil, nil, nil) 
  gg.editAll("995463179", gg.TYPE_DWORD) 
  gg.toast("Keluar Dari Game, Lalu Masuk Lagi...") 
end 
function ClearEpicGunung() 
  gg.clearResults() 
  gg.searchNumber("995463179", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1) 
  gg.searchNumber("995463179", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1) 
  if revert ~= nil then gg.setValues(revert) end 
  gg.toast("Berhasil Direset...") 
end 

function Keluar() 
  gg.alert("Apa Yang Dicari Orang Sigma? Bintang Skibidi, P Diddy Ahh Mango Still Water Balkan Rage In Ohio Pay With Aura, By BageRun") 
  os.exit() 
end 
cs = "23333" 
while true do 
  if gg.isVisible(true) then 
    XGCK = 1 
    gg.setVisible(false) 
  end 
  gg.clearResults() 
  if XGCK == 1 then 
    Main() 
  end 
end
