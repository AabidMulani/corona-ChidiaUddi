local storyboard= require ( "storyboard" )
local scene= storyboard.newScene()

--refrence all variable
local gamePaused
local currentScore=0
local levelNumber=1
local sliderLine
local currentCoinCount
local isEndGame
local currentFlyingObj=nil
local isLifeAvailable
local scoreTxt
local coinsTxt
local baseProgressLine
local progressLine1
local lifeIcon
local indicatorCircle
local coinsLabel
--refrence all methods
local enterObject
local gameOver
local onSlideEventDone
local onKeyEvent
local acceptNextSlide=true
local updateHighScore
local transitionType
local computeWrongAnswer

audio.reserveChannels(2)

local function playStreamSound()
    if(IS_SOUND_ON=="true")then
        local function resetMusic()
            audio.rewind(GAME_LEVELS[levelNumber][4])
        end
        audio.play(GAME_LEVELS[levelNumber][4], {channel = 1 , loops=-1,onComplete=resetMusic})
    end
end

local function playThisSound(soundType)
    if(IS_SOUND_ON=="true")then
        if(soundType=="click")then
            audio.play(SOUND_BUTTON_CLICK, {channel = 2})            
        end
        if(soundType=="correct")then
            audio.play(SOUND_CORRECT_SWIPE, {channel = 2})            
        end
        if(soundType=="countDown")then
            audio.play(SOUND_COUNT_DOWN, {channel = 2})            
        end
        if(soundType=="wrong")then
            audio.play(SOUND_WRONG_SWIPE, {channel = 2})            
        end
        if(soundType=="endGame")then
            audio.play(SOUND_END_GAME, {channel = 2})            
        end
    end
end

-- grab the current Level and set corresponding background
local function updateBackground()
    print ( "updateBackground" )
    local group=scene.view
    local bgImage=display.newImageRect ( group ,GAME_LEVELS[levelNumber][1] , _W, _H )
    bgImage.x=_W/2
    bgImage.y=_H/2
    local lifeLabel=display.newText( group,"Life", 10,10, "Century Gothic Bold", 11 )
    lifeLabel.x=_W/2
    lifeLabel.y=10
    
    local scoreLabel=display.newText( group,"Scores", 5,5, "Century Gothic Bold", 11 )
    scoreLabel:setTextColor (  255, 204, 0)
    
    scoreTxt=display.newText( group, tostring(currentScore), (scoreLabel.width/2)+5,scoreLabel.height+5, "Century Gothic Bold", 12 )
    scoreTxt.x= (scoreLabel.width/2)+5
    scoreTxt:setTextColor (  255, 204, 0)
    
    coinsTxt=display.newText( group, tostring(currentCoinCount), 10,10, "Century Gothic Bold", 12 )
    coinsTxt.x=_W-(coinsTxt.width+20)
    coinsTxt.y=15
    coinsTxt:setTextColor ( 255, 204, 0)
    
    coinsLabel=display.newImage("menu_images/coins_icon.png")
    coinsLabel.xScale=0.7
    coinsLabel.yScale=0.7
    coinsLabel.x=_W-(coinsTxt.width+(coinsLabel.width/2)+25)
    coinsLabel.y=15
    group:insert(coinsLabel)
    
    baseProgressLine=display.newImage("menu_images/progressBar_static.png", 10, 45)
    group:insert(baseProgressLine)
    
    progressLine1=display.newImageRect("menu_images/progressBar_dynamic.png", 0, baseProgressLine.height )
    progressLine1.anchorX=0
    progressLine1.anchorY=0
    progressLine1.x=10
    progressLine1.y=45
    group:insert(progressLine1)
    
    if(levelNumber==1)then
        lifeIcon=display.newImage("menu_images/life_icon.png")
        lifeIcon.x=_W/2
        lifeIcon.y=32
    end
    
    if(isLifeAvailable)then
        if(lifeIcon.alpha==0)then
            transition.to(lifeIcon, {time = 800, alpha=1, xScale=1, yScale=1})
        else
            lifeIcon.alpha=1
        end	
    else
        lifeIcon.alpha=0   
    end
    group:insert(lifeIcon)
    updateHighScore()
