<html>
<head>
<title>Hello</title>
</head>
<body>
	<form action="action.php" method="post">
		<p>Ваше имя: <input type="text" name="name" /></p>
		<p>Ваш возраст: <input type="text" name="age" /></p>
		<p><input type="submit" /></p>
	</form>
	<?php 
	echo 'Hello  ' . htmlspecialchars($_GET["name"]); 
	echo htmlspecialchars($_GET["age"]); 
	?>
</body>
</html>
