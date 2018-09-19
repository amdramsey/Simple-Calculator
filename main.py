from kivy.app import App
from kivy.lang import Builder
from kivy.uix.boxlayout import BoxLayout

f = open("calc.k", "r")
Builder.load_string(f.read())
f.close()

class Root(BoxLayout):
    op = ""
    def plus(self):
        self.op = "+"
    def _min(self):
        self.op = "-"
    def multi(self):
        self.op = "*"
    def div(self):
        self.op = "/"
    def _sum(self):
        txtFirst = self.ids['txtFirst']
        txtSecond = self.ids['txtSecond']
        txtResult = self.ids['txtResult']
        
        if self.op == "+":
            txtResult.text = str(int(txtFirst.text) + int(txtSecond.text))
        elif self.op == "-":
            txtResult.text = str(int(txtFirst.text) - int(txtSecond.text))
        elif self.op == "*":
            txtResult.text = str(int(txtFirst.text) * int(txtSecond.text))
        elif self.op == "/":
            txtResult.text = str(int(txtFirst.text) / int(txtSecond.text))
        txtFirst.text = txtResult.text
        txtSecond.text = ""
        
class CalculatorApp(App):
    title = "Calculator"
    def build(self):
        return Root()
    
if __name__ == "__main__":
    CalculatorApp().run()