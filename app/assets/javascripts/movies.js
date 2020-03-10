var movies = $(".movie_name")
movies.one('click', function(){
  // console.log(this.getAttribute("id"))
  var movie_id = this.getAttribute("value")
  var movie = this.innerHTML.trim()
  var url = 'https://www.omdbapi.com/?t='+ movie +'&apikey=fe360526'
  console.log(url);
   $.ajax({
     url: url,
     method: 'get'
    }).then (function(res){
      console.log(res);
      console.log($("#" + movie_id))
      // $("#" + movie_id).attr("src", res.Poster)
      var image = $("<img>")
      image.attr("src", res.Poster)
      $("#" + movie_id).append(image)
      $("#" + movie_id).append(res.Plot)
    });
})

var shows = $(".show_name")
shows.one('click', function(){
  // console.log(this.getAttribute("id"))
  var show_id = this.getAttribute("value")
  var show = this.innerHTML.trim()
  var url = 'https://www.omdbapi.com/?t='+ show +'&apikey=fe360526'
  console.log(url);
   $.ajax({
     url: url,
     method: 'get'
    }).then (function(res){
      console.log(res);
      console.log($("#" + show_id))
      // $("#" + movie_id).attr("src", res.Poster)
      var image2 = $("<img>")
      image2.attr("src", res.Poster)
      $("#" + show_id).append(image2)
      $("#" + show_id).append(res.Plot)
    });
})
