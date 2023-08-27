-- Item uuids
local Name_BagKeys = 'OBJ_Keychain'
local Name_BagAlchemy = 'OBJ_Bag_AlchemyPouch'
local Name_BagSupplies = 'OBJ_Backpack_CampSupplies'
local Name_BagPotions = 'AC_OBJ_PotionPouch'
local Name_BagArrows = 'AC_OBJ_Quiver'
local Name_BagCoatings = 'AC_OBJ_CoatingVials'
local Name_BagGrenades = 'AC_OBJ_GrenadeBox'
local Name_BagScrolls = 'AC_OBJ_ScrollCase'
local Name_BagBooks = 'OBJ_Chest_LetterBox'

local itemNames = {
	Name_BagKeys,
	Name_BagAlchemy,
	Name_BagSupplies,
	Name_BagPotions,
	Name_BagArrows,
	Name_BagCoatings,
	Name_BagGrenades,
	Name_BagScrolls,
	Name_BagBooks
}

-- Status names
local Status_ReduceWeight = 'AC_REDUCE_WEIGHT_MAIN'

-- Osiris Events
local Osi_Evt_ItemMoved = 'Moved'
local Osi_Evt_AddedTo = 'AddedTo'

function ArrayContains(array, value)
	for _, current in ipairs(array) do
		if value == current then
			return true
		end
	end
	return false
end

-- Osiris event listeners
Ext.Osiris.RegisterListener(Osi_Evt_ItemMoved, 1, 'after', function(entity)
	if Osi.HasActiveStatus(entity, Status_ReduceWeight) == 1 then
		Osi.RemoveStatus(entity, Status_ReduceWeight, entity)
	end
end)

Ext.Osiris.RegisterListener(Osi_Evt_AddedTo, 3, 'after', function(entity, char, type)
	if Osi.HasActiveStatus(entity, Status_ReduceWeight) == 1 then
		Osi.RemoveStatus(entity, Status_ReduceWeight, entity)
	end

	local itemName = Osi.GetStatString(char)
	if Osi.IsInInventory(entity) == 1 and ArrayContains(itemNames, itemName) then
		Osi.ApplyStatus(entity, Status_ReduceWeight, -1, 1, char)
	end
end)
