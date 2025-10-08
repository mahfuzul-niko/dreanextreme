@extends('admin.layouts.master')
@section('content')
@php
  $start_date = \Carbon\Carbon::now()->startOfMonth()->format('Y-m-d');
  $end_date = \Carbon\Carbon::now()->format('Y-m-d');
  $start_date='';
  $end_date='';
@endphp
<div class="content-header">
  <div class="container-fluid">
    <div class="row mb-2">
      <div class="col-sm-6">
        <h1 class="m-0">Orders</h1>
      </div><!-- /.col -->
    </div>
  </div>
</div>
<section class="content">
	<div class="container-fluid">
		<div class="card">
              <div class="card-header">
                <div class="row">
                  <div class="col-md-6">
                    <h4  class="mb-3">
                      <span class="border rounded p-1"> Total Orders : {{ count($orders) }} </span>
                  </h4>
                  
                  <h4>
                    <span class="border rounded p-1">Total Sold Amount : 
                    {{ 
                      $orders->filter(function($order){
                        return $order->order_status == 'delivered';
                      })->sum('price')
                  }} </span>
                </h4>
                  </div>
                  <div class="col-md-6">
                    <form action="{{ route('order.search') }}" method="get">
                      @csrf
                      <div class="row">
                        <div class="col-md-4">
                          <div class="form-group">
                            <label>Date From</label>
                            <input type="date" name="date_from" value="{{$start_date}}" class="form-control @error('date_from') is-invalid @enderror">
                            @error('date_from')
                                <span class="invalid-feedback" role="alert">
                                    <strong>{{ $message }}</strong>
                                </span>
                            @enderror
                          </div>
                        </div>
                        <div class="col-md-4">
                          <div class="form-group">
                            <label>Date To</label>
                            <input type="date" name="date_to" value="{{$end_date}}" class="form-control @error('date_to') is-invalid @enderror">
                            @error('date_to')
                                <span class="invalid-feedback" role="alert">
                                    <strong>{{ $message }}</strong>
                                </span>
                            @enderror
                          </div>
                        </div>
                        
                        <div class="col-md-4">
                          <div class="form-group">
                            <label style="color: #fff;">.</label>
                            <button type="submit" class="form-control btn  btn-primary">Search</button>
                          </div>
                        </div>
                      </div>
                    </form>
                  </div>
                </div>
                
              </div>
              <!-- /.card-header -->
              <div class="card-body table-responsive">
                <table id="example1" class="table table-bordered table-hover">
                  <thead>
	                  <tr>
	                    <th>S.N</th>
                      <th>Code</th>
	                    <th>Customer Name</th>
                      <th>Phone</th>
                      <th>Status</th>
                      <th>Date</th>
	                    <th>Action</th>
	                  </tr>
                  </thead>
                  <tbody>
	                  @foreach($orders as $order)
	                  	<tr>
		                    <td>{{ $loop->index + 1 }}</td>
		                    <td><a href="{{ route('order.edit', $order->id) }}">{{ $order->code }}</a></td>
                        <td>{{ $order->name }}</td>
                        <td>{{ $order->phone }}</td>
                        <td>
                          <span class="badge badge-@if($order->order_status == 'pending')primary @elseif($order->order_status == 'processing')dark @elseif($order->order_status == 'shipped')warning @elseif($order->order_status == 'delivered')success @elseif($order->order_status == 'canceled')danger @endif">{{ $order->order_status }}</span>
                        </td>
                        <td>{{\Carbon\Carbon::parse($order->created_at)->format('d M, Y g:iA')}}</td>
                        <td>
                          {{-- <a href="{{ route('order.invoice.generate', $order->id) }}" class="btn btn-secondary" title="Download Invoice"><i class="fas fa-download"></i></a> --}}
                          <a href="{{ route('order.edit', $order->id) }}" class="btn btn-primary" title="Edit"><i class="fas fa-edit"></i></a>
                          <a href="#deleteModal{{ $order->id }}" class="btn btn-danger" data-toggle="modal" title="Delete"><i class="fas fa-trash"></i></a>
                        </td>
		                </tr>
                    <!-- Delete order Modal -->
                        <div class="modal fade" id="deleteModal{{ $order->id }}" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                            <div class="modal-dialog" role="document">
                                <div class="modal-content">
                                    <div class="modal-body text-center">
                                      <h2 class="my-7"><b>Are tou sure you want to delete ?</b></h2>
                                        <form class="my-4" action="{{ route('order.destroy', $order->id) }}" method="POST">
                                            @csrf
                                            <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancel</button>
                                            <button type="submit" class="btn btn-danger">Permanent Delete</button>
                                        </form>
                                    </div>
                                    
                                </div>
                            </div>
                        </div>

	                  @endforeach
                  </tbody>
                </table>
              </div>
              <!-- /.card-body -->
            </div>
            <!-- /.card -->

            
	</div>
</section>
@endsection

@section('scripts')
	<script>
  $(function () {
    $("#example1").DataTable({
      "responsive": true, "lengthChange": false, "autoWidth": false,
      "buttons": ["copy", "csv", "excel", "pdf", "print", "colvis"]
    }).buttons().container().appendTo('#example1_wrapper .col-md-6:eq(0)');
    $('#example2').DataTable({
      "paging": true,
      "lengthChange": false,
      "searching": true,
      "ordering": true,
      "info": true,
      "autoWidth": false,
      "responsive": true,
    });
  });
</script>

<script>
    $('#district_id').change(function(){
        var district_id = $(this).val();
        if (district_id == ''){
            district_id = -1;
        }
        var option = "<option value=''>Please Select an Area (Optional)</option>";
        var url = "{{ url('/') }}";

        $.get( url + "/get-area/"+district_id, function( data ) {
            data = JSON.parse(data);
            data.forEach(function (element) {
                option += "<option value='"+ element.id +"'>"+ element.name + "</option>";
            });
            //console.log(option);
            $('#areas').html(option);
        });

    });
</script>
@endsection