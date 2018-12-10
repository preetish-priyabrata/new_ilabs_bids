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
     

			// $data=array('technical_id_person'=>$value,'status_bid'=>1);
			// $query=$this->db->get_where('master_bid_technicalevaluation',$data);
    	if($query->num_rows()==0){
				$data_return = array('no_bid' =>2 );
				return $data_return;
			}else{
				$result_bid=$query->result();
				$data_return = array('no_bid' => 1,'bid_ids_list'=>$result_bid);
				return $data_return;
			}
		}
}
 