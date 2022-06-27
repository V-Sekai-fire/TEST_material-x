@tool
extends EditorImportPlugin


func _get_importer_name():
	return "com.chibifire.com.material-x"


func _get_resource_type():
	return "StandardMaterial3D"


func _get_priority() -> float:
	return 0.0

func _get_import_order() -> int:
	return 0

func _get_visible_name():
	return "MaterialX Material"


func _get_recognized_extensions():
	return ["mtlx"]


func _get_save_extension():
	return "res"


func _get_preset_count():
	return 0


func _import(source_file, save_path, options, platform_variants, gen_files) -> int:
	var mtlx = MTLXLoader.new()
	var mat : Variant = mtlx._load(save_path, source_file, false, 0)
	var filename = save_path + "." + _get_save_extension()
	return ResourceSaver.save(filename, mat)
