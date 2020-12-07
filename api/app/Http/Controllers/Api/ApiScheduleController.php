<?php

namespace App\Http\Controllers\Api;

use App\Models\Schedule;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class ApiScheduleController extends Controller
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
        $schedules = Schedule::all();
        if($schedules)
            return response()->json($schedules);
        
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
        $schedule = new Schedule();
        
        $schedule->employee_id = $request->employee_id;
        $schedule->user_id = $request->user_id;
        $schedule->service_id = $request->service_id;
        $schedule->schedulling_date = $request->schedulling_date;
        $schedule->save();

        if($schedule)
            return response()->json($schedule);

        return response()->json(['error' => 'Resource not save', 401]);
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Schedule  $schedule
     * @return \Illuminate\Http\Response
     */
    public function show(Schedule $schedule)
    {
        $schedule = Schedule::find($schedule->id);
        if($schedule)
            return response()->json($schedule);

        return response()->json(['error' => 'Resource not show', 401]);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Schedule  $schedule
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Schedule $schedule)
    {
        $schedule = Schedule::find($schedule->id);
        if($schedule)
            $schedule->employee_id = $request->employee_id;
            $schedule->user_id = $request->user_id;
            $schedule->service_id = $request->service_id;
            $schedule->schedulling_date = $request->schedulling_date;
            $schedule->save();
        
            return response()->json($schedule);

        return response()->json(['error' => 'Resource not update', 401]);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Schedule  $schedule
     * @return \Illuminate\Http\Response
     */
    public function destroy(Schedule $schedule)
    {
        $company = Company::find($company->id);
        if($company)
            $company->delete();
            return response()->json($company);

        return response()->json(['error' => 'Resource not remove', 401]);
    }
}
