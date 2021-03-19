


// DRAG AND DROP JS CODE
$(document).ready(function() {
    var holder = document.getElementById('holder');
    holder.ondragover = function () { this.className = 'hover'; return false; };
    holder.ondrop = function (e) {
      this.className = 'hidden';
      e.preventDefault();
      var file = e.dataTransfer.files[0];
      var reader = new FileReader();
      reader.onload = function (event) {
          document.getElementById('image_droped').className='visible'
          $('#image_droped').attr('src', event.target.result);
      }
      reader.readAsDataURL(file);
    };
});

//  DRAG AND DROP JS CODE ENDS HERE