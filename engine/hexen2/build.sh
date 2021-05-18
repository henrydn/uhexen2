#!/bin/bash
make CC=emcc h2
emcc  d_edge.o d_fill.o d_init.o d_modech.o d_part.o d_polyse.o d_scan.o d_sky.o d_sprite.o d_surf.o d_vars.o d_zpoint.o r_aclip.o r_alias.o r_bsp.o r_draw.o r_edge.o r_efrag.o r_light.o r_main.o r_misc.o r_part.o r_sky.o r_sprite.o r_surf.o r_vars.o screen.o vid_sdl.o draw.o model.o  in_sdl.o snd_sys.o snd_dma.o snd_mix.o  snd_mem.o bgmusic.o snd_codec.o snd_flac.o snd_wave.o snd_vorbis.o snd_opus.o snd_mp3.o snd_mp3tag.o snd_mikmod.o snd_xmp.o snd_umx.o snd_timidity.o snd_wildmidi.o snd_oss.o snd_alsa.o snd_sun.o snd_sdl.o cd_null.o midi_nul.o net_bsd.o net_udp.o net_dgrm.o net_loop.o net_main.o chase.o cl_demo.o cl_effect.o cl_inlude.o cl_input.o cl_main.o cl_parse.o cl_string.o cl_tent.o cl_cmd.o console.o keys.o menu.o sbar.o view.o wad.o cmd.o q_endian.o link_ops.o sizebuf.o strlcat.o strlcpy.o qsnprint.o msg_io.o common.o debuglog.o quakefs.o crc.o cvar.o cfgfile.o host.o host_cmd.o host_string.o mathlib.o pr_cmds.o pr_edict.o pr_exec.o sv_effect.o sv_main.o sv_move.o sv_phys.o sv_user.o  world.o zone.o sys_unix.o sys_sdl.o --preload-file data1 -s ALLOW_MEMORY_GROWTH=1   -lm -o em/hexen2.html
rm /usr/share/nginx/html/*
cp em/* /usr/share/nginx/html/