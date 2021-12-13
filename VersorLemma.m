%% VersorLemma function
% inputs:
% - r1: the first rotation matrix
% - r2: the second rotation matrix
% output:
% - c: the Vect3 representing the axis around which r1 should rotate to reach r2, where its modulus is the angle

function c = VersorLemma(r1, r2)
%TODO
    i1 = r1(:,1);
    j1 = r1(:,2);
    k1 = r1(:,3);
    i2 = r2(:,1);
    j2 = r2(:,2);
    k2 = r2(:,3);
    
   
    double modCos;
    double cosTeta;
    double teta;
    double sumComponents[];
    double norm_c;
    double norm_sumComponents;
  
    cosTeta = cos((dot(i1,i2) + dot(j1,j2) + dot(k1,k2) -1 )/2);
    teta = acos(cosTeta);
    modCos =abs(cosTeta);
    if modCos < 1
        c = ((i1*i2) + (j1*j2)+ (k1*k2))/(2*sin(teta)); 
        norm_c = acos((dot(i1,i2) + dot(j1,j2) + dot(k1,k2) -1 )/2);
    
    elseif modCos == 1 
       c = 1;
       norm_c = 2*pi;
    elseif modCos == -1
        sumComponents = (i1+i2)+(j1+j2)+(k1+k2);
        norm_sumComponents = norm(sumComponents);
        c = (sumComponents/norm_sumComponents);
        norm_c = (2*k+1)*pi;
   
    end

end

