%%MOCOM LAB1
%This is the Main to Run. If the connection of the additional links is not
%good, there is the other main function. Some changes are needed too but
%only numerical
clc
clear
close all

addpath('include')

biTri(1,1,1) = 1; biTri(1,2,1) = 0; biTri(1,3,1) = 0; biTri(1,4,1) = 0;
biTri(2,1,1) = 0; biTri(2,2,1) = 1; biTri(2,3,1) = 0; biTri(2,4,1) = 0;
biTri(3,1,1) = 0; biTri(3,2,1) = 0; biTri(3,3,1) = 1; biTri(3,4,1) = 0.175;
biTri(4,1,1) = 0; biTri(4,2,1) = 0; biTri(4,3,1) = 0; biTri(4,4,1) = 1;

biTri(1,1,2) = -1; biTri(1,2,2) = 0;  biTri(1,3,2) = 0; biTri(1,4,2) = 0;
biTri(2,1,2) = 0;  biTri(2,2,2) = 0;  biTri(2,3,2) = 1; biTri(2,4,2) = 0;
biTri(3,1,2) = 0;  biTri(3,2,2) = 1;  biTri(3,3,2) = 0; biTri(3,4,2) = 0.108;
biTri(4,1,2) = 0;  biTri(4,2,2) = 0;  biTri(4,3,2) = 0; biTri(4,4,2) = 1;

biTri(1,1,3) = 0;  biTri(1,2,3) = 0; biTri(1,3,3) = 1;  biTri(1,4,3) = 0.105;
biTri(2,1,3) = -1; biTri(2,2,3) = 0; biTri(2,3,3) = 0;  biTri(2,4,3) = 0;
biTri(3,1,3) = 0;  biTri(3,2,3) = -1; biTri(3,3,3) = 0; biTri(3,4,3) = 0;
biTri(4,1,3) = 0;  biTri(4,2,3) = 0; biTri(4,3,3) = 0;  biTri(4,4,3) = 1;

%Fixed joint only for connection
biTri(1,1,4) = 1;  biTri(1,2,4) = 0; biTri(1,3,4) = 0;  biTri(1,4,4) = 0;
biTri(2,1,4) = 0; biTri(2,2,4) = 1; biTri(2,3,4) = 0;  biTri(2,4,4) = 0;
biTri(3,1,4) = 0;  biTri(3,2,4) = 0; biTri(3,3,4) = 1; biTri(3,4,4) = 0.3265;
biTri(4,1,4) = 0;  biTri(4,2,4) = 0; biTri(4,3,4) = 0;  biTri(4,4,4) = 1;

biTri(1,1,5) = 0;  biTri(1,2,5) = 1;  biTri(1,3,5) = 0;  biTri(1,4,5) = -0.1455;
biTri(2,1,5) = 0;  biTri(2,2,5) = 0;  biTri(2,3,5) = -1; biTri(2,4,5) = 0;
biTri(3,1,5) = -1; biTri(3,2,5) = 0;  biTri(3,3,5) = 0;  biTri(3,4,5) = 0;
biTri(4,1,5) = 0;  biTri(4,2,5) = 0;  biTri(4,3,5) = 0;  biTri(4,4,5) = 1;

biTri(1,1,6) = 0; biTri(1,2,6) = 0;  biTri(1,3,6) = 1; biTri(1,4,6) = 0.095;
biTri(2,1,6) = 0; biTri(2,2,6) = -1; biTri(2,3,6) = 0; biTri(2,4,6) = 0;
biTri(3,1,6) = 1; biTri(3,2,6) = 0;  biTri(3,3,6) = 0; biTri(3,4,6) = 0;
biTri(4,1,6) = 0; biTri(4,2,6) = 0;  biTri(4,3,6) = 0; biTri(4,4,6) = 1;

biTri(1,1,7) = 0; biTri(1,2,7) = 0;  biTri(1,3,7) = 1; biTri(1,4,7) = 0;
biTri(2,1,7) = 0; biTri(2,2,7) = -1; biTri(2,3,7) = 0; biTri(2,4,7) = 0;
biTri(3,1,7) = 1; biTri(3,2,7) = 0;  biTri(3,3,7) = 0; biTri(3,4,7) = 0.325;
biTri(4,1,7) = 0; biTri(4,2,7) = 0;  biTri(4,3,7) = 0; biTri(4,4,7) = 1;

