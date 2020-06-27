//$(".skill").fadeOut();

$("#no-selection").show();

// function hideSkills() {
//   $(".skill").slideUp();
// }

$(".skill-link").click(showSkill);

function showSkill(event) {
  let sectionID = $(this).attr("data-section");
  $(".skill").not("#" + sectionID).hide(); // hide others
  $("#" + sectionID).fadeToggle(); // toggle clicked
}
