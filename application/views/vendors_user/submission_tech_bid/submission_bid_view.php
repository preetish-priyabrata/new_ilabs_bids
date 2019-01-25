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
<input type="hidden" name="value_slno" id="value_slno" value="<?=$value?>">
										<input type="hidden" name="key_values_slno" id="key_values_slno" value="<?=$key_values_slno?>">
										<input type="hidden" name="master_bid_id" id="master_bid_id" value="<?=$master_bid_id?>">
										<input type="hidden" name="Vendor_email_id" id="Vendor_email_id" value="<?=$Vendor_email_id?>">
<!-- begin #content -->
		<div id="content" class="content">
			<!-- begin breadcrumb -->
			<ol class="breadcrumb pull-right">
				<li class="breadcrumb-item"><a href="javascript:;">Home</a></li>
		      <li class="breadcrumb-item"><a href="javascript:;">Technical Bid</a></li>
				<li class="breadcrumb-item active">Technical Bid View </li>
			</ol>
			<!-- end breadcrumb -->
			<!-- begin page-header -->
			<h1 class="page-header">Technical Bid View</h1>
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
					<h4 class="panel-title">View Technical Bid Details </h4>
				</div>
				<div class="panel-body">
					<h4 class="panel-title ">Title Bid  : <b><?=$result_title['new_tech_list'][0]->title?></b></h4>
					<hr style="height: 2px; background:  green">
					
					<form action="#" >
					
            <div class="row">
            	<div class="col-md-12">
            	<div id="cart-item-files"></div>
            </div>
            </div>
						<div class="form-group row pull-right">
                <div class="col-md-12">
                   
                    <a  href="<?=base_url()?>user-vendor-home" class="btn btn-sm btn-default">Home</a>
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
		var actions_file='files_info_vendors_view';
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
		var value_slno =$('#value_slno').val();
		var value_keys_id=$('#key_values_slno').val();
		var master_bid_id=$('#master_bid_id').val();
        var actions_file='files_uploaded_details';
        var file_name=$('#file_name').val();
        var Vendor_email_id=$('#Vendor_email_id').val();
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
                    	alert('Something went wrong Please check internet connection ');
                    }                        
                }                    
            });
        }else{
            alert('Please Attachment Some file click on upload');
        }
    });
});
</script>