biTri(1,1,8) = 0; biTri(1,2,8) = 0;  biTri(1,3,8) = 1; biTri(1,4,8) = 0.132;
biTri(2,1,8) = 0; biTri(2,2,8) = -1; biTri(2,3,8) = 0; biTri(2,4,8) = 0;
biTri(3,1,8) = 1; biTri(3,2,8) = 0;  biTri(3,3,8) = 0; biTri(3,4,8) = 0;
biTri(4,1,8) = 0; biTri(4,2,8) = 0;  biTri(4,3,8) = 0; biTri(4,4,8) = 1;

%The last fixed part
biTri(1,1,9) = 1; biTri(1,2,9) = 0;  biTri(1,3,9) = 0; biTri(1,4,9) = 0;
biTri(2,1,9) = 0; biTri(2,2,9) = 1; biTri(2,3,9) = 0; biTri(2,4,9) = 0;
biTri(3,1,9) = 0; biTri(3,2,9) = 0;  biTri(3,3,9) = 1; biTri(3,4,9) = 0.021;
biTri(4,1,9) = 0; biTri(4,2,9) = 0;  biTri(4,3,9) = 0; biTri(4,4,9) = 1;




%-------------------MOVE----------------------%

numberoflinks = 9;
%4-th and 9-th joints are fixed, their aim is only for connection
linkType = [0,0,0,2,0,0,0,0,2];

% the vector of angles that I want to give to each joint
%I gave a negative angle to the 5-th (4-th in the model) because I didn't
%want it to go down making a bad and unfeasible motion
conf_i = [0,0,0,0,0,0,0,0,0,0];
conf_f = [1.5,1.5,1.5,0,-1.5,1.5,1.5,1.5,0];


nSteps = 150;
qSteps = [linspace(conf_i(1),conf_f(1),nSteps).', linspace(conf_i(2),conf_f(2),nSteps).',linspace(conf_i(3),conf_f(3),nSteps).',linspace(conf_i(4),conf_f(4),nSteps).',linspace(conf_i(5),conf_f(5),nSteps).',linspace(conf_i(6),conf_f(6),nSteps).',linspace(conf_i(7),conf_f(7),nSteps).',linspace(conf_i(8),conf_f(8),nSteps).',linspace(conf_i(9),conf_f(9),nSteps).']; 
qSteps 
    

cindex = 1;
csize = nSteps;
cmap = colormap(summer(csize));
color = cmap(mod(cindex,csize)+1,:);
plot3(0,0,0,'o','Color','r')


% For each interval from initial configuration to the final configuration
% we will compute 
for i =1:nSteps
    basicV = zeros(3,numberoflinks);
    %qSteps has 150 rows (bacause of the steps) and 7 columns
    % At each step I will compute 7 measures that corrispond to the angles the
    % joints are moved.
    % Theese angles, or better intermediate configurations are determined by the GetDirectGeometry function
    q = qSteps(i,1:numberoflinks).';
    biTei = GetDirectGeometry(q,biTri,linkType);
    
    
    %computing all vectors connecting the base to the i-th link i
    for j = 1:numberoflinks
        basicV(:,j) = GetBasicVectorWrtBase(biTei,j)
    end
    
    % plot the base separatly because it is useless plotting it everytime.
    basicV = [[0;0;0],basicV]
    
    %starting from 2... link 1 is moved because of the position of the base
    %At each step I will plot x,y,z of each joint
   for j = 2:numberoflinks + 1   
        plot3(basicV(1,j),basicV(2,j),basicV(3,j),'o','Color','b')
    end
    
    color = cmap(mod(cindex,csize)+1, :);
    cindex = cindex +1;
    
    %Connecting all joints while moving by using color lines
    hold on
    line(basicV(1,:),basicV(2,:),basicV(3,:), 'LineWidth', 2,'Color',color)

    pause(0.1)

end
