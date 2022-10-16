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

  SNAP_TOWERS_BLUE = { -- X-6.42 == +6.59
    BLUE_1 = {position ={x=-6.42, y=0.97, z=20.51}, flip = true},
    BLUE_2 = {position ={x=-6.42, y=0.97, z=15.68}, flip = true},
    BLUE_3 = {position ={x=-6.42, y=0.97, z=10.91}, flip = true},
    BLUE_4 = {position ={x=-6.42, y=0.97, z=6.10}, flip = true}

  }

  SNAP_TOWERS_YELLOW = {
    YELLOW_1 = {position ={x=0.17, y=0.97, z=20.51}, flip = true},
    YELLOW_2 = {position ={x=0.17, y=0.97, z=15.68}, flip = true},
    YELLOW_3 = {position ={x=0.17, y=0.97, z=10.91}, flip = true},
    YELLOW_4 = {position ={x=0.17, y=0.97, z=6.10}, flip = true}
  }

  SNAP_TOWERS_PURPLE = {
    PURPLE_1 = {position ={x=6.76, y=0.97, z=20.51}, flip = true},
    PURPLE_2 = {position ={x=6.76, y=0.97, z=15.68}, flip = true},
    PURPLE_3 = {position ={x=6.76, y=0.97, z=10.91}, flip = true},
    PURPLE_4 = {position ={x=6.76, y=0.97, z=6.10}, flip = true}
  }

  SNAP_TOWERS_GREY = {
    GREY_1 = {position ={x=18.70, y=1.17, z=20.15}, flip = true}, --{18.70, 1.17, 20.15}
    GREY_2 = {position ={x=18.66, y=1.17, z=15.55}, flip = true}, --{18.66, 1.17, 15.55}
    GREY_3 = {position ={x=18.72, y=1.17, z=10.85}, flip = true}, --{18.72, 1.17, 10.85}
    GREY_4 = {position ={x=18.72, y=1.17, z=6.18}, flip = true} --{18.72, 1.17, 6.18}
  }

  HOUSES_EXP_DECKS = {
    GREY_1 = getObjectFromGUID("e01928"),
    GREY_2 = getObjectFromGUID("9e7097"),
    GREY_3 = getObjectFromGUID("a33838")
  }

  HOUSES_EXP_MISC = {
    TOWER = getObjectFromGUID("66c5a5"),
    MOD = getObjectFromGUID("2512a4"),
    LEADERS = getObjectFromGUID("3ddb4a"),
    FAMILIES = getObjectFromGUID("69b663"),
    AUCTION = getObjectFromGUID("4ab0d4"),
    LOCKS = getObjectFromGUID("829d6f")
  }

  blackdie = getObjectFromGUID('b1690b')
  whitedie = getObjectFromGUID('a0867f')
  orangedie = getObjectFromGUID('bd395e')
  randomizer = getObjectFromGUID('dc4e06')
  LEADER_DECK = getObjectFromGUID('3e22f4')

  discard = {-19.30, 1.06, 20.66}

  COVER_TILES = {
    threep1 = "0c229f", --
    threep2 = "425c85", --
    twop1 = "9d8780",
    twop2 = "d32e46"
  }

  MOD_POS = {
    GREEN = {-9.86, 1.06, 12.49},
    BLUE = {-3.29, 1.06, 12.49},
    YELLOW = {3.30, 1.06, 12.37},
    PURPLE = {9.77, 1.06, 12.63}
  }

  MOD_ZONES = {
    GREEN = getObjectFromGUID('7d5d54'),
    BLUE = getObjectFromGUID('67f82f'),
    YELLOW = getObjectFromGUID('d95dde'),
    PURPLE = getObjectFromGUID('ddb307')
  }

  CHURCH = {
    ERA_1 = getObjectFromGUID('181d44'),
    ERA_2 = getObjectFromGUID('c1a65a'),
    ERA_3 = getObjectFromGUID('91c50a'),
  }


  ZONA_MAIN = "28bc08"
  round_counter = 1

  if savedData != '' and  savedData != nil then
    local loadedData = JSON.decode(savedData)
    round_counter = loadedData.round
    Global.setVar("round_counter", round_counter)
  end



    params = {
        click_function = "click_func",
        function_owner = self,
        label          = "Setup",
        position       = {0, 1, 0},
        rotation       = {0, 180, 0},
        width          = 800,
        height         = 400,
        font_size      = 340,
        color          = {0.5, 0.5, 0.5},
        font_color     = {1, 1, 1},
        tooltip        = "Setup",
    }

  self.createButton(params)
  if round_counter > 1 then
    self.editButton({index=0, label="Next Round"})
  end



