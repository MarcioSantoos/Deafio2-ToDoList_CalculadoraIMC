
class CalcularController{
 String textInfo = "Informe seus dados";

 String resetFields(heighController, weightController) {
    textInfo = "Informe seus dados";
    heighController.clear();
    weightController.clear();
    return textInfo;
    // ou heighController = "";
}

String calculaImc(heighController, weightController) {
    double height = double.parse(heighController.text) / 100;
    double weight = double.parse(weightController.text);
    double imc = weight / (height * height);

    if (imc < 18.6) {
      textInfo =
          "Você está abaixo do peso, seu IMC = ${imc.toStringAsPrecision(2)}";
    } else if (imc > 18.6 && imc < 24.9) {
      textInfo =
          "Você está no peso ideal, seu IMC = ${imc.toStringAsPrecision(2)}";
    } else if (imc > 24.9 && imc < 29.9) {
      textInfo =
          "Você está levemente acima do peso, seu IMC = ${imc.toStringAsPrecision(2)}";
    } else if (imc > 29.9 && imc < 34.9) {
      textInfo =
          "Você está com obesidade grau I, seu IMC = ${imc.toStringAsPrecision(2)}";
    } else if (imc > 34.9 && imc < 39.9) {
      textInfo =
          "Você está com obesidade grau II, seu IMC = ${imc.toStringAsPrecision(2)}";
    } else {
      textInfo =
          "Você está com obesidade grau III, seu IMC = ${imc.toStringAsPrecision(2)}";
    }
    return textInfo;
  }




}
