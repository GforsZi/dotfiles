#!/usr/bin/env bash

TOKEN_FILE="${XDG_RUNTIME_DIR:-/tmp}/ws-slide.token"
token="$$-$(date +%s%N)"
echo "$token" >"$TOKEN_FILE"

hyprctl eval "
hl.animation({ leaf = 'workspaces',    enabled = true, speed = 2, bezier = 'easeOutQuint', style = 'slide' })
hl.animation({ leaf = 'workspacesIn',  enabled = true, speed = 2, bezier = 'easeOutQuint', style = 'slide' })
hl.animation({ leaf = 'workspacesOut', enabled = true, speed = 2, bezier = 'easeOutQuint', style = 'slide' })
" >/dev/null

hyprctl dispatch "hl.dsp.focus({ workspace = '$1' })" >/dev/null

sleep 0.2

if [ "$(cat "$TOKEN_FILE" 2>/dev/null)" = "$token" ]; then
  hyprctl eval "
	hl.animation({ leaf = 'workspaces',    enabled = true, speed = 1.94, bezier = 'almostLinear', style = 'fade' })
	hl.animation({ leaf = 'workspacesIn',  enabled = true, speed = 1.21, bezier = 'almostLinear', style = 'fade' })
	hl.animation({ leaf = 'workspacesOut', enabled = true, speed = 1.94, bezier = 'almostLinear', style = 'fade' })
	" >/dev/null
fi
