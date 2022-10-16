
function onLoad(savedData)


    DECKS = {
      GREEN_BASE_1 = "fdb940",
      GREEN_BASE_2 = "9f0422",
      GREEN_BASE_3 = "710adb",
      BLUE_BASE_1 = "4cd65d",
      BLUE_BASE_2 = "096375",
      BLUE_BASE_3 = "bd4c99",
      YELLOW_BASE_1 = "5ffc36",
      YELLOW_BASE_2 = "1d6383",
      YELLOW_BASE_3 = "4f3533",
      PURPLE_BASE_1 = "74463f",
      PURPLE_BASE_2 = "9964ba",
      PURPLE_BASE_3 = "d52686",
      GREEN_PAZZI_1 = "54e693",
      GREEN_PAZZI_2 = "224ad1",
      GREEN_PAZZI_3 = "561682",
      BLUE_PAZZI_1 = "f50923",
      BLUE_PAZZI_2 = "00e80a",
      BLUE_PAZZI_3 = "3b8f58",
      YELLOW_PAZZI_1 = "7cfc9a",
      YELLOW_PAZZI_2 = "35b6af",
      YELLOW_PAZZI_3 = "62d002",
      PURPLE_PAZZI_1 = "de34b1",
      PURPLE_PAZZI_2 = "d7910c",
      PURPLE_PAZZI_3 = "0525c2",
      GREY_1 = "e01928",
      GREY_2 = "9e7097",
      GREY_3 = "ccaae0"

    }

    ZONAS_DECKS = {
      GREEN_BASE_1 = "040747",
      GREEN_BASE_2 = "fc5de2",
      GREEN_BASE_3 = "87124a",
      BLUE_BASE_1 = "2b2455",
      BLUE_BASE_2 = "8e53d7",
      BLUE_BASE_3 = "b73f49",
      YELLOW_BASE_1 = "ba5f91",
      YELLOW_BASE_2 = "b5f5a8",
      YELLOW_BASE_3 = "9c2590",
      PURPLE_BASE_1 = "600e48",
      PURPLE_BASE_2 = "5e20f8",
      PURPLE_BASE_3 = "8d2b40",
      GREEN_PAZZI_1 = "53f6d3",
      GREEN_PAZZI_2 = "f6c5fe",
      GREEN_PAZZI_3 = "e873f9",
      BLUE_PAZZI_1 = "e7f9d1",
      BLUE_PAZZI_2 = "14ebb6",
      BLUE_PAZZI_3 = "2625ce",
      YELLOW_PAZZI_1 = "21ab97",
      YELLOW_PAZZI_2 = "8d2248",
      YELLOW_PAZZI_3 = "770dc8",
      PURPLE_PAZZI_1 = "f84360",
      PURPLE_PAZZI_2 = "0c9955",
      PURPLE_PAZZI_3 = "5cce02",
      GREY_1 = "edd619",
      GREY_2 = "b3de1e",
      GREY_3 = "fe5b73"


    }

    LAST_CARD = {
      GREEN_BASE_1 = nil,
      GREEN_BASE_2 = nil,
      GREEN_BASE_3 = nil,
      BLUE_BASE_1 = nil,
      BLUE_BASE_2 = nil,
      BLUE_BASE_3 = nil,
      YELLOW_BASE_1 = nil,
      YELLOW_BASE_2 = nil,
      YELLOW_BASE_3 = nil,
      PURPLE_BASE_1 = nil,
      PURPLE_BASE_2 = nil,
      PURPLE_BASE_3 = nil,
      GREEN_PAZZI_1 = nil,
      GREEN_PAZZI_2 = nil,
      GREEN_PAZZI_3 = nil,
      BLUE_PAZZI_1 = nil,
      BLUE_PAZZI_2 = nil,
      BLUE_PAZZI_3 = nil,
      YELLOW_PAZZI_1 = nil,
      YELLOW_PAZZI_2 = nil,
      YELLOW_PAZZI_3 = nil,
      PURPLE_PAZZI_1 = nil,
      PURPLE_PAZZI_2 = nil,
      PURPLE_PAZZI_3 = nil,
      GREY_1 = nil,
      GREY_2 = nil,
      GREY_3 = nil


    }

    SNAP_TOWERS_GREEN = {
      GREEN_1 = {position ={x=-13.01, y=0.97, z=20.51}, flip = true},
      GREEN_2 = {position ={x=-13.01, y=0.97, z=15.68}, flip = true},
      GREEN_3 = {position ={x=-13.01, y=0.97, z=10.91}, flip = true},
      GREEN_4 = {position ={x=-13.01, y=0.97, z=6.10}, flip = true}
    }

    if savedData != '' and  savedData != nil then
      local loadedData = JSON.decode(savedData)
      round_counter = loadedData.round
      expansion = loadedData.expansion
    else
      round_counter = 1
      expansion = false
    end



    if round_counter == 1 then

      for k, v in pairs(DECKS) do
        deck = getObjectFromGUID(v)
        zone = getObjectFromGUID(ZONAS_DECKS[k]) --Identificação de deck e zona certos
        if deck != nil then
          deck.shuffle()
          LAST_CARD[k] = getLastcard(deck,zone)
        end

         -- Populate last card table
      end


    end

  end



--[[ The onUpdate event is called once per frame. --]]
function onUpdate()
    --[[ print('onUpdate loop!') --]]
end

function onSave()
	local dataToSave = {}
  dataToSave.round = round_counter
  dataToSave.expansion = expansion
	savedData = JSON.encode(dataToSave)
  return savedData
end


function getLastcard(deck,zone)


  for i, o in pairs (zone.getObjects()) do
    if o.tag == 'Deck' then
      lastCardGUID = o.getObjects()[#o.getObjects()].guid

      return lastCardGUID
    end
  end
    if o.tag == 'Card' then
        lastCardGUID = o.guid
        return lastCardGUID
    end


  return nil
end


function variable(variable)
  return variable
end