close all
clear
clc

ode = @(x,y) 1 - y/x;

a = 1;
b = 6;
h = 0.25;

yINI = 5;

[~,y] = odeEulerPreCor(ode,a,a+2*h,h,yINI);

[x,y] = ODE_ABM_PreCor(ode,a,b,h,y);

% for this ode the exact solution is as x/2 + 4.5./x
y_exact = x/2 + 4.5./x;

plot(x,y,x,y_exact)

errorNorm = norm(y-y_exact);
plot (x,y,x,y_exact)
y
y_exact
abs(y_exact - y)
disp(['the norm of exact error is: ', num2str(errorNorm)])
Result = table;
Result.i = (1:21)'
Result.xi = (1:0.25:6)'
Result.y = (y)'
Result.y_exact = (y_exact)'
Result.error = (abs(y_exact - y))'

%%باید در حل این سوال از رابطه های
 %%(10.104)(10.103)
 %%Adams Bashforth and Adams Moulton Predictor Correcter Method
 %%استفاده کنیم. برای استفاده از این معادلات به سه نقطه احتیاج داریم ولی در
 %%سوال فقط یک نقطه داریم پس از روش اویلر اصلاحی دو نقطه دیگر را محاسبه
 %%میکنیم و با آن سه نقطه از رابطه هایی که ذکر شد استفاده میکنیم و پاسخ
 %%سوال را محاسبه میکنیم.