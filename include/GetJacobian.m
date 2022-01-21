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
        %Take the single tranformation matrix T w.r.t the base for joint
        %and pass it to get jacobiancolumn
        % Note that bTe is already a single matrix because it is the one
        % from the base to the end effector computed as bTe = GetTransformationWrtBase(biTei,9);
        bTi = GetTransformationWrtBase(biTei,i);
        J(:,i) = GetJacobianColumn(bTi,bTe,jointType(i));

    end
end

