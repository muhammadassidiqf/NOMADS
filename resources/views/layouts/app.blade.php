<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    @include('includes.style')
    @stack('prepend-style')
    <title>@yield('title')</title>
    @stack('addon-style')
  </head>
  <body>
    @include('includes.navbar')
    @yield('content')
    @include('includes.footer')
    @stack('prepend-script')
    @include('includes.script')
    @stack('addon-script')
  </body>
</html>
