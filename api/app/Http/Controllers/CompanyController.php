<?php

namespace App\Http\Controllers;

use App\Models\Company;
use Illuminate\Http\Request;

class CompanyController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $companies = Company::all();
        if($companies)
            return response()->json($companies);
        
        return response()->json(['error' => 'Response not found', 401]);

    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $company = new Company();
        
        $company->name = $request->name;
        $company->latitude = $request->latitude;
        $company->longitude = $request->longitude;
        $company->phone = $request->phone;
        $company->social_link = $request->social_link;
        $company->save();

        if($company)
            return response()->json($company);

        return response()->json(['error' => 'Resource not save', 401]);
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Company  $company
     * @return \Illuminate\Http\Response
     */
    public function show(Company $company)
    {
        $company = Company::find($company->id);
        if($company)
            return response()->json($company);

        return response()->json(['error' => 'Company not found', 401]);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Company  $company
     * @return \Illuminate\Http\Response
     */
    public function edit(Company $company)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Company  $company
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Company $company)
    {
        $company = Company::find($company->id);
        $company->name = $request->name;
        $company->latitude = $request->latitude;
        $company->longitude = $request->longitude;
        $company->phone = $request->phone;
        $company->social_link = $request->social_link;
        $company->save();

        if($company)
            return response()->json($company);

        return response()->json(['error' => 'Resource not update', 401]);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Company  $company
     * @return \Illuminate\Http\Response
     */
    public function destroy(Company $company)
    {
        $company = Company::find($company->id);
        $company->remove();

        if($company)
            return response()->json($company);

        return response()->json(['error' => 'Resource not remove', 401]);
    }
}
