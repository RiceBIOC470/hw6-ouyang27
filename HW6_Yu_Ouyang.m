%HW6

% Problem 1. Curve fitting. 
% Part 1. Take 10 x values on the interval 0 < x <= 10 and then create y
% values from the x values by plugging the x values into a third order
% polynomial of your choice. Add random noise to the data by choosing a random number
% in the interval [-D, D]. Start with D = 1. Plot your data in the x-y plane.

x = 10*rand(10,1);
y = 3*x.^3+2*x+1;
y = y + 2*(rand(10,1)-0.5); %add noise
plot(x,y,'r.','MarkerSize', 24);

% Part 2. Fit your data with polynomials from order 1 to 9. Plot the fitted
% polynomials together with the data. 

[fit1,fit_metric1] = fit(x,y,'poly1');
[fit2,fit_metric2] = fit(x,y,'poly2');
[fit3,fit_metric3] = fit(x,y,'poly3');
[fit4,fit_metric4] = fit(x,y,'poly4');
[fit5,fit_metric5] = fit(x,y,'poly5');
[fit6,fit_metric6] = fit(x,y,'poly6');
[fit7,fit_metric7] = fit(x,y,'poly7');
[fit8,fit_metric8] = fit(x,y,'poly8');
[fit9,fit_metric9] = fit(x,y,'poly9');
figure; hold on;
plot(x, y,'r.','MarkerSize',24);
hold on;
plot(fit1,'b-'); hold on;
plot(fit2,'y-'); hold on;
plot(fit3,'r-'); hold on;
plot(fit4,'c-'); hold on;
plot(fit5,'k-'); hold on;
plot(fit6,'m-'); hold on;
plot(fit7,'g-'); hold on;
plot(fit8,'b--'); hold on;
plot(fit9,'y--'); 
legend({'raw data','poly1','poly2','poly3','poly4','poly5','poly6','poly7','poly8',...
    'poly9'}, 'FontSize',16);


% Part 3. On a separate plot, plot the R^2 and adjusted R^2 as a function
% of the order of the polynomial. 
rsquare = [fit_metric1.rsquare;fit_metric2.rsquare;fit_metric3.rsquare;...
    fit_metric4.rsquare;fit_metric5.rsquare;fit_metric6.rsquare;...
    fit_metric7.rsquare;fit_metric8.rsquare;fit_metric9.rsquare];
adjrsquare = [fit_metric1.adjrsquare;fit_metric2.adjrsquare;fit_metric3.adjrsquare;...
    fit_metric4.adjrsquare;fit_metric5.adjrsquare;fit_metric6.adjrsquare;...
    fit_metric7.adjrsquare;fit_metric8.adjrsquare;fit_metric9.rsquare];
xx = 1:9;
figure;
plot(xx,rsquare,'b-','LineWidth', 3);
hold on;
plot(xx,adjrsquare,'r-','LineWidth',3);
legend({'rsquare','adjrsquare'},'FontSize',16);


% Part 4. Repeat parts 1 - 3 for D = 10 and D = 1000. Comment on the
% results. 

% D = 10
x = 10*rand(10,1);
y = 3*x.^3+2*x+1;
y = y + 20*(rand(10,1)-0.5); %add noise
plot(x,y,'r.','MarkerSize', 24);

[fit1,fit_metric1] = fit(x,y,'poly1');
[fit2,fit_metric2] = fit(x,y,'poly2');
[fit3,fit_metric3] = fit(x,y,'poly3');
[fit4,fit_metric4] = fit(x,y,'poly4');
[fit5,fit_metric5] = fit(x,y,'poly5');
[fit6,fit_metric6] = fit(x,y,'poly6');
[fit7,fit_metric7] = fit(x,y,'poly7');
[fit8,fit_metric8] = fit(x,y,'poly8');
[fit9,fit_metric9] = fit(x,y,'poly9');
figure; hold on;
plot(x, y,'r.','MarkerSize',24);
hold on;
plot(fit1,'b-'); hold on;
plot(fit2,'y-'); hold on;
plot(fit3,'r-'); hold on;
plot(fit4,'c-'); hold on;
plot(fit5,'k-'); hold on;
plot(fit6,'m-'); hold on;
plot(fit7,'g-'); hold on;
plot(fit8,'b--'); hold on;
plot(fit9,'y--'); 
legend({'raw data','poly1','poly2','poly3','poly4','poly5','poly6','poly7','poly8',...
    'poly9'}, 'FontSize',16);
