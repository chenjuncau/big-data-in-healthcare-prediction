-- ******************************************************
-- 1: Create mp_hourly_cohort table
-- ******************************************************
DROP TABLE IF EXISTS mp_hourly_cohort;
CREATE TABLE mp_hourly_cohort as
select
  co.subject_id, co.hadm_id, co.icustay_id
  , generate_series
  (
    -24,
    ceil(extract(EPOCH from outtime-intime)/60.0/60.0)::INTEGER
  ) as hr
from mp_cohort co
where co.excluded = 0
order by co.subject_id, co.hadm_id, co.icustay_id;