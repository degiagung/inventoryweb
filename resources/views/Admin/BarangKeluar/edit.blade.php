<!-- MODAL EDIT -->
<div class="modal fade" data-bs-backdrop="static" id="Umodaldemo8">
    <div class="modal-dialog modal-lg modal-dialog-centered" role="document">
        <div class="modal-content modal-content-demo">
            <div class="modal-header">
                <h6 class="modal-title">Ubah Barang Keluar</h6><button aria-label="Close" onclick="resetU()"
                    class="btn-close" data-bs-dismiss="modal"><span aria-hidden="true">&times;</span></button>
            </div>
            <div class="modal-body">
                <div class="row">
                    <div class="col-md-6">
                        <input type="hidden" name="idbkU">
                        <div class="form-group">
                            <label for="bkkodeU" class="form-label">Kode Barang Keluar <span
                                    class="text-danger">*</span></label>
                            <input type="text" name="bkkodeU" readonly class="form-control" placeholder="">
                        </div>
                        <div class="form-group">
                            <label for="tglkeluarU" class="form-label">Tanggal Keluar <span
                                    class="text-danger">*</span></label>
                            <input type="text" name="tglkeluarU"
                                class="form-control {{ Session::get('user')->role_slug == 'kasir' || Session::get('user')->role_slug == 'super-admin' ? 'datepicker-date' : '' }}"
                                placeholder=""
                                {{ Session::get('user')->role_slug == 'kasir' || Session::get('user')->role_slug == 'super-admin' ? '' : 'readonly' }}>
                        </div>
                        <div class="form-group">
                            <label for="tujuanU" class="form-label">Tujuan</label>
                            <input type="text" name="tujuanU" class="form-control" placeholder=""
                                {{ Session::get('user')->role_slug == 'kasir' || Session::get('user')->role_slug == 'super-admin' ? '' : 'readonly' }}>
                        </div>
                        <div
                            class="form-group {{ Session::get('user')->role_slug == 'pengiriman' || Session::get('user')->role_slug == 'super-admin' ? '' : 'd-none' }}">
                            <label for="pengirimanU" class="form-label">Status Pengiriman</label>
                            <select name="pengirimanU" id="pengirimanU" class="form-control form-select">
                                <option value="" selected>-- Pilih --</option>
                                <option value="pending">pending</option>
                                <option value="terkirim">terkirim</option>
                                <option value="selesai">selesai</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="form-group">
                            <label>Kode Barang <span class="text-danger me-1">*</span>
                                <input type="hidden" id="statusU" value="true">
                                <div class="spinner-border spinner-border-sm d-none" id="loaderkdU" role="status">
                                    <span class="visually-hidden">Loading...</span>
                                </div>
                            </label>
                            <div class="input-group">
                                <input type="text" class="form-control" autocomplete="off" name="kdbarangU"
                                    placeholder=""
                                    {{ Session::get('user')->role_slug == 'kasir' || Session::get('user')->role_slug == 'super-admin' ? '' : 'readonly' }}>
                                <button
                                    class="btn btn-primary-light {{ Session::get('user')->role_slug == 'kasir' || Session::get('user')->role_slug == 'super-admin' ? '' : 'd-none' }}"
                                    onclick="searchBarangU()" type="button"><i class="fe fe-search"></i></button>
                                <button
                                    class="btn btn-success-light {{ Session::get('user')->role_slug == 'kasir' || Session::get('user')->role_slug == 'super-admin' ? '' : 'd-none' }}"
                                    onclick="modalBarangU()" type="button"><i class="fe fe-box"></i></button>
                            </div>
                        </div>
                        <div class="form-group">
                            <label>Nama Barang</label>
                            <input type="text" class="form-control" id="nmbarangU" readonly>
                        </div>
                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label>Satuan</label>
                                    <input type="text" class="form-control" id="satuanU" readonly>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label>Jenis</label>
                                    <input type="text" class="form-control" id="jenisU" readonly>
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="jmlU" class="form-label">Jumlah Keluar <span
                                    class="text-danger">*</span></label>
                            <input type="text" name="jmlU" id="jmlU" class="form-control"
                                oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*?)\..*/g, '$1').replace(/^0[^.]/, '0');"
                                placeholder=""
                                {{ Session::get('user')->role_slug == 'kasir' || Session::get('user')->role_slug == 'super-admin' ? '' : 'readonly' }}>
                        </div>
                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="hargaU" class="form-label">Harga <span
                                            class="text-danger">*</span></label>
                                    <input type="text" name="hargaU" id="hargaU" value="0"
                                        class="form-control"
                                        oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*?)\..*/g, '$1').replace(/^0[^.]/, '0');"
                                        placeholder=""
                                        {{ Session::get('user')->role_slug == 'kasir' || Session::get('user')->role_slug == 'super-admin' ? '' : 'readonly' }}>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="totalU" class="form-label">Total<span
                                            class="text-danger">*</span></label>
                                    <input type="text" name="totalU" id="totalU" value="0"
                                        class="form-control"
                                        oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*?)\..*/g, '$1').replace(/^0[^.]/, '0');"
                                        placeholder=""
                                        {{ Session::get('user')->role_slug == 'kasir' || Session::get('user')->role_slug == 'super-admin' ? '' : 'readonly' }}>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

            </div>
            <div class="modal-footer">
                <button class="btn btn-success d-none" id="btnLoaderU" type="button" disabled="">
                    <span class="spinner-border spinner-border-sm me-1" role="status" aria-hidden="true"></span>
                    Loading...
                </button>
                <a href="javascript:void(0)" onclick="checkFormU()" id="btnSimpanU" class="btn btn-success">Simpan
                    Perubahan <i class="fe fe-check"></i></a>
                <a href="javascript:void(0)" class="btn btn-light" onclick="resetU()" data-bs-dismiss="modal">Batal
                    <i class="fe fe-x"></i></a>
            </div>
        </div>
    </div>
