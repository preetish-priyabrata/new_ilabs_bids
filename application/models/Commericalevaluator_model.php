<?php
class Commericalevaluator_model extends CI_Model{
  public function __construct() {
      parent::__construct();
        $this->load->database();
  }
 public function commerical_evaluator_bid_new_list($value=''){
  	$status='1';
  	$this->db->select('*');
    $this->db->from('master_bid_commericalevaluation');
      $this->db->join('master_bid_commerical', ' (master_bid_commerical.Slno_bid = master_bid_commericalevaluation.master_bid_id  AND master_bid_commericalevaluation.status_bid=0 ) ', 'right outer' );
                // $this->db->join('city', 'city.user_id = users.id','left');
      $this->db->where('master_bid_commerical.status_bid', $status); 
      $this->db->where('master_bid_commericalevaluation.technical_id_person', $value); 
      $query = $this->db->get();
      // echo $this->db->last_query();			
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