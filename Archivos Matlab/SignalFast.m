close all;
clear all;
clc;
t=0:0.001:10;
N=input('Numero de armonicos= ');
A0=(0);
T = 4;
Wo = pi/2;
x3=A0*ones(1, length(t));
x5=A0*ones(1, length(t));
for k=1:2:N 
        FactorAk = cos(k * Wo * t);
        FactorBk = sin(k * Wo * t);
        Ak=(sin(2*pi*k) + 2*sin((pi*k)/2) - 2*sin((3*pi*k)/2))/(k*pi);
        Bk=-(64*sin((pi*k)/4)^4*(2*sin((pi*k)/4)^4 - 3*sin((pi*k)/4)^2 + 1))/(k*pi);
        if(k==3)
            x3=x3+(Ak*FactorAk+Bk*FactorBk);
            plot(t,x3),axis([0, 10, -1.5, 1.5]),grid on;
            title("Armonicos ",k);
            ylabel("Amplitud");
            xlabel("Tiempo");
        elseif(k==5)
            figure
            x5=x5+(Ak*FactorAk+Bk*FactorBk);
            plot(t,x5),axis([0, 10, -1.5, 1.5]),grid on;
            title("Armonicos ",k);
            ylabel("Amplitud");
            xlabel("Tiempo");

           figure
           plot(t,x3+x5),axis([0, 10, -1.5, 1.5]),grid on;
           title("Armonicos 3 + 5");
           ylabel("Amplitud");
           xlabel("Tiempo");
        end
       % F(k)=getframe;
end
%Simulacion armonicos 3 y 5 como entrada 
Num=[1];
Den=[1 3];
G=tf(Num,Den);
u=x3+x5;
figure
Si=lsim(G,u,t);
plot(t,Si,'r',"LineWidth",2),grid on,hold on;
plot(t,u,'g',"LineWidth",2),grid on,hold on;
legend("Respuesta del sistema","Señal entrada");
ylabel("Amplitud");
xlabel("Tiempo");
