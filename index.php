<?php 
require "student.php"; 
$student = new Student();
?>

<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Document</title>
	
	<link href='http://fonts.googleapis.com/css?family=Libre+Baskerville' rel='stylesheet' type='text/css'>
	<link rel="stylesheet" type="text/css" href="css.css" />

	<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.1/jquery.min.js"></script>
	<script>
		$(document).ready(function(){
			$('#exam_records').on('submit', function(){
				// console.log($('#exam_record').serialize(), $('#exam_record').attr('action'));
				$.post($('#exam_records').attr('action'),
					$('#exam_records').serialize(),
					function(data){
						// console.log(data);
						$('#results').html(data.html);
						$('#add_exam').on('submit', function(){	
							$.post($('#add_exam').attr('action'),
								$('#add_exam').serialize(),
								function(){
									$('#exam_records').submit();
								});

							return false;
						});
					}, "json");

				return false;
			});

			$('#student').on('change', function(){
				$('#exam_records').submit();
			});
		});
	</script>
</head>
<body>
	<h1>Welcome, Teacher!</h1>
	<form action="process.php" method="post" id="exam_records">
		select student:
		<select name="student" id="student">
<?php 		$students = $student->get_all_students();
			foreach ($students as $student): ?>
				<option value="<?= $student['id'] ?>"><?= $student['name'] ?></option>
<?php 		endforeach; ?>
		</select>
		<input type="hidden" name="action" value="get_student" />
		<input type="submit" value="Show Exam Record" />
	</form>
	<div id="results"></div>
</body>
</html>