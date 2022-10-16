function onLoad()

  BASE_DECKS = {
    GREEN_1 = "fdb940",
    GREEN_2 = "9f0422",
    GREEN_3 = "710adb",
    BLUE_1 = "4cd65d",
    BLUE_2 = "096375",
    BLUE_3 = "bd4c99",
    YELLOW_1 = "5ffc36",
    YELLOW_2 = "1d6383",
    YELLOW_3 = "4f3533",
    PURPLE_1 = "74463f",
    PURPLE_2 = "9964ba",
    PURPLE_3 = "d52686",

  }

  HOUSES_DECKS = {
    GREY_1 = "e01928",
    GREY_2 = "9e7097",
    GREY_3 = "ccaae0"
  }


  BASE_DECKS_OBJECTS = {
    GREEN_1 = nil,
    GREEN_2 = nil,
    GREEN_3 = nil,
    BLUE_1 = nil,
    BLUE_2 = nil,
    BLUE_3 = nil,
    YELLOW_1 = nil,
    YELLOW_2 = nil,
    YELLOW_3 = nil,
    PURPLE_1 = nil,
    PURPLE_2 = nil,
    PURPLE_3 = nil

  }

  BASE_DECKS_POS = {
    GREEN_1 = nil,
    GREEN_2 = nil,
    GREEN_3 = nil,
    BLUE_1 = nil,
    BLUE_2 = nil,
    BLUE_3 = nil,
    YELLOW_1 = nil,
    YELLOW_2 = nil,
    YELLOW_3 = nil,
    PURPLE_1 = nil,
    PURPLE_2 = nil,
    PURPLE_3 = nil

  }

  for k,v in pairs(BASE_DECKS) do
    BASE_DECKS_OBJECTS[k] = getObjectFromGUID(BASE_DECKS[k])
  end

  for k,v in pairs(BASE_DECKS_OBJECTS) do
    BASE_DECKS_POS[k] = BASE_DECKS_OBJECTS[k].getPosition()
  end

  for k,v in pairs(BASE_DECKS_POS) do
    v[2] = v[2] + 1
  end

  HOUSES_EXP_MISC = {
    TOWER = getObjectFromGUID("66c5a5"),
    MOD = getObjectFromGUID("2512a4"),
    LEADERS = getObjectFromGUID("3e22f4"),
    FAMILIES = getObjectFromGUID("69b663"),
    AUCTION = getObjectFromGUID("4ab0d4"),
    LOCKS = getObjectFromGUID("829d6f"),
    CHURCH_1 = getObjectFromGUID("a731c7"),
    CHURCH_2 = getObjectFromGUID("846522"),
    CHURCH_3 = getObjectFromGUID("93106d"),
    SCROLL = getObjectFromGUID("9ef18d")
  }


  PAZZI_DECKS = {
    GREEN_1 = "54e693",
    GREEN_2 = "224ad1",
    GREEN_3 = "561682",
    BLUE_1 = "f50923",
    BLUE_2 = "00e80a",
    BLUE_3 = "3b8f58",
    YELLOW_1 = "7cfc9a",
    YELLOW_2 = "35b6af",
    YELLOW_3 = "62d002",
    PURPLE_1 = "de34b1",
    PURPLE_2 = "d7910c",
    PURPLE_3 = "0525c2",
  }

  MOD_POS = {
    GREEN = {-9.86, 1.06, 12.49},
    BLUE = {-3.29, 1.06, 12.49},
    YELLOW = {3.30, 1.06, 12.37},
    PURPLE = {9.77, 1.06, 12.63}
  }



  randomizer = getObjectFromGUID('dc4e06')


  BaseGame = {
      click_function = "click_base",
      function_owner = self,
      label          = "Base Game",
      position       = {0, 1, 0},
      rotation       = {0, 0, 0},
      width          = 1200,
      height         = 300,
      font_size      = 200,
      color          = {0.5, 0.5, 0.5},
      font_color     = {1, 1, 1},
      tooltip        = "Select Base Game",
  }

  HousesExp = {
      click_function = "click_houses",
      function_owner = self,
      label          = "Houses of Renaissance",
      position       = {0, 1, 1},
      rotation       = {0, 0, 0},
      width          = 1600,
      height         = 300,
      font_size      = 150,
      color          = {0.5, 0.5, 0.5},
      font_color     = {1, 1, 1},
      tooltip        = "Select Base Game",
  }

  PazziExp = {
      click_function = "click_pazzi",
      function_owner = self,
      label          = "Pazzi Conspiracy",
      position       = {0, 1, 2},
      rotation       = {0, 0, 0},
      width          = 1600,
      height         = 300,
      font_size      = 150,
      color          = {0.5, 0.5, 0.5},
      font_color     = {1, 1, 1},
      tooltip        = "Select Base Game",
  }

  takeBoard = {
        position = {x=-3, y=3, z=13},
        guid = "683cb7",
        callback_function = function(obj) take_callback(obj) end,
    }

  takeVec = {x=-10, y=4.5, z=19}
  takeFamily = {
        position = takeVec,
    }
  takeVec_Auc = {x=-10, y=4.5, z=11.5}
    takeAuc = {
          position = takeVec_Auc,
      }


    if Global.getVar("round_counter") == 1 then
      self.createButton(BaseGame)
      self.createButton(HousesExp)
      self.createButton(PazziExp)
    end

