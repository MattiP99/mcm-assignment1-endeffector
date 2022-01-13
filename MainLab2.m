

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

%4-th and 9-th joints are fixed, their aim is only for connection
jointType = [0,0,0,2,0,0,0,0,2];
numberOfJoints = 9;

qmin = -pi * ones(9,1);
qmax = +pi * ones(9,1);

%initial configuration
q = [0.1,0.1,0.1,0.1,0.1,0.1,0.1,0.1,0.1];
q_dot = [0,0,0,0,0,0,0,0,0];

%goal definition
questions = {'What is X coordinates of the goal?',...
              'What is Y coordinates of the goal?',...
              'What is Z coordinates of the goal?'};
answer = inputdlg(questions);
    
goalCoord_X = str2double(answer{1});
goalCoord_Y = str2double(answer{2});
goalCoord_Z = str2double(answer{3});


%goal orientation
goalMatrix = [1,0,0,goalCoord_X;
              0,1,0,goalCoord_Y;
              0,0,1,goalCoord_Z;
              0,0,0,1.0];

% simulation variables 
ts = 0.1;
t_start = 0.0;
t_end = 10.0;
t = t_start:ts:t_end;

 
angular_gain = 0.1;
linear_gain = 0.8;

%preallocation of variables
x_dot = zeros(6,1);
error_linear = zeros(3,1);
error_angular = zeros(3,1);


bTi = zeros(4,4,numberOfJoints);
brij = zeros(3, numberOfJoints +1);


hold on
cindex = 1;
csize = t_end/ts;
cmap = colormap(summer(csize));
color = cmap(mod(cindex,csize)+1,:);
plot3(0,0,0,'o','Color','r')
plot3(goalCoord_X, goalCoord_Y,goalCoord_Z,'o','Color','r');
% For each interval from initial configuration to the final configuration
% we will compute


%%%%%%% Kinematic Simulation %%%%%%%

  
    % simulating the robot
for i = t
    basicV = zeros(3,numberOfJoints);

    %transformation matrices of link <i> w.r.t. link <i-1>
    biTei = GetDirectGeometry(q,biTri,jointType);
    
    % transformation matrix from the manipulator base to the ith joint in the configuration identified by biTei.
    bTe = GetTransformationWrtBase(biTei,9);
    %Jacobian Matrix
    J = GetJacobian(biTei,bTe,jointType);


    error_linear= goalMatrix(1:3,4) - bTe(1:3,4);
    error_angular = VersorLemma(bTe(1:3,1:3), goalMatrix(1:3,1:3));

    x_dot(1:3,1) = angular_gain*error_angular;
    x_dot(4:6,1) = linear_gain*error_linear;

    q_dot = pinv(J)*x_dot;
    q = KinematicSimulation(q, q_dot,ts, qmin, qmax);

    %computing all vectors connecting the base to the i-th link i
    for j = 1:numberOfJoints
        basicV(:,j) = GetBasicVectorWrtBase(biTei,j)
    end

    % plot the base separatly because it is useless plotting it everytime.
    basicV = [[0;0;0],basicV];
    
    for j = 2:numberOfJoints + 1   
        plot3(basicV(1,j),basicV(2,j),basicV(3,j),'o','Color','b')
    end

    color = cmap(mod(cindex,csize)+1, :);
    cindex = cindex +1;
    
    %Connecting all joints while moving by using color lines
    hold on
    line(basicV(1,:),basicV(2,:),basicV(3,:), 'LineWidth', 2,'Color',color)

    pause(0.1);

end

    
  


