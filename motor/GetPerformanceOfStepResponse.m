
function OverShoot = GetPerformanceOfStepResponse(y, stepvalue)
% ������Mp:��󳬵����涨Ϊ����̬�ڼ����������Ӧ���������ֵ�����ƫ����
% ������
OSValue = max(y);
OverShoot = (OSValue - stepvalue)/stepvalue;
end

