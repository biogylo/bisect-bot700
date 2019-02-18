%Metodos Numericos 543 18 de febrero de 2019
%Practica 2 - Ejercicio 1
%Navarro Rodriguez Juan Francisco
%Bisect bot 700
%Este programa aproxima sumatoria de 0 a infinito de a^n para |a| < 1
clc;clear;aprox = 0;
%Constantes
maxi = 30; %numero maximo de iteraciones
cifras = 7; %cantidad de cifras minimas de la aproximacion

xinf = 12; % x l inicial
xsup = 16; % x u inicial
xaprox = 0; % x r

eaprox = [];

tol = 0.5*power(10,2-cifras); %la tolerancia, cifras minimas para acabar

fprintf('\n\nBisect bot 700\n\tEste programa aproxima de forma numerica ');
fprintf('\n\tpor el metodo de biseccion, los ceros de una caida,,');
fprintf('\n\tcuya f(x) = (667.38/x)*(1-exp(-0.146843*x)-40.');
fprintf('\n\nAproximacion');
fprintf('\nSe espera una aproximacion a %d cifras significativas',cifras);
fprintf('\nes decir, una tolerancia de %f %%\n\n',tol);
fprintf('\n n')
fprintf('\t|Xinferior')
fprintf('\t|Xsuperior')
fprintf('\t|Xaproxim')
fprintf('\t|Prueba\t')
fprintf('\t|Error Apr')




for i = 1:(maxi)
	xpast = xaprox;
	xaprox = (xinf+xsup)/2; %agrega la nueva aproximacion al vector
	signo = ((667.38/xinf)*(1-exp(-0.146843*xinf))-40)*((667.38/xaprox)*(1-exp(-0.146843*xaprox))-40); %evaluacion de subintervalo
    fprintf('\n%d',i)
    fprintf('\t|%f',xinf)
    fprintf('\t|%f',xsup)
    fprintf('\t|%f',xaprox)
    fprintf('\t|%f',signo)
    if (i ~= 1)
		eaprox = (abs((xaprox - xpast)/xaprox))*100;
        fprintf('\t|%f',eaprox)
    else
        fprintf('\t|\t')
    end
    
	if (signo < 0)
		xsup = xaprox; 	
	elseif (signo > 0)
		xinf = xaprox;
	else
		fprintf('MILAGRO');
    end
	
	if (eaprox < tol)
		break;
	end
end

fprintf('\n\n%f\n',((667.38/xaprox)*(1-exp(-0.146843*xaprox))-40))


