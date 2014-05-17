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
    {"menu_images/obj_images/dont_fly_43.png",false},      
    {"menu_images/obj_images/more_fly_1.png",true},
    {"menu_images/obj_images/more_dont_fly_1.png",false},      
    {"menu_images/obj_images/more_fly_2.png",true},
    {"menu_images/obj_images/more_dont_fly_2.png",false},      
    {"menu_images/obj_images/more_fly_3.png",true},
    {"menu_images/obj_images/more_dont_fly_3.png",false},      
    {"menu_images/obj_images/more_fly_4.png",true},
    {"menu_images/obj_images/more_dont_fly_4.png",false},      
    {"menu_images/obj_images/more_fly_5.png",true},
    {"menu_images/obj_images/more_dont_fly_5.png",false},      
    {"menu_images/obj_images/more_fly_6.png",true},
    {"menu_images/obj_images/more_dont_fly_6.png",false},      
    {"menu_images/obj_images/more_fly_7.png",true},
    {"menu_images/obj_images/more_dont_fly_7.png",false},      
    {"menu_images/obj_images/more_fly_8.png",true},
    {"menu_images/obj_images/more_dont_fly_8.png",false},      
    {"menu_images/obj_images/more_fly_9.png",true},
    {"menu_images/obj_images/more_dont_fly_9.png",false},      
    {"menu_images/obj_images/more_fly_10.png",true},
    {"menu_images/obj_images/more_dont_fly_10.png",false},      
    {"menu_images/obj_images/more_fly_11.png",true},
    {"menu_images/obj_images/more_dont_fly_11.png",false},      
    {"menu_images/obj_images/more_fly_12.png",true},
    {"menu_images/obj_images/more_dont_fly_12.png",false},      
    {"menu_images/obj_images/more_fly_13.png",true},
    {"menu_images/obj_images/more_dont_fly_13.png",false},      
    {"menu_images/obj_images/more_fly_14.png",true},
    {"menu_images/obj_images/more_dont_fly_14.png",false},      
    {"menu_images/obj_images/more_fly_15.png",true},
    {"menu_images/obj_images/more_dont_fly_15.png",false},      
    {"menu_images/obj_images/more_fly_16.png",true},
    {"menu_images/obj_images/more_dont_fly_16.png",false},      
    {"menu_images/obj_images/more_fly_17.png",true},
    {"menu_images/obj_images/more_dont_fly_17.png",false},      
    {"menu_images/obj_images/more_fly_18.png",true},
    {"menu_images/obj_images/more_dont_fly_18.png",false},      
    {"menu_images/obj_images/more_fly_19.png",true},
    {"menu_images/obj_images/more_dont_fly_19.png",false},
    {"menu_images/obj_images/more_dont_fly_20.png",false}   
}
--TABLE value's are  
--{ background, maxObjCount, speed, background_audio}
GAME_LEVELS={
    {"menu_images/game_bg_2.png", 60, 3400, audio.loadStream("audio/temp_low.mp3")},
    {"menu_images/game_bg_4.png", 140,3300, audio.loadStream("audio/temp_low.mp3")},
    {"menu_images/game_bg_3.png", 240, 3200,audio.loadStream( "audio/temp_low.mp3")},
    {"menu_images/game_bg_5.png", 360, 3100, audio.loadStream("audio/temp_low.mp3")},
    {"menu_images/game_bg_3.png", 500, 3000, audio.loadStream("audio/temp_low.mp3")},
    {"menu_images/game_bg_2.png", 660, 2900, audio.loadStream("audio/temp_medium.mp3")},
    {"menu_images/game_bg_4.png", 860, 2800, audio.loadStream("audio/temp_medium.mp3")},
    {"menu_images/game_bg_3.png", 1110, 2700, audio.loadStream("audio/temp_medium.mp3")},
    {"menu_images/game_bg_5.png", 1360, 2600, audio.loadStream("audio/temp_medium.mp3")},
    {"menu_images/game_bg_3.png", 1660, 2500, audio.loadStream("audio/temp_medium.mp3")},	
    {"menu_images/game_bg_2.png", 1960, 2400, audio.loadStream("audio/temp_high.mp3")},
    {"menu_images/game_bg_4.png", 2360, 2300, audio.loadStream("audio/temp_high.mp3")},
    {"menu_images/game_bg_3.png", 2760, 2200, audio.loadStream("audio/temp_high.mp3")},
    {"menu_images/game_bg_5.png", 3260, 2100, audio.loadStream("audio/temp_high.mp3")},
    {"menu_images/game_bg_2.png", 3760, 2000, audio.loadStream("audio/temp_high.mp3")},	
    {"menu_images/game_bg_1.png", 4510, 1900, audio.loadStream("audio/temp_high.mp3")},
    {"menu_images/game_bg_4.png", 5260, 1800, audio.loadStream("audio/temp_high.mp3")},
    {"menu_images/game_bg_3.png", 6010, 1700, audio.loadStream("audio/temp_high.mp3")},
    {"menu_images/game_bg_5.png", 7010, 1600, audio.loadStream("audio/temp_high.mp3")},
    {"menu_images/game_bg_2.png", 8010, 1500, audio.loadStream("audio/temp_high.mp3")},	
    {"menu_images/game_bg_3.png", 9010, 1400, audio.loadStream("audio/temp_high.mp3")},
    {"menu_images/game_bg_1.png", 10010, 1300,audio.loadStream( "audio/temp_high.mp3")},
    {"menu_images/game_bg_3.png", 10020, 1200, audio.loadStream("audio/temp_high.mp3")},
    {"menu_images/game_bg_2.png", 10200, 1100, audio.loadStream("audio/temp_high.mp3")},
    {"menu_images/game_bg_5.png", 20000, 1000, audio.loadStream("audio/temp_high.mp3")},
    {"menu_images/game_bg_3.png", 30000, 900, audio.loadStream("audio/temp_high.mp3")},
    {"menu_images/game_bg_1.png", 40000, 800, audio.loadStream("audio/temp_high.mp3")},
    {"menu_images/game_bg_3.png", 50000, 700, audio.loadStream("audio/temp_high.mp3")},
    {"menu_images/game_bg_2.png", 60000, 600, audio.loadStream("audio/temp_high.mp3")},
    {"menu_images/game_bg_5.png", 70000, 500, audio.loadStream("audio/temp_high.mp3")},		
}