end

--update the score values and the bottom bar
local function updateScoreBoard()
    local group=scene.view
    print ( "updateScoreBoard" )
    local value
    local majorValue
    scoreTxt.text=tostring(currentScore)
    if(levelNumber==1)then
        majorValue=GAME_LEVELS[levelNumber][2]
        value=majorValue-(majorValue-currentScore)
        value=100*(value/majorValue)
    else
        majorValue=GAME_LEVELS[levelNumber][2]-GAME_LEVELS[levelNumber-1][2]
        value=majorValue-(GAME_LEVELS[levelNumber][2]-currentScore)
        value=100*(value/majorValue)
    end
    print ( value/100 )
    value=value/100
    display.remove(progressLine1)
    progressLine1=display.newImageRect("menu_images/progressBar_dynamic.png", baseProgressLine.width*value, baseProgressLine.height )
    progressLine1.anchorX=0
    progressLine1.anchorY=0
    progressLine1.x=10+(baseProgressLine.width*value/2)
    progressLine1.y=45+(baseProgressLine.height/2)
    group:insert(progressLine1)
    
end

--update the coin values
local function updateCoinBoard(isIncremented)
    print ( "updateCoinBoard" )
    if(tonumber(currentCoinCount)<0)then
        --end game due to lack of coins
        isEndGame=true
        AVAILABLE_COINS=currentCoinCount
        Runtime:removeEventListener ( "key", onKeyEvent );
        Runtime:removeEventListener ( "touch", onSlideEventDone )
        updateHighScore()
        storyboard.showOverlay("GameOver", {effect= "flipFadeOutIn" ,isModal=true })
    else	
        if(isIncremented)then
            --show good animation
            coinsTxt:setTextColor (  255, 204, 0)
        else
            --show danger animation
            coinsTxt:setTextColor ( 245, 0, 25)
            coinsTxt.xScale=1.8            
            coinsTxt.yScale=1.8         
            coinsTxt.alpha=0.4
            transition.to ( coinsTxt, { alpha = 1, xScale = 1, yScale = 1, time=800, onComplete=objectMissed } )
        end
        coinsTxt.text=tostring(currentCoinCount)
        coinsLabel.x=_W-(coinsTxt.width+(coinsLabel.width/2)+30)
    end
end

--when object is missed
local function objectMissed()
    print ( "objectMissed" )
    computeWrongAnswer()
    --    currentCoinCount=currentCoinCount-5
    --    display.remove(currentFlyingObj)
    --    playThisSound("wrong")
    --    if(currentCoinCount>=0)then
    --        enterObject()
    --    end
    --    updateCoinBoard(false)
end

