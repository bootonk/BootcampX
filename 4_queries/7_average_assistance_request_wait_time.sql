SELECT AVG(started_at - created_at) as average_wait_time
FROM assistance_requests;

-- assistance_requests.created_at, started_at