<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\SliderSideBanner;
use Auth;
use File;
use Image;
use Alert;

class SliderSideBannerController extends Controller
{
    public function index()
    {
        if (Auth::user()->type == 1) {
            $sliders = SliderSideBanner::OrderBy('serial_number', 'ASC')->get();
            return view('admin.slider.side-banner.index', compact('sliders'));
        }
        else {
            return back();
        }
    }
    public function store(Request $request)
    {
        $validatedData = $request->validate([
            'serial_number' => 'required|integer',
            'image' => 'image',
            'link' => 'nullable',
        ]);

        $sliderSideBanner = new SliderSideBanner;
        $sliderSideBanner->title = $request->title;
        $sliderSideBanner->serial_number = $request->serial_number;
        $sliderSideBanner->description = $request->description;
        $sliderSideBanner->link = $request->link;
        
        if ($request->image){
            if (File::exists('images/slider/side-banner/'.$sliderSideBanner->image)){
                File::delete('images/slider/side-banner/'.$sliderSideBanner->image);
            }
            $image = $request->file('image');
            $img = time() . '.' . $image->getClientOriginalExtension();
            $location = public_path('images/slider/side-banner/'. $img);
            Image::make($image)->save($location);
            $sliderSideBanner->image = $img;
        }

        $sliderSideBanner->save();

        return redirect()->route('slider_side_banner.index')
        ->with('success', 'New Banner Added Successfully.');

    }

    public function edit($id)
    {
        $slider = SliderSideBanner::find($id);
        if(!is_null($slider)) {
            return view('admin.slider.side-banner.edit', compact('slider'));
        }
    }

    public function update(Request $request, $id)
    {
        $validatedData = $request->validate([
            'serial_number' => 'required|integer',
            'image' => 'image',
            'link' => 'nullable',
        ]);

        $sliderSideBanner = SliderSideBanner::find($id);

        if (!is_null($sliderSideBanner)) {

            $sliderSideBanner->title = $request->title;
            $sliderSideBanner->serial_number = $request->serial_number;
            $sliderSideBanner->description = $request->description;
            $sliderSideBanner->link = $request->link;

            // image save
            if ($request->image){
                if (File::exists('images/slider/side-banner/'.$sliderSideBanner->image)){
                    File::delete('images/slider/side-banner/'.$sliderSideBanner->image);
                }
                $image = $request->file('image');
                $img = time() . '.' . $image->getClientOriginalExtension();
                $location = public_path('images/slider/side-banner/'. $img);
                Image::make($image)->save($location);
                $sliderSideBanner->image = $img;
            }

            $sliderSideBanner->save();
            
            return redirect()->route('slider_side_banner.index')
            ->with('success', 'Banner Info has been changed');
        }
        else {
            Alert::toast('Something went wrong!', 'error');
            return redirect()->route('slider_side_banner.index');
        }
    }

    public function destroy(Request $request)
    {
        $sliderSideBanner = SliderSideBanner::find($request->id);
        if (File::exists('images/slider/side-banner/'.$sliderSideBanner->image)) { 
            File::delete('images/slider/side-banner/'.$sliderSideBanner->image);    
        }
        $sliderSideBanner->delete();
        return redirect()->route('slider_side_banner.index')
        ->with('success', 'Slider Side Banner has been deleted');
    }

}