end

function onSave()
	local dataToSave = {}
  dataToSave.round = round_counter
	savedData = JSON.encode(dataToSave)
	return savedData
end



function click_func(obj, color, alt_click)

-- DEAL LEADERS
  if round_counter == 1 and self.getButtons()[1].label == "Setup" then
    LEADER_DECK.deal(4)
    local zona_main = getObjectFromGUID(ZONA_MAIN)
    for i, o in ipairs(zona_main.getObjects()) do
      if o.getName() == "blackBoard" or o.getName() == "auction" then
        o.destruct()
      end
    end
    CHURCH.ERA_1.shuffle()
    CHURCH.ERA_1.takeObject({position = {-9.32, 1.01, -0.23}, rotation = {0,180,0}}) --{-9.32, 1.01, -0.22}
    CHURCH.ERA_2.shuffle()
    CHURCH.ERA_2.takeObject({position = {-6.79, 1.01, -0.58}, rotation = {0,180,0}}) -- {-6.79, 1.01, -0.58}
    CHURCH.ERA_3.shuffle()
    CHURCH.ERA_3.takeObject({position = {-4.30, 1.01, -0.23}, rotation = {0,180,0}})  --{-4.30, 1.01, -0.23}


  end




  if round_counter > 1 then
      for i, o in pairs (MOD_ZONES.GREEN.getObjects()) do
        if o.getName() == "exp" then
          o.setPositionSmooth(MOD_POS.BLUE)
        end
      end
      for i, o in pairs (MOD_ZONES.BLUE.getObjects()) do
        if o.getName() == "exp" then
          o.setPositionSmooth(MOD_POS.YELLOW)
        end
      end
      for i, o in pairs (MOD_ZONES.YELLOW.getObjects()) do
        if o.getName() == "exp" then
          o.setPositionSmooth(MOD_POS.PURPLE)
        end
      end
      for i, o in pairs (MOD_ZONES.PURPLE.getObjects()) do
        if o.getName() == "exp" then
          o.setPositionSmooth(MOD_POS.GREEN)
        end
      end

  end


  if round_counter < 2 then
    deck = getObjectFromGUID(DECKS.GREEN_BASE_1)
    for k, v in pairs(SNAP_TOWERS_GREEN) do
      deck.takeObject(v)
    end
    deck = getObjectFromGUID(DECKS.BLUE_BASE_1)
    for k, v in pairs(SNAP_TOWERS_BLUE) do
      deck.takeObject(v)
    end
    deck = getObjectFromGUID(DECKS.YELLOW_BASE_1)
    for k, v in pairs(SNAP_TOWERS_YELLOW) do
      deck.takeObject(v)
    end
    deck = getObjectFromGUID(DECKS.PURPLE_BASE_1)
    for k, v in pairs(SNAP_TOWERS_PURPLE) do
      deck.takeObject(v)
    end
    if Global.getVar("expansion") == true then
      deck = getObjectFromGUID(DECKS.GREY_1)
      for k, v in pairs(SNAP_TOWERS_GREY) do
        deck.takeObject(v)
      end
    end
    if self.getButtons()[1].label != "Setup" then
      round_counter = round_counter + 1
    end


  elseif round_counter == 2 or round_counter == 3 then
    deck = getObjectFromGUID(DECKS.GREEN_BASE_2)
    for k, v in pairs(SNAP_TOWERS_GREEN) do
      deck.takeObject(v)
    end
    deck = getObjectFromGUID(DECKS.BLUE_BASE_2)
    for k, v in pairs(SNAP_TOWERS_BLUE) do
      deck.takeObject(v)
    end
    deck = getObjectFromGUID(DECKS.YELLOW_BASE_2)
    for k, v in pairs(SNAP_TOWERS_YELLOW) do
      deck.takeObject(v)
    end
    deck = getObjectFromGUID(DECKS.PURPLE_BASE_2)
    for k, v in pairs(SNAP_TOWERS_PURPLE) do
      deck.takeObject(v)
    end
    if Global.getVar("expansion") == true then
      deck = getObjectFromGUID(DECKS.GREY_2)
      for k, v in pairs(SNAP_TOWERS_GREY) do
        deck.takeObject(v)
      end
    end
    round_counter = round_counter + 1


  elseif round_counter == 4 or round_counter == 5 then
    deck = getObjectFromGUID(DECKS.GREEN_BASE_3)
    for k, v in pairs(SNAP_TOWERS_GREEN) do
      deck.takeObject(v)
    end
    deck = getObjectFromGUID(DECKS.BLUE_BASE_3)
    for k, v in pairs(SNAP_TOWERS_BLUE) do
      deck.takeObject(v)
    end
    deck = getObjectFromGUID(DECKS.YELLOW_BASE_3)
    for k, v in pairs(SNAP_TOWERS_YELLOW) do
      deck.takeObject(v)
    end
    deck = getObjectFromGUID(DECKS.PURPLE_BASE_3)
    for k, v in pairs(SNAP_TOWERS_PURPLE) do
      deck.takeObject(v)
    end
    if Global.getVar("expansion") == true then
      deck = getObjectFromGUID(DECKS.GREY_3)
      for k, v in pairs(SNAP_TOWERS_GREY) do
        deck.takeObject(v)
      end
    end

    round_counter = round_counter + 1



  end

  if #getSeatedPlayers() < 4 then
    local cover_tile = getObjectFromGUID(COVER_TILES.threep1)
    cover_tile.setPositionSmooth({8.03, 1, -7.58})
    local cover_tile = getObjectFromGUID(COVER_TILES.threep2)
    cover_tile.setPositionSmooth({10.49, 1, -9.28})
    if #getSeatedPlayers() < 3 then
      local cover_tile = getObjectFromGUID(COVER_TILES.twop1)
      cover_tile.setPositionSmooth({-7.81, 1, -7.29})
      local cover_tile = getObjectFromGUID(COVER_TILES.twop2)
      cover_tile.setPositionSmooth({-7.78, 1, -10.84})
    end
  end

  if self.getButtons()[1].label == "Setup" then
    Cover = getObjectFromGUID("5bec5b")
    Cover.removeButton(0)
    Cover.removeButton(1)
    Cover.removeButton(2)
    self.editButton({index=0, label="Next Round"})
  end



  --Pieces return and discard cards
  resetBoard()





  --Dados
  blackdie.roll()
  whitedie.roll()
  orangedie.roll()
  Wait.condition(setdie, checkrest)





  Global.setVar("round_counter", round_counter)




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

