extends CenterContainer


var menu_node
@onready var masterSlider = $MarginContainer/MarginContainer/VBoxContainer2/MarginContainer/VBoxContainer/MasterAudio
@onready var soundEffectsSlider = $MarginContainer/MarginContainer/VBoxContainer2/MarginContainer/VBoxContainer/SoundEffects
@onready var musicSlider = $MarginContainer/MarginContainer/VBoxContainer2/MarginContainer/VBoxContainer/Music

@onready var masterBus = AudioServer.get_bus_index("Master")
@onready var soundEffectBus = AudioServer.get_bus_index("Sound Effects")
@onready var musicBus = AudioServer.get_bus_index("Music")

func _ready():
	masterSlider.value = db_to_linear(AudioServer.get_bus_volume_db(masterBus))
	soundEffectsSlider.value = db_to_linear(AudioServer.get_bus_volume_db(soundEffectBus))
	musicSlider.value = db_to_linear(AudioServer.get_bus_volume_db(musicBus))


func _on_texture_button_pressed():
	menu_node.hide_settings()


func _on_master_audio_value_changed(value):
	AudioServer.set_bus_volume_db(masterBus, linear_to_db(value))


func _on_sound_effects_value_changed(value):
	AudioServer.set_bus_volume_db(soundEffectBus, linear_to_db(value))


func _on_music_value_changed(value):
	AudioServer.set_bus_volume_db(musicBus, linear_to_db(value))
