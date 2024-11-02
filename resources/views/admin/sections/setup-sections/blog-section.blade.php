@php
    $default_lang_code = language_const()::NOT_REMOVABLE;
    $system_default_lang = get_default_language_code();
    $languages_for_js_use = $languages->toJson();
@endphp

@extends('admin.layouts.master')

@push('css')
    <link rel="stylesheet" href="{{ asset('public/backend/css/fontawesome-iconpicker.css') }}">
    <style>
        .fileholder {
            min-height: 374px !important;
        }

        .fileholder-files-view-wrp.accept-single-file .fileholder-single-file-view,
        .fileholder-files-view-wrp.fileholder-perview-single .fileholder-single-file-view {
            height: 330px !important;
        }
    </style>
@endpush

@section('page-title')
    @include('admin.components.page-title', ['title' => __($page_title)])
@endsection

@section('breadcrumb')
    @include('admin.components.breadcrumb', [
        'breadcrumbs' => [
            [
                'name' => __('Dashboard'),
                'url' => setRoute('admin.dashboard'),
            ],
        ],
        'active' => __('Setup Section'),
    ])
@endsection

@section('content')
    <div class="custom-card">
        <div class="card-header">
            <h6 class="title">{{ __($page_title) }}</h6>
        </div>
        <div class="card-body">
            <form class="card-form" action="{{ setRoute('admin.setup.sections.section.update', $slug) }}" method="POST"
                enctype="multipart/form-data">
                @csrf
                <div class="row justify-content-center mb-10-none">


                    <div class="col-xl-12 col-lg-12">
                        <div class="product-tab">
                            <nav>
                                <div class="nav nav-tabs" id="nav-tab" role="tablist">
                                    <button class="nav-link @if (get_default_language_code() == language_const()::NOT_REMOVABLE) active @endif"
                                        id="english-tab" data-bs-toggle="tab" data-bs-target="#english" type="button"
                                        role="tab" aria-controls="english" aria-selected="false">English</button>
                                    @foreach ($languages as $item)
                                        <button class="nav-link @if (get_default_language_code() == $item->code) active @endif"
                                            id="{{ $item->name }}-tab" data-bs-toggle="tab"
                                            data-bs-target="#{{ $item->name }}" type="button" role="tab"
                                            aria-controls="{{ $item->name }}"
                                            aria-selected="true">{{ $item->name }}</button>
                                    @endforeach

                                </div>
                            </nav>
                            <div class="tab-content" id="nav-tabContent">
                                <div class="tab-pane @if (get_default_language_code() == language_const()::NOT_REMOVABLE) fade show active @endif"
                                    id="english" role="tabpanel" aria-labelledby="english-tab">
                                    <div class="form-group">
                                        @include('admin.components.form.input', [
                                             'label' => __('Social Icon') . '*',
                                            'name' => $default_lang_code . '_social_icon',
                                            'value' => old(
                                                $default_lang_code . '_social_icon',
                                                $data->value->language->$default_lang_code->social_icon ?? ''),
                                            'class' =>
                                                'form--control icp icp-auto iconpicker-element iconpicker-input',
                                        ])
                                    </div>
                                    <div class="form-group">
                                        @include('admin.components.form.input', [
                                            'label' => __('Sub Heading')."*",
                                            'name' => $default_lang_code . '_sub_heading',
                                            'value' => old(
                                                $default_lang_code . '_sub_heading',
                                                $data->value->language->$default_lang_code->sub_heading ?? ''),
                                        ])
                                    </div>
                                    <div class="form-group">
                                        @include('admin.components.form.input', [
                                            'label' => __('Heading')."*",
                                            'name' => $default_lang_code . '_heading',
                                            'value' => old(
                                                $default_lang_code . '_heading',
                                                $data->value->language->$default_lang_code->heading ?? ''),
                                        ])
                                    </div>

                                </div>

                                @foreach ($languages as $item)
                                    @php
                                        $lang_code = $item->code;
                                    @endphp
                                    <div class="tab-pane @if (get_default_language_code() == $item->code) fade show active @endif"
                                        id="{{ $item->name }}" role="tabpanel" aria-labelledby="english-tab">
                                        <div class="form-group">
                                            @include('admin.components.form.input', [
                                                 'label' => __('Social Icon') . '*',
                                                'name' => $lang_code . '_social_icon',
                                                'value' => old(
                                                    $lang_code . '_social_icon',
                                                    $data->value->language->$lang_code->social_icon ?? ''),
                                                'class' =>
                                                    'form--control icp icp-auto iconpicker-element iconpicker-input',
                                            ])
                                        </div>
                                        <div class="form-group">
                                            @include('admin.components.form.input', [
                                                'label' => __('Sub Heading')."*",
                                                'name' => $item->code . '_sub_heading',
                                                'value' => old(
                                                    $item->code . '_sub_heading',
                                                    $data->value->language->$lang_code->sub_heading ?? ''),
                                            ])
                                        </div>
                                        <div class="form-group">
                                            @include('admin.components.form.input', [
                                                'label' => __('Heading')."*",
                                                'name' => $item->code . '_heading',
                                                'value' => old(
                                                    $item->code . '_heading',
                                                    $data->value->language->$lang_code->heading ?? ''),
                                            ])
                                        </div>


                                    </div>
                                @endforeach
                            </div>
                        </div>
                    </div>
                    <div class="col-xl-12 col-lg-12 form-group">
                        @include('admin.components.button.form-btn', [
                            'class' => 'w-100 btn-loading',
                            'text' => 'Submit',
                            'permission' => 'admin.setup.sections.section.update',
                        ])
                    </div>
                </div>
            </form>
        </div>
    </div>
    <div class="table-area mt-15">
        <div class="table-wrapper">
            <div class="table-header justify-content-end">
                <div class="table-btn-area">
                    <a href="#blog-add" class="btn--base modal-btn"><i class="fas fa-plus me-1"></i>
                        {{ __('Add Blog') }}</a>
                </div>
            </div>
            <div class="table-responsive">
                <table class="custom-table">
                    <thead>
                        <tr>
                            <th>{{ __('Category') }}</th>
                            <th>{{ __('Image') }}</th>
                            <th>{{ __('Name') }}</th>
                            <th>{{ __('Status') }}</th>
                            <th></th>
                        </tr>
                    </thead>
                    <tbody>
                        @forelse ($blogs?? [] as $key => $item)
                            <tr data-item="{{ $item->editData }}">
                                <td>{{ $item->category->name ?? '' }}</td>
                                <td>
                                    <ul class="user-list">
                                        <li><img src="{{ get_image($item->image ?? '', 'blog') }}" alt="product"></li>
                                    </ul>
                                </td>
                                <td>{{ @$item->name->language->$system_default_lang->name }}</td>
                                <td>
                                    @include('admin.components.form.switcher', [
                                        'name' => 'category_status',
                                        'value' => $item->status,
                                        'options' => [__('Enable') => 1, __('Disable') => 0],
                                        'onload' => true,
                                        'data_target' => $item->id,
                                        'permission' => 'admin.setup.sections.blog.status.update',
                                    ])
                                </td>

                                <td>
                                    <a href="{{ setRoute('admin.setup.sections.blog.edit', $item->id) }}"
                                        class="btn btn--base"><i class="las la-pencil-alt"></i></a>
                                    <button class="btn btn--base btn--danger delete-modal-button"><i
                                            class="las la-trash-alt"></i></button>
                                </td>
                            </tr>
                        @empty
                            @include('admin.components.alerts.empty', ['colspan' => 5])
                        @endforelse
                    </tbody>
                </table>
            </div>
        </div>
    </div>

    @include('admin.components.modals.site-section.add-blog-item')