local function computeNewObject()
    print ( "computeNewObject" )
    local num=math.random(#FLYING_OBJECTS)
    return num
end

local function generateTransition(tType,tTime)
    local trans
    transitionType = tType
    if(tType==1)then
        currentFlyingObj.x=_W
        currentFlyingObj.y=_H/2
        trans=transition.to ( currentFlyingObj, { x=0, y=_H/2, time=tTime, onComplete=objectMissed } )
    end
    
    if(tType==2)then
        currentFlyingObj.x=0
        currentFlyingObj.y=_H/2
        trans=transition.to ( currentFlyingObj, { x=_W, y=_H/2, time=tTime, onComplete=objectMissed } )
    end
    
    if(tType==3)then
        currentFlyingObj.x=_W/2
        currentFlyingObj.y=35
        trans=transition.to ( currentFlyingObj, { x=_W/2, y=_H, time=tTime, onComplete=objectMissed } )
    end
    
    if(tType>=4)then
        currentFlyingObj.x=_W/2
        currentFlyingObj.y=_H
        trans=transition.to ( currentFlyingObj, { x=_W/2, y=35, time=tTime, onComplete=objectMissed } )
    end
    
end

local function resumeGenerateTransition(tType,tTime)
    local trans
    transitionType = tType
    if(tType==1)then
        currentFlyingObj.x=_W
        currentFlyingObj.y=_H/2
        trans=transition.to ( currentFlyingObj, { x=0, y=_H/2, time=tTime, onComplete=objectMissed } )
    end
    
    if(tType==2)then
        currentFlyingObj.x=0
        currentFlyingObj.y=_H/2
        trans=transition.to ( currentFlyingObj, { x=_W, y=_H/2, time=tTime, onComplete=objectMissed } )
    end
    
    if(tType==3)then
        currentFlyingObj.x=_W/2
        currentFlyingObj.y=35
        trans=transition.to ( currentFlyingObj, { x=_W/2, y=_H, time=tTime, onComplete=objectMissed } )
    end
    
    if(tType>=4)then
        currentFlyingObj.x=_W/2
        currentFlyingObj.y=_H
        trans=transition.to ( currentFlyingObj, { x=_W/2, y=35, time=tTime, onComplete=objectMissed } )
    end
    
end

local function computedTransitionType()
    local trans
    if(levelNumber==1)then 
        trans= generateTransition(1, GAME_LEVELS[levelNumber][3])
    else
        trans= generateTransition(math.random(levelNumber), GAME_LEVELS[levelNumber][3])
    end
    return trans
end




--put an object in the screen
function enterObject()
    print ( "enterObject" )
    local group=scene.view
    local num=computeNewObject()
    currentFlyingObj=display.newImage(group,FLYING_OBJECTS[num][1])
    currentFlyingObj.num=num
    acceptNextSlide=true
    currentFlyingObj.trans= computedTransitionType()
end





--start or resume game
local function startOrResumeGame()
    print ( "startOrResumeGame" )
    --    playStreamSound()
    if(gamePaused)then
        gamePaused=false
        --do resume game initialization
        local function computeRemainigDistance()
            if(transitionType==1)then
                return ((currentFlyingObj.x)/_W)
            end   
            if(transitionType==2)then
                return ((_W-currentFlyingObj.x)/_W)
            end
            if(transitionType==3)then
                return ((currentFlyingObj.y-35)/_H)
            end
            if(transitionType>=4)then
                return ((_H-currentFlyingObj.y-35)/_H)
            end
        end
        acceptNextSlide=true;
        --        currentFlyingObj.trans= transition.to ( currentFlyingObj, { x=0, y=_H/2, time=GAME_LEVELS[levelNumber][3]*computeRemainigDistance(), onComplete=objectMissed } )   
        currentFlyingObj.trans=resumeGenerateTransition(transitionType, GAME_LEVELS[levelNumber][3]*computeRemainigDistance())
    else		
        --do start game initialization
        isEndGame=false
        GAME_OVER_OVERLAY="none"
        lifeIcon.alpha=1
        isLifeAvailable=true
        currentScore=0
        levelNumber=1
        updateBackground()
        updateScoreBoard()
        updateCoinBoard(true)
        enterObject()
    end
end


--starts the count down [New Game or Resume Game]
local function startCountDown()
    print ( "startCountDown" )
    local group=scene.view
    local counterValue=3
    local counterText
    local function onCounterChange()
        print ( "onCounterChange" )
	
        counterValue=counterValue-1
	playThisSound("countDown")
        if(counterValue==0)then
            display.remove( counterText )    
            Runtime:addEventListener( "key", onKeyEvent );
            Runtime:addEventListener ( "touch", onSlideEventDone )
            startOrResumeGame()
        else
            counterText.text=counterValue
        end
        
    end
    timer.performWithDelay ( 800, onCounterChange,3 )
    counterText=display.newText( group, counterValue, _W/2, _H/2, "Century Gothic Bold", 24 )
    counterText:setTextColor( 255, 204, 0)
end

--when an incorrect slide is done [ Grant life or Open the dialog box  for game over]
function computeWrongAnswer()
    print ( "computeWrongAnswer" )
    
    if(isLifeAvailable)then
        local function sendObject()
            display.remove(currentFlyingObj)
            acceptNextSlide=false
            lifeIcon.xScale=1
            lifeIcon.yScale=1
            enterObject()
        end
        playThisSound("wrong")
        --Animate when wrong answer
        transition.to(currentFlyingObj, {time = 800, y=_H-50 ,alpha=0, transition = easing.outQuad})
        transition.to(lifeIcon, {time = 500, alpha=0, xScale=0, yScale=0, rotation=360})
        isLifeAvailable=false	
        timer.performWithDelay ( 1000, sendObject,1 )
    else
        display.remove(currentFlyingObj)
        acceptNextSlide=false
        isEndGame=true
        playThisSound("endGame")
        AVAILABLE_COINS=currentCoinCount
        Runtime:removeEventListener ( "key", onKeyEvent );
        Runtime:removeEventListener ( "touch", onSlideEventDone )
        updateHighScore()
        storyboard.showOverlay("GameOver", {effect= "flipFadeOutIn" ,isModal=true })
    end
end

--update to next level [***]
local function gotoNextLevel()
    print ( "gotoNextLevel" )
    local group=scene.view
    if(levelNumber<30)then
        levelNumber=levelNumber+1
        isLifeAvailable=true
        --lifeIcon.alpha=1
        --        if(levelNumber==1 or levelNumber==6 or levelNumber==11)then
        --            playStreamSound()
        --        end
        updateBackground()
        updateScoreBoard()
        enterObject()
    else
        local msgText=display.newText( group,"You are a Pro Player in Chidia Uddi,\nplease wait for updates to get more stuffs.", 5,5, "Comic Strip", 17 )
        msgText:setTextColor ( 61, 29, 3)
        msgText.x=_W/2
        msgText.y=_H/2-20   
        msgText.alpha = 0
        msgText.xScale=0.8
        msgText.yScale=0.8
        transition.to(msgText, {time = 1500, alpha=1, xScale=1, yScale=1})
    end
end

--when an correct slide is done [ Add another object or Update to New Level]
local function computeCorrectAnswer()
    print ( "computeCorrectAnswer" )
    currentCoinCount=currentCoinCount+2
    updateCoinBoard(true)
    currentScore=currentScore+10
    updateScoreBoard()
    display.remove(currentFlyingObj)
    acceptNextSlide=false
    if(currentScore>= GAME_LEVELS[levelNumber][2])then
        gotoNextLevel()
    else
        enterObject()
    end
end

--when slide is done in Up or Down direction
local function computeSlide(isUpside)
    print ( "computeSlide" )
    acceptNextSlide=false
    if(currentFlyingObj==nil)then
    else
        transition.cancel ( currentFlyingObj.trans )
        if FLYING_OBJECTS[currentFlyingObj.num][2]==isUpside then
            --play error sound
            --audio.play(wrondSound)
            computeWrongAnswer()
        else
            --play good sound
            --audio.play(correctSound)
            playThisSound("correct")
            computeCorrectAnswer()
        end
    end
end

--when back button is clicked
local function onPause()
    print ( "Back Pressed" )
    playThisSound("click")
    Runtime:removeEventListener ( "key", onKeyEvent );
    Runtime:removeEventListener ( "touch", onSlideEventDone )
    transition.cancel ( currentFlyingObj.trans )
    gamePaused=true
    updateHighScore()
    storyboard.showOverlay("PauseGame", {effect= "flipFadeOutIn" ,isModal=true })
end

function scene:createScene(event)
    print ( "scene:createScene" )
    local group=self.view
    audio.rewind(SOUND_STREAM_MENU)
end

function scene:enterScene( event )
    print ( "scene:enterScene" )
    local group=self.view
    
    startCountDown()
end

--//TODO 
function scene:willEnterScene( event )
    print ( "scene:willEnterScene" )
    local group=self.view
    gamePaused=false
    currentCoinCount=AVAILABLE_COINS
    levelNumber=1
    isLifeAvailable=true
    updateBackground()
end

function scene:exitScene( event )
    print ( "scene:exitScene" )
    local group=self.view
    updateHighScore()
end

function scene:didExitScene( event )
    print ( "scene:didExitScene" )
    local group=self.view
    storyboard.removeScene("GameScreen");
    
    Runtime:removeEventListener ( "key", onKeyEvent );
    Runtime:removeEventListener ( "touch", onSlideEventDone )
end

function scene:destroyScene( event )
    print ( "scene:destroyScene" )
    local group=self.view
    
    
end

function scene:overlayBegan( event )
    print ( "scene:overlayBegan" )
    local group=self.view
    acceptNextSlide=false
    
    audio.fadeOut({time = 500})
    audio.stopWithDelay(501, {channel = 1})
    
    if(isEndGame)then
        
    else
        --stop transition here 
    end
    
end

function scene:overlayEnded( event )
    print ( "scene:overlayEnded" )
    updateHighScore()
    local group=self.view
    if(isEndGame)then
        isEndGame=false
        if(GAME_OVER_OVERLAY=="restart")then
            updateHighScore()
            Runtime:addEventListener ( "key", onKeyEvent )
            Runtime:addEventListener ( "touch", onSlideEventDone )
            gamePaused=false
            startOrResumeGame()
            --            startCountDown()
        else 
            if (GAME_OVER_OVERLAY=="coins")then
                Runtime:addEventListener ( "key", onKeyEvent )
                Runtime:addEventListener ( "touch", onSlideEventDone )
                currentCoinCount=currentCoinCount-200
                updateCoinBoard(false)
                updateScoreBoard()
                GAME_OVER_OVERLAY="none"
                enterObject()
                --                playStreamSound()
            else
                display.remove(lifeIcon)                
                options = {effect = "fade",time=600 }
                storyboard.gotoScene("MenuScreen",options)
            end
        end
    else
        if(PAUSE_GAME_OVERLAY=="resume") then 
            Runtime:addEventListener ( "key", onKeyEvent )
            Runtime:addEventListener ( "touch", onSlideEventDone )
            gamePaused=true
            startOrResumeGame()
        else
            display.remove(lifeIcon)
            options = {effect = "fade",time=600 }
            storyboard.gotoScene("MenuScreen",options)
        end
        
    end
    
end

-- Key listener
function onKeyEvent( event )
    print ( "onKeyEvent" )
    if(event.phase == "down" and event.keyName == "back") then
        onPause()
        return true
    end
    return false
end

function updateHighScore()
    print("updateHighScore")
    AVAILABLE_COINS=currentCoinCount;
    saveCoinsCounts(currentCoinCount)
    saveHighScore(currentScore)
    if(currentScore>tonumber(HIGH_SCORE))then
        HIGH_SCORE=tostring(currentScore)
    end
end

function onSlideEventDone(event)
    local group=scene.view
    if(gamePaused==false and acceptNextSlide==true)then
        --        if(event.phase == "begin")then
        --            sliderLine=display.newLine(event.xStart, event.yStart, event.xStart, event.yStart)
        --            group:insert(sliderLine)
        --        end
        --        
        --        if(event.phase == "moved")then
        --            display.remove(sliderLine)
        --            sliderLine=display.newLine(event.xStart, event.yStart, event.xStart, event.y)
        --            --sliderLine:setFillColor(109, 109, 109,1)
        --            sliderLine:setStrokeColor(109, 109, 109)
        --            sliderLine.width=15
        --            group:insert(sliderLine)
        --        end
        --        
        --        if(event.phase == "cancelled" )then
        --            display.remove(sliderLine)
        --        end
        
        
        if ( event.phase == "ended" ) then
            display.remove(sliderLine)
            if(event.yStart>event.y)then
                computeSlide(false)
            else
                computeSlide(true)
            end
        end
    end
end

function gameOver()
    print ( "gameOver" )
    --do all the shit work here
    
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
