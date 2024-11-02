@extends('frontend.layouts.master')

@php
//get selected language
$lang = "en";
// Blog section
$blogs = App\Models\Blog::get();
@endphp
@push('css')
@endpush

@section('content')
<section class="blog-section ptb-120">
    <div class="container">
        <div class="row mb-30">
            <div class="col-xl-8 col-lg-7 col-md-12 mb-30">
                <div class="row mb-30-none">
                    <div class="col-xl-6 col-lg-12 col-md-6 mb-30">
                        <div class="blog-item">
                            <div class="blog-item-thumb">
                                <img src="public/fileholder/img/8a13121a-0fbc-4fee-aeb7-74b0972570e8.webp" alt="blog">
                            </div>
                            <div class="blog-item-content">
                                <div class="blog-item-top-content">
                                    <div class="title-area">
                                        <a href="javascript:void()">#Design</a>
                                    </div>
                                    <div class="time-area">
                                        <span><i class="las la-clock"></i> 2 days ago</span>
                                    </div>
                                </div>
                                <h4 class="title">
                                    <a href="blog/gaming-gift-cards-the-perfect-present-for-gamers">Gaming Gift Cards: The Perfect Present for Gamers</a>
                                </h4>
                                <div class="blog-item-bottom-content">
                                    <div class="thumb-area">
                                        <div class="thumb">
                                            <img src="public/fileholder/img/admin-profile.webp" alt="blog">
                                        </div>
                                        <div class="thumb-title">
                                            <h5 class="thumb-title-text">Admin Name</h5>
                                            <span>27 Oct 2024</span>
                                        </div>
                                    </div>
                                    <div class="blog-item-btn-area">
                                        <a href="blog/gaming-gift-cards-the-perfect-present-for-gamers">Read More <i class="las la-angle-right"></i></a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>


                </div>
            </div>
            <div class="col-xl-4 col-lg-5 col-md-12 mb-30">
                <div class="blog-sidebar">
                    <div class="widget-box mb-30">
                        <h4 class="widget-title">{{ __('Categories') }}</h4>
                        <div class="category-widget-box">
                            <ul class="category-list">
                                @foreach ($categories ?? [] as $cat)
                                @php
                                $blogCount = App\Models\Blog::active()
                                ->where('category_id', $cat->id)
                                ->count();

                                @endphp
                                @if ($blogCount > 0)
                                <li><a href="#">
                                        {{ __(@$cat->data->language->$lang->name) }}<span>{{ @$blogCount }}</span></a>
                                </li>
                                @else
                                <li><a href="javascript:void(0)">
                                        {{ __(@$cat->data->language->$lang->name) }}<span>{{ @$blogCount }}</span></a>
                                </li>
                                @endif
                                @endforeach
                            </ul>
                        </div>
                    </div>
                    <div class="widget-box mb-30">
                        <h4 class="widget-title">{{ __('Recent Posts') }}</h4>
                        <div class="popular-widget-box">
                            <div class="single-popular-item d-flex flex-wrap align-items-center">
                                <div class="popular-item-thumb">
                                    <a href="blog/gaming-gift-cards-the-perfect-present-for-gamers">
                                        <img src="public/fileholder/img/8a13121a-0fbc-4fee-aeb7-74b0972570e8.webp" alt="blog">
                                    </a>
                                </div>
                                <div class="popular-item-content">
                                    <span class="date">2 days ago</span>
                                    <h5 class="title">
                                        <a href="blog/gaming-gift-cards-the-perfect-present-for-gamers">Gaming Gift Cards: The Perfect Present for Gamers</a>
                                    </h5>
                                </div>
                            </div>

                        </div>
                    </div>
                    <div class="widget-box">
                        <h4 class="widget-title">{{ __('Tags') }}</h4>
                        <div class="tag-widget-box">
                            <ul class="tag-list">
                                @foreach ($blog->lan_tags->language->$lang->tags ?? [] as $tag)
                                <li><a href="javascript:void(0)">{{ @$tag }}</a></li>
                                @endforeach
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <nav>
            <ul class="pagination">
                {{-- {{ get_paginate($blogs) }} --}}
            </ul>
        </nav>
    </div>
</section>

@endsection


@push('script')
@endpush
