close all 
clc

%% part A 
[y  , Fs] = audioread('multi_tone.wav');
ffty = fft(y);
normy = abs(ffty)/max(abs(ffty));
len = length(ffty);
f = (-len/2 : len/2 - 1)*Fs/len;
plot(f, abs(fftshift(ffty)))
xlabel('Frequency (HZ)')
ylabel('Magnitude ')
title('Multi Tone Wave');
grid on ;
%% part B 

r = Rect;
b4 = Butter4;
b10 = Butter10;
b30 = Butter30;
k = Kaiser ;
[hr ,wr ]     = freqz(r   , -pi:pi/128:pi);
[hb4 ,wb4 ]   = freqz(b4  , -pi:pi/128:pi);
[hb10 ,wb10 ] = freqz(b10 , -pi:pi/128:pi);
[hb30 ,wb30 ] = freqz(b30 , -pi:pi/128:pi);
[hk ,wk ]     = freqz(k   , -pi:pi/128:pi);
figure();
plot(wr/pi , 10*log10(abs(hr)));
xlabel('Normalized Frequency (\times\pi rad/sample)')
ylabel('Magnitude (dB)')
title('Rectangular Window with 30 points');
grid on ;

figure();
plot(wb4/pi , 10*log10(abs(hb4)));
xlabel('Normalized Frequency (\times\pi rad/sample)')
ylabel('Magnitude (dB)')
title('Butterworth of order 4');
grid on ;
figure();
plot(wb10/pi , 10*log10(abs(hb10)));
xlabel('Normalized Frequency (\times\pi rad/sample)')
ylabel('Magnitude (dB)')
title('Butterworth of order 10');
grid on ;
figure();
plot(wb30/pi , 10*log10(abs(hb30)));
xlabel('Normalized Frequency (\times\pi rad/sample)')
ylabel('Magnitude (dB)')
title('Butterworth of order 30');
grid on ;
figure();
plot(wk/pi , 10*log10(abs(hk)));
xlabel('Normalized Frequency (\times\pi rad/sample)')
ylabel('Magnitude (dB)')
title('Kaiser with \beta = 0.5');
grid on ;
yr  = filter(r , y);
yb4 = filter(b4 , y);
yb10 = filter(b10 , y);
yb30 = filter(b30 , y);
yk = filter(k , y);

figure();
plot(f , abs(fftshift(fft(yr))));
xlabel('Frequency (HZ)')
ylabel('Magnitude (dB)')
title('Rsult of Rectangular Window with 30 points');
grid on ;

figure();
plot(f , abs(fftshift(fft(yb4))));
xlabel('Frequency (HZ)')
ylabel('Magnitude ')
title('Result of Butterworth of order 4');
grid on ;
figure();
plot(f , abs(fftshift(fft(yb10))));
xlabel('Frequency (HZ)')
ylabel('Magnitude ')
title('Result of Butterworth of order 10');
grid on ;
figure();
plot(f , abs(fftshift(fft(yb30))));
xlabel('Frequency (HZ)')
ylabel('Magnitude ')
title('Result of Butterworth of order 30');
grid on ;
figure();
plot(f , abs(fftshift(fft(yk))));
xlabel('Frequency (HZ)')
ylabel('Magnitude ')
title('Result of Kaiser with \beta = 0.5');
grid on ;


gr = GoodRect;
[hgr ,wgr ] = freqz(gr   , -pi:pi/128:pi);
figure();
plot(wgr/pi , 10*log10(abs(hgr)));
xlabel('Normalized Frequency (\times\pi rad/sample)')
ylabel('Magnitude (dB)')
title('Rectangular Window with 1500 points');
grid on ;
ygr  = filter(gr , y);
figure();
plot(f , abs(fftshift(fft(ygr))));
xlabel('Frequency (HZ)')
ylabel('Magnitude')
title('Result of Rectangular Window with 1500 points');
grid on ;