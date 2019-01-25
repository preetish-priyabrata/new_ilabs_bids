<?php
$Vendor_email_id=$this->session->userdata('Vendor_email_id');
if(empty($Vendor_email_id)){

	redirect('vendor-logout-pass');
}
$value=$value;
$key_values_slno=$token;
$master_bid_id=$master_bid_id;
$result_title=$this->vendor_db_users->vendor_new_query_tech_title($value,$Vendor_email_id);
if($result_title['no_new_tech']!=1){
	$this->session->set_flashdata('error_message', 'Unable find Bid');
	redirect('user-vendor-home');
}
?>
<!-- begin #content -->
		<div id="content" class="content">
			<!-- begin breadcrumb -->
			<ol class="breadcrumb pull-right">
				<li class="breadcrumb-item"><a href="javascript:;">Home</a></li>
		      <li class="breadcrumb-item"><a href="javascript:;">Page Options</a></li>
				<li class="breadcrumb-item active">Page with Top Menu</li>
			</ol>
			<!-- end breadcrumb -->
			<!-- begin page-header -->
			<h1 class="page-header">Creating New Bid For Technical Submission</h1>
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
					<h4 class="panel-title">Create New Technical Bid </h4>
				</div>
				<div class="panel-body">
          <h4 class="panel-title ">Title Bid  : <h5><?=$result_title['new_tech_list'][0]->title?></h5></h4>
          <hr style="height: 2px; background:  green">
          <div class="alert alert-secondary">
            <span style="color: red"> *</span> All mandatory fields shall be duly filled up
        	</div>
					<form action="<?=base_url()?>vendor-tech-file-new-bid-submission" method="POST" >
						<div class="row">
							<div class="col-md-6 col-lg-6">
							 	<div class="form-group row m-b-15">
									<label class="col-form-label col-md-3" for="activity_name">File Name <span style="color: red">*</span></label>
									<div class="col-md-9">
										<input type="hidden" name="value_slno" id="value_slno" value="<?=$value?>">
										<input type="hidden" name="key_values_slno" id="key_values_slno" value="<?=$key_values_slno?>">
										<input type="hidden" name="master_bid_id" id="master_bid_id" value="<?=$master_bid_id?>">
										<input type="hidden" name="Vendor_email_id" id="Vendor_email_id" value="<?=$Vendor_email_id?>">
										<input class="form-control m-b-5" placeholder="Enter File name" name="file_name" id="file_name" type="text" >
										<small class="f-s-12 text-grey-darker">Here enter File name</small>
									</div>
								</div>
							</div>
							<div class="col-md-5 col-lg-5">
							 	<div class="form-group row m-b-15">
									<label class="col-form-label col-md-3">Attach Files  <span style="color: red">*</span></label>
									<div class="col-md-9">
										<input type="file" name="new_file" id="new_file" ><br />
										<small class="f-s-12 text-grey-darker"> Please Attach Files  </small>
									</div>
								</div>
							</div>
              				<div class="col-md-1 col-lg-1">
							 	<div class="form-group row m-b-15">
									<span class="btn btn-sm btn-info" id="sub">Upload</span>
								</div>
							</div>
						</div>
            <div class="row">
            	<div class="col-md-12">
            	<div id="cart-item-files"></div>
            </div>
            </div>
						<div class="form-group row pull-right">
                <div class="col-md-12">
                    <button type="submit" class="btn btn-sm btn-primary m-r-5">Save</button>
                    <a  href="<?=base_url()?>user-vendor-home" class="btn btn-sm btn-default">Cancel</a>
                </div>
            </div>


					</form>
				</div>
			</div>
			<!-- end panel -->
		</div>
		<!-- end #content -->
		<script type="text/javascript">
	function file_uploaded(){
		var value_slno =$('#value_slno').val();
		var value_keys_id=$('#key_values_slno').val();
		var master_bid_id=$('#master_bid_id').val();
		var actions_file='files_info_vendors';
		var Vendor_email_id=$('#Vendor_email_id').val();
		queryString_id = 'actions_file='+actions_file+'&master_bid_id='+master_bid_id+'&value_slno='+value_slno+'&Vendor_email_id='+Vendor_email_id+'&value_keys='+value_keys_id;		
		jQuery.ajax({
			url: "<?php echo base_url(); ?>vendor-file-upload-data",
			
			data:queryString_id,
			type: "POST",
			success:function(data){
				$("#cart-item-files").html(data);
			}
		});

	}
		function file_delete(id) {
		var file_slno=id;
		var value_slno =$('#value_slno').val();
		var value_keys_id=$('#key_values_slno').val();
		var master_bid_id=$('#master_bid_id').val();
		var Vendor_email_id=$('#Vendor_email_id').val();     
		var actions_file='files_info_delete';
  //   	
		queryString_id = 'actions_file='+actions_file+'&master_bid_id='+master_bid_id+'&value_slno='+value_slno+'&Vendor_email_id='+Vendor_email_id+'&file_id='+id+'&value_keys='+value_keys_id;	

		jQuery.ajax({
			url: "<?php echo base_url(); ?>vendor-file-upload-data",
			// enctype: 'multipart/form-data',
			data:queryString_id,
			type: "POST",
			success:function(data){
				if(data){
					file_uploaded();
                    alert('Successfull attach file is deleted ');
				}else{
					file_uploaded();
                    alert('Unable attached file deleted');
				}
			}
		});
		// body...
	}
   $(document).ready(function (e) {
   		file_uploaded();
   		$('#sub').on('click', function () {
   			// alert('hello');
   			var value_slno =$('#value_slno').val();
			var value_keys_id=$('#key_values_slno').val();
			var master_bid_id=$('#master_bid_id').val();
        	var actions_file='files_uploaded_details';
        	var file_name=$('#file_name').val();
        	var Vendor_email_id=$('#Vendor_email_id').val();
   //      	var Mr_no = $('#Mr_no').val();
			// var slno_Mr_no = $('#slno_Mr_no').val();
            var file_data = $('#new_file').prop('files')[0];
            if(file_data!=""){
                var form_data = new FormData();
                form_data.append('file', file_data);
                form_data.append('master_bid_id', master_bid_id);
          		form_data.append('value_keys', value_keys_id);
          		form_data.append('value_slno', value_slno);
          		form_data.append('file_name', file_name);
          		form_data.append('actions_file', actions_file);
          		form_data.append('Vendor_email_id',Vendor_email_id);

                $.ajax({
                    url: '<?php echo base_url(); ?>vendor-file-upload-data', // point to server-side controller method
                    dataType: 'text', // what to expect back from the server
                    cache: false,
                    contentType: false,
                    processData: false,
                    data: form_data,
                    type: 'post',
                    success: function (response) {
                    	if(response==1){
                    		file_uploaded();
                    		alert('File Is successfully attached ');
                    		 
                    	}else if(response==2){
                    		alert('Same File name is found ');
                    	}else{
                    		alert('Some thing went worng Please check internet connection ');
                    	}
                        
                    }
                    
                });
            }else{
            	alert('Please Attachment Some file click on upload');
            }

        });
   	});
  
</script>