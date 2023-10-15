% Deep Learning in 7 Lines of MATLAB Code
% Author Joe Hicklin
clear
picture=imread("10.JPG");
nnet = alexnet; % Load the neural net
picture = imresize(picture,[227,227]); % Resize the picture
label = classify(nnet, picture); % Classify the picture
image(picture); % Show the picture
title(char(label)); % Show the label
drawnow;