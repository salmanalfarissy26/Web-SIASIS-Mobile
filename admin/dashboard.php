<div class="row">
    <div class="col-lg-12">
        <h1 class="page-header">Dashboard</h1>
    </div>
    <!-- /.col-lg-12 -->
</div>
<div class="row">
    <div class="col-lg-12">
        <div class="jumbotron">
            <h1>Hello Selamat Datang </br><?php
            include("../koneksi.php");
            $admin=mysqli_query($koneksi,"SELECT * from administrator where id_adm= $_GET[id_adm]");
            $adm=mysqli_fetch_array($admin);
            echo $adm['nama_ad'] ?>!!!</h1>
            <p>Selamat datang di web administrator dimana fungsi dari web ini adalah untuk menginputkan seluruh data baik data guru maupun data siswa.</p>
            <!-- <p><a class="btn btn-primary btn-lg" role="button">Learn more</a> -->
            </p>
        </div>
    </div>
    <!-- /.col-lg-12 -->
</div>

<div class="row">
    <div class="col-lg-12">
        <div class="jumbotron">
            <h1>Visi dan Misi Sekolah</h1>
            <h2>Visi Sekolah</h2>
            <p>Beriman, Cerdas, Kompetensi, Berbudaya serta Berwawasan Lingkung</p>
            </br>
            <h2>Misi Sekolah</h2>
            <p>
                <ol>
                    <li>Menghayati Ajaran Agama Secara Mendalam Melalui Pembelajaran dan Pembiasaan Serta Menjaga Lingkungan Ciptaan Tuhan</li>
                    <li>Mengembangkan Potensi Kecerdasan Intelektual, Emosional dan Spritual yang Ramah Lingkungan</li>
                    <li>Mampu Berkompetensi di Bidang Akademik dan Non Akademik Ditingkat Daerah dan Nasional</li>
                    <li>Menjunjung Tinggi Nilai-Nilai Kemanusiaan, Teguh dalam Pendirian, Peduli Lingkungan dan Menghargai Perbedaan Dengan Jiwa</li>
                    <li>Mewujudkan Sekolah Berwawasan Lingkungan Hidup</li>
                </ol>
            </p>
            <!-- <p><a class="btn btn-primary btn-lg" role="button">Learn more</a> -->
            </p>
        </div>
    </div>
    <!-- /.col-lg-12 -->
</div>