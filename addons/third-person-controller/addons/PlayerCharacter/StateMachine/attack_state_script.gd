extends State

class_name AttackState

var state_name : String = "Attack"

var cR : CharacterBody3D

func enter(char_ref : CharacterBody3D):
	cR = char_ref
	verifications()
	
func verifications():
	cR.godot_plush_skin.set_state("attack")
	if cR.attack_cooldown > 0.0: cR.attack_cooldown = -1.0
	
func update(_delta : float):
	pass

func input_management():
	if Input.is_action_pressed(cR.attackAction):
		transitioned.emit(self, "AttackState")
