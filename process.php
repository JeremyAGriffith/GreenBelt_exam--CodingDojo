<?php 
require 'Student.php';
require 'HTML_Helper.php';

if (isset($_POST)){
	$student = new Student();
	if ($_POST['action'] === 'get_student'){
		// var_dump($_POST);
		$id = mysql_real_escape_string($_POST['student']);
		$exams = $student->get_all_exams_for_student($id);
		$data = array();
		$data['html'] = "<h4 id='record'>Exam Record</h4>";
		$data['html'] .= HTML_Helper::tablefy($exams);
		$data['html'] .= "
			<form action='process.php' method='post' id='add_exam'>
				<h4>Add Record:</h4>
				Subject:
				<input type='text' name='subject' id='subject' /><br />
				Grade:
				<select name='grade'>";
		for ($i=0; $i <= 100; $i+=5) { 
			$data['html'] .= "<option>{$i}</option>";
		}
		$data['html'] .= "
				</select><br />
				Teacher's Notes:
				<textarea name='notes'></textarea><br />
				<input type='hidden' name='action' value='add_exam' />
				<input type='hidden' name='student' value='{$id}' />
				<input type='submit' value='Add Record' id='add_record' />
			</form>";
		echo json_encode($data);
		// echo $data['html'];
	} else if ($_POST['action'] === 'add_exam'){
		$id = mysql_real_escape_string($_POST['student']);
		$subj = mysql_real_escape_string($_POST['subject']);
		$grade = mysql_real_escape_string($_POST['grade']);
		$notes = mysql_real_escape_string($_POST['notes']);
		$student->add_new_exam_for_student($id, $subj, $grade, $notes);
	}
} else {
	header("Location: index.php");
}
?>