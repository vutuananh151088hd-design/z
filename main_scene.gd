extends Node2D

var isHoldingLeft = false
var isHoldingRight = false
var isHoldingUp = false
var isHoldingDown = false

@onready var Player = $Player


func _process(delta: float) -> void:
	if isHoldingLeft:
		Player.position.x -= 400 * delta
	if isHoldingRight:
		Player.position.x += 400 * delta
	if isHoldingUp:
		Player.position.y -= 400 * delta
	if isHoldingDown:
		Player.position.y += 400 * delta

# Tín hiệu nút di chuyển
func _on_left_button_down() -> void: isHoldingLeft = true
func _on_left_button_up() -> void: isHoldingLeft = false
# #####################################################
func _on_right_button_down() -> void: isHoldingRight = true
func _on_right_button_up() -> void: isHoldingRight = false
# #######################################################
func _on_up_button_down() -> void: isHoldingUp = true
func _on_up_button_up() -> void: isHoldingUp = false
# ######################################################
func _on_down_button_down() -> void: isHoldingDown = true
func _on_down_button_up() -> void: isHoldingDown = false
