p = 0:0.2:100; %initializam vectorul p de la 0 la 100 cu pasul 0.2

f = square(3.14*p,25); %cream semnalul dreptunghiular cu factor de umplere 25%

for i = 1:1:length(f) %parcurgem semnalul
   if f(i) > 0  %daca amplitudinea este pozitiva
       f(i) = f(i)/2; % o injumatatim pentru a avea nivel maxim de 0.5 si minim de -1
   end
end

subplot(3, 1, 1)
plot(p,f) %reprezentam grafic semnalul x in functie de timp
axis([0 5.2 -1.2 1.2]) %setam limitele axelor
xlabel('Timp (sec)') % denumim axa x "Timp(sec)"
ylabel('Amplitudine') % denumim axa y "Amplitudine"
title('Dreptunghiular, pas = 200ms') %denumim graficul "Dreptunghiular, pas=200ms"


p2 = 0:0.02:100; 

f2 = square(pi*p2,25);

for i2 = 1:1:length(f2)
   if f2(i2) > 0
       f2(i2) = f2(i2)/2;
   end
end

subplot(3, 1, 2)
plot(p2,f2)
axis([0 5.2 -1.2 1.2])
xlabel('Timp (sec)')
ylabel('Amplitudine')
title('Dreptunghiular, pas = 20ms')

p3 = 0:0.002:100;

f3 = square(pi*p3,25);

for i3 = 1:1:length(f3)
   if f3(i3) > 0
       f3(i3) = f3(i3)/2;
   end
end

subplot(3, 1, 3)
plot(p3,f3)
axis([0 5.2 -1.2 1.2])
xlabel('Timp (sec)')
ylabel('Amplitudine')
title('Square, pas = 2ms')