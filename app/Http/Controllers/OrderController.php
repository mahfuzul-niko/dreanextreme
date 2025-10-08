<?php

namespace App\Http\Controllers;

use PDF;
use Auth;

use Alert;
use Session;
use Carbon\Carbon;
use App\Models\Order;
use App\Models\OrderStatus;
use App\Models\Service;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class OrderController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        if (Auth::user()->type == 1) {
            $orders = Order::orderBy('id', 'DESC')->get();
            return view('admin.order.index', compact('orders'));
        }
        else{
            Alert::toast('Access Denied !', 'error');
        }
    }

    public function current_year()
    {
        if (Auth::user()->type == 1) {
            $orders = Order::whereYear('created_at', Carbon::now()->year)->get();
            return view('admin.order.current-year', compact('orders'));
        }
        else{
            Alert::toast('Access Denied !', 'error');
        }
    }

    public function current_month()
    {
        if (Auth::user()->type == 1) {
            $orders = Order::whereYear('created_at', Carbon::now()->year)->get();
            return view('admin.order.current-month', compact('orders'));
        }
        else{
            Alert::toast('Access Denied !', 'error');
        }
    }

    public function today()
    {
        if (Auth::user()->type == 1) {
            $orders = Order::whereDate('created_at', Carbon::today())->get();
            return view('admin.order.current-month', compact('orders'));
        }
        else{
            Alert::toast('Access Denied !', 'error');
        }
    }

    public function search(Request $request)
    {
        if (Auth::user()->type == 1) {
            $ordersQuery = Order::query();

        if (!empty($request->order_status_id)) {
            $ordersQuery->where('order_status_id', $request->order_status_id);
        }

        if (!empty($request->date_from) && !empty($request->date_to)) {
            $start_date = Carbon::createFromFormat('Y-m-d H:i:s', $request->date_from . ' 00:00:00');
            $end_date = Carbon::createFromFormat('Y-m-d H:i:s', $request->date_to . ' 23:59:59');
            $ordersQuery->whereBetween('created_at', [$start_date, $end_date]);
        }

        $orders = $ordersQuery->orderBy('id', 'DESC')->get();


            return view('admin.order.index', compact('orders'));
        }
        else{
            abort(403, 'Unauthorized action.');
        }
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Order  $order
     * @return \Illuminate\Http\Response
     */
    public function show(Order $order)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Order  $order
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        if (Auth::user()->type == 1) {
            $order = Order::find($id);
            return view('admin.order.edit', compact('order'));
        }
        else{
            Alert::toast('Access Denied !', 'error');
            return back();
        }
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Order  $order
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Order $order)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Order  $order
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        if (Auth::user()->type == 1) {
            $order = Order::find($id);
            if (!is_null($order)) {
                foreach ($order->order_product as $product) {
                    $product->delete();
                }
                $order->delete();
                Alert::toast('Order deleted successfully!', 'success');
                return redirect()->route('order.index');
            }
            else{
                Alert::toast('Something went wrong !', 'error');
                return back();
            }
        }
        else{
            Alert::toast('Access Denied !', 'error');
            return back();
        }
    }

    public function change_status(Request $request, $id)
    {
        if (Auth::user()->type == 1 || Auth::user()->type == 3) {
            $order = Order::find($id);
            if (!is_null($order)) {
                if($order->order_status <> $request->order_status_id) {
                    $order->order_status = $request->order_status_id;
                    $status = $order->save();
                    if($status) {
                        $order_status_info = new OrderStatus;
                        $order_status_info->order_code = $order->code;
                        $order_status_info->status = $request->order_status_id;
                        $order_status_info->status_changed_by = Auth::user()->id;
                        $order_status_info->created_at = now();
                        $order_status_info->save();
                    }
                    Alert::toast('Status Updated !', 'success');
                }
                else {
                    Alert::toast('Order Status Already '.$request->order_status_id.'!', 'error');
                }

                return back();
            }
            else{
                Alert::toast('Something went wrong !', 'error');
                return back();
            }
        }
        else{
            Alert::toast('Access Denied !', 'error');
            return back();
        }
    }

    public function change_payment_status(Request $request, $id)
    {
        if (Auth::user()->type == 1) {
            $order = Order::find($id);
            if (!is_null($order)) {
                $order->payment_status = $request->payment_status;
                $order->save();
                Alert::toast('Status Updated !', 'success');
                return back();
            }
            else{
                Alert::toast('Something went wrong !', 'error');
                return back();
            }
        }
        else{
            Alert::toast('Access Denied !', 'error');
            return back();
        }
    }

    public function generate_invoice($id)
    {
        $order =Order::find($id);
        if (!is_null($order)) {
            return view('admin.invoice.generate', compact('order'));

            // $pdf = PDF::loadView('admin.invoice.generate', compact('order'));
            // return $pdf->stream($order->code.'.pdf');
            // return $pdf->download($order->code.'.pdf');
        }
        else{
            Alert::toast('Invoice Not Found!', 'error');
            return back();
        }
    }

    public function orders_by_status($id)
    {
        if (Auth::user()->type == 1) {
            $orders = Order::where('order_status', $id)->orderBy('id', 'DESC')->get();
            return view('admin.order.index', compact('orders'));
        }
        else{
            Alert::toast('Access Denied !', 'error');
        }
    }


    /**********************
     * service section
    */
    public function serviceList(Request $request)
    {
        if (Auth::user()->type == 1) {
            $services = DB::table('service')->get();
            return view('admin.order.service', compact('services'));
        }
        else{
            Alert::toast('Access Denied!', 'error');
            return back();
        }
    }

    public function serviceDelete($id)
    {
        if (Auth::user()->type == 1) {
            $service = Service::find($id);
            if (!is_null($service)) {
                $service->delete();
                Alert::toast('Deleted successfully!', 'success');
                return redirect()->back();
            }
            else{
                Alert::toast('Something went wrong !', 'error');
                return back();
            }
        }
        else{
            Alert::toast('Access Denied !', 'error');
            return back();
        }
    }
}
