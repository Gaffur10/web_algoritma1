<?php include 'header.php'; ?> 
<section id="hero" class="d-flex align-items-center">
<div class="container">
  <div class="row">
    <div class="col-lg-6 pt-5 pt-lg-0 order-2 order-lg-1 d-flex flex-column justify-content-center">
      <h1>Penilaian Rumah Sakit Terbaik</h1>
      <h2>rumah sakit merupakan tempat berobat bagi orang yang sakit</h2>
      <div class="d-flex">
      </div>
    </div>
    <div class="col-lg-6 order-1 order-lg-2 hero-img">
      <img src="bs/eNno/assets/img/6301.jpg" class="img-fluid animated" alt="">
    </div>
  </div>
</div>
</section><!-- End Hero -->
<main id="main">

<!-- ======= Featured Services Section ======= -->
<section id="featured-services" class="featured-services">
  <div class="container" >
      <div class="col align-self-center text-center">
        <div class="icon-box" style="background: #DEF5E5;">
          <div class="icon"><i class="bi bi-laptop"></i></div>
          <h4 class="title"><a href="rumah_sakit.php">Rumah Sakit Umum</a></h4>
          <p class="description"><?php $panggil1 = $conn->query("SELECT * FROM alternative WHERE jenis='Rumah Sakit Umum'");  $count1 = $panggil1->num_rows;  echo $count1?></p>
        </div>
      </div>
      </div>
    </div>

  </div>
</section><!-- End Featured Services Section -->


<!-- ======= Services Section ======= -->
<section id="services" class="services section-bg "style="background: #DEF5E5;>
  <div class="container" style="background: #DEF5E5;">

    <div class="section-title">
      <h2>Kriteria Penilaian</h2>
      <p>Hal-hal yang menjadi kriteria untuk menjadi aspek yang dinilai : </p>
    </div>

    <div class="row">
      <div class="col-lg-4 col-md-6 d-flex align-items-stretch">
        <div class="icon-box">
          <div class="icon"><i class="bx bxl-dribbble"></i></div>
          <h4><a href="#">Fasilitas</a></h4>
          <p>Adalah adalah aspek tempat atau bangunan yg berfungsi mempermudah kehidupan manusia.</p>
        </div>
      </div>

      <div class="col-lg-4 col-md-6 d-flex align-items-stretch mt-4 mt-md-0">
        <div class="icon-box">
          <div class="icon"><i class="bx bx-file"></i></div>
          <h4><a href="#">Kenyamanan</a></h4>
          <p>Adalah suatu kondisi perasaan seseorang yang merasa nyaman berdasarkan persepsi masing-masing individu.</p>
        </div>
      </div>

      <div class="col-lg-4 col-md-6 d-flex align-items-stretch mt-4 mt-lg-0">
        <div class="icon-box">
          <div class="icon"><i class="bx bx-tachometer"></i></div>
          <h4><a href="#">Pelayanan</a></h4>
          <p>Adalah suatu kegiatan atau urutan kegiatan yang terjadi dalam interaksi langsung antar seseorang dengan orang lain atau mesin secara fisik, dan menyediakan kepuasan pelanggan</p>
        </div>
      </div>

      <div class="col-lg-4 col-md-6 d-flex align-items-stretch mt-4">
        <div class="icon-box">
          <div class="icon"><i class="bx bx-world"></i></div>
          <h4><a href="#">Keamanan</a></h4>
          <p>Adalah keadaan bebas dari bahaya. Istilah ini bisa digunakan dengan hubungan kepada kejahatan, segala bentuk kecelakaan, dan lain-lain.</p>
        </div>
      </div>

      <div class="col-lg-4 col-md-6 d-flex align-items-stretch mt-4">
        <div class="icon-box">
          <div class="icon"><i class="bx bx-slideshow"></i></div>
          <h4><a href="#">Efisiensi</a></h4>
          <p>Adalah aspek adalah usaha yang mengharuskan penyelesaian pekerjaan dengan tepat waktu, cepat dan memuaskan. Sehingga egisien berkaitan erat dengan ketepatan waktu tanpa harus mengeluarkan biaya atau cost yang berlebihan.</p>
        </div>
      </div>

    </div>

  </div>
</section><!-- End Services Section -->





