function[J]= MyFirstMonteCarlo(~,~)
% n = 10^7;%�������n��
% INF = 1;%xȡֵ��Χ��0-1��
% Array = rand(n,2);
% tem = [INF 0;0 INF];
% array = Array*tem;
% j=0;
% for i=1:n
% if (array(i,2)<=((sin(array(i,1)))/(array(i,1))))
%     j=j+1;
% end
% end
% J = j*INF/n;
integral = 0;
for t=0:1000;
    n = 10^7;%�������n��
    INF = 1;%xȡֵ��Χ��0-1��
    Array = rand(n,2);%����������n���������飬����ģ��x,y��ֵ
    tem = [INF 0;0 1];%��x��ȡֵ��Χ����0-INFʱ���õľ���
    array = Array*tem;%��xȡֵ��Χ����ʵ��INF����1��ʱ��ÿһ�ε�ȡֵ���䳤�ȶ���1
    transf = ones(n,2);%ת����һ�μ���
    transftem = [0 0;t 0];
    Transf = transf*transftem;%���ڼӣ��൱�ڰ�0-1ȡֵ��Χ�ĳ���1-2
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