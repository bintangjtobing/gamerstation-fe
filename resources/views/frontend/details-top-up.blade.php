@extends('frontend.layouts.master')

@push('css')
@endpush
@section('content')
<div class="topup-details-section pt-40 pb-120">
    <div class="container">
        <div class="row mb-30-none">
            <div class="col-xl-4 col-lg-5 mb-30">
                <div class="topup-details-content-area">
                    <div class="topup-details-content-thumb">
                        <img src="{{asset('backend/images/top-up-game/91d7ea64-108f-4554-b738-8777b016a953.webp')}}"
                            alt="Game Clash of Clans - GamerStation">
                    </div>
                    <div class="topup-details-content mt-20">
                        <h3 class="title">Clash of Clans</h3>
                        <div class="topup-details-content-badge-area">
                            <span class="badge badge--base"><i class="las la-bolt"></i> Pengiriman Cepat</span>
                            <span class="badge badge--base"><i class="las la-check-circle"></i> Distributor Resmi</span>
                        </div>
                        <p class="sub-title">Pilih jumlah poin, selesaikan pembayaran, dan Gems serta Resources langsung
                            masuk ke akun Clash of Clans kamu! Gak perlu repot pakai kartu kredit atau bikin akun baru,
                            tinggal bayar dan nikmati kemudahannya. GamerStation bikin main Clash of Clans jadi makin
                            seru dan gampang!</p>

                    </div>
                </div>
            </div>
            <div class="col-xl-8 col-lg-7 mb-30">
                {{-- <form action="/top-up/submit" method="POST" class="buy-coin-form"> --}}
                    <form id="buy-coin-form" class="buy-coin-form">
                        @csrf <input type="hidden" name="top_up_id" value="12">

                        <!-- Langkah 1: Player ID -->
                        <div class="dash-payment-item-wrapper">
                            <div class="dash-payment-item active">
                                <div class="dash-payment-title-area">
                                    <span class="dash-payment-badge">01</span>
                                    <h5 class="title">Player ID</h5>
                                </div>
                                <div class="dash-payment-body">
                                    <div class="row">
                                        <div class="col-xl-12">
                                            <div class="form-group">
                                                <label for="player_id">Player ID</label>
                                                <input type="text" class="form--control" id="player_id" name="player_id"
                                                    placeholder="Masukkan Player ID kamu" required>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <!-- Langkah 2: Pilih Recharge -->
                        <div class="dash-payment-item-wrapper">
                            <div class="dash-payment-item active">
                                <div class="dash-payment-title-area">
                                    <span class="dash-payment-badge">02</span>
                                    <h5 class="title">Pilih Jumlah Top-Up</h5>
                                </div>
                                <div class="dash-payment-body">
                                    <div class="recharge-option">
                                        <input type="hidden" name="coin_type" value="coin">
                                        <div class="recharge-item">
                                            <div class="recharge-inner">
                                                <input type="radio" name="recharge" class="hide-input" id="recharge_1"
                                                    value="10|10" checked>
                                                <label for="recharge_1" class="package--amount">
                                                    <strong>10 koin</strong>
                                                    <sup>Rp10</sup>
                                                </label>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <!-- Langkah 3: Pilih Metode Pembayaran -->
                        <div class="dash-payment-item-wrapper">
                            <div class="dash-payment-item active">
                                <div class="dash-payment-title-area">
                                    <span class="dash-payment-badge">03</span>
                                    <h5 class="title">Pilih Cara Bayar</h5>
                                </div>
                                <div class="dash-payment-body">
                                    <div class="faq-wrapper">

                                        <!-- QRIS -->
                                        <div class="faq-item">
                                            <h3 class="faq-title" onclick="selectPaymentMethod('qris')">
                                                <span class="title">QRIS</span>
                                                <span class="right-icon"></span>
                                            </h3>
                                            <div class="faq-content" id="qris-content" style="display: none;">
                                                <div class="payment-card">
                                                    <img src="https://as1.ftcdn.net/v2/jpg/02/14/61/50/1000_F_214615075_6Pu4mJ2SAEDMB0NdV1vQSlYeEbByYC7V.jpg"
                                                        alt="QRIS - GamerStation"
                                                        style="width: 100px; margin-bottom: 10px;">
                                                    <p><strong>Total Bayar:</strong><br><span
                                                            style="font-size: 28px; color: #FFD700;">Rp. 138,537</span>
                                                    </p>
                                                    <p style="color: #d8d8d8;">Proses Otomatis</p>
                                                    <div
                                                        style="background-color: #252c39; border-radius:15px; padding: 20px; margin-top:10px;">
                                                        <p><strong>Cara Bayar Lewat QRIS</strong></p>
                                                        <ul style="color: #D3D3D3;">
                                                            <li>Buka aplikasi dompet digital kamu.</li>
                                                            <li>Pilih "Scan QR" dan arahkan ke kode QR yang muncul
                                                                setelah
                                                                pilih QRIS.</li>
                                                            <li>Konfirmasi pembayaran dan selesaikan.</li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>

                                        <!-- Virtual Account -->
                                        <div class="faq-item">
                                            <h3 class="faq-title" onclick="selectPaymentMethod('va')">
                                                <span class="title">Virtual Account</span>
                                                <span class="right-icon"></span>
                                            </h3>
                                            <div class="faq-content" id="va-content" style="display: none;">
                                                <div class="payment-card">
                                                    <img src="https://upload.wikimedia.org/wikipedia/commons/thumb/5/5c/Bank_Central_Asia.svg/800px-Bank_Central_Asia.svg.png"
                                                        alt="BCA Logo" style="width: 100px; margin-bottom: 10px;">
                                                    <img src="https://finnsbali.com/wp-content/uploads/2018/03/logo-cimb-niaga3-1.png"
                                                        alt="CIMB Logo" style="width: 100px; margin-bottom: 10px;">
                                                    <img src="https://upload.wikimedia.org/wikipedia/id/thumb/5/55/BNI_logo.svg/2560px-BNI_logo.svg.png"
                                                        alt="BNI Logo" style="width: 100px; margin-bottom: 10px;">
                                                    <img src="https://upload.wikimedia.org/wikipedia/commons/thumb/9/97/Logo_BRI.png/1200px-Logo_BRI.png"
                                                        alt="BRI Logo" style="width: 100px; margin-bottom: 10px;">
                                                    <img src="https://upload.wikimedia.org/wikipedia/commons/thumb/a/ad/Bank_Mandiri_logo_2016.svg/1024px-Bank_Mandiri_logo_2016.svg.png"
                                                        alt="Mandiri Logo" style="width: 100px; margin-bottom: 10px;">
                                                    <p><strong>Total Bayar:</strong><br><span
                                                            style="font-size: 28px; color: #FFD700;">Rp. 138,537</span>
                                                    </p>
                                                    <p style="color: #d8d8d8;">Proses Otomatis</p>
                                                    <div
                                                        style="background-color: #252c39; border-radius:15px; padding: 20px; margin-top:10px;">
                                                        <p><strong>Cara Bayar Lewat Virtual Account</strong></p>
                                                        <ul style="color: #D3D3D3;">
                                                            <li>Buka mobile banking atau internet banking kamu.</li>
                                                            <li>Pilih "Virtual Account" dan masukkan nomor yang
                                                                disediakan.
                                                            </li>
                                                            <li>Konfirmasi dan lanjutkan pembayaran.</li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>

                                        <!-- E-Wallet -->
                                        <div class="faq-item">
                                            <h3 class="faq-title" onclick="selectPaymentMethod('ewallet')">
                                                <span class="title">E-Wallet (OVO, ShopeePay, Dana)</span>
                                                <span class="right-icon"></span>
                                            </h3>
                                            <div class="faq-content" id="ewallet-content" style="display: none;">
                                                <div class="payment-card">
                                                    <img src="https://vectorez.biz.id/wp-content/uploads/2024/05/Logo-OVO-2@0.5x.png"
                                                        alt="OVO Logo" style="width: 100px; margin-bottom: 10px;">
                                                    <img src="https://upload.wikimedia.org/wikipedia/commons/f/fe/Shopee.svg"
                                                        alt="Shopee Logo" style="width: 100px; margin-bottom: 10px;">
                                                    <img src="https://upload.wikimedia.org/wikipedia/commons/5/52/Dana_logo.png"
                                                        alt="Dana Logo" style="width: 100px; margin-bottom: 10px;">
                                                    <p><strong>Total Bayar:</strong><br><span
                                                            style="font-size: 28px; color: #FFD700;">Rp. 138,537</span>
                                                    </p>
                                                    <p style="color: #d8d8d8;">Proses Otomatis</p>
                                                    <div
                                                        style="background-color: #252c39; border-radius:15px; padding: 20px; margin-top:10px;">
                                                        <p><strong>Cara Bayar Lewat E-Wallet</strong></p>
                                                        <ul style="color: #D3D3D3;">
                                                            <li>Buka aplikasi e-wallet favorit kamu.</li>
                                                            <li>Pilih "Bayar" dan masukkan jumlah atau scan QR.</li>
                                                            <li>Konfirmasi pembayaran dan selesaikan transaksi.</li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>

                                    </div>
                                </div>
                            </div>
                        </div>

                        <!-- Langkah 4: Kode Reseller -->
                        <div class="dash-payment-item-wrapper">
                            <div class="dash-payment-item active">
                                <div class="dash-payment-title-area">
                                    <span class="dash-payment-badge">04</span>
                                    <h5 class="title">Kode Reseller</h5>
                                </div>
                                <div class="dash-payment-body">
                                    <div class="form-group">
                                        <label for="reseller_code">Masukkan Kode Reseller / Referral</label>
                                        <div class="input-group">
                                            <input type="text" class="form--control" id="reseller_code"
                                                name="reseller_code" placeholder="Masukkan Kode Reseller / Referral">
                                            <button type="button" class="btn--base" onclick="checkResellerCode()">Cek
                                                Kode</button>
                                        </div>
                                        <small class="text-muted">*Masukkan kode reseller/referral untuk diskon
                                            spesial!</small>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <!-- Langkah 5: Konfirmasi Pesanan -->
                        <div class="dash-payment-item-wrapper">
                            <div class="dash-payment-item active">
                                <div class="dash-payment-title-area">
                                    <span class="dash-payment-badge">05</span>
                                    <h5 class="title">Konfirmasi Pesanan</h5>
                                </div>
                                <div class="dash-payment-body">
                                    <p>Invoice transaksi akan dikirim ke nomor WhatsApp kamu.</p>
                                    <div class="form-group">
                                        <label for="whatsapp_number">Nomor WhatsApp</label>
                                        <input type="text" class="form--control" id="whatsapp_number"
                                            name="whatsapp_number" placeholder="628x xxxx xxxx" required>
                                    </div>
                                </div>
                            </div>
                        </div>

                        {{-- <div class="dash-payment-btn text-center">
                            <button type="submit" class="btn--base w-75">Beli Sekarang</button>
                        </div> --}}
                        <div class="dash-payment-btn text-center">
                            <button type="button" onclick="submitForm()" class="btn--base w-75">Beli Sekarang</button>
                        </div>
                    </form>
            </div>
        </div>
    </div>
