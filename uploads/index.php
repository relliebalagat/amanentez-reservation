<?php

session_start();

require('../assets/config/connection.php');
include('../partials/header.php');


?>

  <?php
  
  include('../partials/navbar.php');

  ?>

  <div class="container" id="upload-photo">
    <h2>PAYMENT</h2>

    <?php

    if(isset($_SESSION["msg_payment_upload_success"])) {
      echo '<p class="text-danger">' . $_SESSION["msg_payment_upload_success"] . '</p>';
    }  

    if(isset($_SESSION['err_record_not_found'])) {
      echo '<p class="text-danger">' . $_SESSION['err_record_not_found'] . '</p>';
    }

    if(isset($_SESSION['file_upload']['err_file'])) {
      echo '<p class="text-danger">' . $_SESSION['file_upload']['err_file_exists'] . '</p>';
    }

    if(isset($_SESSION['file_upload']['err_file_exists'])) {
      echo '<p class="text-danger">' . $_SESSION['file_upload']['err_file_exists'] . '</p>';
    }

    if(isset($_SESSION['file_upload']['err_file_size'])) {
      echo '<p class="text-danger">' . $_SESSION['file_upload']['err_file_size'] . '</p>';
    }

    if(isset($_SESSION['file_upload']['err_file_type'])) {
      echo '<p class="text-danger">' . $_SESSION['file_upload']['err_file_type'] . '</p>';
    }
  
    ?>

    <h5>Upload photo of deposit slip</h5>
    <div class="row">
      <div class="col-sm-12">
        <div class="card">
          <form action="upload_photo_payment.php" method="POST" enctype="multipart/form-data">
            <label for="referenceNo">Reference Number</label>
            <input type="text" name="referenceNo" class="form-control" required>

            <label for="paymentPhoto">Deposit Slip Photo</label>
            <input type="file" name="paymentPhoto" class="form-control" required>

            <button style="float: right; margin-top: 15px;" type="submit" class="btn btn-primary" name="submit">Submit</button>          
          </form>
        </div>
      </div>  
    </div>
  </div>

<?php

unset($_SESSION['file_upload']);
unset($_SESSION['err_record_not_found']);
unset($_SESSION["msg_payment_upload_success"]);

include('../partials/scripts.php');
include('../partials/footer.php');


?>