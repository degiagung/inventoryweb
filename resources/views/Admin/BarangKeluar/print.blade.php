<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Nota Barang Keluar</title>
    <style>
        body {
            font-family: 'Arial', sans-serif;
        }

        .table {
            width: 100%;
            border-collapse: collapse;
        }

        .table th,
        .table td {
            border: 1px solid black;
            padding: 8px;
            text-align: left;
        }

        .table th {
            background-color: #f2f2f2;
        }
    </style>
</head>

<body onload="window.print()">

    <center>
        @if ($web->web_logo == '' || $web->web_logo == 'default.png')
            <img src="{{ url('/assets/default/web/default.png') }}" width="80px" alt="">
        @else
            <img src="{{ asset('storage/web/' . $web->web_logo) }}" width="80px" alt="">
        @endif
    </center>

    <center>
        <h1 class="font-medium">Nota Barang Keluar</h1>
    </center>



    <table class="table">
        <thead>
            <tr>
                <th>No</th>
                <th>Tanggal Keluar</th>
                <th>Nama Barang</th>
                <th>Jumlah Keluar</th>
                <th>Total</th>
            </tr>
        </thead>
        <tbody>
            @foreach ($data as $index => $item)
                <tr>
                    <td>{{ $index + 1 }}</td>
                    <td>{{ $item->bk_tanggal }}</td>
                    <td>{{ $item->barang_nama }}</td>
                    <td>{{ $item->bk_jumlah }}</td>
                    <td>{{ number_format($item->bk_total, 0, ',', '.') }}</td>
                </tr>
            @endforeach
        </tbody>
    </table>

    <div style="margin-top: 50px;">
        <table width="100%">
            <tr>
                <td style="text-align: left;">Tanda Terima,</td>
                <td style="text-align: right;">Hormat Kami,</td>
            </tr>
            <tr>
                <td style="height: 80px;"></td>
                <td style="height: 80px;"></td>
            </tr>
            <tr>
                <td style="text-align: left;">(____________________)</td>
                <td style="text-align: right;">(____________________)</td>
            </tr>
        </table>
    </div>
</body>

</html>