</div>
<!-- Modal untuk verifikasi pembayaran -->
<div class="modal fade" id="verificationModal" tabindex="-1" aria-labelledby="verificationModalLabel"
    aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered">
        <div class="modal-content bg-dark text-light" style="border-radius: 10px;">
            <div class="modal-header border-0 d-flex flex-column align-items-center" style="padding-bottom:0;">
                <img src="https://i.giphy.com/media/v1.Y2lkPTc5MGI3NjExazAyM2Q3MXFmcGxhMzBzZ3E4dmJoYTJjeGl4dmEzNzhqcWJmbXFraSZlcD12MV9pbnRlcm5hbF9naWZfYnlfaWQmY3Q9Zw/tXL4FHPSnVJ0A/giphy.gif"
                    alt="Celebration GIF" style="width: 145px; margin-bottom: 10px;">
                <h4 class="modal-title text-center" id="verificationModalLabel"
                    style="font-size: 24px; font-weight: bold;">
                    Verifikasi Pembayaran
                </h4>
            </div>
            <div class="modal-body text-center" style="padding-top:10px;">
                <p id="verificationMessage">Tunggu sebentar ya<br>Kami sedang memverifikasi pembayaran Anda...</p>
            </div>
        </div>
    </div>
</div>

<!-- Modal untuk konfirmasi pembayaran berhasil -->
<div class="modal fade" id="successModal" tabindex="-1" aria-labelledby="successModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered">
        <div class="modal-content bg-dark text-light" style="border-radius: 10px;">
            <div class="modal-header border-0 d-flex flex-column align-items-center" style="padding-bottom:0;">
                <img src="https://i.giphy.com/media/v1.Y2lkPTc5MGI3NjExaWJwdTN5bjc4bWo4MzdtaXBuanI4bnB4bXB5dmwzdGNnc3A4cXMwNCZlcD12MV9pbnRlcm5hbF9naWZfYnlfaWQmY3Q9Zw/3o7aD0FmFwQTCuZmE0/giphy.gif"
                    alt="Celebration GIF" style="width: 145px; margin-bottom: 10px;">
                <h4 class="modal-title text-center" id="successModalLabel" style="font-size: 24px; font-weight: bold;">
                    Selamat!
                </h4>
            </div>
            <div class="modal-body text-center" style="padding-top:10px;">
                <p id="successMessage">Kamu berhasil membeli 10 koin untuk Clash of Clans.<br>Berikut voucher ID kamu:
                </p>
                <pre id="voucherId"
                    style="background-color: #333; color: #FFD700; padding: 10px; border-radius: 5px; display: inline-block; font-size: 16px;"></pre>
            </div>
        </div>
    </div>
