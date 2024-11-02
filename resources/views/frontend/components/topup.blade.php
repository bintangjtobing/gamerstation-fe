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
                            <img src="public/fileholder/img/0e1de3d0-0786-462a-8590-0d5626409070.webp" alt="topup">
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
                            <img src="public/fileholder/img/0be3bdaa-8e23-412f-8709-728254e9f001.webp" alt="topup">
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
                            <img src="public/fileholder/img/5e899950-dae2-4370-a144-576b3fd43caf.webp" alt="topup">
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
                            <img src="public/fileholder/img/281985ef-6f62-49f0-b4ee-ed102228a6da.webp" alt="topup">
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
                            <img src="public/fileholder/img/50513084-97b6-4b67-9f07-e067469983c8.webp" alt="topup">
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
                            <img src="public/fileholder/img/58024549-9244-40bc-85a7-e57f15836f3d.webp" alt="topup">
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
                            <img src="public/fileholder/img/fa6d348a-43cf-4cf7-b138-6eb5a3e3bd2b.webp" alt="topup">
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
                            <img src="public/fileholder/img/273f96d0-7fbd-4ee9-83b8-a5a5269332b6.webp" alt="topup">
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
                            <img src="public/fileholder/img/2a963939-1f2a-4757-a7b0-7b7c9f8f9356.webp" alt="topup">
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
                            <img src="public/fileholder/img/9d50b10e-639c-4b5b-9e63-b1db9a0b0cbe.webp" alt="topup">
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
                            <img src="public/fileholder/img/92772fb3-ec27-4096-9f17-e36fdd4cf633.webp" alt="topup">
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
                            <img src="public/fileholder/img/d6a9159b-e747-4395-a3bd-0313995a2b0d.webp" alt="topup">
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
