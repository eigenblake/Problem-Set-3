%First Parameterization
rng(111);
mu = [0, 1, 1, 1, 1];
sigma = [1, 0, 0, 0, 0
    0, 1, 0, 0, 0
    0, 0, 1, 0, 0
    0, 0, 0 , 1, 0
    0, 0, 0, 0, 1];
n = 100000;
samples = mvnrnd(mu, sigma, n);
data = (samples);


%%%%%2%%%%%
%Demand Curve
agg = data(:);
agg = sort(agg, 'descend');
quantity = 1:length(agg);
plot(quantity, agg);

%Revenue Curve
revenue = [quantity', agg];
revenue(:, 3) = revenue(:, 1) .* revenue(:, 2);
plot(quantity, revenue(:, 3));
[~, sorting_index] = sort(revenue(:, 3), 'descend'); 
max_revenue = revenue(sorting_index, :);
qmax = max_revenue(1,1);
pmax = max_revenue(1,2);
profit = qmax*pmax;



%%%%%3%%%%%
bagg = sum(data, 2);
bagg = sort(bagg, 'descend');
bquantity = 1:length(bagg);
plot(bquantity, bagg);

%Bundle Revenue Curve
brevenue = [bquantity', bagg];
brevenue(:, 3) = brevenue(:, 1) .* brevenue(:, 2);
plot(bquantity, brevenue(:, 3));
[~, bsorting_index] = sort(brevenue(:, 3), 'descend');
bmax_revenue = brevenue(bsorting_index, :);
bqmax = bmax_revenue(1,1);
bpmax = bmax_revenue(1,2);
bprofit = bqmax*bpmax;


%%%%%4%%%%%
%%Book 1%%
data1 = sort(data(:, 1), 'descend');
quantity1 = 1:length(data);
plot(quantity1, data1);
%Revenue, Book 1
revenue1 = [quantity1', data1(:, 1)];
revenue1(:, 3) = revenue1(:, 1) .* revenue1(:, 2);
plot(quantity1, revenue1(:, 3));
%Optimality
[~, sorting_index1] = sort(revenue1(:, 3), 'descend');
max_revenue1 = revenue1(sorting_index1, :);
qmax1 = max_revenue1(1,1);
pmax1 = max_revenue1(1,2);
profit1 = qmax1*pmax1;


%%Book 2%%
data2 = sort(data(:, 2), 'descend');
quantity2 = 1:length(data);
plot(quantity2, data2);
%Revenue, Book 2
revenue2 = [quantity2', data2(:, 1)];
revenue2(:, 3) = revenue2(:, 1) .* revenue2(:, 2);
plot(quantity2, revenue2(:, 3));
%Optimality
[~, sorting_index2] = sort(revenue2(:, 3), 'descend');
max_revenue2 = revenue2(sorting_index2, :);
qmax2 = max_revenue2(1,1);
pmax2 = max_revenue2(1,2);
profit2 = qmax2*pmax2;


%%Book 3%%
data3 = sort(data(:, 3), 'descend');
quantity3 = 1:length(data);
plot(quantity3, data3);
%Revenue, Book 3
revenue3 = [quantity3', data3(:, 1)];
revenue3(:, 3) = revenue3(:, 1) .* revenue3(:, 2);
plot(quantity3, revenue3(:, 3));
%Optimality
[~, sorting_index3] = sort(revenue3(:, 3), 'descend');
max_revenue3 = revenue3(sorting_index3, :);
qmax3 = max_revenue3(1,1);
pmax3 = max_revenue3(1,2);
profit3 = qmax3*pmax3;


%%Book 4%%
data4 = sort(data(:, 4), 'descend');
quantity4 = 1:length(data);
plot(quantity4, data4);
%Revenue, Book 3
revenue4 = [quantity4', data4(:, 1)];
revenue4(:, 3) = revenue4(:, 1) .* revenue4(:, 2);
plot(quantity4, revenue4(:, 3));
%Optimality
[~, sorting_index4] = sort(revenue4(:, 3), 'descend');
max_revenue4 = revenue4(sorting_index4, :);
qmax4 = max_revenue4(1,1);
pmax4 = max_revenue4(1,2);
profit4 = qmax4*pmax4;


%%Book 5%%
data5 = sort(data(:, 5), 'descend');
quantity5 = 1:length(data);
plot(quantity5, data5);
%Revenue, Book 3
revenue5 = [quantity5', data5(:, 1)];
revenue5(:, 3) = revenue5(:, 1) .* revenue5(:, 2);
plot(quantity5, revenue5(:, 3));
%Optimality
[~, sorting_index5] = sort(revenue5(:, 3), 'descend');
max_revenue5 = revenue5(sorting_index5, :);
qmax5 = max_revenue5(1,1);
pmax5 = max_revenue5(1,2);
profit5 = qmax5*pmax5;

cprofit = profit1 + profit2 + profit3 + profit4 + profit5


