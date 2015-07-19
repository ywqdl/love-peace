require('menu')      --游戏初始菜单入口
require('game')  --游戏主逻辑入口
require('init')      --游戏信息初始化入口

function love.load()--载入信息
    initeverything()
end

function love.draw()--逐帧绘制
    if curstate=="menu" then
      drawmenu()   
    else
      if curstate=="game" then
        drawgame()
      end 
    end  
end

function love.update(dt)--游戏主逻辑

end

function love.keypressed(key)--按键响应
    if curstate=="menu" then
       menucheck(key)
    end        
end