<?php 
require 'db.php';

class Student
{
	public function get_all_students()
	{
		global $database;
		$query = "SELECT id, name FROM students";
		return $database->fetch_all($query);
	}

	public function get_all_exams_for_student($student_id)
	{
		global $database;
		$query = "SELECT id as exam_id, subject, grade, status, notes as teachers_notes 
			FROM exams WHERE student_id={$student_id}";
		return $database->fetch_all($query);
	}

	public function add_new_exam_for_student($student_id, $subject, $grade, $notes)
	{
		global $database; 
		$status = ($grade>=75) ? "Passed" : "Failed";
		$query = "INSERT INTO exams(student_id, subject, grade, status, notes ,created_at, updated_at) 
			VALUES({$student_id}, '{$subject}', {$grade}, '{$status}', '{$notes}', NOW(), NOW());";
		$database->db->query($query);
	}
}

?>