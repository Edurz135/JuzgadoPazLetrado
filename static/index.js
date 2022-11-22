function get_back_redirect() {
    input_form = document.getElementById("login_username_input");
    console.log(input_form)
    url = "http://localhost:8081/olvidar?juez_usuario=" + input_form.value
    console.log(url)
    window.location.href = url
  }

get_back_button.onclick = get_back_redirect