#include <sourcemod>
#include <multicolors>

#pragma newdecls required

#define PLUGIN_VERSION "1.0"

public Plugin myinfo = 
{
	name = "Radio Block",
	author = "CaptainNervous",
	description = "Radio Block",
	version = PLUGIN_VERSION,
	url = "http://steamcommunity.com/id/CaptainNervous"
}

public void OnPluginStart()
{
	CreateConVar("sm_radio_block_version", PLUGIN_VERSION, "Radio Block Version", FCVAR_PLUGIN|FCVAR_NOTIFY|FCVAR_DONTRECORD);
	
	RegConsoleCmd("coverme", RestrictRadio);
	RegConsoleCmd("takepoint", RestrictRadio);
	RegConsoleCmd("holdpos", RestrictRadio);
	RegConsoleCmd("regroup", RestrictRadio);
	RegConsoleCmd("followme", RestrictRadio);
	RegConsoleCmd("takingfire", RestrictRadio);
	RegConsoleCmd("go", RestrictRadio);
	RegConsoleCmd("fallback", RestrictRadio);
	RegConsoleCmd("sticktog", RestrictRadio);
	RegConsoleCmd("getinpos", RestrictRadio);
	RegConsoleCmd("stormfront", RestrictRadio);
	RegConsoleCmd("report", RestrictRadio);
	RegConsoleCmd("roger", RestrictRadio);
	RegConsoleCmd("enemyspot", RestrictRadio);
	RegConsoleCmd("needbackup", RestrictRadio);
	RegConsoleCmd("sectorclear", RestrictRadio);
	RegConsoleCmd("inposition", RestrictRadio);
	RegConsoleCmd("reportingin", RestrictRadio);
	RegConsoleCmd("getout", RestrictRadio);
	RegConsoleCmd("negative", RestrictRadio);
	RegConsoleCmd("compliment", RestrictRadio);
	RegConsoleCmd("thanks", RestrictRadio);
	RegConsoleCmd("cheer", RestrictRadio);
}

public Action RestrictRadio(int client, int args)
{
	CPrintToChat(client, "{default}[ {purple}Server {default}]{green} Radio messages are blocked.");
	return Plugin_Handled;
}