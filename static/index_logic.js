
function dni_detail_redirect() {
  input_form = document.getElementById("dni_input");
  url = "http://localhost:8081/expedientes/detail?expediente_dni=" + input_form.value;
  console.log(url)
  window.location.href = url;
}

dni_button.onclick = dni_detail_redirect;
