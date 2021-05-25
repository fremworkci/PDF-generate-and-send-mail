<!DOCTYPE html>
<html>
<head>
	<title>User Profile</title>
	<?php include("css.php"); ?>
</head>
<body>
<div class="container">
	<table class="table">
		<tr>
			<th>Id</th>
			<th>Name</th>
			<th>Email</th>
			<th>Mobile</th>
			<th>DOB</th>
			<th>Image</th>
		</tr>
		<?php foreach($data as $row) { ?>
			<tr>
				<td><?php echo $row->id; ?></td>
				<td><?php echo $row->name; ?></td>
				<td><?php echo $row->email; ?></td>
				<td><?php echo $row->mobile; ?></td>
				<td><?php echo $row->date; ?></td>
				<td><img src="<?php echo base_url('img/'.$row->pic) ?>" style='width:80px;'></td>
			</tr>
		<?php } ?>
	</table>
	<?php echo $this->pagination->create_links(); ?>
</div>
</body>
</html>