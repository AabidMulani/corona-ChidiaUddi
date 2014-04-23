

_W=display.contentWidth
_H=display.contentHeight

FLYING_OBJECTS={
    {"menu_images/obj_images/fly_1.png",true},
    {"menu_images/obj_images/dont_fly_1.png",false},    
    {"menu_images/obj_images/fly_2.png",true},
    {"menu_images/obj_images/dont_fly_2.png",false},    
    {"menu_images/obj_images/fly_3.png",true},
    {"menu_images/obj_images/dont_fly_3.png",false},    
    {"menu_images/obj_images/fly_4.png",true},
    {"menu_images/obj_images/dont_fly_4.png",false},    
    {"menu_images/obj_images/fly_5.png",true},
    {"menu_images/obj_images/dont_fly_5.png",false},    
    {"menu_images/obj_images/fly_6.png",true},
    {"menu_images/obj_images/dont_fly_6.png",false},    
    {"menu_images/obj_images/fly_7.png",true},
    {"menu_images/obj_images/dont_fly_7.png",false},    
    {"menu_images/obj_images/fly_8.png",true},
    {"menu_images/obj_images/dont_fly_8.png",false},       
    {"menu_images/obj_images/fly_9.png",true},
    {"menu_images/obj_images/dont_fly_9.png",false},       
    {"menu_images/obj_images/fly_10.png",true},
    {"menu_images/obj_images/dont_fly_10.png",false},       
    {"menu_images/obj_images/fly_11.png",true},
    {"menu_images/obj_images/dont_fly_11.png",false},      
    {"menu_images/obj_images/fly_12.png",true},
    {"menu_images/obj_images/dont_fly_12.png",false},      
    {"menu_images/obj_images/fly_13.png",true},
    {"menu_images/obj_images/dont_fly_13.png",false},      
    {"menu_images/obj_images/fly_14.png",true},
    {"menu_images/obj_images/dont_fly_14.png",false},       
    {"menu_images/obj_images/fly_15.png",true},
    {"menu_images/obj_images/dont_fly_15.png",false},       
    {"menu_images/obj_images/fly_16.png",true},
    {"menu_images/obj_images/dont_fly_16.png",false},       
    {"menu_images/obj_images/fly_17.png",true},
    {"menu_images/obj_images/dont_fly_17.png",false},       
    {"menu_images/obj_images/fly_18.png",true},
    {"menu_images/obj_images/dont_fly_18.png",false},       
    {"menu_images/obj_images/fly_19.png",true},
    {"menu_images/obj_images/dont_fly_19.png",false},      
    {"menu_images/obj_images/fly_20.png",true},
    {"menu_images/obj_images/dont_fly_20.png",false},      
    {"menu_images/obj_images/fly_21.png",true},
    {"menu_images/obj_images/dont_fly_21.png",false},       
    {"menu_images/obj_images/fly_22.png",true},
    {"menu_images/obj_images/dont_fly_22.png",false},       
    {"menu_images/obj_images/fly_23.png",true},
    {"menu_images/obj_images/dont_fly_23.png",false},       
    {"menu_images/obj_images/fly_24.png",true},
    {"menu_images/obj_images/dont_fly_24.png",false},       
    {"menu_images/obj_images/fly_25.png",true},
    {"menu_images/obj_images/dont_fly_25.png",false},       
    {"menu_images/obj_images/fly_26.png",true},
    {"menu_images/obj_images/dont_fly_26.png",false},       
    {"menu_images/obj_images/fly_27.png",true},
    {"menu_images/obj_images/dont_fly_27.png",false},       
    {"menu_images/obj_images/fly_28.png",true},
    {"menu_images/obj_images/dont_fly_28.png",false},      
    {"menu_images/obj_images/fly_29.png",true},
    {"menu_images/obj_images/dont_fly_29.png",false},       
    {"menu_images/obj_images/fly_30.png",true},
    {"menu_images/obj_images/dont_fly_30.png",false},       
    {"menu_images/obj_images/fly_31.png",true},
    {"menu_images/obj_images/dont_fly_31.png",false},       
    {"menu_images/obj_images/fly_32.png",true},
    {"menu_images/obj_images/dont_fly_32.png",false},       
    {"menu_images/obj_images/fly_33.png",true},
    {"menu_images/obj_images/dont_fly_33.png",false},       
    {"menu_images/obj_images/fly_34.png",true},
    {"menu_images/obj_images/dont_fly_34.png",false},       
    {"menu_images/obj_images/fly_35.png",true},
    {"menu_images/obj_images/dont_fly_35.png",false},       
    {"menu_images/obj_images/fly_36.png",true},
    {"menu_images/obj_images/dont_fly_36.png",false},       
    {"menu_images/obj_images/fly_37.png",true},
    {"menu_images/obj_images/dont_fly_37.png",false},       
    {"menu_images/obj_images/fly_38.png",true},
    {"menu_images/obj_images/dont_fly_38.png",false},       
    {"menu_images/obj_images/fly_39.png",true},
    {"menu_images/obj_images/dont_fly_39.png",false},      
    {"menu_images/obj_images/fly_40.png",true},
    {"menu_images/obj_images/dont_fly_40.png",false},      
    {"menu_images/obj_images/fly_41.png",true},
    {"menu_images/obj_images/dont_fly_41.png",false},      
    {"menu_images/obj_images/fly_42.png",true},
    {"menu_images/obj_images/dont_fly_42.png",false},      
    {"menu_images/obj_images/fly_43.png",true},
    {"menu_images/obj_images/dont_fly_43.png",false}     
}
--TABLE value's are  
--{ background, maxObjCount, speed, background_audio}
GAME_LEVELS={
    {"menu_images/game_bg_2.png", 200, 4200, nil},
    {"menu_images/game_bg_4.png", 500, 3200, nil},
    {"menu_images/game_bg_3.png", 750, 2700, nil},
    {"menu_images/game_bg_5.png", 900, 2500, nil},
    {"menu_images/game_bg_1.png", 1000000, 2100, nil},	
}

