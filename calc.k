<Root>:
	orientation: "vertical"
	canvas.before:
		Color:
			rgba: 134 / 255, 47 / 255, 142 / 255, 1
        Rectangle:
            pos: self.pos
            size: self.size
	BoxLayout:
		orientation: "horizontal"
		Label:
			id: lblFirst
			text: 'First'
			color: (111/255, 252/255, 253/255, 1)
			size_hint_y: 0.7
			size_hint_x: 0.1
		TextInput:
			id: txtFirst
			allow_copy: False
			background_color: (111/255, 252/255, 253/255, 1)
			mutliline: False
			font_size: 150
			input_filter: "float"
			size_hint_y: 0.7
	BoxLayout:
		orientation: "horizontal"
		Label:
			id: lblSecond
			text: 'Second'
			color: (111/255, 252/255, 253/255, 1)
			size_hint_y: 0.7
			size_hint_x: 0.1
		TextInput:
			id: txtSecond
			allow_copy: False
			background_color: (111/255, 252/255, 253/255, 1)
			mutliline: False
			font_size: 150
			input_filter: "float"
			size_hint_y: 0.7
	BoxLayout:
		orientation: "horizontal"
		Button:
			text: "+"
			background_color: (111/255, 252/255, 253/255, 1)
			size_hint_x: 0.7
			size_hint_y: 0.7
			on_release: root.plus()
		Button:
			text: "-"
			background_color: (111/255, 252/255, 253/255, 1)
			size_hint_x: 0.7
			size_hint_y: 0.7
			on_release: root._min()
		Button:
			text: "x"
			background_color: (111/255, 252/255, 253/255, 1)
			size_hint_x: 0.7
			size_hint_y: 0.7
			on_release: root.multi()
		Button:
			text: "/"
			background_color: (111/255, 252/255, 253/255, 1)
			size_hint_x: 0.7
			size_hint_y: 0.7
			on_release: root.div()
	BoxLayout:
		orientation: "horizontal"
		Label:
			id: lblResult
			text: 'Result'
			color: (111/255, 252/255, 253/255, 1)
			size_hint_y: 0.7
			size_hint_x: 0.1
		TextInput:
			id: txtResult
			allow_copy: False
			background_color: (111/255, 252/255, 253/255, 1)
			mutliline: False
			font_size: 150
			input_filter: "float"
			size_hint_y: 0.7
	BoxLayout:
		Button:
			text: "Sum"
			background_color: (111/255, 252/255, 253/255, 1)
			size_hint_x: 0.7
			size_hint_y: 0.7
			on_release: root._sum()