<?php

return [
    'superKey' => env('MIDTRANS_SERVER_KEY'),
    'isProduction' => env('MIDTRANS_CLIENT_KEY'),
    'isSanitized' => env('MIDTRANS_IS_PRODUCTION'),
    'is3ds' => env('MIDTRANS_IS_SANITIZED'),
];