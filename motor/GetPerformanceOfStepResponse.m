
function OverShoot = GetPerformanceOfStepResponse(y, stepvalue)
% 超调量Mp:最大超调量规定为在暂态期间输出超过对应于输入的终值的最大偏离量
% 超调量
OSValue = max(y);
OverShoot = (OSValue - stepvalue)/stepvalue;
end

