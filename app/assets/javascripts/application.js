// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require bootstrap-sprockets
//= require_tree .


function disableInputs(){
  var selectEl = document.getElementById("activity-select");
  var selectOpt = selectEl.options[selectEl.selectedIndex].dataset.activityType;
  if(selectOpt === "anabolic") {
    document.getElementById("workout_time").setAttribute("disabled", true);
    document.getElementById("workout_distance").setAttribute("disabled", true);
    document.getElementById("workout_sets").removeAttribute("disabled");
    document.getElementById("workout_reps").removeAttribute("disabled");
  } else {
    document.getElementById("workout_sets").setAttribute("disabled", true);
    document.getElementById("workout_reps").setAttribute("disabled", true);
    document.getElementById("workout_time").removeAttribute("disabled");
    document.getElementById("workout_distance").removeAttribute("disabled");
  }
};

disableInputs();
$("#activity-select").change(function(){
  disableInputs();
});
