@tool
extends EditorPlugin

var plugin : EditorImportPlugin = null


func _enter_tree():
	plugin = load("res://addons/material_x/material_x_import_plugin.gd").new()
	add_import_plugin(plugin, true)


func _exit_tree():
	remove_import_plugin(plugin)
	plugin = null
