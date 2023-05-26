-- EN ESTA FUNCION COLOCAS TU FOTO DE IMGUR

local plates = {
    {"plate01","LINK DE TU FOTO",256,128},
    {"plate01_n","https://i.imgur.com/SCn0XOe.png",256,128},
    {"plate02","LINK DE TU FOTO",256,128},
    {"plate02_n","https://i.imgur.com/SCn0XOe.png",256,128},
    {"plate03","LINK DE TU FOTO",256,128},
    {"plate03_n","https://i.imgur.com/SCn0XOe.png",256,128},
    {"plate04","LINK DE TU FOTO",256,128},
    {"plate04_n","https://i.imgur.com/SCn0XOe.png",256,128},
    {"plate05","LINK DE TU FOTO",256,128},
    {"plate05_n","https://i.imgur.com/SCn0XOe.png",256,128},
    {"yankton_plate","LINK DE TU FOTO",256,128},
    {"yankton_plate_n","https://i.imgur.com/SCn0XOe.png",256,128}
}

--NO TOCAR ESTA FUNCION O NO TE FUNCIONARA

for _, plateData in ipairs(plates) do
    local plateName = plateData[1]
    local imageUrl = plateData[2]
    local width = plateData[3]
    local height = plateData[4]
    
    local textureDic = CreateRuntimeTxd(plateName)
    local duiObj = CreateDui(imageUrl, width, height)
    local dui = GetDuiHandle(duiObj)
    local texture = CreateRuntimeTextureFromDuiHandle(textureDic, plateName, dui)
    
    if texture ~= 0 then -- Verifica si se ha creado correctamente la textura
        local success = AddReplaceTexture("vehshare", plateName, plateName, plateName)
        if not success then
            print("Error al agregar la textura de la matricula: " .. plateName)
        end
    else
        print("Error al cargar la textura de la matricula: " .. plateName)
    end
end