USER_NAME="NoName"
HIGH_SCORE=150
PAUSE_GAME_OVERLAY="none"
GAME_OVER_OVERLAY="none"
AVAILABLE_COINS = 200
USED_LIFE_COUNT=0
IS_SOUND_ON="true"
PLATFORM_NAME = system.getInfo("platformName")
local storyboard = require ( "storyboard" )
storyboard.purgeOnSceneChange = true
local options = {
    effect = "fade",
    time=800,
    params = {var1 = "custom", myVar= "another"}
}

local GGData=require ( "GGData" )
databaseBox=GGData:new("ChidiaUddi")

function saveUserName(name)
    print("saveUserName: "..tostring(name))
    databaseBox.playerName=tostring(name)
    databaseBox:save()
end

function getUserName()
    print("getUserName")
    if(databaseBox.playerName)then
        print(databaseBox.playerName)
        return databaseBox.playerName
    else            
        print("NO USER")
        return nil 
    end
end

function saveHighScore(score)
    print("saveHighScore")
    databaseBox.highScore=tostring(score)
    databaseBox:save()
end

function getHighScore()
    print("getHighScore")
    if(databaseBox.highScore)then
        return databaseBox.highScore
    else
        return nil 
    end
end

function saveCoinsCounts(name)
    print("saveCoinsCounts")
    if(tonumber(name)<0)then
        name=0
    end
    databaseBox.coinsCount=tostring(name)
    databaseBox:save()
end

function getCoinsCounts()
    print("getCoinsCounts")
    if(databaseBox.coinsCount)then
        return databaseBox.coinsCount
    else
        return nil 
    end
end

function saveSoundSettings(flag)
    print("saveSoundSettings")
    databaseBox.soundSettings=tostring(flag)
    databaseBox:save()
end

function getSoundSettings()
    print("getSoundSettings")
    if(databaseBox.soundSettings)then
        return tostring(databaseBox.soundSettings)
    else
        return "true" 
    end
end

display.setStatusBar ( display.HiddenStatusBar )

storyboard.gotoScene("SplashScreen")