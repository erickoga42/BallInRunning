function  love.load()
    --Posicao inicial e variavel do jogador
    playerPositionX = 400
    playerPositionY = 300

    playerSpeed = 200

    --Variavel do inimigo
    enemyPositionX = 100
    enemyPositionY = 100
    
    enemmySpeed = 50

    --Variavel das moedas triangulos
    coinPositionX = 200
    coinPositionY = 200

    --Score do jogador
    score = 0
end

function love.update(dt)
    --Movimentação do player
    if love.keyboard.isDown("w") then
        playerPositionY = playerPositionY - playerSpeed * dt  
    end

    if love.keyboard.isDown("s") then
        playerPositionY = playerPositionY + playerSpeed * dt  
    end

    if love.keyboard.isDown("a") then
        playerPositionX = playerPositionX - playerSpeed * dt  
    end

    if love.keyboard.isDown("d") then
        playerPositionX = playerPositionX + playerSpeed * dt  
    end

    --Colisao com as bordas da tela
    if playerPositionX < 50 then
        playerPositionX = 50    
    end

    if playerPositionX > 750 then
        playerPositionX = 750    
    end

    if playerPositionY < 50 then
        playerPositionY = 50    
    end

    if playerPositionY > 550 then
        playerPositionY = 550    
    end

    --Inimigo se movendo em direção ao jogador
    if enemyPositionX < playerPositionX then
        enemyPositionX = enemyPositionX + enemmySpeed * dt
    end

    if enemyPositionX > playerPositionX then
        enemyPositionX = enemyPositionX - enemmySpeed * dt
    end

    if enemyPositionY < playerPositionY then
        enemyPositionY = enemyPositionY + enemmySpeed * dt
    end

    if enemyPositionY > playerPositionY then
        enemyPositionY = enemyPositionY - enemmySpeed * dt
    end

    --Se o inimigo colidir com o jogador, o jogo reinicia
    if math.abs(playerPositionX - enemyPositionX) < 50 and 
        math.abs(playerPositionY - enemyPositionY) < 50 then
        playerPositionX = 400
        playerPositionY = 300

        enemyPositionX = 100
        enemyPositionY = 100
    end
    
    --Se passar por cima da moeda, ela se move para uma nova posição aleatoria
    -- e o placar aumenta em 1
    if math.abs(playerPositionX - coinPositionX) < 30 and
        math.abs(playerPositionY - coinPositionY) < 30 then
        coinPositionX = math.random(50, 750)
        coinPositionY = math.random(50, 550)
        score = score + 1
    end

    --Se fazer 10 pontos acaba o jogo
    if score >= 10 then
        love.event.quit()
    endd
end

function love.draw()
    --Desenha jogador, inimigo e moeda e placar na tela
    love.graphics.circle("fill", playerPositionX, playerPositionY, 30)
    love.graphics.rectangle("fill",enemyPositionX, enemyPositionY, 50, 50)
    love.graphics.polygon("fill", coinPositionX, coinPositionY, coinPositionX + 25, coinPositionY + 25, coinPositionX - 25, coinPositionY + 25)
    love.graphics.print("Score: " .. score, 10, 10)
end