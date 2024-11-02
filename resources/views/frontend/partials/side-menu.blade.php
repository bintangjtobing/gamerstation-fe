@php
$menues = DB::table('setup_pages')
->where('status', 1)
->get();

$current_route = Route::currentRouteName();
@endphp

<div class="main-side-menu">
    <div class="main-side-menu-logo-area">
        <div class="thumb-logo">
            <img src="{{ asset('backend/images/web-settings/image-assets/1c72d20e-32ce-48b8-9484-b8ed4b9ab374.webp') }}"
                alt="logo">
        </div>
        <span class="main-side-menu-cross"><i class="las la-times"></i></span>
    </div>
    <ul class="main-side-menu-list">
        <li>
            <a href="/" class="active">
                <div class="main-side-menu-item">
                    <i class="las la-th-large"></i> Home
                </div>
                <span><i class="las la-angle-right"></i></span>
            </a>
        </li>

        <li>
            <a href="/topup" class="">
                <div class="main-side-menu-item">
                    <i class="las la-coins"></i> Topup
                </div>
                <span><i class="las la-angle-right"></i></span>
            </a>
        </li>
        <li>
            <a href="/about" class="">
                <div class="main-side-menu-item">
                    <i class="las la-info-circle"></i> About
                </div>
                <span><i class="las la-angle-right"></i></span>
            </a>
        </li>
        <li>
            <a href="/blog" class="">
                <div class="main-side-menu-item">
                    <i class="las la-comments"></i> Blog
                </div>
                <span><i class="las la-angle-right"></i></span>
            </a>
        </li>
        <li>
            <a href="/faq" class="">
                <div class="main-side-menu-item">
                    <i class="las la-question-circle"></i> FAQ
                </div>
                <span><i class="las la-angle-right"></i></span>
            </a>
        </li>
        <li>
            <a href="/contact" class="">
                <div class="main-side-menu-item">
                    <i class="las la-headset"></i> Contact
                </div>
                <span><i class="las la-angle-right"></i></span>
            </a>
        </li>
    </ul>
</div>
