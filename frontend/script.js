function sendNumbers() {
  const a = document.getElementById("a").value;
  const b = document.getElementById("b").value;

  fetch("http://localhost:8080/api/plus?a=" + a + "&b=" + b)
    .then(response => response.json())
    .then(data => {
      const sum = data.sum;

      // 結果ページに遷移
      window.location.href = "result.html?sum=" + sum;
    })
    .catch(error => console.error("Error:", error));
}
