

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
    {"menu_images/game_bg_2.png", 500, 4200, nil},
    {"menu_images/game_bg_4.png", 1000,3800, nil},
    {"menu_images/game_bg_3.png", 1750, 3400, nil},
    {"menu_images/game_bg_5.png", 2750, 3000, nil},
    {"menu_images/game_bg_3.png", 4000, 2600, nil},	
    {"menu_images/game_bg_2.png", 5500, 2400, nil},
    {"menu_images/game_bg_4.png", 7250, 2300, nil},
    {"menu_images/game_bg_3.png", 11500, 2200, nil},
    {"menu_images/game_bg_5.png", 14000, 2100, nil},
    {"menu_images/game_bg_2.png", 16750, 2000, nil},	
    {"menu_images/game_bg_1.png", 19750, 1900, nil},
    {"menu_images/game_bg_4.png", 23250, 1800, nil},
    {"menu_images/game_bg_3.png", 27250, 1700, nil},
    {"menu_images/game_bg_5.png", 33000, 1600, nil},
    {"menu_images/game_bg_2.png", 43000, 1500, nil},	
    {"menu_images/game_bg_3.png", 54000, 1400, nil},
    {"menu_images/game_bg_1.png", 65000, 1300, nil},
    {"menu_images/game_bg_3.png", 77000, 1200, nil},
    {"menu_images/game_bg_2.png", 88000, 1100, nil},
    {"menu_images/game_bg_5.png", 100000, 1000, nil},	
}

SOUND_BUTTON_CLICK=audio.loadSound("audio/click_sound.mp3")
SOUND_CORRECT_SWIPE=audio.loadSound("audio/correct_sound.mp3")
SOUND_WRONG_SWIPE=audio.loadSound("audio/wrong_sound.mp3")
SOUND_COUNT_DOWN=audio.loadSound("audio/countdown_sound.mp3")
SOUND_END_GAME=audio.loadSound("audio/end_game.mp3")

SOUND_STREAM_GAME=audio.loadStream("audio/game_sound_dummy.mp3")
SOUND_STREAM_MENU=audio.loadStream("audio/menu_sound_dummy.mp3")

USER_NAME="NoName"
HIGH_SCORE=0
PAUSE_GAME_OVERLAY="none"
GAME_OVER_OVERLAY="none"
AVAILABLE_COINS = 200
USED_LIFE_COUNT=0
IS_SOUND_ON="true"

HIGH_SCORE_1 = 0
HIGH_SCORE_2 = 0
HIGH_SCORE_3 = 0
HIGH_SCORE_4 = 0
HIGH_SCORE_5 = 0

PLATFORM_NAME = system.getInfo("platformName")
local storyboard = require ( "storyboard" )
storyboard.purgeOnSceneChange = true

local options = {
    effect = "fade",
    time=600,
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
    local numScore=tonumber(score)
    if(numScore==0)then
        return
    end
    if(HIGH_SCORE_1)then
        if(tonumber(HIGH_SCORE_1)>numScore)then
            if(HIGH_SCORE_2)then
                if(tonumber(HIGH_SCORE_2)>numScore)then
                    if(HIGH_SCORE_3)then
                        if(tonumber(HIGH_SCORE_3)>numScore)then
                            if(HIGH_SCORE_4)then
                                if(tonumber(HIGH_SCORE_4)>numScore)then
                                    if(HIGH_SCORE_5)then
                                        if(tonumber(HIGH_SCORE_5)<numScore)then
                                            databaseBox.highScore_5=tostring(score)                                             
                                        end
                                    else 
                                        databaseBox.highScore_5=tostring(score) 
                                    end
                                else
                                    databaseBox.highScore_4=tostring(score)
                                    databaseBox.highScore_5=HIGH_SCORE_4
                                end
                            else
                                databaseBox.highScore_4=tostring(score)  
                            end
                        else
                            databaseBox.highScore_3=tostring(score)
                            databaseBox.highScore_4=HIGH_SCORE_3
                            databaseBox.highScore_5=HIGH_SCORE_4
                        end
                    else
                        databaseBox.highScore_3=tostring(score)                        
                    end
                else
                    databaseBox.highScore_2=tostring(score)
                    databaseBox.highScore_3=HIGH_SCORE_2
                    databaseBox.highScore_4=HIGH_SCORE_3
                    databaseBox.highScore_5=HIGH_SCORE_4
                end            
            else
                databaseBox.highScore_2=tostring(score)
            end
        else
            databaseBox.highScore_1=tostring(score)
            databaseBox.highScore_2=HIGH_SCORE_1
            databaseBox.highScore_3=HIGH_SCORE_2
            databaseBox.highScore_4=HIGH_SCORE_3
            databaseBox.highScore_5=HIGH_SCORE_4
        end
    else
        databaseBox.highScore_1=tostring(score)
    end
    databaseBox:save()
end

function getHighScore()
    print("getHighScore")
    HIGH_SCORE_1=databaseBox.highScore_1    
    if(HIGH_SCORE_1)then
        print("HIGH_SCORE_1 ="..HIGH_SCORE_1)
    end
    
    HIGH_SCORE_2=databaseBox.highScore_2    
    if(HIGH_SCORE_2)then
        print("HIGH_SCORE_2 ="..HIGH_SCORE_2)
    end
    
    HIGH_SCORE_3=databaseBox.highScore_3    
    if(HIGH_SCORE_3)then
        print("HIGH_SCORE_3 ="..HIGH_SCORE_3)
    end
    
    HIGH_SCORE_4=databaseBox.highScore_4    
    if(HIGH_SCORE_4)then
        print("HIGH_SCORE_4 ="..HIGH_SCORE_4)
    end
    
    HIGH_SCORE_5=databaseBox.highScore_5
    if(HIGH_SCORE_5)then
        print("HIGH_SCORE_5 ="..HIGH_SCORE_5)
    end
    
    if(HIGH_SCORE_1)then
        return HIGH_SCORE_1
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