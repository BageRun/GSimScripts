gg.clearResults()
gg.clearList()
gg.setVisible(false)
gg.searchNumber("1430583749", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)

local result = gg.getResults(100000)


local t = gg.getValues(result)

for i, v in ipairs(t) do
	v.address = v.address - 0x48
end
gg.loadResults(t)

t = nil

gg.toast("Dimulai...")
gg.refineNumber("53`", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
result = gg.getResults(1)


t = gg.getValues(result)
for i, v in ipairs(t) do
	v.address = v.address - 0x8
end

local cardValue = gg.getValues(t)[1].value

gg.clearResults()
gg.searchNumber(cardValue, gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
result = gg.getResults(100)

t = gg.getValues(result)
for i, v in ipairs(t) do
	v.address = v.address + 0x8
end
gg.loadResults(t)


t = nil

gg.refineNumber("53", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
result = gg.getResults(100)

t = gg.getValues(result)
for i, v in ipairs(t) do
	v.address = v.address + 0x48
end
gg.loadResults(t)

t = nil

gg.refineNumber("0", gg.TYPE_DWORD, false, gg.SIGN_NOT_EQUAL, 0, -1)
result = gg.getResults(24)


t = gg.getValues(result)
for i, v in ipairs(t) do
	v.address = v.address + 0x238
end

gg.addListItems(t)
t = gg.getListItems()
for i, v in ipairs(t) do
	v.address = v.address + 0x8
end

gg.addListItems(t)
t = gg.getListItems()
for i, v in ipairs(t) do
	v.address = v.address + 0x8
end

gg.addListItems(t)

t = gg.getListItems()
for i, v in ipairs(t) do
	v.value = 0
end

gg.setValues(t)
gg.toast("Selesai...")
gg.clearResults()