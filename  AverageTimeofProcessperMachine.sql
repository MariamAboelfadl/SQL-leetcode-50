Select machine_id, 
Round(Sum (case
when activity_type = 'start' then timestamp*(-1)
else timestamp
end)/count(distinct process_id),3)
as processing_time
 from activity 
 group by machine_id