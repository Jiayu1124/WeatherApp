<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8" />
    <meta name="csrf-token" content="{{ csrf_token() }}" />
    <title>Weather App</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <!-- Bootstrap Css -->
    <link href="{{asset('assets/css/bootstrap.min.css')}}" id="bootstrap-style" rel="stylesheet" type="text/css" />
    <!-- Icons Css -->
    <link href="{{asset('assets/css/icons.min.css')}}" rel="stylesheet" type="text/css" />
    <link href="{{asset('assets/css/custom.css')}}" rel="stylesheet" type="text/css" />

    <!-- App Css-->
    <link href="{{asset('assets/css/app.min.css')}}" id="app-style" rel="stylesheet" type="text/css" />
    <link href="{{asset('assets/libs/dropzone/min/dropzone.min.css')}}" rel="stylesheet" type="text/css" />
    <link href="{{asset('assets/libs/sweetalert2/sweetalert2.min.css')}}" rel="stylesheet" type="text/css" />

    <script src="https://unpkg.com/vue-select@latest"></script>
    <link rel="stylesheet" href="https://unpkg.com/vue-select@latest/dist/vue-select.css">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/vue/2.5.17/vue.js"></script>

</head>

<body data-sidebar="dark">
    <!-- Begin page -->
    <div id="layout-wrapper">

        @include('shared.sidebar')
        @include('shared.header')
        @yield('content')
        @include('shared.footer')

    </div>
    <!-- END layout-wrapper -->

    <!-- JAVASCRIPT -->
    <script src="{{asset('assets/libs/jquery/jquery.min.js')}}"></script>
    <script src="{{asset('assets/libs/bootstrap/js/bootstrap.bundle.min.js')}}"></script>
    <script src="{{asset('assets/libs/metismenu/metisMenu.min.js')}}"></script>
    <script src="{{asset('assets/libs/simplebar/simplebar.min.js')}}"></script>
    <script src="{{asset('assets/libs/node-waves/waves.min.js')}}"></script>


    <!-- dashboard init -->
    <script src="{{asset('assets/js/pages/dashboard.init.js')}}"></script>
    <script src="{{asset('assets/libs/dropzone/min/dropzone.min.js')}}"></script>

    <!-- App js -->
    <script src="{{ asset('js/app.js') }}" defer></script>



    @yield('js')
    @stack('page-script')
</body>

</html>