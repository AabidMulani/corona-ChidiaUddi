 
local playButton
local highScoreButton
local howToPlayButton
local rateUsButton
local storyboard= require ( "storyboard" )
local scene= storyboard.newScene()
local onButtonClick
local initialAnimation

--On saveButton Clicked



--IMPORTANT
function scene:createScene(event)
    local group=self.view
    local background = display.newImageRect( "menu_images/menu_screen_bg.png",_W,_H)
    background.x=_W/2;
    background.y=_H/2
    
    local birdImg = display.newImage( "menu_images/bird_img.png")
    birdImg.x=_W-110;
    birdImg.y=60
    
    local scoreBg = display.newImage( "menu_images/score_board_bg.png")
    scoreBg.x=(scoreBg.width/2)+10;
    scoreBg.y=_H/2+20
    
    local appName = display.newImage("menu_images/app_name_img.png")
    appName.x=(appName.width/2)+10
    appName.y=(appName.height/2)+10
    
    local labelScoreTxt= display.newText("High Scores: ", (scoreBg.width/2)+10, _H/2-70  , system.native, 12)
    labelScoreTxt.x=(scoreBg.width/2)+10
    labelScoreTxt.y=_H/2-35
    labelScoreTxt:setTextColor(255,255,255)
    
        local highScores=getHighScore()
    if(highScores==nil)then
   	 saveHighScore(0)
    	HIGH_SCORE=0;
    else
    	HIGH_SCORE=highScores
    end
    
    local highScoreTxt=display.newText(tostring(HIGH_SCORE), (scoreBg.width/2)+10, _H/2-30, system.native, 19)
    highScoreTxt.x=(scoreBg.width/2)+10
    highScoreTxt.y=_H/2-05  
    highScoreTxt:setTextColor(255,191,53)
    
    local labelCoinsTxt= display.newText("Coins: ", (scoreBg.width/2)+10, _H/2-70  , system.native, 12)
    labelCoinsTxt.x=(scoreBg.width/2)+10
    labelCoinsTxt.y=_H/2+35
    labelCoinsTxt:setTextColor(255,255,255)
    local coinsValue=getCoinsCounts()
    if(coinsValue==nil)then
   	 saveCoinsCounts(201)
    	AVAILABLE_COINS=200;
    else
    	AVAILABLE_COINS=tostring(coinsValue)
    end
    
    local coinsTxt=display.newText(tostring(AVAILABLE_COINS), (scoreBg.width/2)+10, _H/2-30, system.native, 19)
    coinsTxt.x=(scoreBg.width/2)+10
    coinsTxt.y=_H/2+65  
    coinsTxt:setTextColor(255,191,53)
    
    --background=display.newRect( 0 , 0, _W, _H )
    --background.x=_W/2;
    --background.y=_H/2
    --background:setFillColor ( 0,0 , 255 ,1 )
    
    playButton = display.newImage( "menu_images/play_btn.png")
    local pointX=_W-(playButton.width/2)-25
    playButton.x=pointX
    playButton.y=_H/2-50
    playButton.alpha=0
    playButton.xScale=0.5
    playButton.yScale=0.5
    playButton.filename="GameScreen"
    
    
    highScoreButton = display.newImage( "menu_images/high_score_btn.png")
    highScoreButton.x=pointX
    highScoreButton.y=_H/2+20
    highScoreButton.alpha=0
    highScoreButton.xScale=0.5
    highScoreButton.yScale=0.5
    highScoreButton.filename="HighScoreScreen"
    
    howToPlayButton = display.newImage( "menu_images/how_to_play_btn.png")
    howToPlayButton.x=pointX
    howToPlayButton.y=_H/2+90
    howToPlayButton.alpha=0
    howToPlayButton.xScale=0.5
    howToPlayButton.yScale=0.5
    howToPlayButton.filename="HowToPlayScreen"
    
    group:insert(background);
    group:insert(birdImg);
    group:insert(scoreBg);
    group:insert(labelScoreTxt);
    group:insert(highScoreTxt);
    group:insert(labelCoinsTxt);
    group:insert(coinsTxt);
    group:insert(appName);
    group:insert(playButton);
    group:insert(highScoreButton);
    group:insert(howToPlayButton);
--    group:insert(rateUsButton);	
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
