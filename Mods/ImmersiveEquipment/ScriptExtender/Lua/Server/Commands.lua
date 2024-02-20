local IE_ITEMS = {
    "72375c7b-9c5e-451a-bb8e-3739a0bb1b46",
    "f3c8dc95-e29e-44bf-8df1-d6b5316e3e81",
    "d79c821e-215a-4431-8bd9-5a970865a7cc",
    "dc8f5d8e-76d3-4109-8e42-0f3e16632794",
    "a63de08c-d80c-42fc-8653-979bb302974d",
    "24fcb568-feb6-480e-b259-440d8b84b4bd",
    "b2541b90-c8a0-4d9f-a88b-5a8a779045c7",
    "19e7aa1b-4118-4714-8eee-638263389982"
}

local function AddIEItems(cmd)
    local host = Osi.GetHostCharacter()
    for _, value in pairs(IE_ITEMS) do
        Osi.TemplateAddTo(value, host, 1, 1)
    end
end

Ext.RegisterConsoleCommand("AddIEItems", AddIEItems);