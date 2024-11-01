<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\SiteController;
use App\Http\Controllers\MessageController;
use App\Http\Controllers\SubscribeController;
use App\Http\Controllers\TopUpGameController;

Route::get('/', function () {
    return view('frontend.index');
});

Route::controller(SiteController::class)->group(function () {
    Route::get('/', 'index')->name('index');
    Route::get('topup', 'topup')->name('topup');
    Route::get('about', 'about')->name('about');
    Route::get('faq', 'faq')->name('faq');
    Route::get('contact', 'contact')->name('contact');
    Route::get('change/{lang?}', 'changeLanguage')->name('lang');

    Route::get('blog', 'blog')->name('blog');
    Route::get('blog/details/{id}/{slug}', 'blogDetails')->name('blog.details');
    Route::get('blog/by/category/{id}/{slug}', 'blogByCategory')->name('blog.by.category');
});

Route::controller(TopUpGameController::class)->prefix('top-up')->name('top.up.')->group(function () {
    Route::get('details/{slug}', 'detailsTopUp')->name('details');
    Route::post('submit', 'TopUpSubmit')->name('submit');
    Route::get('preview/{token}', 'preview')->name('preview');
    Route::post('preview/submit', 'previewSubmit')->name('preview.submit');
    Route::get('checkout/{token}', 'checkout')->name('checkout');

    Route::post('order', 'order')->name('order')->middleware('auth');
    Route::get('success/response/paypal/{gateway}', 'success')->name('payment.success');
    Route::get("cancel/response/paypal/{gateway}", 'cancel')->name('payment.cancel');
    // Controll AJAX Resuest
    Route::post("xml/currencies", "getCurrenciesXml")->name("xml.currencies");
    Route::get('payment/{gateway}', 'payment')->name('payment');
    Route::get('stripe/payment/success/{trx}', 'stripePaymentSuccess')->name('stripe.payment.success');
    Route::get('flutterwave/callback', 'flutterwaveCallback')->name('flutterwave.callback');
    //manual gateway
    Route::get('manual/payment', 'manualPayment')->name('manual.payment');
    Route::post('manual/payment/confirmed', 'manualPaymentConfirmed')->name('manual.payment.confirmed');
    //global
    Route::post("callback/response/{gateway}", 'callback')->name('payment.callback')->withoutMiddleware(['web', 'banned.user', 'auth', 'verification.guard', 'user.google.two.factor']);
    //Razorpay
    //redirect with Btn Pay
    Route::get('redirect/btn/checkout/{gateway}', 'redirectBtnPay')->name('payment.btn.pay')->withoutMiddleware(['auth', 'verification.guard', 'user.google.two.factor']);

    Route::get('success/response/{gateway}', 'successGlobal')->name('payment.global.success');
    Route::get("cancel/response/{gateway}", 'cancelGlobal')->name('payment.global.cancel');
    // POST Route For Unauthenticated Request
    Route::post('success/response/{gateway}', 'postSuccess')->name('payment.global.success')->withoutMiddleware(['auth', 'banned.user', 'verification.guard', 'user.google.two.factor']);
    Route::post('cancel/response/{gateway}', 'postCancel')->name('payment.global.cancel')->withoutMiddleware(['auth', 'banned.user', 'verification.guard', 'user.google.two.factor']);
    //search
    Route::post('search', 'search')->name('search');
});

Route::get('page/{slug}', [SiteController::class, 'usefullLink'])->name('usefullLink');
Route::post('/subscribe', [SubscribeController::class, 'subscribe'])->name('subscribe');
Route::post('/message', [MessageController::class, 'message'])->name('message');