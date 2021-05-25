<!DOCTYPE html>
<html>
<head>
	<title></title>
	<?php include("css.php"); ?>
	<style>
		#modal
		{
			background-color: rgba(0,0,0,0.7);
			height: 100%;
			width: 100%;
			position: fixed;
			top: 0px;
			left: 0px;
			display: none;
		}
		#modal-form
		{
			background-color: white;
			width: 30%;
			height: auto;
			margin-left: 30%;
			margin-top: 100px;
			border-radius: 8px;
			padding: 10px;
			position: absolute;
		}
		#close-btn
		{
			background-color: red;
			color: white;
			width: 30px;
			height: 30px;
			position: absolute;
			top: -15px;
			right: -15px;
			text-align: center;
			border-radius: 8px;
			cursor: pointer;
		}
	</style>
</head>
<body>
<div class="container">
	<table class="table">
		<?php  foreach($data as $item) { ?>
			<tr>
				<td><?= $item->id; ?></td>
				<td><?= $item->name; ?></td>
				<td><?= $item->email; ?></td>
				<td><a href="<?php echo base_url('Home/pdf?id=').$item->id ?>">Create PDF</a></td>
			</tr>
		<?php } ?>
	</table>
	
	<form method="post" action="<?php echo base_url('Home/send_mail'); ?>">
		<input type="submit" name="action" value="Send pdf" class="btn btn-info">
	</form><br><br>

</div>
<script src="<?php echo base_url('assist/jquery.js'); ?>"></script>

</body>
</html>


