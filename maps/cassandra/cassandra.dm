#if !defined(USING_MAP_DATUM)

	#include "../../mods/corporate/_corporate.dme"
	#include "../../mods/ascent/_ascent.dme"

	#include "cassandra_antagonists.dm"
	#include "cassandra_areas.dm"
	#include "cassandra_documents.dm"
	#include "cassandra_jobs.dm"
	#include "cassandra_loadouts.dm"
	#include "cassandra_overmap.dm"
	#include "cassandra_shuttles.dm"
	#include "cassandra_spawnpoints.dm"
	#include "cassandra_unit_testing.dm"
	#include "cassandra-0.dmm"
	#include "cassandra-1.dmm"
	#include "cassandra-2.dmm"

	#include "jobs/_jobs.dm"
	#include "jobs/command.dm"
	#include "jobs/engineering.dm"
	#include "jobs/medical.dm"
	#include "jobs/science.dm"

	#include "outfits/_outfits.dm"
	#include "outfits/command.dm"
	#include "outfits/engineering.dm"
	#include "outfits/medical.dm"
	#include "outfits/science.dm"

	#include "../away/mining/mining.dm"
	#include "../away/derelict/derelict.dm"
	#include "../away/bearcat/bearcat.dm"
	#include "../away/lost_supply_base/lost_supply_base.dm"
	#include "../away/smugglers/smugglers.dm"
	#include "../away/casino/casino.dm"
	#include "../away/magshield/magshield.dm"
	#include "../away/slavers/slavers_base.dm"
	#include "../away/mobius_rift/mobius_rift.dm"
	#include "../away/errant_pisces/errant_pisces.dm"
	#include "../away/unishi/unishi.dm"

	#define USING_MAP_DATUM /datum/map/cassandra

#elif !defined(MAP_OVERRIDE)

	#warn A map has already been included, ignoring Cassandra
#endif
