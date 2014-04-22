
local playButton
local highScoreButton
local howToPlayButton
local soundsButton
local storyboard= require ( "storyboard" )
local scene= storyboard.newScene()
local onButtonClick
local initialAnimation

function scene:createScene(event)
    local group=self.view
    local background = display.newImageRect( "menu_images/menu_screen_background.png",_W,_H)
    background.x=_W/2;
    background.y=_H/2
    group:insert(background);
    
    local birdImg = display.newImage( "menu_images/bird_1_img.png")
    birdImg.x=_W/2-110;
    birdImg.y=35
    group:insert(birdImg);
    
    
    local labelScoreTxt= display.newText("High Scores: ", _W/2, _H-110 , system.native, 12)
    labelScoreTxt.x=_W/2
    labelScoreTxt.y=_H-80
    labelScoreTxt:setTextColor(255,255,255)
    group:insert(labelScoreTxt);
    
    local highScores=getHighScore()
    if(highScores==nil)then
        saveHighScore(0)
    	HIGH_SCORE=0;
    else
    	HIGH_SCORE=highScores
    end
    
    local highScoreTxt=display.newText(tostring(HIGH_SCORE), _W/2, _H/2-30, system.native, 19)
    highScoreTxt.x=_W/2
    highScoreTxt.y=_H-75+labelScoreTxt.height  
    highScoreTxt:setTextColor(255,255,255)
    group:insert(highScoreTxt);
    
    
    
    local coinsValue=getCoinsCounts()
    
    if(coinsValue==nil)then
        saveCoinsCounts(201)
    	AVAILABLE_COINS=200;
    else
    	AVAILABLE_COINS=tostring(coinsValue)
    end
    
    local coinsTxt=display.newText(tostring(AVAILABLE_COINS), _W/2, _H/2-30, system.native, 19)
    coinsTxt.x=_W/2
    coinsTxt.y=_H-30 
    coinsTxt:setTextColor(255,255,255)
    group:insert(coinsTxt);
    
    local labelCoinsImg= display.newImage( "menu_images/coins_icon.png")
    labelCoinsImg.x=_W/2-(coinsTxt.width/2)-(labelCoinsImg.width/2)
    labelCoinsImg.xScale=0.6
    labelCoinsImg.yScale=0.6
    labelCoinsImg.y=_H-30
    group:insert(labelCoinsImg);
    
    playButton = display.newImage( "menu_images/play_btn.png")
    playButton.x=_W/2
    playButton.y= 30+(playButton.height/2)
    playButton.alpha=0
    playButton.xScale=0.5
    playButton.yScale=0.5
    playButton.filename="GameScreen"
    group:insert(playButton);
    
    
    highScoreButton = display.newImage( "menu_images/high_score_btn.png")
    highScoreButton.x=_W/2
    highScoreButton.y=30+(playButton.height+highScoreButton.height/2)
    highScoreButton.alpha=0
    highScoreButton.xScale=0.5
    highScoreButton.yScale=0.5
    highScoreButton.filename="HighScoreScreen"
    group:insert(highScoreButton);
    
    howToPlayButton = display.newImage( "menu_images/how_to_play_btn.png")
    howToPlayButton.x=_W/2
    howToPlayButton.y=30+(playButton.height+highScoreButton.height+howToPlayButton.height/2)
    howToPlayButton.alpha=0
    howToPlayButton.xScale=0.5
    howToPlayButton.yScale=0.5
    howToPlayButton.filename="HowToPlayScreen"
    group:insert(howToPlayButton);
    
    
    local function onSoundChange()
        display.remove(soundsButton)
        if(IS_SOUND_ON=="true")then
            IS_SOUND_ON="false"
            saveSoundSettings("false")
            soundsButton = display.newImage( "menu_images/sound_off_btn.png")
        else
            IS_SOUND_ON="true"
            saveSoundSettings("true")
            soundsButton = display.newImage( "menu_images/sound_on_btn.png")
        end
        soundsButton.x=15+(soundsButton.width/2)
        soundsButton.y=15+(soundsButton.width/2)
        soundsButton:addEventListener ( "tap", onSoundChange )
        group:insert(soundsButton);
    end
    
    IS_SOUND_ON=getSoundSettings()
    
    if(IS_SOUND_ON=="true")then
        soundsButton = display.newImage( "menu_images/sound_on_btn.png")        
    else
        soundsButton = display.newImage( "menu_images/sound_off_btn.png")
    end
    
    soundsButton.x=15+(soundsButton.width/2)
    soundsButton.y=15+(soundsButton.width/2)
    soundsButton:addEventListener ( "tap", onSoundChange )
    group:insert(soundsButton);	
