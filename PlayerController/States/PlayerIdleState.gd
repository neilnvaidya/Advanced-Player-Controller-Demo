extends PlayerState

func init(_args):
	name = "IdleState"
	.init(_args)


func on_state_enter():
	.on_state_enter()
	anim_player.play("Idle")


func on_state_exit():
	.on_state_exit()


func tick(_args):
	.tick(_args)
	if !_args.grounded:
		request_state_exit(Globals.player_states.fall, null)
