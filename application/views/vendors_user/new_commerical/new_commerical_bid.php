<?php
$Vendor_email_id=$this->session->userdata('Vendor_email_id');
if(empty($Vendor_email_id)){

	redirect('vendor-logout-pass');
}
$result_new_bid=$this->vendor_db_users->vendor_new_technical_bid_list_commerical($Vendor_email_id)
?>
<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.19/css/jquery.dataTables.min.css">
<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/buttons/1.5.2/css/buttons.dataTables.min.css">

<!-- begin #content -->
		<div id="content" class="content">
			<!-- begin breadcrumb -->
			<ol class="breadcrumb pull-right">
				<li class="breadcrumb-item"><a href="javascript:;">Home</a></li>
				<!-- <li class="breadcrumb-item"><a href="javascript:;">Page Options</a></li>
				<li class="breadcrumb-item active">Page with Top Menu</li> -->
			</ol>
			<!-- end breadcrumb -->
			<!-- begin page-header -->
			<h1 class="page-header">New Commercial Bid<small></small></h1>
			<!-- end page-header -->
			<?php if(!empty($this->session->flashdata('success_message'))){?>
			<div class="alert alert-success fade show">
			  <span class="close" data-dismiss="alert">×</span>
			  <strong>Success!</strong>
			  <?=$this->session->flashdata('success_message')?>
			  <!-- <a href="#" class="alert-link">an example link</a>.  -->
			</div>
			<?php
			} if(!empty($this->session->flashdata('error_message'))){?>
			<div class="alert alert-danger fade show">
			  <span class="close" data-dismiss="alert">×</span>
			  <strong>Error !</strong>
			  <?=$this->session->flashdata('error_message')?>
			  <!-- <a href="#" class="alert-link">an example link</a>.  -->
			</div>
			<?php
			}
			 // print_r($this->session->userdata());
			 ?>
			<!-- begin panel -->
			<div class="panel panel-inverse">
				<div class="panel-heading">
					<div class="panel-heading-btn">

						<a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-success" data-click="panel-reload"><i class="fa fa-redo"></i></a>
						<a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-warning" data-click="panel-collapse"><i class="fa fa-minus"></i></a>
						<a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-danger" data-click="panel-remove"><i class="fa fa-times"></i></a>
					</div>
					<h4 class="panel-title">New Bid</h4>
				</div>
				<div class="panel-body">
					<div class="table-responsive">
						<?php
						// print_r($result_new_bid);
						?>
						<table class="display table vendor_example" style="width:100%">
					        <thead>
					            <tr>
					                <th>Slno .</th>
					                <th>Bid Ref</th>
					                <th>View Status</th>
									<th>Bid Type Category</th>
					                <th>Type of Bid</th>
					                <th>Bid Start date</th>
					              	<th>Bid End date</th>
					              	<th>Counter</th>
					              	<th>Action</th>
					              	<th>Query</th>

					            </tr>
					        </thead>
					        <tbody>
					        	<?php
  										$x=0;
											if($result_new_bid['no_new_tech']==1){

													foreach ($result_new_bid['new_tech_list'] as  $key_technical) {

													$mode_bid=$key_technical->mode_bid;
													switch ($mode_bid) {
														case 'Simple Bid':
															$page="user-vendor-bid-view-commerical-details";
															break;
														case 'Closed Bid':
															$page="user-vendor-bid-view-commerical-details";
															break;
														case 'Rank Order Bid':
															$page="user-vendor-bid-view-commerical-details";
															break;
														default:
															# code...
															break;
													}
														$x++;
  									?>
													  <tr>
													    	<td><?php echo $x;?></td>
													    	<td><?php echo $key_technical->bid_ref;?></td>
													     	<td>
																	<?php
																			$status_view=$key_technical->status_view;
																			switch ($status_view) {
																				case '5':
																					echo "<b style='color:orange;'>Not Viewed</b>";
																					break;
																				case '6':
																							echo "<b style='color:blue;'>Viewed</b>";
																						break;
																			  case '7':
																							echo "<b style='color:green;'>Submited</b>";
																						break;
																				 case '8':
																							echo "<b style='color:green;'>Resubmited</b>";
																						break;

																				default:
																					// code...
																					break;
																			}
																	?>
															  </td>
																<td>
																	<?php
																			echo "<b style='color:blue;'>".$key_technical->material_category_name."</b>";

																	?>
															  </td>
													     	<td><?php echo $key_technical->mode_bid;?></td>
													     	<td><?php echo $key_technical->date_start;?></td>
													     	<td>
													     		<?php $date=$key_technical->date_end." 16:18:00"?>
													     		<?php echo $dates=$key_technical->date_end?>
													     		<input type="hidden" name="date_end" id="date_end<?=$x?>" value="<?php echo ($date);?>"  readonly class="form-control-plaintext"></td>
													     	<td><p id="demo<?=$x?>"></p></td>
																<td><a id="viewer_id<?=$x?>" href="<?=base_url().$page?>/<?=$key_technical->slno_vendor?>/<?=$key_technical->category?>/<?=$status_view?>" class="btn btn-sm btn-success">View</a></td>
																<td><a href="<?=base_url()?>user-vendor-commerical-query-panel/<?=$key_technical->slno_vendor?>" class="btn btn-sm btn-warning">Query</a></td>
													  </tr>
  												<?php }
												}
													?>

</tbody>
  </table>
    </div>
  </div>
</div>
</div>

<script type="text/javascript">


	

// A $( document ).ready() block.
$( document ).ready(function() {
	for (var i=1;i<=<?=$x?>;i++) {
		 var fiveMinutes =$('#date_end'+i).val(),
	        display = document.querySelector('#demo'+i);
	    startTimer(fiveMinutes, display,i);
	    // alert(fiveMinutes);
	}
	

});
function startTimer(duration, display,id) {
	var countDownDate =  new Date(duration).getTime();
	// alert(duration);
    // Update the count down every 1 second
	var x = setInterval(function() {

	  // Get todays date and time
	  var now = new Date().getTime();

	  // Find the distance between now and the count down date
	  var distance = new Date(duration).getTime() - now;
	  // alert(distance);
	  // Time calculations for days, hours, minutes and seconds
	  var days = Math.floor(distance / (1000 * 60 * 60 * 24));
	  var hours = Math.floor((distance % (1000 * 60 * 60 * 24)) / (1000 * 60 * 60));
	  var minutes = Math.floor((distance % (1000 * 60 * 60)) / (1000 * 60));
	  var seconds = Math.floor((distance % (1000 * 60)) / 1000);
	 	
	  // Display the result in the element with id="demo"
	  // document.getElementById("demo"+id).innerHTML = days + "d " + hours + "h " + minutes + "m " + seconds + "s ";
	   display.textContent =days + " Days " + hours + " Hours " + minutes + " Min " + seconds + " Sec ";

	  // If the count down is finished, write some text
	  if (distance < 0) {
	    clearInterval(x);
	    document.getElementById("viewer_id"+id).style.display = "none"; 
	    document.getElementById("viewer_id"+id).removeAttribute("href");
	    // $("#viewer_id"+id)hide();
	    document.getElementById("demo"+id).innerHTML = "EXPIRED";
	    document.getElementById("demo"+id).style.color = "red"; 

	  }
	}, 1000);
}
	// Set the date we're counting down to

</script>