<nav class="navbar-wrapper">
    <div class="dashboard-title-part">
        <div class="left">
            <div class="icon">
                <button class="sidebar-menu-bar">
                    <i class="las la-exchange-alt"></i>
                </button>
            </div>

            @yield('breadcrumb')

        </div>
        <div class="right">
            <form class="header-search-wrapper">
                <div class="position-relative search-wrapper">
                    <input class="form--control sidebar-search-input" type="search"
                        placeholder="{{ __('Ex: Transaction, Add Money') }}" aria-label="Search">
                    <span class="las la-search"></span>
                </div>
                <div class="sidebar-search-result"></div>

            </form>
            <div class="header-push-wrapper">
                <button class="push-icon">
                    <i class="las la-bell"></i>
                </button>
                <div class="push-wrapper">
                    <div class="push-header">
                        <h5 class="title">{{ __('Notification') }}</h5>
                    </div>
                    <ul class="push-list">
                        @foreach (get_user_notifications() as $item)
                            <li>
                                <div class="thumb">
                                    <img src="{{ auth()->user()->userImage }}" alt="user">
                                </div>
                                <div class="content">
                                    <div class="title-area">
                                        <h5 class="title">{{ $item->message->title }}</h5>
                                        <span class="time">{{ $item->created_at->diffForHumans() }}</span>
                                    </div>
                                    <span class="sub-title">{{ $item->message->message }}</span>
                                </div>
                            </li>
                        @endforeach


                    </ul>
                </div>
            </div>
            <div class="header-user-wrapper">
                <div class="header-user-thumb">
                    <a href="{{ route('user.profile.index') }}"><img src="{{ auth()->user()->userImage }}"
                            alt="client"></a>
                </div>
            </div>
        </div>
    </div>
</nav>
