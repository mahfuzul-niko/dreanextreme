
@extends('user.inc.master')

@section('title')Service @endsection
@section('description')Service  @endsection
@section('keywords') service, mobile, center @endsection


@section('content')

<div class="container mt-5">
  <h2 class="mb-3">Apple Phone Service Request</h2>
  <form action="{{ route('service.store')}}" method="POST" enctype="multipart/form-data">
      @csrf
    <!-- Personal Information -->
    <div class="form-group mb-3">
      <label for="name">Full Name <span class="text-danger" style="font-size: 20px">*</span></label>
      <input type="text" class="form-control p-3" style="font-size: 12px" name="name" id="name" placeholder="Enter your full name" required>
    </div>
    <div class="form-group mb-3">
      <label for="email">Email Address <span class="text-danger" style="font-size: 20px">*</span></label>
      <input type="email" class="form-control p-3" style="font-size: 12px" name="email"  id="email" placeholder="Enter your email" required>
    </div>
    <div class="form-group mb-3">
      <label for="phone">Phone Number <span class="text-danger" style="font-size: 20px">*</span></label>
      <input type="tel" class="form-control p-3" style="font-size: 12px" name="phone" id="phone" placeholder="Enter your phone number" required>
    </div>

    <!-- Device Information -->
    <div class="form-group mb-3">
      <label for="device_model">Device Model <span class="text-danger" style="font-size: 20px">*</span></label>
      <input type="text" class="form-control p-3" name="device_model" style="font-size: 12px" id="device_model" placeholder="Device Model" required />
    </div>
    <div class="form-group mb-3">
      <label for="imei">IMEI Number <span class="text-muted" style="font-size: 12px">Optional</span></label>
      <input type="text" class="form-control p-3" style="font-size: 12px" id="imei" name="imei" placeholder="Enter IMEI number" />
    </div>
    <div class="form-group mb-3">
      <label for="device_color">Device Color <span class="text-muted" style="font-size: 12px">Optional</span></label>
      <input type="text" class="form-control p-3" name="device_color" style="font-size: 12px" id="device_color" placeholder="Device Model" required />
    </div>
    <div class="form-group mb-3">
      <label for="device_issue">Device Issue <span class="text-danger" style="font-size: 20px">*</span></label>
      <textarea class="form-control p-3" style="font-size: 12px" name="device_issue" id="device_issue" rows="4" placeholder="Describe the issue with your device" required ></textarea>
    </div>

    <!-- Service Details -->
    <div class="form-group mb-3">
      <label for="service_type">Type of Service <span class="text-danger" style="font-size: 20px">*</span></label>
      <select class="form-control p-3" style="font-size: 12px" name="service_type" id="service_type" required>
        <option value="">Select Service Type</option>
        <option value="repair">Repair</option>
        <option value="replacement">Replacement</option>
        <option value="diagnostic">Diagnostic</option>
      </select>
    </div>

     <!-- Service Details -->
     <div class="form-group mb-3">
      <label for="service_type">Attatchment <span class="text-danger" style="font-size: 20px">*</span></label>
      <div class="custom-file">
        <input type="file" name="image" class="custom-file-input" id="customFile">         
      </div>
    </div>

    <!-- Terms and Conditions -->
    <div class="form-check mb-3">
      <input class="form-check-input" type="checkbox" value="" name="terms" id="terms" required>
      <label class="form-check-label" for="terms" style="font-size: 14px">
        I agree to the <a href="#">terms and conditions</a>
      </label>
    </div>

    <!-- Submit Button -->
    <button type="submit" class="btn btn-success mb-5" style="font-size: 14px">Submit Request</button>
  </form>
</div>


  
@endsection