end

function click_base()
  self.editButton({index = 0, label = "<Base Game>", color = {0.3, 0.3, 0.3}})
  for k, v in pairs (PAZZI_DECKS) do
    local deck = getObjectFromGUID(v)
    deck.destruct()
  end
  for k, v in pairs (HOUSES_DECKS) do
    local deck = getObjectFromGUID(v)
    deck.destruct()
  end

  for k, v in pairs (HOUSES_EXP_MISC) do
    v.destruct()
  end

end

function click_houses()
  self.editButton({index = 1, label = "<Houses of Renaissance>", color = {0.3, 0.3, 0.3}})
  Global.setVar("expansion", true)
  HOUSES_EXP_MISC.TOWER.setPositionSmooth({19.67, 1.06, 13.91})
  randomizer.roll()
  Wait.condition(getmod, function() return randomizer.resting end)
  HOUSES_EXP_MISC.LEADERS.setPositionSmooth({47.96, 2, 31.01})
  Wait.frames(shuffleAll, 180)
  HOUSES_EXP_MISC.SCROLL.setPositionSmooth({3.12, 1.06, -0.13})


  -- Auction Setup

  HOUSES_EXP_MISC.FAMILIES.takeObject(takeBoard) -- Board
  HOUSES_EXP_MISC.FAMILIES.shuffle()
  HOUSES_EXP_MISC.AUCTION.shuffle()

  for _,playerColor in ipairs(getSeatedPlayers()) do
    HOUSES_EXP_MISC.FAMILIES.takeObject(takeFamily)
    takeVec.x = takeVec.x + 5
    HOUSES_EXP_MISC.AUCTION.takeObject(takeAuc)
    takeVec_Auc.x = takeVec_Auc.x + 5
  end
  HOUSES_EXP_MISC.LOCKS.setPositionSmooth({26.06, 0.77, 16.72})

  HOUSES_EXP_MISC.CHURCH_1.setPositionSmooth({-26.17, 3, 33.20})
  HOUSES_EXP_MISC.CHURCH_2.setPositionSmooth({-22.01, 3, 33.35})
  HOUSES_EXP_MISC.CHURCH_3.setPositionSmooth({-17.71, 3, 33.18})



end

function click_pazzi()
  self.editButton({index = 2, label = "<Pazzi Conspiracy>", color = {0.3, 0.3, 0.3}})
  broadcastToAll("Preparing Pazzi Conspiracy Expansion")
  for k, v in pairs(PAZZI_DECKS) do
    local deck = getObjectFromGUID(v)
    local pos = BASE_DECKS_POS[k]
    deck.setPositionSmooth(pos)
    Wait.frames(shuffleAll, 180)


  end

end

function shuffleAll()
  DECKS_ZONE = getObjectFromGUID("e563c4")
  for i, o in ipairs(DECKS_ZONE.getObjects()) do
    o.shuffle()
  end
end

function getmod()
  roll = randomizer.getValue()
  if roll == 1 then
    HOUSES_EXP_MISC.MOD.setPositionSmooth(MOD_POS.GREEN)
  end
  if roll == 2 then
    HOUSES_EXP_MISC.MOD.setPositionSmooth(MOD_POS.BLUE)
  end
  if roll == 3 then
    HOUSES_EXP_MISC.MOD.setPositionSmooth(MOD_POS.YELLOW)
  end
  if roll == 4 then
    HOUSES_EXP_MISC.MOD.setPositionSmooth(MOD_POS.PURPLE)
  end
end

function take_callback(object_spawned)
    object_spawned.setLock(true)
end