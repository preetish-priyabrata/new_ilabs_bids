<?php

class Vendor_model extends CI_Model {
	public function __construct() {
        parent::__construct();
        $this->load->database();
    }
		/**
		 * [vendor_new_technical_bid_list here is the list new technical bid]
		 * @param  string $value [description]
		 * @return [type]        [description]
		 */
    public function vendor_new_technical_bid_list($value=''){
			$data=array('vendor_id'=>$value,'status_active'=>1);
			$query=$this->db->get_where('master_bid_vendor',$data);
    	if($query->num_rows()==0){
				$data_return = array('no_new_tech' =>2 );
				return $data_return;
			}else{
				$result_data_new_tech=$query->result();
				$data_return = array('no_new_tech' => 1,'new_tech_list'=>$result_data_new_tech );
				return $data_return;
			}
    }
		public function vendor_new_query_tech_title($value='',$value2){
			$data=array('slno_vendor'=>$value,'status_active'=>1,'vendor_id'=>$value2);
			$query=$this->db->get_where('master_bid_vendor',$data);
    	if($query->num_rows()==0){
				$data_return = array('no_new_tech' =>2 );
				return $data_return;
			}else{
				$result_data_new_tech=$query->result();
				$data_return = array('no_new_tech' => 1,'new_tech_list'=>$result_data_new_tech );
				return $data_return;
			}
			// code...
		}
		public function vendor_new_query_list_view($value='',$value2){
			$data=array('bid_slno'=>$value,'Vendor_id'=>$value2);
			$query=$this->db->get_where('master_bid_query',$data);
    	if($query->num_rows()==0){
				$data_return = array('no_new_tech_query' =>2 );
				return $data_return;
			}else{
				$result_data_new_tech=$query->result();
				$data_return = array('no_new_tech_query' => 1,'new_tech_query_list'=>$result_data_new_tech );
				return $data_return;
			}
		}
		public function vendor_new_query_list_view_coomerocal($value='',$value2){
			$data=array('bid_slno'=>$value,'Vendor_id'=>$value2);
			$query=$this->db->get_where('master_bid_query_commerical',$data);
    	if($query->num_rows()==0){
				$data_return = array('no_new_tech_query' =>2 );
				return $data_return;
			}else{
				$result_data_new_tech=$query->result();
				$data_return = array('no_new_tech_query' => 1,'new_tech_query_list'=>$result_data_new_tech );
				return $data_return;
			}
		}
		public function get_vendors_tech_bid_file_list($data){		
			
			$query=$this->db->get_where('master_vendor_file_token',$data);
    		if($query->num_rows()==0){
				$data_return = array('no_file_vendor' =>2 );
				return $data_return;
			}else{
				$result_data_new_tech=$query->result();
				$data_return = array('no_file_vendor' => 1,'file_vendors_list'=>$result_data_new_tech );
				return $data_return;
			}

		}
		// commerical
		 	/**
		 * [vendor_new_technical_bid_list_commerical here is the list new Commerical bid]
		 * @param  string $value [description]
		 * @return [type]        [description]
		 */
    public function vendor_new_technical_bid_list_commerical($value=''){
			$data=array('vendor_id'=>$value,'status_active'=>1);
			$query=$this->db->get_where('master_bid_vendor_commerical',$data);
    	if($query->num_rows()==0){
				$data_return = array('no_new_tech' =>2 );
				return $data_return;
			}else{
				$result_data_new_tech=$query->result();
				$data_return = array('no_new_tech' => 1,'new_tech_list'=>$result_data_new_tech );
				return $data_return;
			}
    }
	
    public function vendor_new_query_tech_title_commerical($value='',$value2){
			$data=array('slno_vendor'=>$value,'status_active'=>1,'vendor_id'=>$value2);
			$query=$this->db->get_where('master_bid_vendor_commerical',$data);
    	if($query->num_rows()==0){
				$data_return = array('no_new_tech' =>2 );
				return $data_return;
			}else{
				$result_data_new_tech=$query->result();
				$data_return = array('no_new_tech' => 1,'new_tech_list'=>$result_data_new_tech );
				return $data_return;
			}
			// code...
}
public function vendor_new_query_list_view_commerical($value='',$value2){
			$data=array('bid_slno'=>$value,'Vendor_id'=>$value2);
			$query=$this->db->get_where('master_bid_query_commerical',$data);
    	if($query->num_rows()==0){
				$data_return = array('no_new_tech_query' =>2 );
				return $data_return;
			}else{
				$result_data_new_tech=$query->result();
				$data_return = array('no_new_tech_query' => 1,'new_tech_query_list'=>$result_data_new_tech );
				return $data_return;
			}
		}

public function vendor_new_tech_view_details_commerical($value='',$value2){
			$data=array('bid_slno'=>$value,'Vendor_id'=>$value2);
			$query=$this->db->get_where('master_bid_query_commerical',$data);
    	if($query->num_rows()==0){
				$data_return = array('no_new_tech_query' =>2 );
				return $data_return;
			}else{
				$result_data_new_tech=$query->result();
				$data_return = array('no_new_tech_query' => 1,'new_tech_query_list'=>$result_data_new_tech );
				return $data_return;
			}
		}

public function vendor_bid_submission_commerical($value='',$value2){
			$data=array('bid_slno'=>$value,'Vendor_id'=>$value2);
			$query=$this->db->get_where('master_bid_query_commerical',$data);
    	if($query->num_rows()==0){
				$data_return = array('no_new_tech_query' =>2 );
				return $data_return;
			}else{
				$result_data_new_tech=$query->result();
				$data_return = array('no_new_tech_query' => 1,'new_tech_query_list'=>$result_data_new_tech );
				return $data_return;
			}
		}

