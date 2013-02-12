static BOOL enabled = NO;
static NSString *plist = @"/var/mobile/Library/Preferences/com.softboysxp.Tallscreen.plist";

static void loadConfig() {
	enabled = [[NSDictionary dictionaryWithContentsOfFile:plist][@"enabled"] boolValue];
}

%hook SBApplication

- (BOOL)supportsApplicationType:(int)arg1 {
	loadConfig();
	return (arg1 == 4 && enabled) ? YES : %orig(arg1); // magic number 4 found through trial and error, :P
}

%end

