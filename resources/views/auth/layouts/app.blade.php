<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    @include('auth.template.header')
    <title>@yield('title')</title>
  </head>
  <body>
    @yield('content')
    @include('auth.template.script')
  </body>
</html>
