function disp()

t=linspace(0, 1, 1000);
A=5;
fm=3;
fc=40;
mi=3;

x=sin(2 * pi * fm * t);
Sm= x.*A;

y=sin(2 * pi * fc * t);
Sc=y.*A;

AmpMod = y .* (A + mi * Sm);

z= x.*mi;
z=z+ (2*pi*fc*t);
z=sin(z);
FreqMod = z.*A;


subplot(4,1,1)
plot(Sm)
title('Audio Signal');
xlabel('time');
ylabel('Amplitude');
subplot(4,1,2)
plot(Sc)
title('Carrier Signal');
xlabel('time');
ylabel('Amplitude');
subplot(4,1,3)
plot(AmpMod)
title('Amplitude Modulation');
xlabel('time');
ylabel('Amplitude');
subplot(4,1,4)
plot(FreqMod)
title('Frequency Modulation')
xlabel('time');
ylabel('Amplitude');
