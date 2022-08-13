<!DOCTYPE html>

<html>

<head>

    <meta charset="utf-8">

    <title>How to Generate QR Code in Laravel 8</title>

    <meta name="csrf-token" content="{{ csrf_token() }}">

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"/>

</head>

<body>

    <div class="container mt-4">

        <div class="card" id="the_canvas_element_id">

            <div class="card-header">

                <h2>Card</h2>

            </div>

            <div class="card-body">

                <div class="row">

                    <div class="col-md-4">
                        {!! QrCode::size(200)->generate('{
                        "trip_id": 1,
                        "user_id": 1,
                        "username": "rjufjnubybggyvgt up",
                        "dob": "2022-08-05",
                        "gender": "male",
                        "address": "hxdfjfj",
                        "start_date": "2022-08-05",
                        "end_date": "2022-08-05"
                    }') !!}

                    </div>

                </div>

            </div>

        </div>

    </div>

</body>

</html>