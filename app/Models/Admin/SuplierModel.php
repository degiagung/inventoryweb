<?php

namespace App\Models\Admin;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class SuplierModel extends Model
{
    use HasFactory;
    protected $table = "tbl_suplier";
    protected $primaryKey = 'suplier_id';
    protected $fillable = [
        'suplier_nama',
        'suplier_slug',
        'suplier_alamat',
        'suplier_notelp',
    ]; 
}
