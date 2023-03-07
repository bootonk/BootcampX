SELECT AVG(completed_at - started_at) as average_assistance_request_duration
FROM assistance_requests;

-- assistance_requests.created_at, assistance_requests.completed_at