SOUND_BUTTON_CLICK=audio.loadSound("audio/click_sound.mp3")
SOUND_CORRECT_SWIPE=audio.loadSound("audio/correct_sound.mp3")
SOUND_WRONG_SWIPE=audio.loadSound("audio/wrong_sound.mp3")
SOUND_COUNT_DOWN=audio.loadSound("audio/countdown_sound.mp3")
SOUND_END_GAME=audio.loadSound("audio/end_game.mp3")

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
HIGH_SCORE_1_date = ""
HIGH_SCORE_2_date = ""
HIGH_SCORE_3_date = ""
HIGH_SCORE_4_date = ""
HIGH_SCORE_5_date = ""

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
    local currentDate = os.date( "*t" )
    local dateStr=currentDate.day.."/"..currentDate.month.."/"..currentDate.year
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
                                            databaseBox.highScore_5_date=dateStr
                                        end
                                    else 
                                        databaseBox.highScore_5=tostring(score) 
                                        databaseBox.highScore_5_date=dateStr
                                    end
                                else
                                    databaseBox.highScore_4=tostring(score)
                                    databaseBox.highScore_4_date=dateStr
                                    databaseBox.highScore_5=HIGH_SCORE_4
                                    databaseBox.highScore_5_date=HIGH_SCORE_4_date
                                end
                            else
                                databaseBox.highScore_4=tostring(score)
                                databaseBox.highScore_4_date=dateStr
                            end
                        else
                            databaseBox.highScore_3=tostring(score)
                            databaseBox.highScore_3_date=dateStr
                            databaseBox.highScore_4=HIGH_SCORE_3
                            databaseBox.highScore_4_date=HIGH_SCORE_3_date
                            databaseBox.highScore_5=HIGH_SCORE_4
                            databaseBox.highScore_5_date=HIGH_SCORE_4_date
                        end
                    else
                        databaseBox.highScore_3=tostring(score)   
                        databaseBox.highScore_3_date=dateStr
                    end
                else
                    databaseBox.highScore_2=tostring(score)
                    databaseBox.highScore_2_date=dateStr
                    databaseBox.highScore_3=HIGH_SCORE_2
                    databaseBox.highScore_3_date=HIGH_SCORE_2_date
                    databaseBox.highScore_4=HIGH_SCORE_3
                    databaseBox.highScore_4_date=HIGH_SCORE_3_date
                    databaseBox.highScore_5=HIGH_SCORE_4
                    databaseBox.highScore_5_date=HIGH_SCORE_4_date
                end            
            else
                databaseBox.highScore_2=tostring(score)
                databaseBox.highScore_2_date=dateStr
            end
        else
            databaseBox.highScore_1=tostring(score)
            databaseBox.highScore_1_date=dateStr
            databaseBox.highScore_2=HIGH_SCORE_1
            databaseBox.highScore_2_date=HIGH_SCORE_1_date
            databaseBox.highScore_3=HIGH_SCORE_2
            databaseBox.highScore_3_date=HIGH_SCORE_2_date
            databaseBox.highScore_4=HIGH_SCORE_3
            databaseBox.highScore_4_date=HIGH_SCORE_3_date
            databaseBox.highScore_5=HIGH_SCORE_4
            databaseBox.highScore_5_date=HIGH_SCORE_4_date
        end
    else
        databaseBox.highScore_1=tostring(score)        
        databaseBox.highScore_1_date=dateStr
    end
    databaseBox:save()
end

function getHighScore()
    print("getHighScore")
    HIGH_SCORE_1=databaseBox.highScore_1    
    HIGH_SCORE_1_date=databaseBox.highScore_1_date   
    
    HIGH_SCORE_2=databaseBox.highScore_2    
    HIGH_SCORE_2_date=databaseBox.highScore_2_date    
    
    HIGH_SCORE_3=databaseBox.highScore_3    
    HIGH_SCORE_3_date=databaseBox.highScore_3_date    
    
    HIGH_SCORE_4=databaseBox.highScore_4    
    HIGH_SCORE_4_date=databaseBox.highScore_4_date    
    
    HIGH_SCORE_5=databaseBox.highScore_5
    HIGH_SCORE_5_date=databaseBox.highScore_5_date
    
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