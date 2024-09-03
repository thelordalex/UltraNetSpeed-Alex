#!/system/bin/sh

SKIPMOUNT=false
PROPFILE=true
POSTFSDATA=true
LATESTARTSERVICE=true

sleep 3

ui_print "==============================================="
ui_print "            UltraNetSpeed@Alex                "
ui_print "       Channel : @InsideAlexWorld             "
ui_print "==============================================="
ui_print ""
ui_print "           Device Information 🚀🚀           "
ui_print "==============================================="
ui_print "- Phone Model: $(getprop ro.product.model)"
ui_print "- System Version: Android $(getprop ro.system.build.version.release)"
ui_print "- System Architecture: $(getprop ro.product.cpu.abi)"
ui_print "==============================================="
sleep 1

ui_print "              "