rsquare = [fit_metric1.rsquare;fit_metric2.rsquare;fit_metric3.rsquare;...
    fit_metric4.rsquare;fit_metric5.rsquare;fit_metric6.rsquare;...
    fit_metric7.rsquare;fit_metric8.rsquare;fit_metric9.rsquare];
adjrsquare = [fit_metric1.adjrsquare;fit_metric2.adjrsquare;fit_metric3.adjrsquare;...
    fit_metric4.adjrsquare;fit_metric5.adjrsquare;fit_metric6.adjrsquare;...
    fit_metric7.adjrsquare;fit_metric8.adjrsquare;fit_metric9.rsquare];
xx = 1:9;
figure;
plot(xx,rsquare,'b-','LineWidth', 3);
hold on;
plot(xx,adjrsquare,'r-','LineWidth',3);
legend({'rsquare','adjrsquare'},'FontSize',16);

% D = 1000
x = 10*rand(10,1);
y = 3*x.^3+2*x+1;
y = y + 2000*(rand(10,1)-0.5); %add noise
plot(x,y,'r.','MarkerSize', 24);

[fit1,fit_metric1] = fit(x,y,'poly1');
[fit2,fit_metric2] = fit(x,y,'poly2');
[fit3,fit_metric3] = fit(x,y,'poly3');
[fit4,fit_metric4] = fit(x,y,'poly4');
[fit5,fit_metric5] = fit(x,y,'poly5');
[fit6,fit_metric6] = fit(x,y,'poly6');
[fit7,fit_metric7] = fit(x,y,'poly7');
[fit8,fit_metric8] = fit(x,y,'poly8');
[fit9,fit_metric9] = fit(x,y,'poly9');
figure; hold on;
plot(x, y,'r.','MarkerSize',24);
hold on;
plot(fit1,'b-'); hold on;
plot(fit2,'y-'); hold on;
plot(fit3,'r-'); hold on;
plot(fit4,'c-'); hold on;
plot(fit5,'k-'); hold on;
plot(fit6,'m-'); hold on;
plot(fit7,'g-'); hold on;
plot(fit8,'b--'); hold on;
plot(fit9,'y--'); 
legend({'raw data','poly1','poly2','poly3','poly4','poly5','poly6','poly7','poly8',...
    'poly9'}, 'FontSize',16);
rsquare = [fit_metric1.rsquare;fit_metric2.rsquare;fit_metric3.rsquare;...
    fit_metric4.rsquare;fit_metric5.rsquare;fit_metric6.rsquare;...
    fit_metric7.rsquare;fit_metric8.rsquare;fit_metric9.rsquare];
adjrsquare = [fit_metric1.adjrsquare;fit_metric2.adjrsquare;fit_metric3.adjrsquare;...
    fit_metric4.adjrsquare;fit_metric5.adjrsquare;fit_metric6.adjrsquare;...
    fit_metric7.adjrsquare;fit_metric8.adjrsquare;fit_metric9.rsquare];
xx = 1:9;
figure;
plot(xx,rsquare,'b-','LineWidth', 3);
hold on;
plot(xx,adjrsquare,'r-','LineWidth',3);
legend({'rsquare','adjrsquare'},'FontSize',16);




% Part 5. Now repeat parts 1-3 but take 100 x values on the interval 0 < x <=
% 10. Comment on the results. 
%%
% D = 1

x = 10*rand(100,1);
y = 3*x.^3+2*x+1;
y = y + 2*(rand(100,1)-0.5); %add noise
plot(x,y,'r.','MarkerSize', 24);

