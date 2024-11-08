extends Node2D

@onready var world_environment: WorldEnvironment = $WorldEnvironment

func _ready() -> void:
  $CanvasLayer/SubViewportContainer/SubViewport.world_2d = get_viewport().world_2d


func _on_glow_toggled(toggled_on: bool) -> void:
  world_environment.environment.glow_enabled = toggled_on

func _on_bg_mode_toggled(toggled_on: bool) -> void:
  world_environment.environment.background_mode = Environment.BG_CANVAS if toggled_on else Environment.BG_CLEAR_COLOR


func _on_custom_bg_toggled(toggled_on: bool) -> void:
  $main/bg.visible = !toggled_on
  $ParallaxBackground/bg.visible = toggled_on
