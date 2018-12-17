<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Technicalevalutor extends CI_Controller {
    public function __construct(){
            parent::__construct();
            // Loading my model which will use
            $this->load->model('user_model', 'user');
            $this->load->model('approver_model', 'approver_user');
            $this->load->model('design_model', 'design_user');
            $this->load->model('procurement_model', 'procurement_user');
            $this->load->model('buyer_model','buyer_user');
            $this->load->model('vendor_model','vendor_db_users');
            $this->load->model('technicalevalutor_model','tech_eva_db');
            // imedate database link
            $this->load->database();

            //Load session library
         $this->load->library('session');
         $this->load->library('user_agent');
         $this->load->library('encryption');
         $this->load->library('form_validation');


    }
    public function tech_evalutor_home($value=''){
      $scripts='';
            $data=array('title' =>"Technical Evalutor User Dashboard",'script_js'=>$scripts,'menu_status'=>'','sub_menu'=>'','sub_menu_1'=>'','sub_menu_2'=>'','sub_menu_3'=>'','sub_menu_1'=>'','sub_menu_2'=>'','sub_menu_3'=>'');
            $this->load->view('template/template_header',$data);
            $this->load->view('tech_evalutor_user/template/template_top_head');
            $this->load->view('tech_evalutor_user/template/template_side_bar',$data);
            $this->load->view('tech_evalutor_user/user_dashboard');
            $this->load->view('template/template_footer',$data);
    }

    public function technical_evaluator_bid_new_list($value=''){
      $scripts='<script src="https://cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js"></script><script src="https://cdn.datatables.net/buttons/1.5.2/js/dataTables.buttons.min.js"></script><script src="https://cdnjs.cloudflare.com/ajax/libs/jszip/3.1.3/jszip.min.js"></script><script src=" https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.36/pdfmake.min.js"></script><script src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.36/vfs_fonts.js"></script><script src="https://cdn.datatables.net/buttons/1.5.2/js/buttons.html5.min.js"></script><script src="https://cdn.datatables.net/buttons/1.5.2/js/buttons.colVis.min.js"></script> <script src="'.base_url().'file_css_admin/own_js.js"></script>';
          $data=array('title' =>"New Bid List",'script_js'=>$scripts,'menu_status'=>'2','sub_menu'=>'2','sub_menu_1'=>'','sub_menu_2'=>'','sub_menu_3'=>'','sub_menu_1'=>'','sub_menu_2'=>'','sub_menu_3'=>'');

            $this->load->view('template/template_header',$data);
            $this->load->view('tech_evalutor_user/template/template_top_head');
            $this->load->view('tech_evalutor_user/template/template_side_bar',$data);
            $this->load->view('tech_evalutor_user/technical_bid_new/tech_evaluator_technical_bid_new_lists',$data);
            $this->load->view('template/template_footer',$data);
    }
    /**
     * [technical_evaluator_view_details_technical_bid_new description]
     * @param  string $value [Slno_bid it contain bid master id which will leaD OTHER WORK]
     * @return [type]        [description]
     */
    public function technical_evaluator_view_details_technical_bid_new($value='',$value1=''){
      $scripts='<script src="https://cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js"></script><script src="https://cdn.datatables.net/buttons/1.5.2/js/dataTables.buttons.min.js"></script><script src="https://cdnjs.cloudflare.com/ajax/libs/jszip/3.1.3/jszip.min.js"></script><script src=" https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.36/pdfmake.min.js"></script><script src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.36/vfs_fonts.js"></script><script src="https://cdn.datatables.net/buttons/1.5.2/js/buttons.html5.min.js"></script><script src="https://cdn.datatables.net/buttons/1.5.2/js/buttons.colVis.min.js"></script> <script src="'.base_url().'file_css_admin/own_js.js"></script>';
          $data=array('title' =>"Detail Information Of bid",'script_js'=>$scripts,'menu_status'=>'2','sub_menu'=>'2','sub_menu_1'=>'','sub_menu_2'=>'','sub_menu_3'=>'','sub_menu_1'=>'','sub_menu_2'=>'','sub_menu_3'=>'','value'=>$value,'value1'=>$value1);
            $this->load->view('template/template_header',$data);
            $this->load->view('tech_evalutor_user/template/template_top_head');
            $this->load->view('tech_evalutor_user/template/template_side_bar',$data);
            if($value1==3){
                 $this->load->view('tech_evalutor_user/technical_bid_new/view_details_technical_bid_new_logistic',$data);
            }else if(($value1==2) || ($value1==1)){
                $this->load->view('tech_evalutor_user/technical_bid_new/view_details_technical_bid_new',$data);
                 
            }else{
                $this->session->set_flashdata('error_message',  'Some thing went worng Try Again!!!!');
                redirect('user-technical-evalutor-home');
            }
           
            $this->load->view('template/template_footer',$data);
    }
    /**
     * [technical_evalutor_get_approved_reject description]
     * @param  string $value  [slno_vendor]
     * @param  string $value1 [master_bid_id / serial no]
     * @param  string $value2 [category ]
     * @return [type]         [description]
     */
    public function technical_evalutor_get_approved_reject($value='',$value1='',$value2=''){
        $scripts='<script src="https://cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js"></script><script src="https://cdn.datatables.net/buttons/1.5.2/js/dataTables.buttons.min.js"></script><script src="https://cdnjs.cloudflare.com/ajax/libs/jszip/3.1.3/jszip.min.js"></script><script src=" https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.36/pdfmake.min.js"></script><script src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.36/vfs_fonts.js"></script><script src="https://cdn.datatables.net/buttons/1.5.2/js/buttons.html5.min.js"></script><script src="https://cdn.datatables.net/buttons/1.5.2/js/buttons.colVis.min.js"></script> <script src="'.base_url().'file_css_admin/own_js.js"></script>';
          $data=array('title' =>"New Bid List",'script_js'=>$scripts,'menu_status'=>'2','sub_menu'=>'2','sub_menu_1'=>'','sub_menu_2'=>'','sub_menu_3'=>'','sub_menu_1'=>'','sub_menu_2'=>'','sub_menu_3'=>'','value'=>$value,'value1'=>$value1,'value2'=>$value2 );

            $this->load->view('template/template_header',$data);
            $this->load->view('tech_evalutor_user/template/template_top_head');
            $this->load->view('tech_evalutor_user/template/template_side_bar',$data);
            $this->load->view('tech_evalutor_user/tech_approve_reject_bid_vendor/approve_reject_bid',$data);
            $this->load->view('template/template_footer',$data);

        # code...
    }
    public function technical_evalutor_get_approved_reject_save($value=''){
     
        $value=$this->input->post('value');  // venderor serial id request
        $value1=$this->input->post('value1'); // bid serial no
        $value2=$this->input->post('value2'); // category
        $Slno_token=$this->input->post('Slno_token'); // tooken no 
        $token_no=$this->input->post('token_no'); // token id
        $vendor_id=$this->input->post('vendor_id'); // vendor emaiol id
        $comment=$this->input->post('comment'); //comment
        $data_id = array('slno_vendor' => $value );
        if(($this->input->post('switcher_checkbox_1'))){ /// if approved
            $array_resubission = array('approval_status' => 1, 'comment'=>$comment,'view_status_approve'=>1);
            $query_upade=$this->db->update('master_bid_vendor',$array_resubission,$data_id);
            if($query_upade){
                $data_token_comment = array('comment' => $comment);
                $update_id = array('Slno_token' => $Slno_token);
                $updae_token_tab=$this->db->update('master_vendor_tech_token_bid',$data_token_comment,$update_id);
                if($updae_token_tab){
                    $data_inserted = array('master_bid'=>$value1, 'vendor_bid_id'=>$value, 'comment'=>$comment, 'status'=>'P', 'active_status'=>1, 'token_no'=>$token_no, 'token_id'=>$Slno_token);
                    $data_inserted=$this->db->insert('master_tech_bid_comment',$data_inserted);
                    if($data_inserted){
                         $this->session->set_flashdata('success_message',  'Sucessfully Approval Of Technical bid ');
                        redirect('user-technical-evaluator-view-details-technical-bid-new/'.$value1.'/'.$value2);
                    }else{
                         $this->session->set_flashdata('error_message',  'Some thing went worng Try Again!!!!!!');
                        redirect('user-technical-evaluator-view-details-technical-bid-new/'.$value1.'/'.$value2);
                    }
                }else{
                    $this->session->set_flashdata('error_message',  'Some thing went worng Try Again!!!!!');
                    redirect('user-technical-evaluator-view-details-technical-bid-new/'.$value1.'/'.$value2); 
                }
            }else{
                $this->session->set_flashdata('error_message',  'Some thing went worng Try Again!!!!');
                redirect('user-technical-evaluator-view-details-technical-bid-new/'.$value1.'/'.$value1); 
            }
        }else{ // if resubmission
          // `````token_no`
            $array_resubission = array('submission_status'=>'0','comment'=>$comment,'status_view'=>'8');
            $query_upade=$this->db->update('master_bid_vendor',$array_resubission,$data_id);

            if($query_upade){
                $data_token_comment = array('comment' => $comment);
                $update_id = array('Slno_token' => $Slno_token);
                $updae_token_tab=$this->db->update('master_vendor_tech_token_bid',$data_token_comment,$update_id);
                if($updae_token_tab){
                    $data_inserted = array('master_bid'=>$value1, 'vendor_bid_id'=>$value, 'comment'=>$comment, 'status'=>'N', 'active_status'=>3, 'token_no'=>$token_no, 'token_id'=>$Slno_token);
                    $data_inserted=$this->db->insert('master_tech_bid_comment',$data_inserted);
                    if($data_inserted){
                         $this->session->set_flashdata('success_message',  'Sucessfully Resubmission Request for bid to vendor is been send ');
                        redirect('user-technical-evaluator-view-details-technical-bid-new/'.$value1.'/'.$value2);
                    }else{
                         $this->session->set_flashdata('error_message',  'Some thing went worng Try Again!!!');
                        redirect('user-technical-evaluator-view-details-technical-bid-new/'.$value1.'/'.$value2);
                    }
                }else{
                   $this->session->set_flashdata('error_message',  'Some thing went worng Try Again!!');
                    redirect('user-technical-evaluator-view-details-technical-bid-new/'.$value1.'/'.$value2);  
                }
            }else{
                $this->session->set_flashdata('error_message',  'Some thing went worng Try Again!');
                redirect('user-technical-evaluator-view-details-technical-bid-new/'.$value1.'/'.$value2); 
            }
        }
        
        // 
    }























    //
     public function tech_evalutor_logout($value=''){
         $session_id=session_id();
                // print_r($this->session->userdata());
                $created_session_id=$this->session->userdata('session_id');
                $date=date('Y-m-d');
                $time=date('H:i:s');
                if($session_id==$created_session_id){
                        $user_data = array('logout_date'=>$date, 'logout_time'=>$time, 'status'=>'2');
                        $id=array('session_id'=>$session_id);
                        $user_hstory_table="master_session_history_vendors";
                        $result_history = $this->user->common_update($user_hstory_table,$user_data,$id);
                        session_destroy();
                        session_start();
                        $this->session->set_flashdata('success_message', 'Signout from Technical Evalutors User Portal');
                        redirect('home');

                }else{

                        $user_data = array('logout_date'=>$date, 'logout_time'=>$time, 'status'=>'2');
                        $id=array('session_id'=>$session_id);
                        $user_hstory_table="master_session_history_vendors";
                        $result_history = $this->user->common_update($user_hstory_table,$user_data,$id);
                        session_destroy();
                        session_start();
                        $this->session->set_flashdata('success_message', 'Sign-out from Technical Evalutors User Portal');
                        redirect('home');
                }
        # code...
    }
    public function tech_evalutor_logout_bypass(){
        $this->session->set_flashdata('error_msg', 'Invalid entry to Technical Evalutors User Portal');
        redirect('home');

    }


}