[fit1,fit_metric1] = fit(x,y,'poly1');
[fit2,fit_metric2] = fit(x,y,'poly2');
[fit3,fit_metric3] = fit(x,y,'poly3');
[fit4,fit_metric4] = fit(x,y,'poly4');
[fit5,fit_metric5] = fit(x,y,'poly5');
[fit6,fit_metric6] = fit(x,y,'poly6');
[fit7,fit_metric7] = fit(x,y,'poly7');
[fit8,fit_metric8] = fit(x,y,'poly8');
[fit9,fit_metric9] = fit(x,y,'poly9');
figure; hold on;
plot(x, y,'r.','MarkerSize',24);
hold on;
plot(fit1,'b-'); hold on;
plot(fit2,'y-'); hold on;
plot(fit3,'r-'); hold on;
plot(fit4,'c-'); hold on;
plot(fit5,'k-'); hold on;
plot(fit6,'m-'); hold on;
plot(fit7,'g-'); hold on;
plot(fit8,'b--'); hold on;
plot(fit9,'y--'); 
legend({'raw data','poly1','poly2','poly3','poly4','poly5','poly6','poly7','poly8',...
    'poly9'}, 'FontSize',16);
rsquare = [fit_metric1.rsquare;fit_metric2.rsquare;fit_metric3.rsquare;...
    fit_metric4.rsquare;fit_metric5.rsquare;fit_metric6.rsquare;...
    fit_metric7.rsquare;fit_metric8.rsquare;fit_metric9.rsquare];
adjrsquare = [fit_metric1.adjrsquare;fit_metric2.adjrsquare;fit_metric3.adjrsquare;...
    fit_metric4.adjrsquare;fit_metric5.adjrsquare;fit_metric6.adjrsquare;...
    fit_metric7.adjrsquare;fit_metric8.adjrsquare;fit_metric9.rsquare];
xx = 1:9;
figure;
plot(xx,rsquare,'b-','LineWidth', 3);
hold on;
plot(xx,adjrsquare,'r-','LineWidth',3);
legend({'rsquare','adjrsquare'},'FontSize',16);
% D = 10
x = 10*rand(100,1);
y = 3*x.^3+2*x+1;
y = y + 20*(rand(100,1)-0.5); %add noise
plot(x,y,'r.','MarkerSize', 24);

[fit1,fit_metric1] = fit(x,y,'poly1');
[fit2,fit_metric2] = fit(x,y,'poly2');
[fit3,fit_metric3] = fit(x,y,'poly3');
[fit4,fit_metric4] = fit(x,y,'poly4');
[fit5,fit_metric5] = fit(x,y,'poly5');
[fit6,fit_metric6] = fit(x,y,'poly6');
[fit7,fit_metric7] = fit(x,y,'poly7');
[fit8,fit_metric8] = fit(x,y,'poly8');
[fit9,fit_metric9] = fit(x,y,'poly9');
figure; hold on;
plot(x, y,'r.','MarkerSize',24);
hold on;
plot(fit1,'b-'); hold on;
plot(fit2,'y-'); hold on;
plot(fit3,'r-'); hold on;
plot(fit4,'c-'); hold on;
plot(fit5,'k-'); hold on;
plot(fit6,'m-'); hold on;
plot(fit7,'g-'); hold on;
plot(fit8,'b--'); hold on;
plot(fit9,'y--'); 
legend({'raw data','poly1','poly2','poly3','poly4','poly5','poly6','poly7','poly8',...
    'poly9'}, 'FontSize',16);
rsquare = [fit_metric1.rsquare;fit_metric2.rsquare;fit_metric3.rsquare;...
    fit_metric4.rsquare;fit_metric5.rsquare;fit_metric6.rsquare;...
    fit_metric7.rsquare;fit_metric8.rsquare;fit_metric9.rsquare];
adjrsquare = [fit_metric1.adjrsquare;fit_metric2.adjrsquare;fit_metric3.adjrsquare;...
    fit_metric4.adjrsquare;fit_metric5.adjrsquare;fit_metric6.adjrsquare;...
    fit_metric7.adjrsquare;fit_metric8.adjrsquare;fit_metric9.rsquare];
xx = 1:9;
figure;
plot(xx,rsquare,'b-','LineWidth', 3);
hold on;
plot(xx,adjrsquare,'r-','LineWidth',3);
legend({'rsquare','adjrsquare'},'FontSize',16);

