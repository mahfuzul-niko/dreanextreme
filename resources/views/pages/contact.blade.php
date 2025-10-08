@extends('layouts.master')

@section('title')
	{{ 'Contact' . ' | '. env('APP_NAME') }}
@endsection

@section('style')
    <style type="text/css">
        .contact input.form-control{
            border: 0.5px solid #000;
        }
        .contact textarea.form-control{
            border: 0.5px solid #000;
        }
    </style>
@endsection


@section('content')
@php
	$business = App\Models\Setting::find(1);
@endphp

		<!-- Start of Main -->
        <main class="main contact">
            <!-- Start of PageContent -->
            <div class="page-content">
                <div class="container">
                	<div class="row">
                		<h2 class="pt-4 pb-4">CONTACT US</h2>
                    	<div class="col-md-8">
                    		@if(Session::has('success'))
                    		<h3 class="alert alert-success">
                    			{{ Session::get('success') }}
                    		</h3>
                    		@endif
                    		<form action="{{ route('message.send') }}" method="POST">
		                    	@csrf
		                		<div class="row">
	                    			<div class="col-md-12">
	                    				<div class="form-group">
	                    					<label>Name *</label>
	                    					<input type="text" name="name" class="form-control" required>
	                    				</div>
	                    			</div>
	                    			<div class="col-md-6">
	                    				<div class="form-group">
	                    					<label>Email *</label>
	                    					<input type="email" name="email" class="form-control" required>
	                    				</div>
	                    			</div>
	                    			<div class="col-md-6">
	                    				<div class="form-group">
	                    					<label>Phone *</label>
	                    					<input type="text" name="phone" class="form-control" required>
	                    				</div>
	                    			</div>
	                    			<div class="col-md-12">
	                    				<div class="form-group">
	                    					<label>Subject *</label>
	                    					<input type="text" name="subject" class="form-control" required>
	                    				</div>
	                    			</div>
	                    			<div class="col-md-12">
	                    				<div class="form-group">
	                    					<label>Message *</label>
	                    					<textarea class="form-control" rows="5" name="message"></textarea>
	                    				</div>
	                    			</div>
	                    			<button type="submit" class="btn btn-dark btn-rounded">Send Now</button>
	                    		</div>
		                    </form>
                    	</div>
                    	<div class="col-md-4">
                    		<p><b>Phone</b> : {{ $business->phone }}</p>
                    		<p><b>Email</b> : {{ $business->email }}</p>
                    		<p><b>Address</b> : {{ $business->address }}</p>
                    	</div>
                    	<div class="col-md-12 pt-4">
                    	    {{ $business->google_map_embed }}
                    	</div>
                    </div>
                </div>
            </div>
            <!-- End of PageContent -->
        </main>
        <!-- End of Main -->

@endsection