
<div class="tab-grids">
                  <div >  
                    <div class="login-form">
                          <hr>
                          
                        <?php 
                        if(isset($_GET['start'])){
                          if($_GET['start'] != '' && $_GET['tujuan'] != ''){
                        ?>
                        <?php include 'djikstra.php'; ?>
                        <?php 
                          }
                        } 
                        ?>
                    </div>
                  </div>
                </div>