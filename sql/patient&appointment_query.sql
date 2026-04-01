-- No Show Rate --
select 
round(sum(case when status = 'No-show' then 1 else 0 end) * 100.0/count(*), 2)  as no_show_rate
from appointments;

-- Frequent Patient -- 
select patient_id, count(*) as visits
from appointments
group by patient_id
order by visits desc
limit 10;

-- Revenue Lost (No-Show) --
select SUM(fee) as lost_revenue
from appointments
where status = 'No-Show'
;

-- Doctor Workload --
select 
doctor,
COUNT(appointment_id) as total_appointments
from appointments 
group by doctor
;

-- Department Performance --
select
department,
COUNT(*) AS total_appointments
FROM appointments
GROUP BY department
;

-- Daily Appointments Trend --
select
appointment_date,
COUNT(*) as total
from appointments
group by appointment_date
order by appointment_date
;