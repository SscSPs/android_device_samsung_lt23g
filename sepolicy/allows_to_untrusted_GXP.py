obj_written = open("./gxp_outs/writes_by_untrusted_GXP.out", 'w')


untrusted_list = ['../untrusted_app.te', '../app.te', '../knox_common/knox_untrusted_app.te']

write_ops = ['access','acquire_svc','add','add_child','add_color','add_glyph','add_name','admin','append',
'bell','bind','blend','chfn','chsh','connect','connectto','create','crontab','dccp_send','debug',
'delete','destroy','drop','dyntransition','egress','enqueue','force_cursor','forward_out','freeze',
'grab','hide','hide_cursor','import','insert','install','link','manage','mount','mounton',
'name_connect','newconn','nlmsg_relay','nlmsg_tty_audit','nlmsg_write','passwd','password',
'paste','paste_after_confirm','ptrace','quotamod','quotaon','rawip_send','relabelto','remount',
'remove','remove_child','remove_color','remove_glyph','remove_name','rename','reparent','rmdir',
'saver_hide','saver_setattr','saver_show','send','send_msg','sendto','set_property','setattr',
'setcap','setcontext','setcurrent','setexec','setfocus','setfscreate','setkeycreate','setopt',
'setpgid','setsched','setsockcreate','share','show','show_cursor','shutdown','sigchld','sigkill',
'signal','sigstop','swapon','tcp_send','transition','udp_send','uninstall','unix_write','unlink',
'unmount','update','use','write']

#write_ops = open("no_duplicates_write_ops_GXP.out", 'r')

for untrusted in untrusted_list: 
	with open(untrusted) as f:
		for line in f:
			if line.startswith('allow '):
				if any(op in line for op in write_ops):
					#print(line)
			        	obj_written.write(line)


