@extends('admin.layouts.master')
@section('content')
<div class="content-header">
  <div class="container-fluid">
    <div class="row mb-2">
      <div class="col-sm-6">
        <h1 class="m-0">Service</h1>
      </div><!-- /.col -->
    </div>
  </div>
</div>
<section class="content">
	<div class="container-fluid">
		<div class="card">
              <div class="card-header">
                <h4>Totoal Service List : {{ count($services) }}</h4>
              </div>
              <!-- /.card-header -->
              <div class="card-body table-responsive">
                <table id="example1" class="table table-bordered table-hover">
                  <thead>
	                  <tr>
	                    <th>S.N</th>
                      <th>Date</th>
	                    <th>Customer</th>
                      <th>Phone</th>
                      <th>Email</th>
                      <th>Image</th>
                      <th>Issues</th>
	                    <th>Action</th>
	                  </tr>
                  </thead>
                  <tbody>
	                  @foreach($services as $service)
	                  	<tr>
		                    <td>{{ $loop->index + 1 }}</td>
                        <td>{{\Carbon\Carbon::parse($service->created_at)->format('d M, Y g:iA')}}</td>
                        <td>{{ $service->name ?? '' }}</td>
                        <td>{{ $service->phone ?? '' }}</td>
                        <td>{{ $service->email ?? '' }}</td>
                        <td>
                          <img src="{{ asset('images/service/'. $service->image) }}" alt="{{ $service->name }}" class="img-fluid">
                        </td>
                        </td>
                        <td>{!! $service->device_issue ?? '' !!}</td>

                        <td>                         
                          <a href="#deleteModal{{ $service->id }}" class="btn btn-sm btn-danger" data-toggle="modal" title="Delete"><i class="fas fa-trash"></i></a>
                          {{-- <a href="{{ route('service.edit', $service->id )}}" class="btn btn-sm btn-success"><i class="fas fa-edit"></i></a> --}}

                        </td>
		                </tr>
                    <!-- Delete order Modal -->
                        <div class="modal fade" id="deleteModal{{ $service->id }}" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                            <div class="modal-dialog" role="document">
                                <div class="modal-content">
                                    <div class="modal-body text-center">
                                      <h2 class="my-7"><b>Are tou sure you want to delete ?</b></h2>
                                        <form class="my-4" action="{{ route('service.destroy', $service->id) }}" method="POST">
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