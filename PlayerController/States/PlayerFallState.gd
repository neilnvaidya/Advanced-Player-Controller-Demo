extends PlayerState


func init(_args):
	name = "FallState"
	.init(_args)


func on_state_enter():
	.on_state_enter()
	anim_player.play("Fall")


func on_state_exit():
	.on_state_exit()


func tick(_args):
	.tick(_args)
	# if _args.grounded:
	# request_state_exit()
	if _args.grounded:
	# print(_args.grounded)
		request_state_exit(Globals.player_states.idle, null)
		# return

	var vel = Vector2(_args.input_struct.move_input_vec.x, Globals.gravity_strength)
	move_player(vel)
