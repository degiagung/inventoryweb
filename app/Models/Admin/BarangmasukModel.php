<?php

namespace App\Models\Admin;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class BarangmasukModel extends Model
{
    use HasFactory;
    protected $table = "tbl_barangmasuk";
    protected $primaryKey = 'bm_id';
    protected $fillable = [
        'bm_kode',
        'barang_kode',
        'suplier_id',
        'bm_tanggal',
        'bm_jumlah',
    ]; 
}
