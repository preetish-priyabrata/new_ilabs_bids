<!DOCTYPE html>
<html lang="en">
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
</head>
<body>

<div class="container">
  <h2>Modal Example</h2>
  <!-- Button to Open the Modal -->
  <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#myModal">
    Open modal
  </button>

  <!-- The Modal -->
  <div class="modal" id="myModal">
    <div class="modal-dialog">
      <div class="modal-content">
           
        <!-- Modal Header -->
        <div class="modal-header">
          <h4 class="modal-title">Query</h4>
          <button type="button" class="close" data-dismiss="modal">&times;</button>
        </div>
        
        <!-- Modal body -->
        <div class="modal-body">
          <form  action="/action_page.php">
              
              <div class="panel-body">
          
                    <form action="<?=base_url()?>bu-create-tracking-save" method="POST">          
            
                 
                      <div class="row">
                        <div class="col-md-6 col-lg-6">
                        <div class="form-group row m-b-15">
                        <label class="col-form-label col-md-3">Respond  </label>
                        <div class="col-md-9">
                          <textarea class="form-control" rows="3" name="response_detail" ></textarea>
                          <small class="f-s-12 text-grey-darker"> Please enter Respond  </small>
                        </div>
                      </div>
                     
        </div>
        
        <!-- Modal footer -->
        <div class="modal-footer">
          <button type="button" class="btn btn-danger" data-dismiss="modal">Submit</button>
          <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
          
        </div>
        
      </div>
    </div>
  </div>
  
</div>

</body>
</html>
