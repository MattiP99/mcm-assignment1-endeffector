%% GetJacobian function
% Function returning the end effector jacobian for a manipulator which current
% configuration is described by biTei.
%
% Inputs:
% - biTei : transformation matrix of link <i> w.r.t. link <i-1> for the input qi.
% - bTe: current transformation matrix from base to the end effector.
% - jointType: vector identifying the joint type, 0 for revolute, 1 for
% prismatic
%
% Output:
% - J: end-effector jacobian matrix

function J = GetJacobian(biTei, bTe, jointType)

%% TODO
    J = zeros(6,length(jointType));
    for i = 1:length(jointType)
        
        J(:,i) = GetJacobianColumn(biTei,bTe,jointType(i),i);

    end
end

