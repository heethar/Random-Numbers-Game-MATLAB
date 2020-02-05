%Heather Shirely

%Random number game. With sound!
choice = input('Enter 1 to guess a number, 0 to quit: ');
if (choice ~= 1)
  helpdlg('Good day!')
  return;
end
guessNum = randi([1 35],1,1);
inputNum = input('Guess a number: ');
while (choice == 1 && inputNum ~= 0)
  if inputNum < guessNum
    inputNum = input('Sorry, your guess is too low.\n Please enter your next guess, or 0 to quit: ');
  elseif inputNum > guessNum
    inputNum = input('You guessed too high.\n Enter another number or 0 to quit: ');
  elseif inputNum == guessNum
S(1) = load('gong');
sound(S(1).y,S(1).Fs);
    choice = input('At last (:\n Would you like to play again? 1 for yes, 0 for no: ');
    if choice == 0
      break;
    end
   %New number generation
    guessNum = randi([1 35], 1, 1);
    inputNum = input('Guess a number: ');
  end
end
if choice == 0
  fprintf('Good bye (:')
end
