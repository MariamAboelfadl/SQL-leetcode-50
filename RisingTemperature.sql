select w2.id 
from weather w1, weather w2
where DATEDIFF(day,w1.recordDate,w2.recordDate)=1 and  w2.temperature  > w1.temperature
