function dy = odefun(t,y)
global k1;
global km1;
global k2;
dy = zeros(4,1); 
dy(1)=-k1*y(1)*y(2)+km1*y(3);
dy(2)=-k1*y(1)*y(2)+k2*y(3)+km1*y(3);
dy(3)=k1*y(1)*y(2)-km1*y(3)-k2*y(3);
dy(4)=k2*y(3);
end
