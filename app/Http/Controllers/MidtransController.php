<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Cart;
use App\Models\Product;
use Midtrans\Snap;
use Midtrans\Config;
use DB;

class MidtransController extends Controller
{
    public function payment()
    {
        $cart = Cart::where('user_id', auth()->user()->id)
            ->where('order_id', null)
            ->get()
            ->toArray();

        $data = [];

        // return $cart;
        $data['items'] = array_map(function ($item) use ($cart) {
            $name = Product::where('id', $item['product_id'])->pluck('title');
            return [
                'name' => $name,
                'price' => $item['price'],
                'desc'  => 'Thank you for using midtrans',
                'qty' => $item['quantity']
            ];
        }, $cart);

        $data['invoice_id'] = 'ORD-'.strtoupper(uniqid());
        $data['invoice_description'] = "Order #{$data['invoice_id']} Invoice";
        $data['return_url'] = route('payment.success');
        $data['cancel_url'] = route('payment.cancel');

        $total = 0;
        foreach ($data['items'] as $item) {
            $total += $item['price'] * $item['qty'];
        }

        $data['total'] = $total;
        if (session('coupon')) {
            $data['shipping_discount'] = session('coupon')['value'];
        }
        Cart::where('user_id', auth()->user()->id)
        ->where('order_id', null)
        ->update(['order_id' => session()
        ->get('id')]);


        Config::$serverKey = env('MIDTRANS_SERVER_KEY');
        Config::$isProduction = false;
        Config::$isSanitized = true;
        Config::$is3ds = true;

        $params = [
            'transaction_details' => [
                'order_id' => rand(),
                'total_amount' => $item['price'],
            ],
            'item_details' => $item,
            'customer_details' => [
                'first_name' => auth()->user()->name,
                'email' => auth()->user()->email,
            ],
        ];

        $snapToken = Snap::getSnapToken($params);

        $order->snap_token = $snapToken;
        $order->save();

        return view('midtrans.payment', compact('snapToken'));
    }

    public function cancel()
    {
        dd('Your payment is canceled. You can create cancel page here.');
    }

    public function success(Request $request)
    {
        // This part usually handled by Midtrans callback/notification
        // For now we simulate a success page

        request()->session()->flash('success', 'You successfully paid via Midtrans! Thank you.');
        session()->forget('cart');
        session()->forget('coupon');

        return redirect()->route('home');
    }
}
