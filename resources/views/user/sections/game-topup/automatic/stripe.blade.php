@extends('frontend.layouts.master')

@push('css')
<style>
    .jp-card .jp-card-back,
    .jp-card .jp-card-front {

        background-image: linear-gradient(160deg, #084c7c 0%, #55505e 100%) !important;
    }
</style>
@endpush

@section('content')
<div class="row justify-content-center ptb-120">
    <div class="col-lg-8">
        <div class="dash-payment-item-wrapper">
            <div class="dash-payment-item active">
                <div class="dash-payment-title-area d-flex align-items-center justify-content-between">
                    <div class="wrapper d-flex align-items-center">
                        <span class="dash-payment-badge">!</span>
                        <h5 class="title">@lang('Stripe Payment')</h5>
                    </div>
                    <a class="btn btn--danger rounded text-light"
                        href="{{ route('top.up.payment.cancel', @$hasData->type) }}">Cancel</a>
                </div>
                <div class="dash-payment-body">
                    <div class="card-wrapper"></div>
                    <br><br>

                    <form role="form" id="payment-form" action="{{ route('top.up.stripe.payment.confirmed') }}"
                        method="POST">
                        @csrf
                        {{-- <input type="hidden" name="token"> --}}
                        <div class="row">
                            <div class="col-md-6">
                                <label for="name" class="form--label">@lang('Name on Card')</label>
                                <div class="input-group">
                                    <input type="text" class="form--control custom-input" name="name" autocomplete="off"
                                        autofocus required />
                                    <span class="input-group-text bg--base"><i class="fa fa-font"></i></span>
                                </div>

                            </div>
                            <div class="col-md-6">
                                <label for="cardNumber" class="form--label">@lang('Card Number')</label>
                                <div class="input-group">
                                    <input type="tel" class="form--control custom-input" name="cardNumber"
                                        autocomplete="off" required autofocus required />
                                    <span class="input-group-text bg--base"><i class="fa fa-credit-card"></i></span>
                                </div>
                            </div>
                        </div>

                        <div class="row mt-4">
                            <div class="col-md-6">
                                <label for="cardExpiry" class="form--label">@lang('Expiration Date')</label>
                                <input type="tel" class="form--control input-sz custom-input" name="cardExpiry"
                                    autocomplete="off" required />
                            </div>
                            <div class="col-md-6 ">
                                <label for="cardCVC" class="form--label">@lang('CVC Code')</label>
                                <input type="tel" class="form--control input-sz custom-input" name="cardCVC"
                                    autocomplete="off" required />
                            </div>
                        </div>
                        <br>
                        <div class="btn-area text-center">
                            <button class="btn--base w-75 btn-loading my-3" type="submit">
                                {{-- @dd($hasData) --}}
                                @lang('PAY NOW') ( {{ number_format(@$hasData->data->amount->total_amount, 2) }}
                                {{ @$hasData->data->amount->sender_cur_code }} )
                            </button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection

@push('script')
<script src="{{ asset('frontend/') }}/js/card.js"></script>

<script>
    (function($) {
            "use strict";
            var card = new Card({
                form: '#payment-form',
                container: '.card-wrapper',
                formSelectors: {
                    numberInput: 'input[name="cardNumber"]',
                    expiryInput: 'input[name="cardExpiry"]',
                    cvcInput: 'input[name="cardCVC"]',
                    nameInput: 'input[name="name"]'
                }
            });
        })(jQuery);
</script>
<script>
    $('.cancel-btn').click(function() {
            var dataHref = $(this).data('href');
            if (confirm("Are you sure?") == true) {
                window.location.href = dataHref;
            }
        });
</script>
@endpush
