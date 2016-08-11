1.帧动画
display.addSpriteFrames("SpirteSheet.plist","SpirteSheet.png")

local sprite= display.newSprite(“#hero1.png”)
:addTo(self)
:center()

local frames=display.newFrames(“hero%d.png”,1,4)
local animation=display.newAnimation(frames,0.5/8)
transition.playAnimationForever(sprite,animation,0.1)

--------------------------------------

2.action
transition.execute(sprite,move)



--------------------------------------


3.触摸监听
//必须设置在layer上，scene不行

self.backgroundLayer:addNodeEventListener(cc.NODE_TOUCH_EVENT, function(event)
        return self:onTouch(event.name, event.x, event.y)
    end)

self.backgroundLayer:setTouchEnabled(true)

function GameScene:onTouch(event, x, y)
    if event == "began" then
 
        xxxxx
        return true
    -- elseif event == "moved" then 
 
    elseif event == "ended" then
        xxxx
    -- else event == "cancelled" then
    end
end

--------------------------------------

4. update

self:addNodeEventListener(cc.NODE_ENTER_FRAME_EVENT, handler(self, self.scrollBg)) 

self:scheduleUpdate()


--------------------------------------
5. label

local label = display.newTTFLabel({
    text = "Hello, World",
    font = "Marker Felt",
    size = 64,
    align = cc.TEXT_ALIGNMENT_CENTER -- 文字内部居中对齐
})
	:addTo(self)
	:center()

--------------------------------------
6. 不定参数的传入
function funcStr(...)
    --传入参数的实际个数
    local count=select("#", ...)
    
    --对参数操作,传入参数放入table中
    local table={...}

    --遍历
    for k,v in pairs({...})
        do
        print("k=="..k.."v="..v)
    end


end    
--------------------------------------
7. 数组求长度
 local table0={"123",k="sss",1}
 local count=#table0
 --or
 local count=table.maxn(table0)

 --------------------------------------