end

--IMPORTANT
function scene:willEnterScene( event )
    local group=self.view
    
end

--IMPORTANT
function scene:enterScene( event )
    local group=self.view
    local userName = getUserName()
    if(userName==nil)then
    	--do some thing
    	print ( "No User found" )
    	saveUserName("AABID")
    	USER_NAME="AABID"
    else
    	USER_NAME=userName
    end
    
    
    
    Runtime:addEventListener( "key", onKeyEvent );
    initialAnimation()
    playButton:addEventListener ( "touch", onButtonClick )
    howToPlayButton:addEventListener ( "touch", onButtonClick )
    highScoreButton:addEventListener ( "touch", onButtonClick )
    --    rateUsButton:addEventListener ( "touch", onButtonClick )
    
end

--IMPORTANT
function scene:exitScene( event )
    local group=self.view
    
    
end

--IMPORTANT
function scene:didExitScene( event )
    local group=self.view
    storyboard.removeScene("MenuScreen");
end

--IMPORTANT
function scene:destroyScene( event )
    local group=self.view
    
    
end

--IMPORTANT
function scene:overlayBegan( event )
    local group=self.view
    
    
end

--IMPORTANT
function scene:overlayEnded( event )
    local group=self.view
    
    
end


function initialAnimation()
    local animSpeed=150
    
    --local function showRateUs(event)
    --	transition.to( rateUsButton, {time=animSpeed, alpha=1, xScale=1, yScale=1})
    --    end
    
    local function showHowToPlay(event)
	transition.to( howToPlayButton, {time=animSpeed, alpha=1, xScale=1, yScale=1})
    end
    
    local function showHighScores(event)
	transition.to( highScoreButton, {time=animSpeed, alpha=1, xScale=1, yScale=1, onComplete= showHowToPlay} )
    end
    
    transition.to( playButton, {time=animSpeed, alpha=1 , xScale=1, yScale=1, onComplete= showHighScores } )
    
end

function onKeyEvent( event )
    
    if(event.phase == "down" and event.keyName == "back") then
        
        native.requestExit()
        
        return true
    end
    return false
end


function onButtonClick( event)
    print ( "onButtonClick" )
    print ( event.phase )
    
    Runtime:removeEventListener( "key", onKeyEvent );
    local obj= event.target
    print ( obj.filename)
    
    obj.alpha=0.8
    obj.xScale=0.8
    obj.yScale=0.8
    
    if(event.phase == "moved"  or event.phase == "ended"  )then
        obj.alpha=1
        obj.xScale=1
        obj.yScale=1
        if(event.phase == "ended" )then
            --call another screen
            
            options = {effect = "fade",time=300 }
            storyboard.gotoScene(obj.filename,options)
        end
    end
    
    
    
end


scene:addEventListener ( "createScene", scene )

scene:addEventListener ( "willEnterScene", scene )
scene:addEventListener ( "enterScene", scene )
scene:addEventListener ( "exitScene", scene )
scene:addEventListener ( "didExitScene", scene )
scene:addEventListener ( "destroyScene", scene )
scene:addEventListener ( "overlayBegan", scene )
scene:addEventListener ( "overlayEnded", scene )

return scene
