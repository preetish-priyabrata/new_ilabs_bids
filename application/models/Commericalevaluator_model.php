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
   public function commerical_evaluator_bid_completed_list($value=''){
    $status='6';
    $this->db->select('*');
    $this->db->from('master_bid_commericalevaluation');
      $this->db->join('master_bid_commerical', ' (master_bid_commerical.Slno_bid = master_bid_commericalevaluation.master_bid_id  AND master_bid_commericalevaluation.status_bid=6 ) ', 'right outer' );
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
   /**
     * [technical_evaluator_bid_new_bid_information description]
     * @param  string $value  [contain value of technuical id of technical user]
     * @param  string $value1 [here conatail id of serial id]
     * @return [type]         [description]
     */
    public function commerical_evaluator_bid_new_bid_information($value='',$value1=''){
    $status='1';
    $this->db->select('*');
    $this->db->from('master_bid_commericalevaluation');
      $this->db->join('master_bid_commerical', ' (master_bid_commerical.Slno_bid = master_bid_commericalevaluation.master_bid_id  AND master_bid_commericalevaluation.status_bid=0 ) ', 'right outer' );
      $this->db->join('master_bid_date_details_commerical', 'master_bid_date_details_commerical.master_bid_id = master_bid_commerical.Slno_bid','left');
      $this->db->where('master_bid_commerical.status_bid', $status); 
      $this->db->where('master_bid_commerical.Slno_bid', $value1); 
      $this->db->where('master_bid_commericalevaluation.technical_id_person', $value); 
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
    public function commerical_bid_details_information($value2,$value1){
      if(empty($value2)){
      $data_id = array('status_bid'=>$value1);
      }else if(!empty($value2)){
        $data_id= array('Slno_bid' => $value2,'status_bid'=>$value1);
      }
      $query_mr_files =$this->db->get_where('master_bid_commerical',$data_id);
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
     
    }
    public function commerical_bid_details_information_completed($value2,$value1){
      if(empty($value2)){
      $data_id = array('status_bid'=>$value1);
      }else if(!empty($value2)){
        $data_id= array('Slno_bid' => $value2,'status_bid'=>$value1);
      }
      $query_mr_files =$this->db->get_where('master_bid_commerical',$data_id);
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
     
    }
}