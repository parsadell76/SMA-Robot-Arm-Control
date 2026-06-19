% پارامترهای ثابت
AF = 79;        % مقدار فرضی A_F (در صورت نیاز تغییر دهید)
AS = 69;        % مقدار A_S
CA = 10.3e6;     % 6.73 MPa به پاسکال

Sigma = 87.63e6;       % تنش
Theta = 0.56e6;     % مقدار فرضی برای Θ (در صورت نیاز اصلاح شود)
Omega = -1.24e9;     % مقدار فرضی برای Ω (در صورت نیاز اصلاح شود)

% محاسبه پارامترها
aA = (2 * log(exp(10))) / (AF - AS);
BA = -aA / CA;

% تعریف تابع ناشناخته برای حل
eq = @(T) Sigma - 24.64e6 - Omega/2 * ( (cos (aA * (T - AS - Sigma/CA)) + 1))  - Theta * (T - 69);

% مقدار اولیه و حل با fsolve
T0 = 75;   % مقدار اولیه برای حل
options = optimoptions('fsolve','Display','iter');
T_sol = fsolve(eq, T0, options);

% نمایش نتیجه
fprintf('T solution: %.3f C\n', T_sol );
