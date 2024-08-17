<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Admin\AksesModel;
use App\Models\Admin\SuplierModel;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Session;
use Yajra\DataTables\Facades\DataTables;

class SuplierController extends Controller
{
    public function index()
    {
        $data["title"] = "Suplier";
        $data["hakTambah"] = AksesModel::leftJoin('tbl_menu', 'tbl_menu.menu_id', '=', 'tbl_akses.menu_id')->where(array('tbl_akses.role_id' => Session::get('user')->role_id, 'tbl_menu.menu_judul' => 'suplier', 'tbl_akses.akses_type' => 'create'))->count();
        return view('Admin.Suplier.index', $data);
    }

    public function show(Request $request)
    {
        if ($request->ajax()) {
            $data = SuplierModel::orderBy('suplier_id', 'DESC')->get();
            return DataTables::of($data)
                ->addIndexColumn()
                ->addColumn('notelp', function ($row) {
                    $notelp = $row->suplier_notelp == '' ? '-' : $row->suplier_notelp;

                    return $notelp;
                })
                ->addColumn('alamat', function ($row) {
                    $alamat = $row->suplier_alamat == '' ? '-' : $row->suplier_alamat;

                    return $alamat;
                })
                ->addColumn('action', function ($row) {
                    $array = array(
                        "suplier_id" => $row->suplier_id,
                        "suplier_nama" => trim(preg_replace('/[^A-Za-z0-9-]+/', '_', $row->suplier_nama)),
                        "suplier_alamat" => trim(preg_replace('/[^A-Za-z0-9-]+/', '_', $row->suplier_alamat)),
                        "suplier_notelp" => $row->suplier_notelp
                    );
                    $button = '';
                    $hakEdit = AksesModel::leftJoin('tbl_menu', 'tbl_menu.menu_id', '=', 'tbl_akses.menu_id')->where(array('tbl_akses.role_id' => Session::get('user')->role_id, 'tbl_menu.menu_judul' => 'suplier', 'tbl_akses.akses_type' => 'update'))->count();
                    $hakDelete = AksesModel::leftJoin('tbl_menu', 'tbl_menu.menu_id', '=', 'tbl_akses.menu_id')->where(array('tbl_akses.role_id' => Session::get('user')->role_id, 'tbl_menu.menu_judul' => 'suplier', 'tbl_akses.akses_type' => 'delete'))->count();
                    if ($hakEdit > 0 && $hakDelete > 0) {
                        $button .= '
                        <div class="g-2">
                        <a class="btn modal-effect text-primary btn-sm" data-bs-effect="effect-super-scaled" data-bs-toggle="modal" href="#Umodaldemo8" data-bs-toggle="tooltip" data-bs-original-title="Edit" onclick=update(' . json_encode($array) . ')><span class="fe fe-edit text-success fs-14"></span></a>
                        <a class="btn modal-effect text-danger btn-sm" data-bs-effect="effect-super-scaled" data-bs-toggle="modal" href="#Hmodaldemo8" onclick=hapus(' . json_encode($array) . ')><span class="fe fe-trash-2 fs-14"></span></a>
                        </div>
                        ';
                    } else if ($hakEdit > 0 && $hakDelete == 0) {
                        $button .= '
                        <div class="g-2">
                            <a class="btn modal-effect text-primary btn-sm" data-bs-effect="effect-super-scaled" data-bs-toggle="modal" href="#Umodaldemo8" data-bs-toggle="tooltip" data-bs-original-title="Edit" onclick=update(' . json_encode($array) . ')><span class="fe fe-edit text-success fs-14"></span></a>
                        </div>
                        ';
                    } else if ($hakEdit == 0 && $hakDelete > 0) {
                        $button .= '
                        <div class="g-2">
                        <a class="btn modal-effect text-danger btn-sm" data-bs-effect="effect-super-scaled" data-bs-toggle="modal" href="#Hmodaldemo8" onclick=hapus(' . json_encode($array) . ')><span class="fe fe-trash-2 fs-14"></span></a>
                        </div>
                        ';
                    } else {
                        $button .= '-';
                    }
                    return $button;
                })
                ->rawColumns(['action', 'notelp', 'alamat'])->make(true);
        }
    }

    public function proses_tambah(Request $request)
    {
        $slug = strtolower(trim(preg_replace('/[^A-Za-z0-9-]+/', '-', $request->suplier)));

        //insert data
        SuplierModel::create([
            'suplier_nama' => $request->suplier,
            'suplier_slug' => $slug,
            'suplier_notelp'   => $request->notelp,
            'suplier_alamat'   => $request->alamat,
        ]);

        return response()->json(['success' => 'Berhasil']);
    }

    public function proses_ubah(Request $request, suplierModel $suplier)
    {
        $slug = strtolower(trim(preg_replace('/[^A-Za-z0-9-]+/', '-', $request->suplier)));

        //update data
        $suplier->update([
            'suplier_nama' => $request->suplier,
            'suplier_slug' => $slug,
            'suplier_notelp'   => $request->notelp,
            'suplier_alamat'   => $request->alamat,
        ]);

        return response()->json(['success' => 'Berhasil']);
    }

    
    public function proses_hapus(Request $request, SuplierModel $suplier)
    {
        //delete
        $suplier->delete();

        return response()->json(['success' => 'Berhasil']);
    }
}
