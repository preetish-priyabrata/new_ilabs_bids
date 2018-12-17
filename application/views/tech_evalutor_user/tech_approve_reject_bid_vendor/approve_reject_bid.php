<?php 
$technical_email_id=$this->session->userdata('technical_email_id');
if(empty($technical_email_id)){
	
	redirect('tech-evalutor-logout-by-pass');
}
/**
* @param  string $value  [slno_vendor]
* @param  string $value1 [master_bid_id / serial no]
* @param  string $value2 [category ]
*/
$value=$value;
$value1=$value1;
$value2=$value2;
// $data_array_check = array('token_id'=>$token, 'master_bid_id'=>$master_bid_id, 'vendor_id'=>$Vendor_email_id,  'bid_user_slno'=>$value_slno );
$result_file=$this->tech_eva_db->technical_evalutor_get_vendor_files($value1,$value);
if($result_file['no_bid_vendors']==2){	
	$this->session->set_flashdata('error_message',  'No File Is attach found For This Vendor');
    redirect('user-technical-evalutor-home');
}
$result_drafted=$this->tech_eva_db->technical_evalutor_get_bid_information($value1);
$bid_list=$result_drafted['bid_list'][0];
?>

<div class="sidebar-bg"></div>
		<!-- end #sidebar -->
		
		<!-- begin #content -->
		<div id="content" class="content">
			<!-- begin breadcrumb -->
			<ol class="breadcrumb pull-right">
				<li class="breadcrumb-item active"><a href="#" class="fa fa-home ">Home</a></li>
				<!-- li class="breadcrumb-item"><a href="javascript:;">Page Options</a></li>
				<li class="breadcrumb-item active">Page with Transparent Sidebar</li> -->
			</ol>
			<!-- end breadcrumb -->
			<!-- begin page-header -->
			<!-- <h1 class="page-header">Page with Transparent Sidebar <small>header small text goes here...</small></h1> -->
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
			 ////////////////////////////
			 // print_r($result_file); //
			 ////////////////////////////
			 // Array ( [no_bid_vendors] => 1 [bid_vendors_list_file] => Array ( [0] => stdClass Object ( [Slno_token] => 7 [token_no] => RCjVxtKL [bid_id_vendor] => 2 [master_bid_id] => 1 [vendor_id] => ven121@gmail.com [submitted_status] => 1 [date_creation] => 2018-12-10 [date_updation] => 2018-12-17 12:18:50 [comment] => [slno_tech_file] => 4 [token_id] => RCjVxtKL [file_name] => aLpqK--J.jpg [file_attach] => 2018-12-10-aLpqK--J.jpg [status] => 1 [date_entry] => 2018-12-10 [time_entry] => 20:21:51 [bid_user_slno] => 2 ) [1] => stdClass Object ( [Slno_token] => 7 [token_no] => RCjVxtKL [bid_id_vendor] => 2 [master_bid_id] => 1 [vendor_id] => ven121@gmail.com [submitted_status] => 1 [date_creation] => 2018-12-10 [date_updation] => 2018-12-17 12:18:50 [comment] => [slno_tech_file] => 5 [token_id] => RCjVxtKL [file_name] => 2 [file_attach] => 2018-12-10-care.png [status] => 1 [date_entry] => 2018-12-10 [time_entry] => 20:22:41 [bid_user_slno] => 2 ) [2] => stdClass Object ( [Slno_token] => 7 [token_no] => RCjVxtKL [bid_id_vendor] => 2 [master_bid_id] => 1 [vendor_id] => ven121@gmail.com [submitted_status] => 1 [date_creation] => 2018-12-10 [date_updation] => 2018-12-17 12:18:50 [comment] => [slno_tech_file] => 6 [token_id] => RCjVxtKL [file_name] => test [file_attach] => 2018-12-10-logo.jpg [status] => 1 [date_entry] => 2018-12-10 [time_entry] => 20:23:20 [bid_user_slno] => 2 ) ) ) 
			 ?>

			<!-- begin panel -->
			<div class="panel panel-inverse">
				<div class="panel-heading">
					<div class="panel-heading-btn">
						
						<a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-success" data-click="panel-reload"><i class="fa fa-redo"></i></a>
						<a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-warning" data-click="panel-collapse"><i class="fa fa-minus"></i></a>
						<a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-danger" data-click="panel-remove"><i class="fa fa-times"></i></a>
					</div>
					<h4 class="panel-title">Submiited Information Of bid Ref no :- <?=$bid_list->bid_ref?></h4>
				</div>
				<div class="panel-body">
					<div class="row">
						<table class="table table-bordered" cellpadding="10" cellspacing="1" width="100%">
	                        <thead>
	                            <tr>
	                                <th><strong>File Name</strong></th>
	                                <th><strong>Click View</strong></th>
	                               
	                            </tr>
	                        </thead>
	                        <tbody>
	                            <?php foreach($result_file['bid_vendors_list_file'] as $key_files){ ?>
	                                <tr>
	                                    <td><strong><?=$key_files->file_name?></strong></td>
	                                    <td><strong><a target="_blank" href="<?=base_url()?>upload_files/vendor_file_tech/<?=$key_files->file_attach?>">Click View</a> </strong></td>
	                                   
	                                </tr>


	                            <?php }?>

	                        </tbody>
	                    </table>						
					</div>
					<form method="POST" action="<?=base_url()?>technical-evalutor-get-approved-reject-save">
						<div class="row">
							<div class="col-lg-12">

								<input type="hidden" name="value" value="<?=$value?>">
								<input type="hidden" name="value1" value="<?=$value1?>">
								<input type="hidden" name="value2" value="<?=$value2?>">
								<input type="hidden" name="Slno_token" value="<?=$result_file['bid_vendors_list_file'][0]->Slno_token?>">
								<input type="hidden" name="token_no" value="<?=$result_file['bid_vendors_list_file'][0]->token_no?>">
								<input type="hidden" name="vendor_id" value="<?=$result_file['bid_vendors_list_file'][0]->vendor_id?>">
								


								<!-- switcher -->
								<div class="form-group row m-b-15">
									<label class="col-form-label col-md-3" for="date_closed_bid">Resubmission</label>						
								<!-- <label for="">Reject</label> -->
								<div class="switcher col-md-3">
									
								  	<input type="checkbox" name="switcher_checkbox_1" id="switcher_checkbox_1" checked="true" value="1">
								  <label for="switcher_checkbox_1"></label>
								</div>							
									<label class="col-form-label col-md-3 pull-right" for="date_closed_bid">Approve</label>
								</div>
									<div class=" form-group row m-b-15">
										<label class="col-form-label col-md-3"> Comment</label>
										<div class="col-md-9">
											<textarea class="form-control" name="comment" id="comment" rows="4"></textarea>
										</div>
									</div>
							</div>

						</div>
						<div class="form-group row pull-right">
                            <div class="col-md-12">
                                <button type="submit" class="btn btn-sm btn-primary m-r-5">Submited</button>
                                <a  href="<?=base_url()?>user-technical-evalutor-home" class="btn btn-sm btn-default">Cancel</a> 
                            </div>
                        </div>
					</form>
					
				</div>
			</div>
			<!-- end panel -->
		</div>
		<!-- end #content -->

		<script type="text/javascript">
    	$(document).ready(function(){
    		$("input[type=checkbox]").on("change", function(){
			    if($(this).is(":not(:checked)")){
			    	$('#comment').prop('required',true);
			    }else{
			    	$('#comment').prop('required',false);
			    }
			});
	        // $("input[type='checkbox']").click(function(){
	        // 	var radioValue = $("input[name='switcher_checkbox_1']:checked").val();
	        //     if(radioValue==1){
	        //         alert('hi')
	        //     }
	        // });
	        
	    });
</script>