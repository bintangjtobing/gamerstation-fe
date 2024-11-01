@extends('frontend.layouts.master')

@push('css')
@endpush

@php
//get selected language
$lang = "en";
// FAQ section
$contact_slug = Illuminate\Support\Str::slug(App\Constants\SiteSectionConst::CONTACT_SECTION);
$contact = App\Models\Admin\SiteSections::getData($contact_slug)->first();
@endphp

@section('content')
<section class="contact-section ptb-120">
    <div class="container">
        <div class="row justify-content-center mb-30-none">
            <div class="col-xl-5 col-lg-5 mb-30">
                <div class="contact-widget">
                    <div class="contact-form-header">
                        <h2 class="title">{{ @$contact->value->language->$lang->title }}</h2>
                        <p>{{ @$contact->value->language->$lang->description }}</p>
                    </div>
                    <ul class="contact-item-list">
                        <li>
                            <a href="#0">
                                <div class="contact-item-icon">
                                    <i class="las la-map-marked-alt"></i>
                                </div>
                                <div class="contact-item-content">
                                    <h5 class="title">{{__('Our Location')}}</h5>
                                    <span class="sub-title">{{ @$contact->value->language->$lang->location }}</span>
                                </div>
                            </a>
                        </li>
                        <li>
                            <a href="#0">
                                <div class="contact-item-icon tow">
                                    <i class="las la-phone-volume"></i>
                                </div>
                                <div class="contact-item-content">
                                    <h5 class="title">{{__('Call us on')}}: {{ @$contact->value->language->$lang->phone
                                        }}</h5>
                                    <span class="sub-title">{{__('Our office hours are')}}
                                        {{ @$contact->value->language->$lang->office_hours }}</span>
                                </div>
                            </a>
                        </li>
                        <li>
                            <a href="#0">
                                <div class="contact-item-icon three">
                                    <i class="las la-envelope"></i>
                                </div>
                                <div class="contact-item-content">
                                    <h5 class="title">{{__('Email us directly')}}</h5>
                                    <span class="sub-title">{{ @$contact->value->language->$lang->email }}</span>
                                </div>
                            </a>
                        </li>
                    </ul>
                </div>
            </div>
            <div class="col-xl-7 col-lg-7 mb-30">
                <div class="contact-form-inner wow fadeInRight" data-wow-duration="1s" data-wow-delay=".4s">
                    <div class="contact-form-area">
                        <form class="contact-form" method="POST" action="{{ route('message') }}">
                            @csrf
                            <div class="row justify-content-center mb-10-none">
                                <div class="col-lg-12 form-group">
                                    <label>{{__('Your Name')}} <span class="text--base">*</span></label>
                                    <input type="text" name="name" class="form--control" placeholder="Enter name">
                                </div>
                                <div class="col-lg-12 form-group">
                                    <label>{{__('Your Email')}} <span class="text--base">*</span></label>
                                    <input type="email" name="email" class="form--control" placeholder="Enter email">
                                </div>
                                <div class="col-lg-12 form-group">
                                    <label>{{__('Message')}} <span class="text--base">*</span></label>
                                    <textarea class="form--control" name="message"
                                        placeholder="Your Message"></textarea>
                                </div>
                                <div class="col-lg-12 form-group">
                                    <button type="submit" class="btn--base mt-10 contact-btn">{{__('Send Message')}} <i
                                            class="las la-angle-right"></i></button>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
@endsection
@push('script')
@endpush