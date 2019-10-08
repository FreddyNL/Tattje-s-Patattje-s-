<?php
/**
* Dit programma heeft tot doel om een willekeurig cijfer tussenn 1 en 6 te dobbel dmv een knop
*
* Laatst wijzigingsdatum ; 07-10-2019
* Door Michali
*/

?>


<!DOCTYPE html>
<html lang="en">
	<style>
	.btn {
		padding: 14px 28px;
		font-size: 16px;
		cursor: pointer;
		display: inline-block;
	}
	.default {color: black;}
	
	</style>

	<head>
		<title>
			Dobbelen via knop
		</title>
	</head>
	<body>
    <button id= button1 class="btn default" onClick='location.href="?button1=1"'>Werp de dobbelsteen</button>
	
<?php

	if(isset($_GET['button1'])){
		gooiDobbelSteen();
	}

	function gooiDobbelSteen(){
		$geschiedenis = array();
		$random = rand(1,6);
		print "<br/>" . $random;
	}
	
	**	<form>
		<input type = "submit">
	*/	</form>
?>


	</body>
</html>
