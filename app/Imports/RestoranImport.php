<?php

namespace App\Imports;

use App\Models\PajakRestoran;
use Maatwebsite\Excel\Concerns\ToModel;
use Maatwebsite\Excel\Concerns\WithHeadingRow;

class RestoranImport implements ToModel ,WithHeadingRow
{
    /**
     * @param array $row
     *
     * @return \Illuminate\Database\Eloquent\Model|null
     */

    private function convertExcelDate($excelDate)
    {
        // Mengonversi $excelDate dari string ke angka bulat
        $excelDateAsInt = (int) $excelDate;

        $timestamp = ($excelDateAsInt - 25569) * 86400; // Mengonversi Excel Date ke Unix Timestamp
        return date('Y-m-d', $timestamp);
    }


    public function model(array $row)
    {
        $sptpd = trim($row['no_sptpd'], "'");
        $tanggalPembayaran = $this->convertExcelDate($row['tanggal_pembayaran']);
        // dd($row);
        return new PajakRestoran([
            'restoran_rekening' => $row['rekening'],
            'restoran_sptpd' => $sptpd,
            'restoran_npwpd' => $row['npwpd'],
            'restoran_wp' => $row['nama_wajib_pajak'],
            'restoran_wp_alamat' => $row['alamat_wajib_pajak'],
            'restoran_periode' => $row['periode'],
            'restoran_pembayaran' => $row['pembayaran'],
            'restoran_tanggal_bayar' =>  $tanggalPembayaran,
            'restoran_setor' => $row['jumlah_setor'],
            'restoran_denda' => $row['denda'],
        ]);
    }

    public function headingRow(): int
    {
        return 4;
    }
}