function setdie()
  blackdie.setPositionSmooth({1.66, 1.82, -10.73})
  whitedie.setPositionSmooth({4.84, 1.80, -10.73})
  orangedie.setPositionSmooth({7.91, 1.82, -10.73})
  blackrot = blackdie.getRotation()
  blackrot[2] = 0
  blackdie.setRotation(blackrot)
  whiterot = whitedie.getRotation()
  whiterot [2] = 0
  whitedie.setRotation(whiterot)
  orangerot = orangedie.getRotation()
  orangerot[2] = 0
  orangedie.setRotation(orangerot)

end

function checkrest ()
   if blackdie.resting then
     if whitedie.resting then
       if orangedie.resting then
         return true
       end
     end
   end
   return false
 end

 function resetBoard()
   zona_main = getObjectFromGUID(ZONA_MAIN)
   objetos = zona_main.getObjects()
   greenPos = {28.91, 1.85, -0.12}
   redPos = {19.23, 1.85, -15.66}
   yellowPos = {-29.22, 1.85, -15.41}
   bluePos = {-29.26, 1.85, 5.80}
   for i, o in ipairs(objetos) do
     if o.getName() == "greenPawn" then
       o.setPositionSmooth(greenPos)
       greenPos[3] = greenPos[3] + 2
     elseif o.getName() == "redPawn" then
       o.setPositionSmooth(redPos)
       redPos[1] = redPos[1] + 2
     elseif o.getName() == "yellowPawn" then
       o.setPositionSmooth(yellowPos)
       yellowPos[1] = yellowPos[1] + 2
     elseif o.getName() == "bluePawn" then
       o.setPositionSmooth(bluePos)
       bluePos[3] = bluePos[3] + 2
     elseif o.getName() == "redOrder" or
       o.getName() == "blueOrder" or
       o.getName() == "yellowOrder" or
       o.getName() == "greenOrder" or
       o.getName() == "Militar" or
       o.getName() == "Church" or
       o.getName() == "die" or
       o.getName() == "cover" then
         -- do nothing
     elseif o.getName() != "exp" then
     o.setPositionSmooth(discard)

     end
   end
 end