extends Spatial

const Line01_Intro = preload("res://sounds/dial/Line01_Intro.ogg")
const Line02_First = preload("res://sounds/dial/Line02_FirstPuzzle.ogg")
const Line03_Wire = preload("res://sounds/dial/Line03_WireSwitch.ogg")
const Line04_iMiss = preload("res://sounds/dial/Line04_iMissThem.ogg")
const Line05_Secu = preload("res://sounds/dial/Line05_SecurityBox.ogg")
const Line06_Emplo = preload("res://sounds/dial/Line06_EmployeeSecrets.ogg")
const Line07_Bril = preload("res://sounds/dial/Line07_BrilliantBear.ogg")
const Line08_Seas = preload("res://sounds/dial/Line08_SeasonedEmployee.ogg")
const Line09_Final = preload("res://sounds/dial/Line09_Finale.ogg")
const Line10_Escape = preload("res://sounds/dial/Line10_Escape.ogg")

var line01_finished = false
var line02_finished = false
var line03_finished = false
var line04_finished = false
var line05_finished = false
var line06_finished = false
var line07_finished = false
var line08_finished = false
var line09_finished = false
var line10_finished = false

func _ready():
	$Faders.play("fade_out")
	$Dial.set_stream(Line01_Intro)
	$Dial.play()


func _on_Trigger_01_Complete_body_entered(body):
	if body.is_in_group("dynamic") and not line03_finished and $Music.playing == false:
		$Dial.set_stream(Line03_Wire)
		$Dial.play()
		yield(get_tree().create_timer(4.0), "timeout")
		$Music.play()
		$Faders.play("fade_in")
		


func _on_Trigger_04_02_Dialogue_body_entered(body):
	if body.is_in_group("dynamic") and not line06_finished:
		$Dial.set_stream(Line06_Emplo)
		$Dial.play()
		yield(get_tree().create_timer(16.0), "timeout")
		$Music.play()
		$Faders.play("fade_in")
		line06_finished = true

func _on_Trigger_FINALE_body_entered(body):
	if body.is_in_group("dynamic") and not line09_finished:
		$Dial.set_stream(Line09_Final)
		$Dial.play()
		line09_finished = true


func _on_Trigger_00_Complete_body_entered(body):
	if body.is_in_group("dynamic") and not line01_finished:
		$Dial.set_stream(Line02_First)
		$Dial.play()
		line01_finished = true


func _on_Trigger_04_Complete_body_entered(body):
	if body.is_in_group("dynamic") and not line05_finished:
		$Dial.set_stream(Line05_Secu)
		$Dial.play()
		line05_finished = true
		$Faders.play("fade_out")


func _on_Trigger_02_Complete_body_entered(body):
	pass


func _on_Trigger_03_Complete_body_entered(body):
	if body.is_in_group("dynamic") and not line04_finished:
		$Dial.set_stream(Line04_iMiss)
		$Dial.play()
		line04_finished = true


func _on_Trigger_05_Complete_body_entered(body):
	if body.is_in_group("dynamic") and not line07_finished:
		$Dial.set_stream(Line07_Bril)
		$Dial.play()
		line07_finished = true


func _on_Trigger_06_Complete_body_entered(body):
	if body.is_in_group("dynamic") and not line08_finished:
		$Dial.set_stream(Line08_Seas)
		$Dial.play()
		line08_finished = true


func _on_Trigger_07_Complete_body_entered(body):
	if body.is_in_group("dynamic") and not line09_finished:
		$Dial.set_stream(Line09_Final)
		$Dial.play()
		line09_finished = true
