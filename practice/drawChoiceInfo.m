function randomSeed = drawChoiceInfo(window,choice,headi,tar1_position,tar2_position,screenCenter,randomSeed)
% Control a screen degree with the keyboard.
% resultFlag    1: left    2:right

    if choice > 0
        answerH = headi >= 0;
        if randomSeed == 0
            randomSeed = ceil(rand()*4);
        end
        if choice-1 == answerH
            if randomSeed == 1
                Screen('DrawText',window,'BINGO!',screenCenter(1)-10,screenCenter(2)-80,[10 255 10],[0 0 0]);
            elseif randomSeed == 2
                Screen('DrawText',window,'WELL DONE!',screenCenter(1)-50,screenCenter(2)-80,[10 255 10],[0 0 0]);
            elseif randomSeed == 3
                Screen('DrawText',window,'I''M PROUD OF YOU!',screenCenter(1)-80,screenCenter(2)-80,[10 255 10],[0 0 0]);
            else
                Screen('DrawText',window,'NICE!',screenCenter(1)-30,screenCenter(2)-80,[10 255 10],[0 0 0]);
            end
        else
            if randomSeed ==1
                Screen('DrawText',window,'Trust yourself',screenCenter(1)-60,screenCenter(2)-80,[255 10 10],[0 0 0]);
            elseif randomSeed ==2
                Screen('DrawText',window,'Never give up',screenCenter(1)-60,screenCenter(2)-80,[255 10 10],[0 0 0]);
            elseif randomSeed == 3
                Screen('DrawText',window,'Lets try again',screenCenter(1)-60,screenCenter(2)-80,[255 10 10],[0 0 0]);
            else
                Screen('DrawText',window,'Keep Calm and try again',screenCenter(1)-80,screenCenter(2)-80,[255 10 10],[0 0 0]);
            end
        end   
    else
        Screen('DrawText',window,'Aha',screenCenter(1)-10,screenCenter(2)-80,[150 230 230],[0 0 0]);
    end
    
    Screen('FillOval', window, [255 0 0 255], tar1_position);
    Screen('FillOval', window, [255 0 0 255], tar2_position);
    
    if choice == 2
        Screen('FillOval', window, [255 255 0 255], tar2_position);
    elseif choice == 1
        Screen('FillOval', window, [255 255 0 255], tar1_position);
    end    
    
%     Screen('Flip', window);
%     WaitSecs(1);
end
