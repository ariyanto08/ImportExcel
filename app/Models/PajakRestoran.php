<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class PajakRestoran extends Model
{
    use HasFactory;
    protected $table = 'pajak_restoran';
    protected $primaryKey = 'restoran_id';
    protected $fillable = [
        'restoran_rekening',
        'restoran_sptpd',
        'restoran_npwpd',
        'restoran_wp',
        'restoran_wp_alamat',
        'restoran_periode',
        'restoran_pembayaran',
        'restoran_tanggal_bayar',
        'restoran_setor',
        'restoran_denda'
    ];
}
