<footer class="footer-section pt-60 bg_img" data-background="{{ asset('frontend/images/element/bg1.jpg') }}">
    <div class="container">
        <div class="footer-wrapper">
            <div class="row mb-30-none">
                <!-- Logo dan Deskripsi -->
                <div class="col-xxl-4 col-xl-4 col-lg-4 col-md-6 col-sm-6 mb-30">
                    <div class="footer-widget">
                        <div class="footer-logo">
                            <a href="/" class="site-logo site-title">
                                <img src="{{ asset('fileholder/img/b88efc35-a595-4d50-bc55-857d7a5dc830.png') }}"
                                    alt="GamerStation Logo">
                            </a>
                        </div>
                        <div class="footer-content">
                            <p>Masuk ke dunia penuh kemungkinan gaming bersama GamerStation. Bergabunglah dengan kami
                                dan rasakan pengalaman gaming terbaik, di mana setiap top-up, voucher, dan token membawa
                                kamu lebih dekat ke petualangan berikutnya!</p>
                        </div>
                        <div class="footer-content-bottom">
                            <ul class="footer-list logo">
                                <li><a href="javascript:void()"><i class="las la-envelope me-1"></i>
                                        contact@gamerstation.com</a></li>
                            </ul>
                        </div>
                    </div>
                </div>

                <!-- Link Bermanfaat -->
                <div class="col-xxl-2 col-xl-2 col-lg-2 col-md-6 col-sm-6 mb-30">
                    <div class="footer-widget">
                        <h4 class="widget-title">Link Bermanfaat</h4>
                        <ul class="footer-list">
                            <li><a href="/link/about-us">Tentang Kami</a></li>
                            <li><a href="/link/privacy-policy">Kebijakan Privasi</a></li>
                            <li><a href="/link/terms">Syarat dan Ketentuan</a></li>
                        </ul>
                    </div>
                </div>

                <!-- Newsletter -->
                <div class="col-xxl-4 col-xl-4 col-lg-4 col-md-6 col-sm-6 mb-30">
                    <div class="footer-widget">
                        <h4 class="widget-title">Berlangganan</h4>
                        <p>Ikuti update terbaru tentang berita gaming, diskon eksklusif, dan penawaran spesial.
                            Langganan newsletter kami dan tetap jadi yang terdepan dalam game!</p>
                        <ul class="footer-list two">
                            <form action="/subscribe" method="post">
                                <li>
                                    <input type="text" placeholder="Nama" name="name" class="form--control">
                                    <span class="input-icon"><i class="las la-user"></i></span>
                                </li>
                                <li>
                                    <input type="email" name="email" placeholder="Email" class="form--control">
                                    <span class="input-icon"><i class="las la-envelope"></i></span>
                                </li>
                                <li>
                                    <button type="submit" class="btn--base sub-btn">Berlangganan <i
                                            class="las la-arrow-right ms-1"></i></button>
                                </li>
                            </form>
                        </ul>
                    </div>
                </div>
            </div>

            <!-- Hak Cipta dan Media Sosial -->
            <div class="copyright-area">
                <div class="copyright-wrapper">
                    <p>©Copyright <span class="text--base">Gamer Station</span> {{ date('Y') }}.</p>
                    <ul class="footer-social-list">
                        <li>
                            <a href="https://www.facebook.com"><i class="lab la-facebook-f"></i> Facebook</a>
                        </li>
                        <li>
                            <a href="https://www.twitter.com"><i class="lab la-twitter"></i> Twitter</a>
                        </li>
                        <li>
                            <a href="https://www.instagram.com"><i class="lab la-instagram"></i> Instagram</a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</footer>
