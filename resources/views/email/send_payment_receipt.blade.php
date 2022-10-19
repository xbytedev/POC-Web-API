<!DOCTYPE html>

<html>

<head>

    <title>Payment Receipt</title>

</head>

<body>
    <p>Hello, {{$details['user_name']}}</p>

    <p>Thank you for doing payment. <br> Here are the details of the payment done.</p>
    
    <p>Amount paid : {{$details['amount']}}</p>

    <p>Date : <?php echo date("d-m-Y");?></p>

    <p>Partner name : {{$details['partner_name']}}</p>

    <p>Thank you</p>
    
</body>

</html>