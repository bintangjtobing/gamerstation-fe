@extends('frontend.layouts.master')

@push('css')
@endpush
@section('content')
@php
$login_message = session()->get('message');
$auth_permission = session()->get('auth_permission');
@endphp


@include('frontend.partials.banner-slider')

@include('frontend.partials.services')

@include('frontend.partials.donation-section')

@include('frontend.partials.top-up')

@include('frontend.components.about-company')

@include('frontend.components.why-choose')

@include('frontend.components.testimonial')

@include('frontend.partials.blog-section')
@endsection


@push('script')
<script>
    var login_message = "{{ $login_message }}";
        var auth_permission = "{{ $auth_permission }}";

        console.log(login_message);

        if (login_message != '') {
            throwMessage('error', [login_message]);

        }
        if (auth_permission == true) {
            $('.account-section').addClass('active');
        }
</script>
@endpush