% D = 1000
x = 10*rand(100,1);
y = 3*x.^3+2*x+1;
y = y + 20*(rand(100,1)-0.5); %add noise
plot(x,y,'r.','MarkerSize', 24);

[fit1,fit_metric1] = fit(x,y,'poly1');
[fit2,fit_metric2] = fit(x,y,'poly2');
[fit3,fit_metric3] = fit(x,y,'poly3');
[fit4,fit_metric4] = fit(x,y,'poly4');
[fit5,fit_metric5] = fit(x,y,'poly5');
[fit6,fit_metric6] = fit(x,y,'poly6');
[fit7,fit_metric7] = fit(x,y,'poly7');
[fit8,fit_metric8] = fit(x,y,'poly8');
[fit9,fit_metric9] = fit(x,y,'poly9');
figure; hold on;
plot(x, y,'r.','MarkerSize',24);
hold on;
plot(fit1,'b-'); hold on;
plot(fit2,'y-'); hold on;
plot(fit3,'r-'); hold on;
plot(fit4,'c-'); hold on;
plot(fit5,'k-'); hold on;
plot(fit6,'m-'); hold on;
plot(fit7,'g-'); hold on;
plot(fit8,'b--'); hold on;
plot(fit9,'y--'); 
legend({'raw data','poly1','poly2','poly3','poly4','poly5','poly6','poly7','poly8',...
    'poly9'}, 'FontSize',16);
rsquare = [fit_metric1.rsquare;fit_metric2.rsquare;fit_metric3.rsquare;...
    fit_metric4.rsquare;fit_metric5.rsquare;fit_metric6.rsquare;...
    fit_metric7.rsquare;fit_metric8.rsquare;fit_metric9.rsquare];
adjrsquare = [fit_metric1.adjrsquare;fit_metric2.adjrsquare;fit_metric3.adjrsquare;...
    fit_metric4.adjrsquare;fit_metric5.adjrsquare;fit_metric6.adjrsquare;...
    fit_metric7.adjrsquare;fit_metric8.adjrsquare;fit_metric9.rsquare];
xx = 1:9;
figure;
plot(xx,rsquare,'b-','LineWidth', 3);
hold on;
plot(xx,adjrsquare,'r-','LineWidth',3);
legend({'rsquare','adjrsquare'},'FontSize',16);

% Comment on the results: As the sample size becomes larger, the effect of
% noise become less significant. The differences between D=1/10/1000
% becomes less and less. 



% Problem 2. Basic statistics. 
% Part 1. Consider two different distributions - Gaussian numbers with a mean of
% 0 and variance 1 and Gaussian numbers with a mean of 1 and variance 1.
% (1) Make a plot of the average p-value for the t-test comparing N random
% numbers chosen from each of these two distributions as a function of N.
%%
N = input('maximum numbers to compare from the two distributions: ')
for ii = 1:N
    for jj = 1:100
        A = normrnd(0,1,1,ii);
        B = normrnd(1,1,1,ii);
        [is_sig(ii,jj),pval(ii,jj)] = ttest2(A,B);
    end
    p(ii) = mean(pval(ii,:));
end
plot(1:N, p);
xlabel('Sample Size N', 'FontSize',18);
ylabel('p-value','FontSize',18);
    

% Part 2. Now keep the first distribution the same, but vary the mean of
% the second distribution between 0 and 10 with the same variance and
% repeat part one. Make a plot of all of these different curves on the same
% set of axes. What is special about the case where the mean of the second
% distribution is 0? 
%%

