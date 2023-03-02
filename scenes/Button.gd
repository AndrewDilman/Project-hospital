extends Button

export var file : Resource

#export var node_path:NodePath

#onready var _TextLabel_ = get_node(node_path) ... попытка обратиться к ноду чтобы изменить текст поля

#var Text

func _ready():
	pass # Replace with function body.
	#	load(file.resource_path) ... попытка работы с json файлом, не пробовал загружать сам файл, потому что надо сперва разобраться с обращению к тексовому полю


#func load(Jfile):
#	var file = File.new()
#	if file.file_exists(Jfile):
#		file.open(Jfile, File.READ)
#		var data = parse_json(file.get_as_text())
#		file.close()
#		if typeof(data) == TYPE_DICTIONARY:
#			Text = data
#		else:
#			printerr("Corrupted data!")
#	else:
#		printerr("No saved data!")


func _on_Button2_pressed():
	print(file.resource_path)
