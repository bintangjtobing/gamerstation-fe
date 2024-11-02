@php
//get selected language
$lang = "en";
//recharge
$recharge_slug = Illuminate\Support\Str::slug(App\Constants\SiteSectionConst::RECHARGE_SECTION);
$recharge = App\Models\Admin\SiteSections::getData($recharge_slug)->first();

$top_up_games = App\Models\Admin\TopUpGame::where('status', 1)
->latest()
->paginate(12);

@endphp
<!--~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            Start topup
     ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~-->

<div class="container">
    <div class="row justify-content-center">
        <div class="col-xl-6 col-lg-8">
            <div class="section-header text-center">
                <span class="section-sub-titel"><i class="{{ @$recharge->value->language->$lang->social_icon }}"></i>
                    {{ @$recharge->value->language->$lang->sub_heading }}</span>
                <h2 class="section-title"> <span class="text--base">{{ @$recharge->value->language->$lang->heading
                        }}</span></h2>
            </div>
        </div>
    </div>
    <div class="topup-area">
        <div class="row justify-content-center mb-30-none">

            <div class="col-xl-2 col-lg-3 col-md-3 col-sm-4 col-xs-6 mb-30">
                <a href="top-up-game/8-ball-pool">
                    <div class="topup-item">
                        <div class="topup-thumb">
                            <img src="backend/images/top-up-game/0e1de3d0-0786-462a-8590-0d5626409070.webp" alt="topup">
                        </div>
                        <div class="topup-content">
                            <h5 class="title">8 Ball Pool</h5>
                            <p>Sep 09, 2023</p>
                        </div>
                    </div>
                </a>
            </div>

            <div class="col-xl-2 col-lg-3 col-md-3 col-sm-4 col-xs-6 mb-30">
                <a href="top-up-game/asphalt-9-legends">
                    <div class="topup-item">
                        <div class="topup-thumb">
                            <img src="backend/images/top-up-game/0be3bdaa-82e3-412f-8709-728254e9f001.webp" alt="topup">
                        </div>
                        <div class="topup-content">
                            <h5 class="title">Asphalt 9: Legends</h5>
                            <p>Sep 09, 2023</p>
                        </div>
                    </div>
                </a>
            </div>

            <div class="col-xl-2 col-lg-3 col-md-3 col-sm-4 col-xs-6 mb-30">
                <a href="top-up-game/minecraft">
                    <div class="topup-item">
                        <div class="topup-thumb">
                            <img src="backend/images/top-up-game/5e899850-dae2-4370-a144-576b3fd43caf.webp" alt="topup">
                        </div>
                        <div class="topup-content">
                            <h5 class="title">Minecraft</h5>
                            <p>Sep 09, 2023</p>
                        </div>
                    </div>
                </a>
            </div>

            <div class="col-xl-2 col-lg-3 col-md-3 col-sm-4 col-xs-6 mb-30">
                <a href="top-up-game/world-war-heroes">
                    <div class="topup-item">
                        <div class="topup-thumb">
                            <img src="backend/images/top-up-game/281985ef-6f62-49f0-b4ee-ed102228a6da.webp" alt="topup">
                        </div>
                        <div class="topup-content">
                            <h5 class="title">World War Heroes</h5>
                            <p>Sep 09, 2023</p>
                        </div>
                    </div>
                </a>
            </div>

            <div class="col-xl-2 col-lg-3 col-md-3 col-sm-4 col-xs-6 mb-30">
                <a href="top-up-game/mobile-legends">
                    <div class="topup-item">
                        <div class="topup-thumb">
                            <img src="backend/images/top-up-game/50513084-976b-4b67-9ff7-e06749698ac5.webp" alt="topup">
                        </div>
                        <div class="topup-content">
                            <h5 class="title">Mobile Legends</h5>
                            <p>Sep 09, 2023</p>
                        </div>
                    </div>
                </a>
            </div>

            <div class="col-xl-2 col-lg-3 col-md-3 col-sm-4 col-xs-6 mb-30">
                <a href="top-up-game/top-eleven">
                    <div class="topup-item">
                        <div class="topup-thumb">
                            <img src="backend/images/top-up-game/58024549-9244-40bc-85a7-ef57158368fa.webp" alt="topup">
                        </div>
                        <div class="topup-content">
                            <h5 class="title">Top Eleven</h5>
                            <p>Sep 09, 2023</p>
                        </div>
                    </div>
                </a>
            </div>

            <div class="col-xl-2 col-lg-3 col-md-3 col-sm-4 col-xs-6 mb-30">
                <a href="top-up-game/grand-theft-auto-v">
                    <div class="topup-item">
                        <div class="topup-thumb">
                            <img src="backend/images/top-up-game/f8d63484-a3cf-4cff-b131-66eb5a4e3b2d.webp" alt="topup">
                        </div>
                        <div class="topup-content">
                            <h5 class="title">Grand Theft Auto V</h5>
                            <p>Sep 09, 2023</p>
                        </div>
                    </div>
                </a>
            </div>

            <div class="col-xl-2 col-lg-3 col-md-3 col-sm-4 col-xs-6 mb-30">
                <a href="top-up-game/modern-strike">
                    <div class="topup-item">
                        <div class="topup-thumb">
                            <img src="backend/images/top-up-game/273f96d0-f7bd-4ee9-8838-8a525c9332b4.webp" alt="topup">
                        </div>
                        <div class="topup-content">
                            <h5 class="title">Modern Strike</h5>
                            <p>Sep 09, 2023</p>
                        </div>
                    </div>
                </a>
            </div>

            <div class="col-xl-2 col-lg-3 col-md-3 col-sm-4 col-xs-6 mb-30">
                <a href="top-up-game/ludo-club">
                    <div class="topup-item">
                        <div class="topup-thumb">
                            <img src="backend/images/top-up-game/bac69339-1f2a-4757-a7fb-c79ca5931b56.webp" alt="topup">
                        </div>
                        <div class="topup-content">
                            <h5 class="title">Ludo Club</h5>
                            <p>Sep 09, 2023</p>
                        </div>
                    </div>
                </a>
            </div>

            <div class="col-xl-2 col-lg-3 col-md-3 col-sm-4 col-xs-6 mb-30">
                <a href="top-up-game/carrom-gold">
                    <div class="topup-item">
                        <div class="topup-thumb">
                            <img src="backend/images/top-up-game/9d50b10e-639c-4cb5-96e3-8b1dcb90acbe.webp" alt="topup">
                        </div>
                        <div class="topup-content">
                            <h5 class="title">Carrom Gold</h5>
                            <p>Sep 09, 2023</p>
                        </div>
                    </div>
                </a>
            </div>

            <div class="col-xl-2 col-lg-3 col-md-3 col-sm-4 col-xs-6 mb-30">
                <a href="top-up-game/be-the-king-judge">
                    <div class="topup-item">
                        <div class="topup-thumb">
                            <img src="backend/images/top-up-game/92727b32-ece7-4096-91f7-ed18666af633.webp" alt="topup">
                        </div>
                        <div class="topup-content">
                            <h5 class="title">Be The King: Judge</h5>
                            <p>Sep 09, 2023</p>
                        </div>
                    </div>
                </a>
            </div>

            <div class="col-xl-2 col-lg-3 col-md-3 col-sm-4 col-xs-6 mb-30">
                <a href="top-up-game/clash-of-clans">
                    <div class="topup-item">
                        <div class="topup-thumb">
                            <img src="backend/images/top-up-game/d6a9159b-e747-4395-b39d-0313995a20cb.webp" alt="topup">
                        </div>
                        <div class="topup-content">
                            <h5 class="title">Clash of Clans</h5>
                            <p>Sep 09, 2023</p>
                        </div>
                    </div>
                </a>
            </div>

        </div>
    </div>
    <div class="d-flex justify-content-center">
        <ul class="pagination">
            <li class="page-item"><a class="page-link" href="#">1</a></li>
            <li class="page-item"><a class="page-link" href="#">2</a></li>
            <li class="page-item"><a class="page-link" href="#">3</a></li>
        </ul>
    </div>

</div>

<!--~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
               End topup
        ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~-->
