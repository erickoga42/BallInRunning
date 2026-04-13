markdown# ⚽ Ball in Running

![GitHub Repo Size](https://shields.io)
![Lua](https://shields.io)
![LÖVE2D](https://shields.io)

> Um jogo de sobrevivência frenético onde você precisa coletar moedas e fugir de inimigos implacáveis!

---

## 🎮 O Jogo

**Ball in Running** é um projeto desenvolvido em **Lua** utilizando a framework **LÖVE**. O objetivo é simples: sobreviver o máximo de tempo possível e coletar triângulos mágicos (moedas) para atingir a pontuação máxima.

### 🕹️ Como Jogar?
*   **Mover:** Use as teclas `W`, `A`, `S`, `D`.
*   **Objetivo:** Colete **10 moedas** para vencer.
*   **Perigo:** Se o quadrado inimigo te tocar, a rodada reinicia!

---

## 🛠️ Tecnologias Utilizadas
*   **Linguagem:** [Lua](https://lua.org)
*   **Framework:** [LÖVE2D](https://love2d.org)
*   **Versionamento:** Git & GitHub

---

## 🚀 Como rodar o projeto localmente

1.  Tenha o **LÖVE2D** instalado em sua máquina.
2.  Clone este repositório:
    ```bash
    git clone git@github.com:SEU_USUARIO/ball-in-running.git
    ```
3.  Navegue até a pasta e execute:
    ```bash
    love .
    ```

---

## 📝 Estrutura do Código
O coração do jogo está no arquivo `main.lua`:
- `love.load()`: Inicializa as posições do player, inimigo e moedas.
- `love.update()`: Processa a movimentação, colisões e IA de perseguição.
- `love.draw()`: Renderiza os gráficos geométricos e o placar em tempo real.

---

## 📌 Próximas Implementações
- [ ] Adicionar sons de coleta e colisão.
- [ ] Criar uma tela de "Game Over" e "Vitória".
- [ ] Aumentar a velocidade do inimigo conforme os pontos sobem.

---
Desenvolvido por Eric Douglas Koga](https://github.com) ✨
