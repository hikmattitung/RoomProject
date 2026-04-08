<?php 
// include 'config_esewa.php';
// echo "<h1> Payment Success. Thank you for choosing us.";
// $oid=$_GET['oid'];
// $amt=$_GET['amt'];
// $ref=$_GET['refId'];
// echo "<br>";
// echo "Order ID: ".$oid."<br>";
// echo "Amount:".$amt."<br>";
// echo "Reference:".$ref."<br>";
?>

<?php

require('admin/inc/db_config.php');
require('admin/inc/essentials.php');
require('config_esewa.php');

date_default_timezone_set("Asia/Kathmandu");
session_start();
unset($_SESSION['room']);

function regenrate_session($uid){
    $user_q=select("SELECT * FROM `user_cred` WHERE `id`=? LIMIT 1",[$uid],'i');
    $user_fetch=mysqli_fetch_assoc($user_q);

    $_SESSION['login']=true;
    $_SESSION['uId']=$user_fetch['id'];
    $_SESSION['uName']=$user_fetch['name'];
    $_SESSION['uPic']=$user_fetch['profile'];
    $_SESSION['uPhone']=$user_fetch['phonenum'];
}

header("Pragma:no-cache");
header("Cache-Control:no-cache");
header("Expires:0");

$slct_query="SELECT `booking_id`,`user_id` FROM `booking_order` WHERE `order_id`='$_POST[ORDERID]'";
$slct_res=mysqli_query($con,$slct_query);
if(mysqli_num_rows($slct_query)==0){
    redirect('home.php');
}
$slct_fetch=mysqli_fetch_assoc($slct_res);

if(isset($_SESSION['login'])&& $_SESSION['login']==true){

    regenrate_session($slct_fetch['user_id']);
}
if($_POST['STATUS']=="TXN_SUCCESS"){
 $upd_query="UPDATE `booking_order` SET `booking_status`='booked',`trans_id`='$_POST[TXNID]',
                                        `trans_amt`='$_POST[TXNAMOUNT]',`trans_status`='$_POST[STATUS]'
                                        WHERE `booking_id`='$slct_fetch[booking_id]' ";

 mysqli_query($con,$upd_query);
//  redirect('pay_status.php?order='.$_POST['ORDERID']);
}

else {
    $upd_query="UPDATE `booking_order` SET `booking_status`='payment failed',`trans_id`='$_POST[TXNID]',
                                        `trans_amt`='$_POST[TXNAMOUNT]',`trans_status`='$_POST[STATUS]'
                                        WHERE `booking_id`='$slct_fetch[booking_id]' ";
  mysqli_query($con,$upd_query);
 
}
redirect('pay_status.php?order='.$_POST['ORDERID']);
?>