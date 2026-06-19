% پارامترهای ثابت
AF = 79;        % مقدار فرضی A_F (در صورت نیاز تغییر دهید)
AS = 69;        % مقدار A_S
CA = 10.3e6;     % 6.73 MPa به پاسکال

T = 79;          % دما به درجه سانتی‌گراد
Theta = 0.56e6;     % مقدار فرضی برای Θ (در صورت نیاز اصلاح شود)
Omega = -1.24e9;     % مقدار فرضی برای Ω (در صورت نیاز اصلاح شود)

% محاسبه پارامترها
aA = (2 * log(exp(10))) / (AF - AS);
BA = -aA / CA;

% تعریف تابع ناشناخته برای حل
eq = @(Sigma) Sigma - 24.64e6 - Omega * (exp(aA * (T - AS) + BA * Sigma) - 1) - Theta * (T - 69);

% مقدار اولیه و حل با fsolve
Sigma0 = 1e6;   % مقدار اولیه برای حل
options = optimoptions('fsolve','Display','iter');
Sigma_sol = fsolve(eq, Sigma0, options);

% نمایش نتیجه
fprintf('Sigma solution: %.3f MPa\n', Sigma_sol / 1e6);
