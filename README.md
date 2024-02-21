# Tutorial 2

## Latihan: Playtest

### 1. Apa saja pesan log yang dicetak pada panel  Output?
<img width="158" alt="image" src="https://github.com/farahaulita/tutorial-2-gamedev/assets/92159879/6c8f083e-723c-4471-9814-ac674c2faa47">

Pada saat game dijalankan, terdapat log "Platform initialized". ketika BlueShip mencapai bagian atas, muncul log "Reached objective!"

### 2. Coba gerakkan landasan ke batas area bawah, lalu gerakkan kembali ke atas hingga hampir menyentuh batas atas. Apa saja pesan log yang dicetak pada panel Output?
![image](https://github.com/farahaulita/tutorial-2-gamedev/assets/92159879/463c69ad-8b37-433c-a0cd-46cbae99c312)

Saat landasan digerakkan ke bawah lalu digerakkan kembali ke atas, pesan log "Reached objective!" muncul kembali.

### 3. Buka scene MainLevel dengan tampilan workspace 2D. Apakah lokasi scene ObjectiveArea memiliki kaitan dengan pesan log yang dicetak pada panel Output pada percobaan sebelumnya?
Pada scene MainLevel, dapat dilihat bahwa ObjectiveArea berada di bagian kiri atas dari tampilan viewport. Ketika BlueShip berada di posisi kiri atas, pesan log "Objective reached!" akan muncul. Dapat disimpulan bahwa mencapai ObjectiveArea inilah yang memberikan pesan log. Pada Script ObjectiveArea, terdapat juga sebuah fungsi yang akan memuncul pesan log tersebut jika ada sebuah objek RigidBody2D memasuki area ObjectiveArea.

## Latihan: Memanipulasi Node dan Scene

### 1. Scene BlueShip dan StonePlatform sama-sama memiliki sebuah child node bertipe Sprite. Apa fungsi dari node bertipe Sprite?
Sprite berfungsi untuk menampilkan texture. Untuk Sprite 2D, node ini akan menampilkan texture 2D. Pada BlueShip dn StonePlatform, terdapat texture berupa gambar yang ada di node tersbut.

### 2. Root node dari scene BlueShip dan StonePlatform menggunakan tipe yang berbeda. BlueShip menggunakan tipe RigidBody2D, sedangkan StonePlatform menggunakan tipe StaticBody2D. Apa perbedaan dari masing-masing tipe node?
Node RigidBody2D mengimplementasikan physics 2D. Node ini tidak dapat dikendalikan secara langsung, namun bisa digerakkan oleh pengaruh luar, misalnya jika terjadi collision atau menabrak, gravitasi, dan sebagainya. Pergerakan dari node akan dihitun menggunakan simulasi physics. 
Node StaticBody2 adalah sebuah objek statis yang tidak akan bergerak jika ada pengaruh eksternal, misalnya gravitasi atau tabrakan, namun dapat digerakkan menggunakan code, AnimationMixers, dan RemoteTransform2D.

### 3. Ubah nilai atribut Mass dan Weight pada tipe RigidBody2D secara bebas di scene BlueShip, lalu coba jalankan scene MainLevel. Apa yang terjadi?
Mass akan otomatis mengubah weight dan begitu juga sebaliknya. Mass yang lebih besar akan membuat objek lebi sulit untuk didorong. Namun, untu BlueShip, sepertinya tidak terlihat perbedaan antara mass yang kecil dengan mass yang besar.

### 4. Ubah nilai atribut Disabled pada tipe CollisionShape2D di scene StonePlatform, lalu coba jalankan scene MainLevel. Apa yang terjadi?
BlueShip tidak berhenti atau tertahan di ata StonePlatform seperti biasanya dan terus jatuh menembus StonePlatform.

### 5. Pada scene MainLevel, coba manipulasi atribut Position, Rotation, dan Scale milik node BlueShip secara bebas. Apa yang terjadi pada visualisasi BlueShip di Viewport?
Jika Position diubah, maka posisi dari BlueShip juga berubah sesusai dengan nilai yang dimasukkan. Jika Rotation diubah, maka BlueShip akan diputar, sehingga bagian atas ship dapat menghadap arah yang berbeda. Mengubah scale akan mengubah ukuran dari BlueShip. Perubahan ini juga akan diterapkan ke semua child node dari BlueShip, yaitu Sprite dan CollisionShape2D.

### 6. Pada scene MainLevel, perhatikan nilai atribut Position node PlatformBlue, StonePlatform, dan StonePlatform2. Mengapa nilai Position node StonePlatform dan StonePlatform2 tidak sesuai dengan posisinya di dalam scene (menurut Inspector) namun visualisasinya berada di posisi yang tepat?
Ini terjadi karena StonePlatform dan Stoneplatform2 merupakan child node dari PlatformBlue. Posisi child node bersifat relatif terhadap node parentnya. Posisi dari StonePlatform dan StonePlatform2 menunjukkan posisi relatif dari node parent yaitu PlatformBlue. Jika posisi PlatformBlue diubah, posisi semua child nodenya juga akan ikut berubah mengikti parentnya.
