
local End = false
local plrScore = 0
local comScore = 0
local Game = 1

function wait(seconds)
    local start = os.time()
    repeat until os.time() > start + seconds
end

function game()

    for i = 1,30 do
    print(                            )

    end
    print("Game #"..Game)
    print("The current score is "..plrScore.."-"..comScore)
    for i = 1,5 do
        print(                            )
        end
    io.write("What do you play? Rock, paper, or scissors? ")
    local choice = string.lower(io.read())

    local comChoice
if choice == "rock" or choice == "paper" or choice == "scissors" then
    for i = 1,5 do
        print(                            )
        end
    print("Rock, paper, scissors, LUA!")
    wait(1)
    for i = 1,5 do
        print(                            )
        end
  print("You picked... "..choice.."!")
  wait(1)
    local pick = math.random(1,3)
    if pick == 1 then
        comChoice = "rock"
    elseif pick == 2 then
        comChoice = "paper"
    elseif pick == 3 then
        comChoice = "scissors"
    end
    for i = 1,5 do
        print(                            )
        end
  print("Computer picked... "..comChoice.."!")
  wait(1)
  for i = 1,5 do
    print(                            )
    end
    if comChoice == "rock" and choice == "rock" then
        print("Tie...")
          elseif comChoice == "paper" and choice == "paper" then
        print("Tie...")
            elseif comChoice == "scissors" and choice == "scissors" then
        print("Tie...")
                    elseif comChoice == "scissors" and choice == "rock" then
        print("You win!")
        plrScore = plrScore + 1
                    elseif comChoice == "rock" and choice == "paper" then
        print("You win!")
        plrScore = plrScore + 1
                    elseif comChoice == "paper" and choice == "scissors" then
        print("You win!")
        plrScore = plrScore + 1
                    elseif comChoice == "scissors" and choice == "paper" then
        print("Computer wins!")
        comScore = comScore + 1
                    elseif comChoice == "paper" and choice == "rock" then
        print("Computer wins!")
        comScore = comScore + 1
                    elseif comChoice == "rock" and choice == "scissors" then
        print("Computer wins!")
        comScore = comScore + 1
                    end        
        Game = Game + 1
    else
        print("You can't play "..choice..", silly!")
    end
    End = true
end

print([[Rock, paper, scissors, LUA!

Created by dani_lionn, 2022]])
wait(2)

game()
while true do
if End == true then
    End = false
    for i = 1,5 do
        print(                            )
        end
    io.write("Do you want to play again? (y/n) ")
        local yN = string.lower(io.read())
        if yN == "y" then
    game()
        else
            print("Thanks for playing!")
            wait(2)
        break
end
end 
end
