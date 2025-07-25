local savedHairData = {} 

RegisterCommand("togglehair", function()
    local ped = PlayerPedId()
    if not DoesEntityExist(ped) then return end

    local isHairCurrentlyHidden = (GetPedDrawableVariation(ped, 2) == 0)

    if not isHairCurrentlyHidden then
        
        local currentColor, currentHighlightColor = GetPedHairColor()
        
        savedHairData = {
            drawable = GetPedDrawableVariation(ped, 2),
            texture  = GetPedTextureVariation(ped, 2),
            color1   = currentColor,
            color2   = currentHighlightColor
        }
        
        SetPedComponentVariation(ped, 2, 0, 0, 0)
        
    else
        
        if savedHairData.drawable then
            SetPedComponentVariation(ped, 2, savedHairData.drawable, savedHairData.texture, 0)
            SetPedHairColor(savedHairData.color1, savedHairData.color2)
            
            savedHairData = {}
        else
            print("No saved hair data to restore.")
        end
    end
end, false)
