extends Control

@onready var popup_panel = $Panel
@onready var toggle_button = $Button
@onready var close = $Close
@onready var timer_label := $Timer
var play_time := 0.0


func _ready():
	$Level.visible = false
	$Title.visible = false
	$centerProfile.visible = false
	$Timer.visible = false
	$Profile.visible = true
	$Close2.visible = false
	popup_panel.visible = false
	toggle_button.pressed.connect(_on_toggle_button_pressed)

#shows the stats pf players 
func _on_toggle_button_pressed():
	popup_panel.visible = not popup_panel.visible
	if popup_panel.visible:
		toggle_button.visible = false
		pass
		
#closes the players stats
func _on_close_pressed():
	popup_panel.visible = false
	toggle_button.visible = true
	
func _stats_pressed():
	$Profile.visible = false
	$Level.visible = true
	$Title.visible = true
	$centerProfile.visible = true
	$Timer.visible = true
	$Close2.visible = true
	toggle_button.visible = false
	if popup_panel.visible == !false:
		popup_panel.visible = false
		
func _close2():
	$Profile.visible = true
	$Level.visible = false
	$Title.visible = false
	$centerProfile.visible = false
	$Timer.visible = false
	$Close2.visible = false
	$Button.visible = true

		
func _process(delta: float)-> void:
	play_time += delta
	var minutes = int(play_time) / 60	
	var seconds = int(play_time) % 60
	timer_label.text = "%02d:%02d" % [minutes, seconds]
		
		
	
