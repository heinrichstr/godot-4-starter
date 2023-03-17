extends Node2D

var config:ConfigFile
var player_input = true

var settings = {
	"audio_masterVolume": 1,
	"audio_soundVolume": .5,
	"audio_musicVolume": .25
}

var settingDefaults = {
	"audio_masterVolume": 1,
	"audio_soundVolume": 1,
	"audio_musicVolume": 1
}

var state = {}


func _ready():
	load_config()


func write_config():
	pass
	#todo


func load_config():
	var dir = DirAccess.open("user://settings.cfg")
	
	prints(dir)
	
	if dir:
		for configSettings in config.get_sections():
			print(configSettings)
	
	else:
		#if no config, write defaults
		
		config = ConfigFile.new()
		for setting in settingDefaults:
			prints("writing default config: ", setting, " ", settingDefaults[setting])
			config.set_value("settings", setting, settingDefaults[setting])
	