</div>
<!-- Modal untuk memilih metode pembayaran -->
<div class="modal fade" id="choosePaymentMethodModal" tabindex="-1" aria-labelledby="choosePaymentMethodModalLabel"
    aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered">
        <div class="modal-content bg-dark text-light" style="border-radius: 10px;">
            <div class="modal-header border-0 d-flex flex-column align-items-center" style="padding-bottom:0;">
                <h4 class="modal-title text-center" id="choosePaymentMethodModalLabel"
                    style="font-size: 24px; font-weight: bold;">
                    Pilih Metode Pembayaran
                </h4>
            </div>
            <div class="modal-body text-center" style="padding-top:10px;">
                <p>Silakan pilih metode pembayaran terlebih dahulu.</p>
            </div>
            <div class="modal-footer justify-content-center border-0">
                <button type="button" class="btn btn-primary" data-bs-dismiss="modal">Oke</button>
            </div>
        </div>
    </div>
</div>

<!-- Modal untuk konfirmasi ID pembayaran awal -->
<div class="modal fade" id="initialMessageModal" tabindex="-1" aria-labelledby="initialMessageModalLabel"
    aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered">
        <div class="modal-content bg-dark text-light" style="border-radius: 10px;">
            <div class="modal-header border-0 d-flex flex-column align-items-center" style="padding-bottom:0;">
                <h4 class="modal-title text-center" id="initialMessageModalLabel"
                    style="font-size: 24px; font-weight: bold;">
                    Konfirmasi Pembayaran
                </h4>
            </div>
            <div class="modal-body text-center" style="padding-top:10px;">
                <p id="initialMessageText">Membuat ID pembayaran kamu...</p>
            </div>
            <div class="modal-footer justify-content-center border-0">
                <button type="button" class="btn btn-primary" onclick="proceedWithPayment()"
                    data-bs-dismiss="modal">Lanjutkan</button>
            </div>
        </div>
    </div>
