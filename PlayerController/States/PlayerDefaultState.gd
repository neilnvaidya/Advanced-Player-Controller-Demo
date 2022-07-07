extends PlayerState

#This is a passthrough type state, used only when starting up.


func init(_args):
	name = "DefaultState"
	.init(_args)


func on_state_enter():
	.on_state_enter()
	# if !player._is_grounded:
	# 	player.set_state(PlayerFallState.new(), null)
	# else:
	# player.set_state(PlayerIdleState.new(), null)

	if init_args.has("grounded"):
		if init_args.grounded:
			request_state_exit(Globals.player_states.idle, null)

		else:
			request_state_exit(Globals.player_states.fall ,null)


func on_state_exit():
	.on_state_exit()


func tick(_args):
	.tick(_args)
