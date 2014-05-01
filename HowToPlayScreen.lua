local onButtonClick
local storyboard= require ( "storyboard" )
local scene= storyboard.newScene()


audio.reserveChannels(2)

local function playStreamSound()
    if(IS_SOUND_ON=="true")then
        audio.play(SOUND_STREAM_MENU, {channel = 1})
        audio.setVolume(1, {channel = 1})
        audio.setVolume(5, {channel = 2})
    else
        audio.stop(1)
    end
end

local function playClickSound()
    if(IS_SOUND_ON=="true")then
        audio.play(SOUND_BUTTON_CLICK, {channel = 2})
    end
end

function scene:createScene(event)
    local group=self.view
    
    local background = display.newImage( "menu_images/how_to_play_background.png")
    background.x=_W/2
    background.y=_H/2
    group:insert(background);
    --  Century Gothic Bold  Comic Strip
    local msgText=display.newText( "How To Play", 0, 0, "Comic Strip", 18 )
    msgText.x=_W/2
    msgText.y=20
    msgText:setTextColor(61, 29, 3)
    group:insert(msgText);
    
    local mainMsgText=display.newText( "In this Game, Images will keep coming on your screen one by one, if \nthe object or character flies, swipe up on the screen, if it does’t\nthen swipe down. Simpe as it is !   ", 10, 40, "Century Gothic", 12 )
    --    mainMsgText.anchorX=0
    --    mainMsgText.anchorY=0
    --    mainMsgText.x=10
    --    mainMsgText.y=45
    mainMsgText:setTextColor(61, 29, 3)
    group:insert(mainMsgText);
    
    local tapMsg=display.newText( "Tap Play to start playing the game.", 10, 105, "Century Gothic", 12 )
    tapMsg:setTextColor(61, 29, 3)
    group:insert(tapMsg);
    
    local handsImg = display.newImage( "menu_images/how_to_play_hand_icon.png")
    handsImg.x=_W/2
    handsImg.y=_H/2+60
    handsImg.xScale=0.9
    handsImg.yScale=0.9
    group:insert(handsImg);
    
    local cancelImg = display.newImage( "menu_images/back_btn.png")
    cancelImg.x=cancelImg.width/4+10
    cancelImg.y=_H-30
    cancelImg.xScale=0.5
    cancelImg.yScale=0.5
    cancelImg:addEventListener("touch", onButtonClick)
    cancelImg.filename="MenuScreen"
    group:insert(cancelImg);
    
    local playImg = display.newImage( "menu_images/play_btn_2.png")
    playImg.x=_W-playImg.width/4-10
    playImg.y=_H-30
    playImg.xScale=0.5
    playImg.yScale=0.5
    playImg:addEventListener("touch", onButtonClick)
    playImg.filename="GameScreen"
    group:insert(playImg);
    
    
end

function onButtonClick( event)
    local obj= event.target
    print ( obj.filename)
    obj.alpha=0.8
    obj.xScale=0.3
    obj.yScale=0.3
    
    if(event.phase == "moved"  or event.phase == "ended"  )then
        obj.alpha=1
        obj.xScale=0.5
        obj.yScale=0.5
        if(event.phase == "ended" )then
            --call another screen
            playClickSound()
            audio.fadeOut({time = 500})
            audio.stopWithDelay(501, {channel = 1})
            options = {effect = "fade",time=500 }
            storyboard.gotoScene(obj.filename,options)
        end
    end
end

function scene:willEnterScene( event )
    local group=self.view
    
    
end

function scene:enterScene( event )
    local group=self.view
    --    Runtime:addEventListener( "key", onKeyEvent );
    playStreamSound()
end

function scene:exitScene( event )
    local group=self.view
end

function scene:didExitScene( event )
    local group=self.view
    
    storyboard.removeScene("HowToPlayScreen");
end

function scene:destroyScene( event )
    local group=self.view
    
    
end

function scene:overlayBegan( event )
    local group=self.view
    
    
end

function scene:overlayEnded( event )
    local group=self.view
    
    
end

-- Key listener
local function onKeyEvent( event )
    
    if(event.phase == "down" and event.keyName == "back") then
    	playClickSound()
        audio.fadeOut({time = 500})
        audio.stopWithDelay(501, {channel = 1})
    	Runtime:removeEventListener ( "key", onKeyEvent )
        storyboard.gotoScene("MenuScreen",options)
        
	return true
    end
    return false
end

-- Add the key callback

scene:addEventListener ( "createScene", scene )

scene:addEventListener ( "willEnterScene", scene )
scene:addEventListener ( "enterScene", scene )
scene:addEventListener ( "exitScene", scene )
scene:addEventListener ( "didExitScene", scene )
scene:addEventListener ( "destroyScene", scene )
scene:addEventListener ( "overlayBegan", scene )
scene:addEventListener ( "overlayEnded", scene )

return scene
