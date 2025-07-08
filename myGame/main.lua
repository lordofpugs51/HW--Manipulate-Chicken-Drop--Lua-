function love.load()
    whale = love.graphics.newImage('image/whale.png')

    startX = 0
    startY = 0

end

function love.update(dt)
    startY = startY + 20 * dt
end


function love.draw()
    love.graphics.draw(whale, startX, startY)
end

function love.mousepressed(x, y, button, istouch)
    if button == 1 then
        --print("leftMouseClicked")
        if x >= startX and x <= startX + whale:getWidth()
        and y >= startY and y <= startY + whale:getHeight() then
         print("in bounds")
        math.randomseed(os.time())
        math.random(); math.random(); math.random()
         startY = math.random (whale:getHeight(), whale:getHeight() * 0) * -1
        end
    end
end