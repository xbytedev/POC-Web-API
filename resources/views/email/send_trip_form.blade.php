<!DOCTYPE html>

<html>

<head>

    <title>Feedback</title>

</head>

<body>
    <p>Hello, {{$details->name}}</p><br>
    <p>Thank you for visiting the trip. <br> Hope you have enjoyed the best of it.</p>
    <p>It will be great if you can share a valuable feedback, <br> Please by fill the feedback form, so we can keep improving our service</p>
    <p>Click on below button to fill the form. </p>
    <a href="https://poc.mytravel2.com/trip_form/{{$user_type}}/{{$trip_id}}/{{$details->id}}">Feedback</a>
    <p>Thank you</p>

</body>

</html>