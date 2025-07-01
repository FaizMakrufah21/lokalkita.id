<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Cart;
use App\Models\Product;
use Srmklive\PayPal\Services\PayPal as PayPalClient;
use DB;

class PaypalController extends Controller
{
    public function payment()
    {
        $cart = Cart::where('user_id', auth()->user()->id)->where('order_id', null)->get()->toArray();

        $items = array_map(function ($item) {
            $productName = Product::where('id', $item['product_id'])->value('title');
            return [
                'name' => $productName,
                'unit_amount' => [
                    'currency_code' => 'USD',
                    'value' => $item['price']
                ],
                'quantity' => $item['quantity'],
            ];
        }, $cart);

        $invoiceId = 'ORD-' . strtoupper(uniqid());
        $totalAmount = array_reduce($cart, function ($carry, $item) {
            return $carry + ($item['price'] * $item['quantity']);
        }, 0);

        $provider = new PayPalClient;
        $provider->setApiCredentials(config('paypal'));
        $token = $provider->getAccessToken();
        $provider->setAccessToken($token);

        $order = $provider->createOrder([
            "intent" => "CAPTURE",
            "application_context" => [
                "return_url" => route('payment.success'),
                "cancel_url" => route('payment.cancel'),
            ],
            "purchase_units" => [[
                "reference_id" => $invoiceId,
                "amount" => [
                    "currency_code" => "USD",
                    "value" => $totalAmount,
                    "breakdown" => [
                        "item_total" => [
                            "currency_code" => "USD",
                            "value" => $totalAmount
                        ]
                    ]
                ],
                "items" => $items
            ]]
        ]);

        return redirect($order['links'][1]['href']); // 'approve' URL
    }

    public function cancel()
    {
        dd('Your payment is canceled. You can create cancel page here.');
    }

    public function success(Request $request)
    {
        $provider = new PayPalClient;
        $provider->setApiCredentials(config('paypal'));
        $token = $provider->getAccessToken();
        $provider->setAccessToken($token);

        $response = $provider->capturePaymentOrder($request->token);

        if (isset($response['status']) && $response['status'] === 'COMPLETED') {
            request()->session()->flash('success', 'You successfully paid via PayPal! Thank you.');
            session()->forget('cart');
            session()->forget('coupon');
            return redirect()->route('home');
        }

        request()->session()->flash('error', 'Something went wrong, please try again.');
        return redirect()->back();
    }
}
