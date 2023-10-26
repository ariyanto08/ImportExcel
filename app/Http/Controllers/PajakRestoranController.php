<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Imports\RestoranImport;
use App\Http\Controllers\Controller;
use Maatwebsite\Excel\Facades\Excel;
use Illuminate\Support\Facades\Storage;

class PajakRestoranController extends Controller
{
    function index(){
        return view('restoran.index');
    }
    function __invoke(Request $request)
    {
        $this->validate($request, [
            'file' => 'required|mimes:csv,xls,xlsx'
        ]);
        $file = $request->file('file');
        $nama_file = $file->getClientOriginalName();
        $path = $file->storeAs('excel', $nama_file);
        Excel::import(new RestoranImport(), $path);

        Storage::delete($path);
        return redirect('restoran')->with(['success'=>'Data Berhasil Diimport!']);

    }
}
