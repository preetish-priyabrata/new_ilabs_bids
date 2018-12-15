<?php
class Technicalevalutor_model extends CI_Model{
  public function __construct() {
      parent::__construct();
        $this->load->database();
  }
  public function technical_evaluator_bid_new_lists($value=''){
  	$status='1';
  	$this->db->select('*');
    $this->db->from('master_bid_technicalevaluation');
      $this->db->join('master_bid', ' (master_bid.Slno_bid = master_bid_technicalevaluation.master_bid_id  AND master_bid_technicalevaluation.status_bid=1 ) ', 'right outer' );
                // $this->db->join('city', 'city.user_id = users.id','left');
      $this->db->where('master_bid.status_bid', $status); 
      $this->db->where('master_bid_technicalevaluation.technical_id_person', $value); 
      $query = $this->db->get();			
    	if($query->num_rows()==0){
				$data_return = array('no_bid' =>2 );
				return $data_return;
			}else{
				$result_bid=$query->result();
				$data_return = array('no_bid' => 1,'bid_ids_list'=>$result_bid);
				return $data_return;
			}
		}
    /**
     * [technical_evaluator_bid_new_bid_information description]
     * @param  string $value  [contain value of technuical id of technical user]
     * @param  string $value1 [here conatail id of serial id]
     * @return [type]         [description]
     */
    public function technical_evaluator_bid_new_bid_information($value='',$value1=''){
    $status='1';
    $this->db->select('*');
    $this->db->from('master_bid_technicalevaluation');
      $this->db->join('master_bid', ' (master_bid.Slno_bid = master_bid_technicalevaluation.master_bid_id  AND master_bid_technicalevaluation.status_bid=1 ) ', 'right outer' );
      $this->db->join('master_bid_date_details', 'master_bid_date_details.master_bid_id = master_bid.Slno_bid','left');
      $this->db->where('master_bid.status_bid', $status); 
      $this->db->where('master_bid.Slno_bid', $value1); 
      $this->db->where('master_bid_technicalevaluation.technical_id_person', $value); 
      $query = $this->db->get();      
      if($query->num_rows()==0){
        $data_return = array('no_bid' =>2 );
        return $data_return;
      }else{
        $result_bid=$query->result();
        $data_return = array('no_bid' => 1,'bid_ids_list'=>$result_bid);
        return $data_return;
      }
    }
    public function technical_evalutor_get_bid_information($value=''){
      $data_id = array('Slno_bid' => $value );
      $query_mr_files =$this->db->get_where('master_bid',$data_id);
      if($query_mr_files->num_rows() == 0){
        $data_send = array('no_bid' =>2 );
        return $data_send;
        exit;
      }else{
        $results=$query_mr_files->result();
        $data_send = array('no_bid' =>1, 'bid_list'=>$results);
        return $data_send;
        exit;
      }
      # code...
    }
    public function technical_evalutor_get_vendor_information($value=''){
      $this->db->select('*');
    $this->db->from('master_bid_vendor');
      $this->db->join('master_vendor_detail', ' (master_vendor_detail.Vendor_email_id = master_bid_vendor.vendor_id  AND master_vendor_detail.Status=1 ) ', 'right outer' );
                // $this->db->join('city', 'city.user_id = users.id','left');
      // $this->db->where('master_bid.status_bid', $status); 
      $this->db->where('master_bid_vendor.master_bid_id', $value); 
      $query = $this->db->get();  

      //   $data_array_vend = array('master_bid_id' => $value, 'status'=>$value1);
      // $this->db->select('vendor_id');
      // $query = $this->db->get_where('master_bid_vendor',$data_array_vend);
      if($query->num_rows() == 0){
        $data_send = array('no_bid_vendors' =>2 );
        return $data_send;
        exit;
      }else{
        $results=$query->result();
        $data_send = array('no_bid_vendors' =>1, 'bid_vendors_list'=>$results);
        return $data_send;
        exit;
      }
      # code...
    }
}
 