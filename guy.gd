class_name Guy
extends Sprite2D


enum color_options {
    NONE,
    RED,
    GREEN,
    BLUE,
}

@export var color : color_options
var color_string

@export var first_name : String = "Name"
var greeting = "Hello. My name is "


func _ready():
    match color:
        0:
            modulate = Color.WHITE
            color_string = "white"
        1:
            modulate = Color.RED
            color_string = "red"
        2:
            modulate = Color.GREEN
            color_string = "green"
        3:
            modulate = Color.BLUE
            color_string = "blue"

    if color != color_options.NONE:
        print(greeting, first_name, " and I am the color ", color_string, "!")
    else:
        print(greeting, first_name, " and I don't have a color")