<!-- ======= Team Section ======= -->
<section id="team" class="team section-bg">
  <div class="container ">

    <div class="section-title">
      <h1>Rumah Sakit Terbaik</h1>
    </div>

    <div class="row">
    <?php $rsum = $conn->query("SELECT max(nilai_preferensi)  FROM preferensi WHERE jenis='Rumah Sakit Umum'"); 
                if($rsum->num_rows>0){
                  $rows = $rsum->fetch_row();
                  $px = $rows[0];
                  $rsum2 = $conn->query("SELECT * FROM preferensi WHERE nilai_preferensi='$px'");
                  $px = $rsum2->fetch_assoc();
                  $nam = $px['nama_rs'];
                  $rsum3 = $conn->query("SELECT * FROM alternative WHERE nama_rs='$nam'");
                  $pecah = $rsum3->fetch_assoc();
                }
              ?>
      <div class="col align-self-center text-center">
        <div class="member" style="background: #DEF5E5">
        <img src="bs/eNno/assets/img/team/<?= $pecah['gambar']; ?>" height="500" width="500" alt="">
          <h4>Rumah Sakit Umum </h4>
          <span><?= $pecah['nama_rs'] ?> </span>
          <span> <?= $pecah['alamat'] ?> </span>
          <p>Rating :
          <?php if($px['nilai_preferensi'] == 1  ){ ?>
          <i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i>
          <?php } ?>
          <?php if($px['nilai_preferensi'] > 0.9 )  {  if($px['nilai_preferensi'] <= 1) {?>
          <i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i><i class="fa-solid fa-star-half-stroke"></i>
          <?php }} ?>
          <?php if($px['nilai_preferensi'] > 0.8  ){ if($px['nilai_preferensi'] <= 0.9) {?>
          <i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i><i class="fa-regular fa-star"></i>
          <?php }} ?>
          <?php if($px['nilai_preferensi'] > 0.7  ){ if($px['nilai_preferensi'] <= 0.8) {?>
          <i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i><i class="fa-solid fa-star-half-stroke"></i><i class="fa-regular fa-star"></i>
          <?php }} ?>
          <?php if($px['nilai_preferensi'] > 0.6  ){ if($px['nilai_preferensi'] <= 0.7) {?>
          <i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i><i class="fa-regular fa-star"></i><i class="fa-regular fa-star"></i>
          <?php }} ?>
          <?php if($px['nilai_preferensi'] > 0.5  ){ if($px['nilai_preferensi'] <= 0.6) {?>
          <i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i><i class="fa-solid fa-star-half-stroke"></i><i class="fa-regular fa-star"></i><i class="fa-regular fa-star"></i>
          <?php }} ?>
          <?php if($px['nilai_preferensi'] > 0.4  ){ if($px['nilai_preferensi'] <= 0.5) {?>
          <i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i><i class="fa-regular fa-star"></i><i class="fa-regular fa-star"></i><i class="fa-regular fa-star"></i>
          <?php }} ?>
          <?php if($px['nilai_preferensi'] >= 0.3  ){ if($px['nilai_preferensi'] <= 0.4) {?>
          <i class="fa-solid fa-star"></i><i class="fa-solid fa-star-half-stroke"></i><i class="fa-regular fa-star"></i><i class="fa-regular fa-star"></i><i class="fa-regular fa-star"></i>
          <?php }} ?>
          <?php if($px['nilai_preferensi'] >= 0.2  ){ if($px['nilai_preferensi'] <= 0.3) {?>
          <i class="fa-solid fa-star"></i><i class="fa-regular fa-star"></i><i class="fa-regular fa-star"></i><i class="fa-regular fa-star"></i><i class="fa-regular fa-star"></i>
          <?php }} ?>
          <?php if($px['nilai_preferensi'] >= 0.1  ){ if($px['nilai_preferensi'] <= 0.2) {?>
          <i class="fa-solid fa-star-half-stroke"></i<i class="fa-regular fa-star"></i><i class="fa-regular fa-star"></i><i class="fa-regular fa-star"></i><i class="fa-regular fa-star"></i>
          <?php }} ?>
          <?php if($px['nilai_preferensi'] = 0  ){ ?>
            <i class="fa-regular fa-star"></i><i class="fa-regular fa-star"></i><i class="fa-regular fa-star"></i><i class="fa-regular fa-star"></i><i class="fa-regular fa-star"></i>
          <?php } ?>
          </p>
          <div class="social">
            <a href=""><i class="bi bi-twitter"></i></a>
            <a href=""><i class="bi bi-facebook"></i></a>
            <a href=""><i class="bi bi-instagram"></i></a>
            <a href=""><i class="bi bi-linkedin"></i></a>
          </div>
        </div>
      </div>    
    </div>

  </div>
</section><!-- End Team Section -->



</main><!-- End #main -->

<?php include 'footer.php'; ?> 
       

