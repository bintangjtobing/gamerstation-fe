@extends('frontend.layouts.master')

@php
$lang = "id";
@endphp

@section('content')
<section class="blog-section ptb-120">
    <div class="container">
        <div class="row mb-30-none">
            <div class="col-xl-8 col-lg-7 col-md-12 mb-30">
                <div class="row justify-content-center mb-30-none">
                    <div class="col-xl-12 mb-30">
                        <div class="blog-item-details">
                            <div class="blog-thumb">
                                <img src="{{asset('backend/files/blog/8a13121a-0fbc-4fee-aeb7-74b0972570e8.webp')}}"
                                    alt="Gift Card Game: Hadiah Terbaik untuk Gamer">
                            </div>
                            <div class="blog-content">
                                <h3 class="title">Gift Card Game: Hadiah Terbaik untuk Gamer</h3>
                                <p>Di blog ini, kita menjelajahi dunia gift card game dan mengapa ini adalah hadiah
                                    terbaik untuk gamer segala usia. Kami membahas berbagai jenis gift card game yang
                                    tersedia, mulai dari platform game populer hingga pasar online. Temukan bagaimana
                                    GameShop mempermudah proses memberi hadiah dan bagaimana gift card ini membuka dunia
                                    kemungkinan dalam game. Baik sebagai pemberi atau penerima, artikel ini akan
                                    mengubah cara pandangmu tentang hadiah untuk gamer!</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-xl-4 col-lg-5 col-md-12 mb-30">
                <div class="blog-sidebar">
                    <div class="widget-box mb-30">
                        <h4 class="widget-title">Kategori</h4>
                        <div class="category-widget-box">
                            <ul class="category-list">
                                <li><a href="/blog/by/category/3/game">Game<span>2</span></a></li>
                                <li><a href="/blog/by/category/1/money">Keuangan<span>2</span></a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="widget-box mb-30">
                        <h4 class="widget-title">Postingan Terbaru</h4>
                        <div class="popular-widget-box">
                            <div class="single-popular-item d-flex flex-wrap align-items-center">
                                <div class="popular-item-thumb">
                                    <a href="/blog/details/3/the-evolution-of-online-gaming-a-deep-dive"><img
                                            src="{{asset('backend/files/blog/580753ed-9026-4190-be1a-93a06b22dcfc.webp')}}"
                                            alt="Evolusi Gaming Online"></a>
                                </div>
                                <div class="popular-item-content">
                                    <span class="date">Setahun yang lalu</span>
                                    <h5 class="title"><a
                                            href="/blog/details/3/the-evolution-of-online-gaming-a-deep-dive">Evolusi
                                            Gaming Online: Penjelajahan Mendalam</a>
                                    </h5>
                                </div>
                            </div>
                            <div class="single-popular-item d-flex flex-wrap align-items-center">
                                <div class="popular-item-thumb">
                                    <a href="/blog/details/4/gaming-and-business-how-gameshop-empowers-entrepreneurs"><img
                                            src="{{asset('backend/files/blog/b27b2e05-b802-49ef-bb8d-f869abb725a7.webp')}}"
                                            alt="Game dan Bisnis: GameShop untuk Pengusaha"></a>
                                </div>
                                <div class="popular-item-content">
                                    <span class="date">Setahun yang lalu</span>
                                    <h5 class="title"><a
                                            href="/blog/details/4/gaming-and-business-how-gameshop-empowers-entrepreneurs">Game
                                            dan Bisnis: GameShop untuk Pengusaha</a>
                                    </h5>
                                </div>
                            </div>
                            <div class="single-popular-item d-flex flex-wrap align-items-center">
                                <div class="popular-item-thumb">
                                    <a href="/blog/details/5/the-future-of-gaming-trends-to-watch-out-for"><img
                                            src="{{asset('backend/files/blog/131aa98e-12a9-4433-9821-416a489fb730.webp')}}"
                                            alt="Masa Depan Gaming: Tren yang Harus Diikuti"></a>
                                </div>
                                <div class="popular-item-content">
                                    <span class="date">Setahun yang lalu</span>
                                    <h5 class="title"><a
                                            href="/blog/details/5/the-future-of-gaming-trends-to-watch-out-for">Masa
                                            Depan Gaming: Tren yang Harus Diikuti</a>
                                    </h5>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="widget-box">
                        <h4 class="widget-title">Tag</h4>
                        <div class="tag-widget-box">
                            <ul class="tag-list">
                                <!-- Add tags here -->
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
@endsection

@push('script')
@endpush
