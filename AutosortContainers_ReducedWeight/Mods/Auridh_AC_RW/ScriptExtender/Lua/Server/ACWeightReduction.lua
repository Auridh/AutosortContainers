-- Item uuids
local Name_BagKeys = 'CONT_GEN_Keychain'
local Name_BagAlchemy = 'CONT_GEN_AlchemyPouch'
local Name_BagSupplies = 'CONT_GEN_CampSupplySack'
local Name_BagPotions = 'AC_OBJ_PotionPouch'
local Name_BagArrows = 'AC_OBJ_Quiver'
local Name_BagCoatings = 'AC_OBJ_CoatingVials'
local Name_BagGrenades = 'AC_OBJ_GrenadeBox'
local Name_BagScrolls = 'AC_OBJ_ScrollCase'
local Name_BagBooks = 'CONT_GEN_LetterBox'

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
local Status_WeightDisplayFix = 'AC_REDUCE_WEIGHT_FIX'

-- Osiris Events
local Osi_Evt_AddedTo = 'AddedTo'
local Osi_Evt_RemovedFrom = 'RemovedFrom'

function ArrayContains(array, value)
	for _, current in ipairs(array) do
		if value == current then
			return true
		end
	end
	return false
end

-- Osiris event listeners
Ext.Osiris.RegisterListener(Osi_Evt_RemovedFrom, 2, 'before', function(entity, container)
	local itemName = string.sub(container, 1, -37)
	if Osi.HasActiveStatus(entity, Status_ReduceWeight) == 1 and ArrayContains(itemNames, itemName) then
		Osi.RemoveStatus(entity, Status_ReduceWeight, container)
		Osi.ApplyStatus(Osi.GetOwner(container), Status_WeightDisplayFix, 0, 1, container)
	end
end)

Ext.Osiris.RegisterListener(Osi_Evt_AddedTo, 3, 'before', function(entity, container, type)
	local itemName = string.sub(container, 1, -37)
	if Osi.HasActiveStatus(entity, Status_ReduceWeight) ~= 1 and ArrayContains(itemNames, itemName) then
		Osi.ApplyStatus(entity, Status_ReduceWeight, -1, 1, container)
		Osi.ApplyStatus(Osi.GetOwner(container), Status_WeightDisplayFix, 0, 1, container)
	end
end)
