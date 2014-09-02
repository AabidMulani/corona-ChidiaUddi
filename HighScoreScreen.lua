local onButtonClick
local storyboard= require ("storyboard")
local scene= storyboard.newScene()
local rankBtn
local scoreBtn
local dateBtn
local onKeyEvent
audio.reserveChannels(2)

local function playStreamSound()
    if(IS_SOUND_ON=="true")then
        local function resetMusic()
            audio.rewind(SOUND_STREAM_MENU)
        end
        audio.play(SOUND_STREAM_MENU, {channel = 1, onComplete=resetMusic})
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
    adsObject.show( AD_TYPE, { x=centerX, y=centerY } )
    local background = display.newImage( "menu_images/how_to_play_background.png")
    background.x=_W/2
    background.y=_H/2
    group:insert(background);
    --  Century Gothic Bold  Comic Strip
    local msgText=display.newText( "High Scores", 0, 0, "Comic Strip", 18 )
    msgText.x=_W/2
    msgText.y=20
    msgText:setTextColor(61, 29, 3)
    group:insert(msgText);
    
    rankBtn = display.newImage( "menu_images/rank_btn_img.png")
    rankBtn.x=80
    rankBtn.y=55
    rankBtn.xScale=0.8
    rankBtn.yScale=0.8
    group:insert(rankBtn);
    
    
    scoreBtn = display.newImage( "menu_images/score_btn_img.png")
    scoreBtn.x=240
    scoreBtn.y=55
    scoreBtn.xScale=0.8
    scoreBtn.yScale=0.8
    group:insert(scoreBtn);
    
    dateBtn = display.newImage( "menu_images/date_btn_img.png")
    dateBtn.x=400
    dateBtn.y=55
    dateBtn.xScale=0.8
    dateBtn.yScale=0.8
    group:insert(dateBtn);
    
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
    Runtime:addEventListener( "key", onKeyEvent );
    playStreamSound()
    getHighScore()
    
    local function showScores5()
        if(HIGH_SCORE_5)then
            local rank_5=display.newText(group, "5", 80, 240,"Century Gothic Bold" , 13)
            rank_5.alpha=0
            rank_5:setTextColor(61, 29, 3)
            rank_5.anchorX=0.5
            rank_5.x=80
            local score_5=display.newText(group, tostring(HIGH_SCORE_5), 240, 240,"Century Gothic Bold" , 13)
            score_5.alpha=0
            score_5:setTextColor(61, 29, 3)
            score_5.anchorX=0.5
            score_5.x=240
            local date_5=display.newText(group, tostring(HIGH_SCORE_5_date), 400, 240,"Century Gothic Bold" , 13)
            date_5.alpha=0
            date_5:setTextColor(61, 29, 3)
            date_5.anchorX=0.5
            date_5.x=400
            transition.to(rank_5, {time=100, alpha=1 })
            transition.to(score_5, {time=100, alpha=1 })
            transition.to(date_5, {time=100, alpha=1 })           
        end
    end
    
    
    local function showScores4()
        if(HIGH_SCORE_4)then
            local rank_4=display.newText(group, "4", 80, 200,"Century Gothic Bold" , 13)
            rank_4.alpha=0
            rank_4:setTextColor(61, 29, 3)
            rank_4.anchorX=0.5
            rank_4.x=80
            local score_4=display.newText(group, tostring(HIGH_SCORE_4), 240, 200,"Century Gothic Bold" , 13)
            score_4.alpha=0
            score_4:setTextColor(61, 29, 3)
            score_4.anchorX=0.5
            score_4.x=240
            local date_4=display.newText(group, tostring(HIGH_SCORE_4_date), 400, 200,"Century Gothic Bold" , 13)
            date_4.alpha=0
            date_4:setTextColor(61, 29, 3)
            date_4.anchorX=0.5
            date_4.x=400
            transition.to(rank_4, {time=100, alpha=1, onComplete= showScores5 })
            transition.to(score_4, {time=100, alpha=1 })
            transition.to(date_4, {time=100, alpha=1 })           
        end
    end
    
    
    local function showScores3()
        if(HIGH_SCORE_3)then
            local rank_3=display.newText(group, "3", 80, 160,"Century Gothic Bold" , 13)
            rank_3.alpha=0
            rank_3:setTextColor(61, 29, 3)
            rank_3.anchorX=0.5
            rank_3.x=80
            local score_3=display.newText(group, tostring(HIGH_SCORE_3), 240, 160,"Century Gothic Bold" , 13)
            score_3.alpha=0
            score_3:setTextColor(61, 29, 3)
            score_3.anchorX=0.5
            score_3.x=240
            local date_3=display.newText(group, tostring(HIGH_SCORE_3_date), 400, 160,"Century Gothic Bold" , 13)
            date_3.alpha=0
            date_3:setTextColor(61, 29, 3)
            date_3.anchorX=0.5
            date_3.x=400
            transition.to(rank_3, {time=100, alpha=1, onComplete= showScores4 })
            transition.to(score_3, {time=100, alpha=1 })
            transition.to(date_3, {time=100, alpha=1 })           
        end
    end
    
    
    local function showScores2()
        if(HIGH_SCORE_2)then
            local rank_2=display.newText(group, "2", 80, 120,"Century Gothic Bold" , 13)
            rank_2.alpha=0
            rank_2:setTextColor(61, 29, 3)
            rank_2.anchorX=0.5
            rank_2.x=80
            local score_2=display.newText(group, tostring(HIGH_SCORE_2), 240, 120,"Century Gothic Bold" , 13)
            score_2.alpha=0
            score_2:setTextColor(61, 29, 3)
            score_2.anchorX=0.5
            score_2.x=240
            local date_2=display.newText(group, tostring(HIGH_SCORE_2_date), 400, 120,"Century Gothic Bold" , 13)
            date_2.alpha=0
            date_2:setTextColor(61, 29, 3)
            date_2.anchorX=0.5
            date_2.x=400
            transition.to(rank_2, {time=100, alpha=1, onComplete= showScores3 })
            transition.to(score_2, {time=100, alpha=1 })
            transition.to(date_2, {time=100, alpha=1 })           
        end
    end
    local highScore
    local highScoreDate
    if(HIGH_SCORE_1_date)then
        highScore= tostring(HIGH_SCORE_1)
        highScoreDate= tostring(HIGH_SCORE_1_date)
    else
        highScore= " - "
        highScoreDate=" - "
    end
    local rank_1=display.newText(group, "1", 80, 80,"Century Gothic Bold" , 13)
    rank_1.alpha=0
    rank_1:setTextColor(61, 29, 3)
    rank_1.anchorX=0.5
    rank_1.x=80
    local score_1=display.newText(group, highScore, 240, 80,"Century Gothic Bold" , 13)
    score_1.alpha=0
    score_1:setTextColor(61, 29, 3)
    score_1.anchorX=0.5
    score_1.x=240
    local date_1=display.newText(group, highScoreDate, 400, 80,"Century Gothic Bold" , 13)
    date_1.alpha=0
    date_1:setTextColor(61, 29, 3)
    date_1.anchorX=0.5
    date_1.x=400
    transition.to(rank_1, {time=100, alpha=1, onComplete= showScores2 })
    transition.to(score_1, {time=100, alpha=1 })
    transition.to(date_1, {time=100, alpha=1 })
end

function scene:exitScene( event )
    local group=self.view
end

function scene:didExitScene( event )
    local group=self.view
    adsObject.hide()
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
function onKeyEvent( event )
    
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
