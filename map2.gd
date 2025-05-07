extends Control

@onready var popup_panel = $Panel
@onready var user = $firstUser
@onready var user2 = $secondUser



func _ready():
	popup_panel.visible = false

#shows the stats pf players 
func _on_toggle_button_pressed():
	popup_panel.visible = true
	
func _close():
	if popup_panel.visible == true:
		popup_panel.visible = false
	
func _fight_pressed():
	var err = get_tree().change_scene_to_file("res://tab.tscn")
