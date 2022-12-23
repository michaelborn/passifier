/**
 * Copyright Since 2005 ColdBox Framework by Luis Majano and Ortus Solutions, Corp
 * www.ortussolutions.com
 * ---
 */
component {

	// Module Properties
	this.title       = "passifier";
	this.author      = "Ortus Solutions";
	this.webURL      = "https://www.ortussolutions.com";
	this.description = "Password strength checker for ColdBox";
	this.version     = "@build.version@+@build.number@";

	// Model Namespace
	this.modelNamespace = "passifier";

	// CF Mapping
	this.cfmapping = "passifier";

	// Dependencies
	this.dependencies = [ "cbjavaloader" ];

	/**
	 * Configure Module
	 */
	function configure(){
		settings = { libPath : modulePath & "/lib" };
	}

	/**
	 * Fired when the module is registered and activated.
	 */
	function onLoad(){
		wireBox.getInstance( "loader@cbjavaloader" ).appendPaths( settings.libPath );
	}

	/**
	 * Fired when the module is unregistered and unloaded
	 */
	function onUnload(){
	}

}
