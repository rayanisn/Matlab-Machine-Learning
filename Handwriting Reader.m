% Step 1: Extract features from the new image
pavadinimas = 'E_tr.png';
pozymiai_patikrai = pozymiai_raidems_atpazinti(pavadinimas, 1);

% Step 2: Convert features to a matrix
P2 = cell2mat(pozymiai_patikrai);

% Step 3: Simulate the network
Y2 = sim(tinklas, P2);

% Step 4: Find the recognized classes
[a2, b2] = max(Y2);

% Step 5: Map indices to characters and display in the command window
atsakymas = [];
for k = 1:length(b2)
    switch b2(k)
        case 1, symbol = 'A';
        case 2, symbol = 'B';
        case 3, symbol = 'C';
        case 4, symbol = 'D';
        case 5, symbol = 'E';
        case 6, symbol = 'F';
        case 7, symbol = 'G';
        case 8, symbol = 'H';
        case 9, symbol = 'I';
        case 10, symbol = 'K';
        case 11, symbol = 'J';
    end
    
    % Append the recognized symbol to the answer
    atsakymas = [atsakymas, symbol];
    
    % Display the recognized symbol in the command window
    fprintf('Recognized symbol %d: %s\n', k, symbol);
end
% Step 6: Display recognized characters
disp('Recognized Symbols:');
disp(atsakymas);
figure, text(0.1, 0.5, atsakymas, 'FontSize', 38), axis off;