</div>
<!-- Modal untuk QRIS -->
<div class="modal fade" id="qrisModal" tabindex="-1" aria-labelledby="qrisModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered">
        <div class="modal-content bg-dark text-light" style="border-radius: 10px;">
            <div class="modal-header border-0 d-flex flex-column align-items-center" style="padding-bottom:0;">
                <h4 class="modal-title text-center" id="qrisModalLabel" style="font-size: 24px; font-weight: bold;">
                    QRIS Pembayaran
                </h4>
            </div>
            <div class="modal-body text-center" style="padding-top:10px;">
                <div id="qrisContainer"></div>
                <p style="margin-top: 10px;">Scan untuk pembayaran melalui QRIS</p>
            </div>
            <div class="modal-footer justify-content-center border-0">
                <button type="button" class="btn btn-primary" data-bs-dismiss="modal">Cek Status</button>
            </div>
        </div>
    </div>
</div>
<!-- Modal untuk Virtual Account -->
<div class="modal fade" id="vaModal" tabindex="-1" aria-labelledby="vaModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered">
        <div class="modal-content bg-dark text-light" style="border-radius: 10px;">
            <div class="modal-header border-0 d-flex flex-column align-items-center" style="padding-bottom:0;">
                <h4 class="modal-title text-center" id="vaModalLabel" style="font-size: 24px; font-weight: bold;">
                    Virtual Account Pembayaran
                </h4>
            </div>
            <div class="modal-body text-center" style="padding-top:10px;">
                <p><strong>Nomor Virtual Account:</strong></p>
                <p id="virtualAccountNumber" style="font-size: 20px; color: #FFD700; margin-bottom: 10px;"></p>
                <p style="margin-top: 10px;">Silakan masukkan nomor ini di aplikasi mobile banking Anda.</p>
            </div>
            <div class="modal-footer justify-content-center border-0">
                <button type="button" class="btn btn-primary" data-bs-dismiss="modal"
                    onclick="proceedWithPayment()">Lanjutkan</button>
            </div>
        </div>
    </div>
</div>

