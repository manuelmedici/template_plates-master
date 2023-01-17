<link href="https://cdn.jsdelivr.net/npm/daisyui@2.46.1/dist/full.css" rel="stylesheet" type="text/css" />
<script src="https://cdn.tailwindcss.com"></script>


<div class="navbar bg-base-100 flex justify-evenly">
   <div >
      <a class="btn btn-ghost normal-case text-xl" href="election.php">Where Trump received most votes</a>
   </div>
   <div >
      <a class="btn btn-ghost normal-case text-xl" href="bestvotation.php">Most voters in Arkansas</a>
   </div>
   <div>
      <a class="btn btn-ghost normal-case text-xl" href="form.php">Party by candidate</a>
   </div>
</div>
<div class="container mx-auto">


   <div class="carousel w-full">
      <div id="slide1" class="carousel-item relative w-full">
         <img src="images/photo1.jpg" class="h-full" " />
         <div class="absolute flex justify-between transform -translate-y-1/2 left-5 right-5 top-1/2">
            <a href="#slide4" class="btn btn-circle">❮</a>
            <a href="#slide2" class="btn btn-circle">❯</a>
         </div>
      </div>
      <div id="slide2" class="carousel-item relative w-full">
         <img src="images/photo2.jpg" class="h-full" "/>
         <div class="absolute flex justify-between transform -translate-y-1/2 left-5 right-5 top-1/2">
            <a href="#slide1" class="btn btn-circle">❮</a>
            <a href="#slide3" class="btn btn-circle">❯</a>
         </div>
      </div>
      <div id="slide3" class="carousel-item relative w-full">
         <img src="images/potho3.jpg" style="width: 100%"  />
         <div class="absolute flex justify-between transform -translate-y-1/2 left-5 right-5 top-1/2">
            <a href="#slide2" class="btn btn-circle">❮</a>
            <a href="#slide4" class="btn btn-circle">❯</a>
         </div>
      </div>
      <div id="slide4" class="carousel-item relative w-full">
         <img src="images/photo4.jpg" class="h-full"   />
         <div class="absolute flex justify-between transform -translate-y-1/2 left-5 right-5 top-1/2">
            <a href="#slide3" class="btn btn-circle">❮</a>
            <a href="#slide1" class="btn btn-circle">❯</a>
         </div>
      </div>
   </div>
</div>


