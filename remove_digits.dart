void main() {
  // 1️⃣ Original URL
  String url = "https://usman-portfolio-a9274.web.app";

  // 2️⃣ Remove digits and connected dash
  String newUrl = url.replaceAll(RegExp(r'-?\d+'), '');

  // 3️⃣ Replace with desired URL
  String finalUrl = "https://usman.web.app";

  // 4️⃣ Print result
  print(finalUrl);
}