@endsection

@push('script')
    <script src="{{ asset('public/backend/js/fontawesome-iconpicker.js') }}"></script>
    <script>
        // icon picker
        $('.icp-auto').iconpicker();
    </script>
    <script>
        openModalWhenError("blog-add", "#blog-add");
        openModalWhenError("blog-edit", "#blog-edit");

        var default_language = "{{ $default_lang_code }}";
        var system_default_language = "{{ $system_default_lang }}";
        var languages = "{{ $languages_for_js_use }}";
        languages = JSON.parse(languages.replace(/&quot;/g, '"'));

        $(".edit-modal-button").click(function() {
            var oldData = JSON.parse($(this).parents("tr").attr("data-item"));
            var editModal = $("#blog-edit");
            var category = oldData.category_id;
            var tags = oldData.tags;
            editModal.find("select[name=category_id]").val(category);

            editModal.find("form").first().find("input[name=target]").val(oldData.id);
            editModal.find("input[name=" + default_language + "_short_title]").val(oldData.short_title.language[
                default_language].short_title);
            editModal.find("input[name=" + default_language + "_name]").val(oldData.name.language[default_language]
                .name);
            editModal.find("textarea[name=" + default_language + "_details]").val(oldData.details.language[
                default_language].details);

            richTextEditorReinit(document.querySelector("#blog-edit textarea[name = " + default_language +
                "_details]"));

            $.each(languages, function(index, item) {
                editModal.find("form").first().find("input[name=target]").val(oldData.id);
                editModal.find("input[name=" + item.code + "_short_title]").val(oldData.short_title
                    .language[item.code]?.short_title);
                editModal.find("input[name=" + item.code + "_name]").val(oldData.name.language[item
                        .code]
                    ?.name);
                editModal.find("textarea[name=" + item.code + "_details]").val(oldData.details.language[
                    item
                    .code]?.details);
                richTextEditorReinit(document.querySelector("#blog-edit textarea[name=" + item.code +
                    "_details]"));
            });

            editModal.find("input[name=image]").attr("data-preview-name", oldData
                .image);
            fileHolderPreviewReInit("#blog-edit input[name=image]");
            // tags
            var blogTags = tags;
            var options = "";
            $.each(blogTags, function(index, item) {

                options += `<option value="${item}" selected>${item}</option>`;

            });
            var seletedTags = `<select class="form--control select2-auto-tokenize" data-tags="true" name="tags[]" multiple
                            data-placeholder="Select Tags">
                            ${options}
                        </select>`;

            editModal.find(".tags select").remove();
            editModal.find(".tags .select2").remove();
            editModal
                .find(".tags").append(seletedTags);
            editModal.find(".tags select")
                .select2();
            openModalBySelector("#blog-edit");

        });

        $(".delete-modal-button").click(function() {
            var oldData = JSON.parse($(this).parents("tr").attr("data-item"));

            var actionRoute = "{{ setRoute('admin.setup.sections.blog.delete') }}";
            var target = oldData.id;

            var message = `Are you sure to <strong>delete</strong> item?`;

            openDeleteModal(actionRoute, target, message);
        });
        $(document).ready(function() {
            // Switcher
            switcherAjax("{{ setRoute('admin.setup.sections.blog.status.update') }}");
        })
    </script>
@endpush
