SELECT teachers.name as teacher_name, students.name as student_name, assignments.name as assignment_name, 
assistance_requests.completed_at - assistance_requests.started_at as assignment_request_duration
FROM assistance_requests
JOIN teachers ON teachers.id = teacher_id
JOIN students ON students.id = student_id
JOIN assignments ON assignments.id = assignment_id
ORDER BY assignment_request_duration;
