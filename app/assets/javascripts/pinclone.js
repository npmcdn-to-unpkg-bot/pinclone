function masonryAll(){
  $('.pinterestGrid').imagesLoaded(function(){
    $('.pinterestGrid').masonry({
      itemSelector: '.pin-item',
      columnWidth: '.pin-item'
    });
  });
}


$(document).ready(masonryAll);
$(document).on('page:load', masonryAll);
