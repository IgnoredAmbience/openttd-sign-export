class FMainClass extends GSInfo {
	function GetAuthor()		{ return "IgnoredAmbience"; }
	function GetName()			{ return "sign-exporter"; }
	function GetDescription() 	{ return "sign-exporter exports a game's signs to csv"; }
	function GetVersion()		{ return 1; }
	function GetDate()			{ return "2020-06-17"; }
	function CreateInstance()	{ return "MainClass"; }
	function GetShortName()		{ return "SGNX"; } // Replace this with your own unique 4 letter string
	function GetAPIVersion()	{ return "1.3"; }
	function GetURL()			{ return ""; }

	function GetSettings() {
	}
}

RegisterGS(FMainClass());
