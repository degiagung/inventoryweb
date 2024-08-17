<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Admin\BarangkeluarModel;
use App\Models\Admin\WebModel;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Yajra\DataTables\DataTables;
use PDF;

class LapBarangKeluarController extends Controller
{
    public function index()
    {
        $data["title"] = "Lap Barang Keluar";
        return view('Admin.Laporan.BarangKeluar.index', $data);
    }

    public function print(Request $request)
    {
        if ($request->tglawal) {
            $data['data'] = BarangkeluarModel::leftJoin('tbl_barang', 'tbl_barang.barang_kode', '=', 'tbl_barangkeluar.barang_kode')->whereBetween('bk_tanggal', [$request->tglawal, $request->tglakhir])->orderBy('bk_id', 'DESC')->get();
        } else {
            $data['data'] = BarangkeluarModel::leftJoin('tbl_barang', 'tbl_barang.barang_kode', '=', 'tbl_barangkeluar.barang_kode')->orderBy('bk_id', 'DESC')->get();
        }

        $data["title"] = "Print Barang Keluar";
        $data['web'] = WebModel::first();
        $data['tglawal'] = $request->tglawal;
        $data['tglakhir'] = $request->tglakhir;
        return view('Admin.Laporan.BarangKeluar.print', $data);
    }

    public function pdf(Request $request)
    {
        if ($request->tglawal) {
            $data['data'] = BarangkeluarModel::leftJoin('tbl_barang', 'tbl_barang.barang_kode', '=', 'tbl_barangkeluar.barang_kode')->whereBetween('bk_tanggal', [$request->tglawal, $request->tglakhir])->orderBy('bk_id', 'DESC')->get();
        } else {
            $data['data'] = BarangkeluarModel::leftJoin('tbl_barang', 'tbl_barang.barang_kode', '=', 'tbl_barangkeluar.barang_kode')->orderBy('bk_id', 'DESC')->get();
        }

        $data["title"] = "PDF Barang Keluar";
        $data['web'] = WebModel::first();
        $data['tglawal'] = $request->tglawal;
        $data['tglakhir'] = $request->tglakhir;
        $pdf = PDF::loadView('Admin.Laporan.BarangKeluar.pdf', $data)->setPaper('a4', 'landscape');
        
        if($request->tglawal){
            return $pdf->download('lap-bk-'.$request->tglawal.'-'.$request->tglakhir.'.pdf');
        }else{
            return $pdf->download('lap-bk-semua-tanggal.pdf');
        }
        
    }

    public function show(Request $request)
    {
        if ($request->ajax()) {
            if ($request->tglawal == '') {
                $data = BarangkeluarModel::leftJoin('tbl_barang', 'tbl_barang.barang_kode', '=', 'tbl_barangkeluar.barang_kode')->orderBy('bk_id', 'DESC')->get();
            } else {
                $data = BarangkeluarModel::leftJoin('tbl_barang', 'tbl_barang.barang_kode', '=', 'tbl_barangkeluar.barang_kode')->whereBetween('bk_tanggal', [$request->tglawal, $request->tglakhir])->orderBy('bk_id', 'DESC')->get();
            }
            return DataTables::of($data)
                ->addIndexColumn()
                ->addColumn('tgl', function ($row) {
                    $tgl = $row->bk_tanggal == '' ? '-' : Carbon::parse($row->bk_tanggal)->translatedFormat('d F Y');

                    return $tgl;
                })
                ->addColumn('tujuan', function ($row) {
                    $tujuan = $row->bk_tujuan == '' ? '-' : $row->bk_tujuan;

                    return $tujuan;
                })
                ->addColumn('barang', function ($row) {
                    $barang = $row->barang_id == '' ? '-' : $row->barang_nama;

                    return $barang;
                })
                ->addColumn('harga', function ($row) {
                    $harga = 'Rp ' . number_format($row->bk_harga, 0);

                    return $harga;
                })
                ->addColumn('total', function ($row) {
                    $total = 'Rp ' . number_format($row->bk_total, 0);

                    return $total;
                })
                ->addColumn('statuspengiriman', function ($row) {
                    if ($row->bk_status == 'pending') {
                        $status = '<span class="badge bg-dark">' . $row->bk_status . '</span>';
                    } else if ($row->bk_status == 'terkirim') {
                        $status = '<span class="badge bg-primary">' . $row->bk_status . '</span>';
                    } else if ($row->bk_status == 'selesai') {
                        $status = '<span class="badge bg-success">' . $row->bk_status . '</span>';
                    } else {
                        $status = '-';
                    }

                    return $status;
                })
                ->rawColumns(['tgl', 'tujuan', 'barang', 'statuspengiriman', 'harga', 'total'])->make(true);
        }
    }

}
