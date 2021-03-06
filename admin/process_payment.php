<?php

session_start();

include('../partials/header.php');
include('../assets/config/connection.php');
$db = db_connection();

if(isset($_SESSION['account_type']) != 'Administrator') {
  header('Location: ../index.php');
}

if(!(isset($_GET["reference_no"]) && isset($_GET["client_name"]) && isset($_GET["reservation_id"]))) {
  header('Location: ../admin/index.php');
} else {
  $reservation_id = $_GET["reservation_id"];
  $reference_no = $_GET["reference_no"];
  $client_name = str_replace('-', ' ', $_GET["client_name"]);
}

?>

    <?php
    
    include('../partials/admin_topnav.php');
    
    ?>
    <div class="container-fluid">
      <div class="row">

    <?php
    
    include('../partials/admin_sidenav.php');

    ?>
        <main role="main" class="col-md-9 ml-sm-auto col-lg-10 px-4">
          <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
            <h1 class="h2">Process Payment</h1>
            <div class="btn-toolbar mb-2 mb-md-0">
              <!-- <div class="btn-group mr-2">
                <button class="btn btn-sm btn-outline-secondary">Share</button>
                <button class="btn btn-sm btn-outline-secondary">Export</button>
              </div>
              <button class="btn btn-sm btn-outline-secondary dropdown-toggle">
                <span data-feather="calendar"></span>
                This week
              </button> -->
            </div>
          </div>

          <div class="row">
            <div class="col-8">
              
              <form action="" method="POST">
                <div class="form-group">
                  <label for="">Reference Number:</label>
                  <input type="email" class="form-control" id="" value="<?php echo $reference_no; ?>" readonly>
                </div>

                <div class="form-group">
                  <label for="">Client Name:</label>
                  <input type="email" class="form-control" id="" value="<?php echo $client_name; ?>" readonly>
                </div>
                
                <?php 
                
                $query = "SELECT DISTINCT * FROM booking_rooms b_r INNER JOIN room r ON b_r.room_id = r.id WHERE b_r.reservation_id = $reservation_id";
                $result = mysqli_query($db, $query);
                $total_price = 0;

                if(mysqli_num_rows($result) > 0) {
                  echo '
                    <table class="table">
                      <thead>
                        <tr>
                          <th>Room Type</th>
                          <th>Quantity</th>
                          <th>Rate</th>
                          <th></th>
                        </tr>
                      </thead>
                      <tbody>
                  ';
                  while($rooms = mysqli_fetch_assoc($result)) {
                    echo '
                        <tr>
                          <td>'.$rooms["type"].'</td>
                    ';

                    $room_id = $rooms["id"];
                    $room_query = "SELECT count(room_id) FROM booking_rooms b_r WHERE b_r.reservation_id = $reservation_id AND b_r.room_id = $room_id";
                    $room_result = mysqli_query($db, $room_query);
                    while($number_of_rooms = mysqli_fetch_assoc($room_result)) {
                      echo '<td>' . $number_of_rooms["count(room_id)"] . '</td>';
                      echo '<td>' . $rooms["rate"] . '</td>';
                      echo '<td>' . ($number_of_rooms["count(room_id)"] * $rooms["rate"]) . '</td>';
                      $total_price += ($number_of_rooms["count(room_id)"] * $rooms["rate"]);
                    }
                  }
                  echo '<tr><td>Grand Total</td><td></td><td></td><td>'. $total_price .'</td></tr>';
                  echo '</table>';
                }


                
                
                
                ?>

              </form>



            </div>
          </div>

        </main>
      </div>
    </div>

<?php

include('../partials/scripts.php');
// include('../partials/footer.php');

?>