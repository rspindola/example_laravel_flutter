<?php

namespace App\Http\Controllers\Api;

use App\Models\Employee;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class ApiEmployeeController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $employees = Employee::with('company', 'user', 'schedules.services')->get();
        if($employees)
            return response()->json($employees);
        
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
        $employee = new Employee();
        
        $employee->first_name = $request->first_name;
        $employee->last_name = $request->last_name;
        $employee->company_id = $request->company_id;
        $employee->user_id = $request->user_id;
        $employee->save();

        if($employee)
            return response()->json($employee);

        return response()->json(['error' => 'Resource not save', 401]);
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Employee  $employee
     * @return \Illuminate\Http\Response
     */
    public function show(Employee $employee)
    {
        $employee = Employee::find($employee->id);
        if($employee)
            return response()->json($employee);

        return response()->json(['error' => 'Resource not show', 401]);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Employee  $employee
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Employee $employee)
    {
        $employee = Employee::find($employee->id);
        if($employee)
            $employee->first_name = $request->first_name;
            $employee->last_name = $request->last_name;
            $employee->company_id = $request->company_id;
            $employee->user_id = $request->user_id;
            $employee->save();
        
            return response()->json($employee);

        return response()->json(['error' => 'Resource not update', 401]);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Employee  $employee
     * @return \Illuminate\Http\Response
     */
    public function destroy(Employee $employee)
    {
        $company = Company::find($company->id);
        if($company)
            $company->delete();
            return response()->json($company);

        return response()->json(['error' => 'Resource not remove', 401]);
    }
}
