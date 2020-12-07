<?php

namespace App\Http\Controllers\Api;

use App\Models\Service;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class ApiServiceController extends Controller
{
    /**
     * Create a new AuthController instance.
     *
     * @return void
     */
    public function __construct() {
        $this->middleware('auth:api');
    }


    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $services = Service::all();
        if($services)
            return response()->json($services);
        
        return response()->json(['error' => 'Response not found', 401]);

    }


    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $service = new Service();
        
        $service->employee_id = $request->employee_id;
        $service->name = $request->name;
        $service->cost = $request->cost;
        $service->save();

        if($service)
            return response()->json($service);

        return response()->json(['error' => 'Resource not save', 401]);
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Service  $service
     * @return \Illuminate\Http\Response
     */
    public function show(Service $service)
    {
        $service = Service::find($service->id);
        if($service)
            return response()->json($service);

        return response()->json(['error' => 'Service not found', 401]);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Service  $service
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Service $service)
    {
        $service = Service::find($service->id);
        if($service)
            $service->employee_id = $request->employee_id;
            $service->name = $request->name;
            $service->cost = $request->cost;
            $service->save();
            return response()->json($service);

        return response()->json(['error' => 'Resource not update', 401]);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Service  $service
     * @return \Illuminate\Http\Response
     */
    public function destroy(Service $service)
    {
        $service = Service::find($service->id);
        if($service)
            $service->delete();
            return response()->json($service);

        return response()->json(['error' => 'Resource not remove', 401]);
    }
}