</div>

@section('formEditJS')
    <script>
        $('input[name="kdbarangU"]').keypress(function(event) {
            var keycode = (event.keyCode ? event.keyCode : event.which);
            if (keycode == '13') {
                getbarangbyidU($('input[name="kdbarangU"]').val());
            }
        });

        $('#jmlU').on('input', function(e) {
            let jml = $('#jmlU').val();
            let harga = $('#hargaU').val();
            $('input[name="totalU"]').val(parseInt(jml) * parseInt(harga));
        });

        $('#hargaU').on('input', function(e) {
            let jml = $('#jmlU').val();
            let harga = $('#hargaU').val();
            $('input[name="totalU"]').val(parseInt(jml) * parseInt(harga));
        });

        function modalBarangU() {
            $('#modalBarang').modal('show');
            $('#Umodaldemo8').addClass('d-none');
            $('input[name="param"]').val('ubah');
            resetValidU();
            table2.ajax.reload();
        }

        function searchBarangU() {
            getbarangbyidU($('input[name="kdbarangU"]').val());
            resetValidU();
        }

        function getbarangbyidU(id) {
            $("#loaderkdU").removeClass('d-none');
            $.ajax({
                type: 'GET',
                url: "{{ url('admin/barang/getbarang') }}/" + id,
                processData: false,
                contentType: false,
                dataType: 'json',
                success: function(data) {
                    if (data.length > 0) {
                        $("#loaderkdU").addClass('d-none');
                        $("#statusU").val("true");
                        $("#nmbarangU").val(data[0].barang_nama);
                        $("#satuanU").val(data[0].satuan_nama);
                        $("#jenisU").val(data[0].jenisbarang_nama);
                    } else {
                        $("#loaderkdU").addClass('d-none');
                        $("#statusU").val("false");
                        $("#nmbarangU").val('');
                        $("#satuanU").val('');
                        $("#jenisU").val('');
                    }
                }
            });
        }

        function checkFormU() {
            const tglkeluar = $("input[name='tglkeluarU']").val();
            const status = $("#statusU").val();
            const kdbarang = $("input[name='kdbarangU").val();
            const tujuan = $("input[name='tujuanU']").val();
            const jml = $("input[name='jmlU']").val();
            setLoadingU(true);
            resetValidU();

            if (tglkeluar == "") {
                validasi('Tanggal Keluar wajib di isi!', 'warning');
                $("input[name='tglkeluarU']").addClass('is-invalid');
                setLoading(Ufalse);
                return false;
            } else if (status == "false" || kdbarang == '') {
                validasi('Barang wajib di pilih!', 'warning');
                $("input[name='kdbarangU']").addClass('is-invalid');
                setLoadingU(false);
                return false;
            } else if (jml == "" || jml == "0") {
                validasi('Jumlah Masuk wajib di isi!', 'warning');
                $("input[name='jmlU']").addClass('is-invalid');
                setLoadingU(false);
                return false;
            } else {
                submitFormU();
            }
        }

        function submitFormU() {
            const id = $("input[name='idbkU']").val();
            const bkkode = $("input[name='bkkodeU']").val();
            const tglkeluar = $("input[name='tglkeluarU']").val();
            const kdbarang = $("input[name='kdbarangU']").val();
            const tujuan = $("input[name='tujuanU']").val();
            const jml = $("input[name='jmlU']").val();
            const pengiriman = $("select[name='pengirimanU']").val();
            const harga = $("input[name='hargaU']").val();
            const total = $("input[name='totalU']").val();

            $.ajax({
                type: 'POST',
                url: "{{ url('admin/barang-keluar/proses_ubah') }}/" + id,
                enctype: 'multipart/form-data',
                data: {
                    bkkode: bkkode,
                    tglkeluar: tglkeluar,
                    barang: kdbarang,
                    tujuan: tujuan,
                    jml: jml,
                    pengiriman: pengiriman,
                    harga: harga,
                    total: total,
                },
                success: function(data) {
                    swal({
                        title: "Berhasil diubah!",
                        type: "success"
                    });
                    $('#Umodaldemo8').modal('toggle');
                    table.ajax.reload(null, false);
                    resetU();
                }
            });
        }

        function resetValidU() {
            $("input[name='tglkeluarU']").removeClass('is-invalid');
            $("input[name='kdbarangU']").removeClass('is-invalid');
            $("input[name='tujuanU']").removeClass('is-invalid');
            $("input[name='jmlU']").removeClass('is-invalid');
        };

        function resetU() {
            resetValidU();
            $("input[name='idbkU']").val('');
            $("input[name='bkkodeU']").val('');
            $("input[name='tglkeluarU']").val('');
            $("input[name='kdbarangU']").val('');
            $("input[name='tujuanU']").val('');
            $("input[name='jmlU']").val('0');
            $("select[name='pengirimanU']").val('');
            $("#nmbarangU").val('');
            $("#satuanU").val('');
            $("#jenisU").val('');
            $("#statusU").val('false');
            setLoadingU(false);
        }

        function setLoadingU(bool) {
            if (bool == true) {
                $('#btnLoaderU').removeClass('d-none');
                $('#btnSimpanU').addClass('d-none');
            } else {
                $('#btnSimpanU').removeClass('d-none');
                $('#btnLoaderU').addClass('d-none');
            }
        }
    </script>
@endsection
