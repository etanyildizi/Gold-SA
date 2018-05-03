%
%  Developed in MATLAB R2011b(7.13)
%
%  Author and programmer: Seyedali Mirjalili
%
%         e-Mail: ali.mirjalili@gmail.com
%                 seyedali.mirjalili@griffithuni.edu.au
%
%       Homepage: http://www.alimirjalili.com
%
% 
% This function containts full information and implementations of the benchmark
% functions in Table 1, Table 2, and other test functins from the literature

% lb is the lower bound: lb=[lb_1,lb_2,...,lb_d]
% up is the uppper bound: ub=[ub_1,ub_2,...,ub_d]
% dim is the number of variables (dimension of the problem)

function [lb,ub,dim,func_obj ] = Get_Functions_details(F)


switch F
    case 'F1'
        func_obj  = @F1;
        lb=-100;
        ub=100;
        dim=30;
        
    case 'F2'
        func_obj  = @F2;
        lb=-10;
        ub=10;
        dim=30;
        
    case 'F3'
        func_obj  = @F3;
        lb=-100;
        ub=100;
        dim=30;
        
    case 'F4'
        func_obj  = @F4;
        lb=-100;
        ub=100;
        dim=30;
        
    case 'F5'
        func_obj  = @F5;
        lb=-30;
        ub=30;
        dim=30;
        
    
end

end

% F1

function o = F1(x)
o=sum(x.^2);
end

% F2

function o = F2(x)
o=sum(abs(x))+prod(abs(x));
end

% F3

function o = F3(x)
dim=size(x,2);
o=0;
for i=1:dim
    o=o+sum(x(1:i))^2;
end
end

% F4

function o = F4(x)
o=max(abs(x));
end

% F5

function o = F5(x)
dim=size(x,2);
o=sum(100*(x(2:dim)-(x(1:dim-1).^2)).^2+(x(1:dim-1)-1).^2);
end