@endsection
@push('script')
<script>
    let selectedMethod = '';

    function selectPaymentMethod(method) {
        selectedMethod = method;
    }

    function submitForm() {
        if (!selectedMethod) {
            const choosePaymentMethodModal = new bootstrap.Modal(document.getElementById('choosePaymentMethodModal'), {
                keyboard: false
            });
            choosePaymentMethodModal.show();
            return;
        }

        let initialMessage = '';
        if (selectedMethod === 'qris') {
            initialMessage = "Membuat ID pembayaran kamu... Menampilkan QRIS";
        } else if (selectedMethod === 'va') {
            initialMessage = "Membuat ID pembayaran kamu... Menampilkan kode Virtual Account";
        } else if (selectedMethod === 'ewallet') {
            initialMessage = "Sedang redirecting ke payment page Shopee";
            window.open('https://shopee.co.id', '_blank');
        }

        document.getElementById('initialMessageText').textContent = initialMessage;

        const initialMessageModal = new bootstrap.Modal(document.getElementById('initialMessageModal'), {
            keyboard: false
        });
        initialMessageModal.show();

        if (selectedMethod === 'qris') {
            initialMessageModal._element.addEventListener('hidden.bs.modal', function () {
                showQRIS();
            });
        } else if (selectedMethod === 'va') {
            initialMessageModal._element.addEventListener('hidden.bs.modal', function () {
                showVirtualAccount();
            });
        }
    }

    function proceedWithPayment() {
        setTimeout(() => {
            showVerificationModal();
        }, 3000);
    }

    function showQRIS() {
        const today = new Date();
        const dateStr = `${today.getDate()},${today.getMonth() + 1},${today.getFullYear()}`;
        const transactionId = generateTransactionID(36);

        const qrisUrl = `https://gstation.bintangtobing.com/payment/qris/${dateStr},${transactionId}`;

        document.getElementById("qrisContainer").innerHTML = "";

        new QRCode(document.getElementById("qrisContainer"), {
            text: qrisUrl,
            width: 256,
            height: 256
        });

        const qrisModal = new bootstrap.Modal(document.getElementById('qrisModal'), {
            keyboard: false
        });
        qrisModal.show();

        qrisModal._element.addEventListener('hidden.bs.modal', function () {
            proceedWithPayment();
        });
    }
    function showVirtualAccount() {
        const virtualAccountNumber = generateVirtualAccountNumber();
        document.getElementById('virtualAccountNumber').textContent = virtualAccountNumber;

        const vaModal = new bootstrap.Modal(document.getElementById('vaModal'), {
            keyboard: false
        });
        vaModal.show();

        vaModal._element.addEventListener('hidden.bs.modal', function () {
            proceedWithPayment();
        });
    }
    function generateVirtualAccountNumber() {
        const bankPrefix = '123';  // Contoh kode bank
        const accountNumber = Math.floor(Math.random() * 1000000000).toString().padStart(9, '0');
        return `${bankPrefix}${accountNumber}`;
    }

    function proceedWithPayment() {
        setTimeout(() => {
            showVerificationModal();
        }, 3000);
    }

    function showVerificationModal() {
        const verificationModal = new bootstrap.Modal(document.getElementById('verificationModal'), {
            keyboard: false
        });

        document.getElementById('verificationMessage').textContent = `Mohon tunggu sebentar, sedang memverifikasi pembayaran melalui ${selectedMethod === 'ewallet' ? 'e-wallet' : selectedMethod === 'qris' ? 'QRIS' : 'Virtual Account'} Anda...`;
        verificationModal.show();

        setTimeout(() => {
            verificationModal.hide();
            showSuccessModal();
        }, 7000);
    }

    function showSuccessModal() {
        const successModal = new bootstrap.Modal(document.getElementById('successModal'), {
            keyboard: false
        });

        document.getElementById('successMessage').textContent = `Pembayaran melalui ${selectedMethod === 'ewallet' ? 'e-wallet' : selectedMethod === 'qris' ? 'QRIS' : 'Virtual Account'} berhasil! Berikut voucher ID kamu:`;
        document.getElementById('voucherId').textContent = generateVoucherId();
        successModal.show();

        setTimeout(() => {
            window.location.href = '/';
        }, 3000);
    }

    function generateTransactionID(length) {
        const characters = 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789';
        let result = '';
        for (let i = 0; i < length; i++) {
            result += characters.charAt(Math.floor(Math.random() * characters.length));
        }
        return result;
    }

    function generateVoucherId() {
        const chars = 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789';
        let voucherId = '';
        for (let i = 0; i < 42; i++) {
            voucherId += (i > 0 && i % 8 === 0) ? '-' : chars.charAt(Math.floor(Math.random() * chars.length));
        }
        return voucherId;
    }
</script>

@endpush