	public function vendor_notification($Vendor_email_id=''){
		$data_notification = array('vendor_id' =>$Vendor_email_id ,'view_status'=>0);
			$query_note=$this->db->get_where('master_vendor_notifications',$data_notification);
			$num_noti=$query_note->num_rows();
			if($num_noti==0){
				$not_fi="";

			}else{
				$not_fi= '<span class="label label-theme m-l-5"> NEW '.$num_noti.'</span>';
			}
			return $not_fi;
		# code...
	}

	// commerical
		 	/**
		 * [vendor_new_technical_bid_list_commerical here is the list new Commerical bid]
		 * @param  string $value [description]
		 * @return [type]        [description]
		 */
    public function vendor_new_commerical_rank_bid($value=''){
			$data=array('vendor_id'=>$value,'status'=>1);
			$query=$this->db->get_where('master_bid_invi_rank_approvals',$data);
    	if($query->num_rows()==0){
				$data_return = array('no_new_tech' =>2 );
				return $data_return;
			}else{
				$result_data_new_tech=$query->result();
				$data_return = array('no_new_tech' => 1,'new_tech_list'=>$result_data_new_tech );
				return $data_return;
			}
    }
     public function vendor_new_commerical_rank_bid_id($value='',$value1=''){
			$data=array('vendor_id'=>$value,'status'=>1,'slno_approve'=>$value1);
			$query=$this->db->get_where('master_bid_invi_rank_approvals',$data);
    	if($query->num_rows()==0){
				$data_return = array('no_new_tech' =>2 );
				return $data_return;
			}else{
				$result_data_new_tech=$query->result();
				$data_return = array('no_new_tech' => 1,'new_tech_list'=>$result_data_new_tech );
				return $data_return;
			}
    }
    public function vendor_new_commerical_rank_calculation($value='',$value1){
    		$get_rank=array();
			$data=array('master_bid_id_com'=>$value);
			// $this->db->order_by('sub_total', "asc");
			$this->db->order_by('sub_total', 'ASC');
			// $this->db->order_by('date', "asc");			
			$query=$this->db->get_where('master_rankorder_item_total',$data);
			// echo $this->db->last_query();
			// print_r($query->result());
			$data_id=array('master_bid_id_com'=>$value,'Vendor_id'=>$value1);
			$this->db->order_by('sub_total', 'ASC');
			$this->db->order_by('Slno_rankorder_item_total', "desc");
			
			$query_rode=$this->db->get_where('master_rankorder_item_total',$data_id);
			// echo $this->db->last_query();
			$resutt=$query_rode->result();
			 $id=$resutt[0]->Slno_rankorder_item_total;
			// print_r($data_id);
			// print_r($query->result());
			// Array ( [0] => stdClass Object ( [Slno_rankorder_item_total] => 1 [master_bid_id_com] => 22 [rankorder_id_slno_total] => 1 [sub_total] => 1253177.09 [total_tax] => 3.56 [total_price] => 1968.56 [user_assumption_charge] => 0.00 [date] => 2018-12-31 19:42:29 [currency_rate] => [Bid_slno] => 132 [currency_name] => [Vendor_id] => ven121@gmail.com ) [1] => stdClass Object ( [Slno_rankorder_item_total] => 2 [master_bid_id_com] => 22 [rankorder_id_slno_total] => 2 [sub_total] => 1253177.11 [total_tax] => 6755 [total_price] => 1259932.00 [user_assumption_charge] => 0.00 [date] => 2018-12-31 19:43:11 [currency_rate] => [Bid_slno] => 131 [currency_name] => [Vendor_id] => vender@ilab.com ) ) 
			$x=0;
			foreach ($query->result() as $key_id) {
				$x++;
				if($key_id->Slno_rankorder_item_total==$id){
					$rank=$x;
					$sub_total=$key_id->sub_total;
				}
				// $get_rank[] = array('Slno_total' => $key_id->Slno_rankorder_item_total,'date_id'=> $key_id->date, 'sub_total'=>$key_id->sub_total);
			}
			$data_return = array('rank' => $rank,'sub_total'=>$sub_total );
			return $data_return;
			 // $rank;
   //  	if($query->num_rows()==0){
			// 	$data_return = array('no_new_tech' =>2 );
			// 	return $data_return;
			// }else{
			// 	$result_data_new_tech=$query->result();
			// 	$data_return = array('no_new_tech' => 1,'new_tech_list'=>$result_data_new_tech );
			// 	return $data_return;
			// }
    }
   
}
