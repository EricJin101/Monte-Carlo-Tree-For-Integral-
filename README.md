# Monte-Carlo-Tree-For-Integral-
function[J]= MyFirstMonteCarlo(~,~)
integral = 0;
for t=0:50;
    n = 10^7;%随机点有n对
    INF = 1;%x取值范围是0-1；
    Array = rand(n,2);%随机点包括了n行两列数组，用于模拟x,y的值
    tem = [INF 0;0 1];%将x的取值范围扩大到0-INF时所用的矩阵
    array = Array*tem;%将x取值范围扩大，实际INF等于1的时候，每一次的取值区间长度都是1
    transf = ones(n,2);%转换下一次计算
    transftem = [0 0;t 0];
    Transf = transf*transftem;%用于加，相当于把0-1取值范围改成了1-2
    array = array + Transf;
    j=0;
    for i=1:n
        if (array(i,2)<=1/(1+(array(i,1)^2)))
            j=j+1;
        end
    end
integral = integral + j*INF/n;
end
J = integral;
