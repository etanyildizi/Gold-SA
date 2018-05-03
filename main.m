                                                                                                  
%  Main paper:                                                                                        
%  E. Tanyildizi, G. Demir, "Golden Sine Algorithm: A Novel Math-Inspired Algorithm," Advances in Electrical and Computer Engineering, vol.17, no.2, pp.71-78, 2017, doi:10.4316/AECE.2017.02010
%______________________________________________________________________________________________
% func_obj = @CostFunction
% dim = number of your variables
% Max_iteration = maximum number of iterations
% Population = number of search agents
% Lb=Lower bound
% Ub=Upper bound

% To run GoldSA: [Best_value,Best_pos]=GoldSA(Population,Max_Iter,Lb,Ub,dim,func_obj)
%______________________________________________________________________________________________
clear 
clc
sayac=0;
while sayac <30
    sayac =sayac+1;

Population=30; % Number of population

Function='F23'; % Name of the test function that can be from F1 to F5 (Table 1,2,3 in the paper)

Max_Iter=1000; % Maximum numbef of iterations

% Load details of the selected benchmark function
[Lb,Ub,dim,func_obj]=Get_Functions_details(Function);

[Best_value,Best_pos]=GoldSA(Population,Max_Iter,Lb,Ub,dim,func_obj);


time(sayac)=toc;
sonuc(sayac)=Best_value;

   kisit(sayac,:)=Best_pos;
end
runtime=mean(time)
matlab.io.saveVariablesToScript(Function,{'sonuc','kisit','runtime','time'});
