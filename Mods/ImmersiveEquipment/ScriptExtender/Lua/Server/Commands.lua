local IE_ITEMS = {
    "72375c7b-9c5e-451a-bb8e-3739a0bb1b46",
    "f3c8dc95-e29e-44bf-8df1-d6b5316e3e81",
    "d79c821e-215a-4431-8bd9-5a970865a7cc",
    "dc8f5d8e-76d3-4109-8e42-0f3e16632794",
    "31ee023c-d151-40f6-917e-84066772783b"
}

local function AddIEItems(cmd)
    local host = Osi.GetHostCharacter()
    for _, value in pairs(IE_ITEMS) do
        Osi.TemplateAddTo(value, host, 1, 1)
    end
end

Ext.RegisterConsoleCommand("AddIEItems", AddIEItems);