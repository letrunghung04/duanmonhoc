<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8" />
    <title>@yield('title')</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="A fully featured admin theme which can be used to build CRM, CMS, etc." />
    <meta name="author" content="Zoyothemes" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <link rel="stylesheet" href="{{ asset('lib/bootstrap.min.css') }}">
    <script src="{{ asset('lib/bootstrap.bundle.min.js') }}"></script>
    <script src="{{ asset('lib/angular.min.js') }}"></script>
    <script src="{{ asset('lib/angular-route.js') }}"></script>
    <script src="{{ asset('lib/font-fontawesome-ae333ffef2.js') }}"></script>
    <link rel="shortcut icon" href="{{ asset('assets/admin/images/favicon.ico ') }} ">
    <link href="{{ asset('assets/admin/css/app.min.css') }}" rel="stylesheet" type="text/css" id="app-style " />
    <link href="{{ asset('assets/admin/css/icons.min.css') }}" rel="stylesheet" type="text/css " />
    @yield('css')
    <style>
        * {
            font-family: "Times New Roman", Times, serif;
        }

        a {
            text-decoration: none;
            color: white;
        }
    </style>
</head>

<body data-menu-color="light" data-sidebar="default">

    <!-- Begin page -->
    <div id="app-layout">

        @include('admins.blocks.header')

        @include('admins.blocks.sidebar')

        <!-- ============================================================== -->
        <!-- Start Page Content here -->
        <!-- ============================================================== -->

        <div class="content-page">
            @yield('content')

            @include('admins.blocks.footer')
            
        </div>
        <!-- ============================================================== -->
        <!-- End Page content -->
        <!-- ============================================================== -->

    </div>
    <!-- END wrapper -->

    <!-- Vendor -->
    {{-- <script src="{{ asset('assets/admin/libs/jquery/jquery.min.js')}}"></script>
    <script src="{{ asset('assets/admin/libs/bootstrap/js/bootstrap.bundle.min.js')}}"></script>
    <script src="{{ asset('assets/admin/libs/simplebar/simplebar.min.js')}}"></script>
    <script src="{{ asset('assets/admin/libs/node-waves/waves.min.js')}}"></script>
    <script src="{{ asset('assets/admin/libs/waypoints/lib/jquery.waypoints.min.js')}}"></script>
    <script src="{{ asset('assets/admin/libs/jquery.counterup/jquery.counterup.min.js')}}"></script>
    <script src="{{ asset('assets/admin/libs/feather-icons/feather.min.js')}}"></script> --}}

    <!-- Apexcharts JS -->
    <script src="{{ asset('assets/admin/libs/apexcharts/apexcharts.min.js')}}"></script>

    <!-- for basic area chart -->
    {{-- <script src="{{ asset('assets/admin/apexcharts.com/samples/assets/stock-prices.js ')}}"></script> --}}

    <!-- Widgets Init Js -->

    @yield('js')
    <!-- App js-->
    <script src="{{ asset('assets/admin/js/app.js ')}}"></script>

</body>
@yield('js')

</html>
