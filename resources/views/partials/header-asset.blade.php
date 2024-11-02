<!-- favicon -->
<link rel="shortcut icon" href="public/fileholder/img/2d429533-bc22-4050-b372-15ed6c046929.png" type="image/x-icon">
<link rel="stylesheet" href="public/frontend/css/line-awesome.css">
<!-- bootstrap css link -->
<link rel="stylesheet" href="public/frontend/css/bootstrap.css">
<!-- swipper css link -->
<link rel="stylesheet" href="public/frontend/css/swiper.css">
<!-- animate css link -->
<link rel="stylesheet" href="public/frontend/css/animate.css">
<!-- odometer css link -->
<link rel="stylesheet" href="public/frontend/css/odometer.css">
<!-- nice-select css link -->
<link rel="stylesheet" href="public/frontend/css/nice-select.css">
<!-- lightcase css link -->
<link rel="stylesheet" href="public/frontend/css/lightcase.css">
<!-- style css link -->

<!-- Common style for all project -->
<link rel="stylesheet" href="public/backend/css/select2.css">
<link rel="stylesheet" href="public/backend/library/popup/magnific-popup.css">
<!-- Fileholder CSS CDN -->
<link rel="stylesheet" href="public/frontend/fileholder-style.css" type="text/css">

<link rel="stylesheet" href="public/frontend/css/style.css">

@php
$base_color = "#126DFF";
@endphp
<!-- Dynamic Color From Admin -->
<style>
    :root {
        --base_color: {{ $base_color }};
    }

    .select2-container--default .select2-selection--single .select2-selection__rendered {
        color: #ffffff;
    }
</style>
