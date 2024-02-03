const panel = new Panel
var panelScreen = panel.screen

panel.location = "bottom"
panel.height = Math.round(gridUnit * 2.8)
panel.lengthMode = "fit"
panel.alignment = "center"
panel.floating = "true"
panel.offset = 0


panel.addWidget("org.kde.plasma.panelspacer");
var launcher = panel.addWidget("org.kde.plasma.kickoff");

var icontask = panel.addWidget("org.kde.plasma.icontasks");

panel.addWidget("org.kde.plasma.panelspacer");
panel.addWidget("org.kde.plasma.systemtray");

var spacer = panel.addWidget("org.kde.plasma.panelspacer");
spacer.currentConfigGroup = ["General"];
spacer.writeConfig("expanding",false);
spacer.writeConfig("length",10);

var clock = panel.addWidget("org.kde.plasma.digitalclock");
clock.currentConfigGroup = ["Appearance"];
clock.writeConfig("autoFontAndSize",false);
clock.writeConfig("customDateFormat","ddd d MMM");
clock.writeConfig("dateFormat","custom");
clock.writeConfig("dateDisplayFormat","BelowTime");
clock.writeConfig("fontFamily","Noto Sans");
clock.writeConfig("fontSize","16");
clock.writeConfig("fontStyleName","Regular");
clock.writeConfig("use24hFormat",2);
clock.writeConfig("autoFontAndSize",false);

panel.addWidget("org.kde.plasma.showdesktop");