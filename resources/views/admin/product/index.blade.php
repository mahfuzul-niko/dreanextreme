@extends('admin.layouts.master')
@section('content')
    <!-- Content Header (Page header) -->
    <div class="content-header">
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-sm-6">
                    <h1 class="m-0">Products</h1>
                </div><!-- /.col -->
                <div class="col-sm-6 text-right">
                    <a href="{{ route('product.create') }}" class="btn btn-primary btn-rounded"><i class="fas fa-plus"></i> Add
                        Product</a>
                </div><!-- /.col -->
            </div><!-- /.row -->
        </div><!-- /.container-fluid -->
    </div>
    <!-- /.content-header -->
    <section class="content">
        <div class="container-fluid">
            <div class="card">
                <!-- /.card-header -->

                <div class="card-body table-responsive">

                    <form action="{{ route('product.bulk.action') }}" method="POST" id="bulkForm">
                        @csrf

                        <table id="example2" class="table table-bordered table-hover">
                            <thead>
                                <tr>
                                    <th width="7%">
                                        <div class="form-check">
                                            <input class="form-check-input" type="checkbox" id="select-all">
                                            <label class="form-check-label" for="select-all">All</label>
                                        </div>
                                    </th>
                                    <th width="5%">S.N</th>
                                    <th width="30%">Title</th>
                                    <th>Image</th>
                                    <th>Brand</th>
                                    <th>Type</th>
                                    <th>Status</th>
                                    <th>Action</th>
                                </tr>
                            </thead>

                            <tbody>
                                @foreach ($products as $product)
                                    <tr>
                                        <td class="">
                                            <div class="form-check">
                                                <input class="form-check-input product-checkbox" type="checkbox"
                                                    name="ids[]" value="{{ $product->id }}"
                                                    id="check{{ $product->id }}">
                                                <label class="form-check-label" for="check{{ $product->id }}">
                                                    Select
                                                </label>
                                            </div>
                                        </td>

                                        <td>{{ $loop->index + 1 }}</td>
                                        <td>{{ $product->title }}</td>
                                        <td><img src="{{ asset('/images/product/' . $product->thumbnail_image) }}"
                                                width="100px" class="shadow rounded p-1"></td>
                                        <td>{{ $product->brand->title ?? '' }}</td>
                                        <td>{{ $product->type }}</td>
                                        <td>
                                            <span
                                                class="badge badge-{{ $product->is_active ? 'success' : 'danger' }}">{{ $product->is_active ? 'Active' : 'Inactive' }}</span>
                                        </td>
                                        <td>
                                            <a href="{{ route('product.edit', $product->id) }}"
                                                class="btn btn-primary btn-sm"><i class="fas fa-edit"></i></a>
                                        </td>
                                    </tr>
                                @endforeach
                            </tbody>
                        </table>
                    </form>

                </div>
                <!-- /.card-body -->
            </div>
            <!-- /.card -->

        </div>
    </section>
@endsection

@section('scripts')
    <script>
        $(function() {
            $("#example1").DataTable({
                "responsive": true,
                "lengthChange": false,
                "autoWidth": false,
                "buttons": ["copy", "csv", "excel", "pdf", "print", "colvis"]
            }).buttons().container().appendTo('#example1_wrapper .col-md-6:eq(0)');
            $('#example2').DataTable({
                paging: true,
                lengthChange: false,
                searching: true,
                ordering: true,
                info: true,
                autoWidth: false,
                responsive: true,
                dom: '<"d-flex justify-content-between align-items-center mb-2"f>rtip',
                initComplete: function() {
                    // Create action dropdown + apply button
                    let bulkHtml = `
            <div id="bulkContainer" class="d-flex align-items-center">
                <select name="action" form="bulkForm" class="form-control form-control-sm w-auto me-2" required>
                    <option value="">Select Action</option>
                    <option value="activate">Activate</option>
                    <option value="deactivate">Deactivate</option>
                    <option value="delete">Delete</option>
                </select>
                <button type="submit" form="bulkForm" class="btn btn-sm btn-primary">Apply</button>
            </div>
        `;

                    // Align left (actions) and right (search)
                    let wrapper = $('#example2_filter').parent();
                    $('#example2_filter').addClass('ms-auto');
                    wrapper.addClass('d-flex justify-content-between align-items-center').prepend(
                        bulkHtml);
                }
            });

            $(document).on('change', '#select-all', function() {
                $('.product-checkbox').prop('checked', $(this).prop('checked'));
            });

            document.getElementById('bulkForm').addEventListener('submit', function(e) {
                let action = this.querySelector('select[name="action"]').value;
                let checked = this.querySelectorAll('.product-checkbox:checked').length;

                if (checked === 0) {
                    e.preventDefault();
                    alert('Please select at least one product.');
                    return;
                }

                if (!action) {
                    e.preventDefault();
                    alert('Please select an action.');
                    return;
                }

                if (!confirm('Are you sure you want to perform this action?')) {
                    e.preventDefault(); // stop form submission if user clicks cancel
                }
            });



        });
    </script>
    <script>
        $(document).on('change', '.change-status', function() {
            let id = $(this).data('id');
            let status = $(this).is(':checked') ? 1 : 0;
            $.ajax({
                url: "{{ route('product.update.status') }}",
                type: "POST",
                data: {
                    _token: "{{ csrf_token() }}",
                    id: id,
                    status: status
                },
                success: function(res) {
                    // Change badge instantly
                    let label = $('#label' + id);
                    if (status == 1) {
                        label.text('Active')
                            .removeClass('badge-danger')
                            .addClass('badge-success');
                    } else {
                        label.text('Inactive')
                            .removeClass('badge-success')
                            .addClass('badge-danger');
                    }
                }
            });
        });
    </script>
@endsection