N = input('maximum numbers to compare from the two distributions: ')
for ii = 1:N
    for jj = 1:100
        A = normrnd(0,1,1,ii);
        B0 = normrnd(0,1,1,ii);
        B1 = normrnd(1,1,1,ii);
        B2 = normrnd(2,1,1,ii);
        B3 = normrnd(3,1,1,ii);
        B4 = normrnd(4,1,1,ii);
        B5 = normrnd(5,1,1,ii);
        B6 = normrnd(6,1,1,ii);
        B7 = normrnd(7,1,1,ii);
        B8 = normrnd(8,1,1,ii);
        B9 = normrnd(9,1,1,ii);
        B10 = normrnd(10,1,1,ii);
        [is_sig0(ii,jj),pval0(ii,jj)] = ttest2(A,B0);
        [is_sig1(ii,jj),pval1(ii,jj)] = ttest2(A,B1);
        [is_sig2(ii,jj),pval2(ii,jj)] = ttest2(A,B2);
        [is_sig3(ii,jj),pval3(ii,jj)] = ttest2(A,B3);
        [is_sig4(ii,jj),pval4(ii,jj)] = ttest2(A,B4);
        [is_sig5(ii,jj),pval5(ii,jj)] = ttest2(A,B5);
        [is_sig6(ii,jj),pval6(ii,jj)] = ttest2(A,B6);
        [is_sig7(ii,jj),pval7(ii,jj)] = ttest2(A,B7);
        [is_sig8(ii,jj),pval8(ii,jj)] = ttest2(A,B8);
        [is_sig9(ii,jj),pval9(ii,jj)] = ttest2(A,B9);
        [is_sig10(ii,jj),pval10(ii,jj)] = ttest2(A,B10);
        
    end
    p0(ii) = mean(pval0(ii,:));
    p1(ii) = mean(pval1(ii,:));
    p2(ii) = mean(pval2(ii,:));
    p3(ii) = mean(pval3(ii,:));
    p4(ii) = mean(pval4(ii,:));
    p5(ii) = mean(pval5(ii,:));
    p6(ii) = mean(pval6(ii,:));
    p7(ii) = mean(pval7(ii,:));
    p8(ii) = mean(pval8(ii,:));
    p9(ii) = mean(pval9(ii,:));
    p10(ii) = mean(pval10(ii,:));
end
plot(1:N, p1);hold on;
plot(1:N, p2);hold on;
plot(1:N, p3);hold on;
plot(1:N, p4);hold on;
plot(1:N, p5);hold on;
plot(1:N, p6);hold on;
plot(1:N, p7);hold on;
plot(1:N, p8);hold on;
plot(1:N, p9);hold on;
plot(1:N, p10);
xlabel('Sample Size N', 'FontSize',18);
ylabel('p-value','FontSize',18);


% Part 3. Now keep the means of the two distributions at 0 and 1 as in part
% 1, but vary the variance of both distributions simultaneiously between 0.1 and 10 and plot the 
% p-values vs the number of numbers drawn as before. Comment on your results.  
%%
N = input('maximum numbers to compare from the two distributions: ')
for ii = 1:N
    for jj = 1:100
        A1 = normrnd(0,0.1,1,ii);
        B1 = normrnd(1,0.1,1,ii);
        A2 = normrnd(0,1,1,ii);
        B2 = normrnd(1,1,1,ii);
        A3 = normrnd(0,2,1,ii);
        B3 = normrnd(1,2,1,ii);
        A4 = normrnd(0,5,1,ii);
        B4 = normrnd(1,5,1,ii);
        A5 = normrnd(0,10,1,ii);
        B5 = normrnd(1,10,1,ii);
        [is_sig1(ii,jj),pval1(ii,jj)] = ttest2(A1,B1);
        [is_sig2(ii,jj),pval2(ii,jj)] = ttest2(A2,B2);
        [is_sig3(ii,jj),pval3(ii,jj)] = ttest2(A3,B3);
        [is_sig4(ii,jj),pval4(ii,jj)] = ttest2(A4,B4);
        [is_sig5(ii,jj),pval5(ii,jj)] = ttest2(A5,B5);
    end
    p1(ii) = mean(pval1(ii,:));
    p2(ii) = mean(pval2(ii,:));
    p3(ii) = mean(pval3(ii,:));
    p4(ii) = mean(pval4(ii,:));
    p5(ii) = mean(pval5(ii,:));
end
plot(1:N, p1);hold on;
plot(1:N, p2);hold on;
plot(1:N, p3);hold on;
plot(1:N, p4);hold on;
plot(1:N, p5);
xlabel('Sample Size N', 'FontSize',18);
ylabel('p-value','FontSize',18);
legend({'0.1','1','2','5','10'},'FontSize', 12);



