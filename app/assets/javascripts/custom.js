$(document).ready(function () {
  $('#search-users-input').keyup(function () {
    $('#search-users-form').submit();
  });
  $('#search-courses-input').keyup(function () {
    $('#search-courses-form').submit();
  });
  $('#search-in-course-input').keyup(function () {
    $('#search-in-course-form').submit();
  });
});
