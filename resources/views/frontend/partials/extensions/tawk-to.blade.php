{{-- @if (count($__extensions) > 0) --}}
    @php
        // $tawk_to = $__extensions->where("slug", "tawk-to")->first();
        $property_id = "Property ID";
        $widget_id = "Widget ID";
    @endphp

    {{-- @if ($tawk_to && isset($tawk_to->shortcode->$property_id->value) && isset($tawk_to->shortcode->$widget_id->value) && $tawk_to->status == 1) --}}
        <script type="text/javascript">
            var property = "6711e7fc4304e3196ad38adc}";
            var widget = "1iaev4dfa";

            if (property.length > 0 && widget.length > 0) {
                var Tawk_API = Tawk_API || {}, Tawk_LoadStart = new Date();
                (function() {
                    var s1 = document.createElement("script"), s0 = document.getElementsByTagName("script")[0];
                    s1.async = true;
                    s1.src = `https://embed.tawk.to/${property}/${widget}`;
                    s1.charset = 'UTF-8';
                    s1.setAttribute('crossorigin', '*');
                    s0.parentNode.insertBefore(s1, s0);
                })();
            }
        </script>
    {{-- @endif --}}
{{-- @endif --}}
