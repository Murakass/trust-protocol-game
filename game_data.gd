extends RefCounted
class_name GameData

static func get_side_story_conclusions() -> Dictionary:
	return {
		"free_outdoor_movie": {
			"good": [
				{"type": "body", "text": "Organizers didn't show up for a movie party, neither did any visitors."}
			],
			"bad": [
				{"type": "body", "text": "A small crowd gathered at a nonexistent movie party. \"We're very disappointed,\" said a visitor."}
			]
		},
		"statue_story": {
			"good": [
				{"type": "body", "text": "City statue is set to return on schedule after restoration work, with no interruptions reported."}
			],
			"bad": [
				{"type": "body", "text": "City statue’s return has been delayed after the city mayor requested an inspection following reports of damage during maintenance."}
			]
		},
		"lost_pet": {
			"good": [
				{"type": "body", "text": "A strange situation unfolded after a missing dog notice circulating locally turned out to be false. No confirmed report matching the description was ever filed."}
			],
			"bad": [
				{"type": "body", "text": "Residents spent the day responding to a widely shared missing dog notice, only for it to later emerge that no such report had been officially filed."}
			]
		},
		"harbor_beacon": {
			"good": [
				{"type": "body", "text": "Crowds gathered peacefully along the waterfront as the old lighthouse was lit again for the spring festival. Earlier alarm over possible smoke at the site was later traced to an edited image."}
			],
			"bad": [
				{"type": "body", "text": "Confusion spread around the waterfront after false alarm over the lighthouse led some visitors to avoid the festival opening. The structure was eventually lit without incident later that evening."}
			]
		},
		"street_artist": {
			"good": [
				{"type": "body", "text": "Reports of glowing symbols appearing across the city were dismissed after no evidence could be confirmed."}
			],
			"bad": [
				{"type": "body", "text": "Residents looking for glowing symbols across the city."}
			]
		},
		"night_market": {
			"good": [
				{"type": "body", "text": "Plans for an expanded night market were not confirmed by organizers, with no official announcement made ahead of the weekend."}
			],
			"bad": [
				{"type": "body", "text": "Visitors arrived expecting a larger night market event, but no expansion had been officially announced by organizers."}
			]
		},
		"clinic_ship": {
			"good": [
				{"type": "body", "text": "A floating medical clinic began receiving residents in the harbor this week, offering checkups and basic care as part of a regional outreach program."}
			],
			"bad": [
				{"type": "body", "text": "A floating medical clinic opened in the harbor this week, though some residents were slow to attend after early reporting around the visit was dismissed."}
			]
		},
		"orinth_scholarship": {
			"good": [
				{"type": "body", "text": "Orinth confirmed plans for a new regional scholarship program, with applications expected to open later this month through local education offices."}
			],
			"bad": [
				{"type": "body", "text": "Orinth moved forward with a new regional scholarship program after weeks of mixed reporting, leaving some students unsure when official applications would actually open."}
			]
		},
		"railroad_expansion": {
			"good": [
				{"type": "body", "text": "Railroad construction confirmed to be part of long-term planning, officials say."}
			],
			"bad": [
				{"type": "body", "text": "Confusion spreads over railroad construction timeline after conflicting reports circulate."}
			]
		},
		"relay_project": {
			"good": [
				{"type": "body", "text": "The new border communications relay entered operation without incident after days of rumors and conflicting claims. Officials say the system is functioning as intended."}
			],
			"bad": [
				{"type": "body", "text": "Public confusion lingered even after the new border communications relay entered operation."}
			]
		},
		"shadow_tide": {
			"good": [
				{"type": "body", "text": "A wave of alarming claims about Al Mare's trade, food safety, and financial reliability lost momentum after repeated reports failed to hold up under closer scrutiny."}
			],
			"bad": [
				{"type": "body", "text": "Confidence in Al Mare was shaken after days of believable but conflicting reports fueled doubts about trade stability, food screening, and regional finance."}
			]
		},
		"port_fees": {
			"good": [
				{"type": "body", "text": "Port officials confirmed no changes to docking fees. Trade activity continued without disruption."}
			],
			"bad": [
				{"type": "body", "text": "Confusion over supposed port fee increases led some operators to delay shipments."}
			]
		},

		"grain_shipments": {
			"good": [
				{"type": "body", "text": "Grain shipments continued as scheduled."}
			],
			"bad": [
				{"type": "body", "text": "Rumors of export limits caused temporary disruptions as buyers rushed to secure supplies that were never officially restricted."}
			]
		},

		"bridge_repair": {
			"good": [
				{"type": "body", "text": "Bridge repair work proceeded without issue after misleading images circulating online were debunked."}
			],
			"bad": [
				{"type": "body", "text": "Concerns over bridge safety spread after a widely shared image exaggerated structural damage, despite officials confirming normal conditions."}
			]
		},

		"civic_forum": {
			"good": [
				{"type": "body", "text": "The civic forum concluded with productive discussions after reports remained grounded in verified statements."}
			],
			"bad": [
				{"type": "body", "text": "Tensions rose during the civic forum as exaggerated reports fueled division over statements taken out of context."}
			]
		}
	}

static func get_morning_news() -> Dictionary:
	return {
		2: {
			"default": {
				"content": [
					{"type": "body", "text": ""}
				]
			},
			"variants": [
				{
					"when": {"article_id": "main_1", "choice": "trust"},
					"content": [
						{"type": "body", "text": "Seafarers' hopeful comments on new energy source..."}
					]
				},
				{
					"when": {"article_id": "main_1", "choice": "dismiss"},
					"content": [
						{"type": "body", "text": "Seafarer's skeptical comments on new energy source..."}
					]
				}
			]
		},
		3: {
			"default": {
				"content": [
					{"type": "body", "text": ""}
				]
			},
			"variants": [
				{
					"when": {"article_id": "main_2", "choice": "trust"},
					"content": [
						{"type": "body", "text": "Solaris head of state condemns Rocca for mining expansion..."}
					]
				},
				{
					"when": {"article_id": "main_2", "choice": "dismiss"},
					"content": [
						{"type": "body", "text": "Suspicious activity on Solaris - Rocca border..."}
					]
				}
			]
		},
		4: {
			"default": {
				"content": [
					{"type": "body", "text": ""}
				]
			},
			"variants": [
				{
					"when": {"article_id": "main_3", "choice": "trust"},
					"content": [
						{"type": "body", "text": "Al Mare shipping vessel, \"Seafarer\", change in course after military action scare..."}
					]
				},
				{
					"when": {"article_id": "main_3", "choice": "dismiss"},
					"content": [
						{"type": "body", "text": "Opinion: \"International waters have never been safer...\" - cpt. Magnus Sailor."}
					]
				}
			]
		},
		5: {
			"default": {
				"content": [
					{"type": "body", "text": ""}
				]
			},
			"variants": [
				{
					"when": {"article_id": "main_4", "choice": "trust"},
					"content": [
						{"type": "body", "text": "Early energy project seems promising..."}
					]
				},
				{
					"when": {"article_id": "main_4", "choice": "dismiss"},
					"content": [
						{"type": "body", "text": "Energy project is a waste of resources..."}
					]
				}
			]
		},
		6: {
			"default": {
				"content": [
					{"type": "body", "text": ""}
				]
			},
			"variants": [
				{
					"when": {"article_id": "main_5", "choice": "trust"},
					"content": [
						{"type": "body", "text": "Roccan citizens outraged by Solaris energy test ship..."}
					]
				},
				{
					"when": {"article_id": "main_5", "choice": "dismiss"},
					"content": [
						{"type": "body", "text": "Rocca leadership confirms Solaris' ship in Roccan waters is legal..."}
					]
				}
			]
		},
		7: {
			"default": {
				"content": [
					{"type": "body", "text": ""}
				]
			},
			"variants": [
				{
					"when": {"article_id": "main_6", "choice": "trust"},
					"content": [
						{"type": "body", "text": "\"Full steam ahead!\" - Roccan millionaire on mining expansion..."}
					]
				},
				{
					"when": {"article_id": "main_6", "choice": "dismiss"},
					"content": [
						{"type": "body", "text": "Roccan officials having second thoughts on mining expansion..."}
					]
				}
			]
		},
		8: {
			"default": {
				"content": [
					{"type": "body", "text": ""}
				]
			},
			"variants": [
				{
					"when": {"article_id": "main_7", "choice": "trust"},
					"content": [
						{"type": "body", "text": "Al Mare citizens concerned about who the new port will really benefit..."}
					]
				},
				{
					"when": {"article_id": "main_7", "choice": "dismiss"},
					"content": [
						{"type": "body", "text": "Large scale construction work leaves Al Mare citizens baffled..."}
					]
				}
			]
		},
		9: {
			"default": {
				"content": [
					{"type": "body", "text": ""}
				]
			},
			"variants": [
				{
					"when": {"article_id": "main_8", "choice": "trust"},
					"content": [
						{"type": "body", "text": "Momentary panic as lies about an explosion spread..."}
					]
				},
				{
					"when": {"article_id": "main_8", "choice": "dismiss"},
					"content": [
						{"type": "body", "text": "Solaris energy project has been smooth sailing so far..."}
					]
				}
			]
		},
		10: {
			"default": {
				"content": [
					{"type": "body", "text": ""}
				]
			},
			"variants": [
				{
					"when": {"article_id": "main_9", "choice": "trust"},
					"content": [
						{"type": "body", "text": "Uriel Blue forced to step back from head of state due to large demonstrations..."}
					]
				},
				{
					"when": {"article_id": "main_9", "choice": "dismiss"},
					"content": [
						{"type": "body", "text": "Uriel Blue to take a vacation amidst small-scale protests..."}
					]
				}
			]
		},
		11: {
			"default": {
				"content": [
					{"type": "body", "text": ""}
				]
			},
			"variants": [
				{
					"when": {"article_id": "main_10", "choice": "trust"},
					"content": [
						{"type": "body", "text": "Rocca military prepares to board and thoroughly search Solaris energy test vessel..."}
					]
				},
				{
					"when": {"article_id": "main_10", "choice": "dismiss"},
					"content": [
						{"type": "body", "text": "Rocca naval vessels are going to provide security for Solaris energy test vessel..."}
					]
				}
			]
		},
		12: {
			"default": {
				"content": [
					{"type": "body", "text": ""}
				]
			},
			"variants": [
				{
					"when": {"article_id": "main_11", "choice": "trust"},
					"content": [
						{"type": "body", "text": "Rocca navy's on the move..."}
					]
				},
				{
					"when": {"article_id": "main_11", "choice": "dismiss"},
					"content": [
						{"type": "body", "text": "Rocca navy's on the move..."}
					]
				}
			]
		},
		13: {
			"default": {
				"content": [
					{"type": "body", "text": ""}
				]
			},
			"variants": [
				{
					"when": {"article_id": "main_12", "choice": "trust"},
					"content": [
						{"type": "body", "text": "Rocca naval vessels have reached Solaris energy test ship..."}
					]
				},
				{
					"when": {"article_id": "main_12", "choice": "dismiss"},
					"content": [
						{"type": "body", "text": "Rocca naval vessels have reached Solaris energy test ship..."}
					]
				}
			]
		},
		14: {
			"default": {
				"content": [
					{"type": "body", "text": ""}
				]
			},
			"variants": [
				{
					"when": {"article_id": "main_13", "choice": "trust"},
					"content": [
						{"type": "body", "text": "Situation spiralling out of control after explosion..."}
					]
				},
				{
					"when": {"article_id": "main_13", "choice": "dismiss"},
					"content": [
						{"type": "body", "text": "Things calming down as Rocca and Solaris release statements on ship explosion..."}
					]
				}
			]
		},
		15: {
			"default": {
				"content": [
					{"type": "body", "text": ""}
				]
			},
			"variants": [
				{
					"when": {"article_id": "main_14_bad", "choice": "trust"},
					"content": [
						{"type": "body", "text": "Situation spiralling out of control after explosion..."}
					]
				},
				{
					"when": {"article_id": "main_14_bad", "choice": "dismiss"},
					"content": [
						{"type": "body", "text": "Things calming down as Rocca and Solaris release statements on ship explosion..."}
					]
				},
				{
					"when": {"article_id": "main_14_good", "choice": "trust"},
					"content": [
						{"type": "body", "text": "Situation spiralling out of control after explosion..."}
					]
				},
				{
					"when": {"article_id": "main_14_good", "choice": "dismiss"},
					"content": [
						{"type": "body", "text": "Things calming down as Rocca and Solaris release statements on ship explosion..."}
					]
				}
			]
		}
	}
	

static func get_day_protocols() -> Dictionary:
	return {
		1: [
			"Article must have an author."
		],
		2: [
			"Article must have an author.",
			"Author identity must be verified."
		],
		3: [
			"Article must have an author.",
			"Author identity must be verified.",
			"Attached image must be relevant to claims.",
			"Attached image must show no signs of manipulation."
		],
		4: [
			"Article must have an author.",
			"Author identity must be verified.",
			"Attached image must be relevant to claims.",
			"Attached image must show no signs of manipulation."
		],
		5: [
			"Article must have an author.",
			"Author identity must be verified.",
			"Attached image must be relevant to claims.",
			"Attached image must show no signs of manipulation.",
			"Quotes must be attributed correctly.",
			"Quotes must not omit important context."
		],
		6: [
			"Article must have an author.",
			"Author identity must be verified.",
			"Attached image must be relevant to claims.",
			"Attached image must show no signs of manipulation.",
			"Quotes must be attributed correctly.",
			"Quotes must not omit important context.",
			"Graphs must not misrepresent data.",
		],
		7: [
			"Article must have an author.",
			"Author identity must be verified.",
			"Attached image must be relevant to claims.",
			"Attached image must show no signs of manipulation.",
			"Quotes must be attributed correctly.",
			"Quotes must not omit important context.",
			"Graphs must not misrepresent data.",
			"Article must identify its publisher.",
			"Publisher must be verified.",
		],
		8: [
			"Article must have an author.",
			"Author identity must be verified.",
			"Attached image must be relevant to claims.",
			"Attached image must show no signs of manipulation.",
			"Quotes must be attributed correctly.",
			"Quotes must not omit important context.",
			"Graphs must not misrepresent data.",
			"Article must identify its publisher.",
			"Publisher must be verified.",
			"Publish date must be within the last month.",
		],
		9: [
			"Article must have an author.",
			"Author identity must be verified.",
			"Attached image must be relevant to claims.",
			"Attached image must show no signs of manipulation.",
			"Quotes must be attributed correctly.",
			"Quotes must not omit important context.",
			"Graphs must not misrepresent data.",
			"Article must identify its publisher.",
			"Publisher must be verified.",
			"Publish date must be within the last month.",
			"Article must not use politically biased framing.",
		],
		10: [
			"Article must have an author.",
			"Author identity must be verified.",
			"Attached image must be relevant to claims.",
			"Attached image must show no signs of manipulation.",
			"Quotes must be attributed correctly.",
			"Quotes must not omit important context.",
			"Graphs must not misrepresent data.",
			"Article must identify its publisher.",
			"Publisher must be verified.",
			"Publish date must be within the last month.",
			"URL must be checked",
			"Article must not use politically biased framing.",
			"Claims must not rely on speculation.",
		],
		11: [
			"Article must have an author.",
			"Author identity must be verified.",
			"Attached image must be relevant to claims.",
			"Attached image must show no signs of manipulation.",
			"Quotes must be attributed correctly.",
			"Quotes must not omit important context.",
			"Graphs must not misrepresent data.",
			"Article must identify its publisher.",
			"Publisher must be verified.",
			"Publish date must be within the last month.",
			"URL must be checked",
			"Article must not use politically biased framing.",
			"Claims must not rely on speculation.",
			"Other trusted sources must not contradict the claim.",
		],
		12: [
			"Article must have an author.",
			"Author identity must be verified.",
			"Attached image must be relevant to claims.",
			"Attached image must show no signs of manipulation.",
			"Quotes must be attributed correctly.",
			"Quotes must not omit important context.",
			"Graphs must not misrepresent data.",
			"Article must identify its publisher.",
			"Publisher must be verified.",
			"Publish date must be within the last month.",
			"URL must be checked",
			"Article must not use politically biased framing.",
			"Claims must not rely on speculation.",
			"Other trusted sources must not contradict the claim.",
			"Article must not be sensationalized"
		],
		13: [
			"Article must have an author.",
			"Author identity must be verified.",
			"Attached image must be relevant to claims.",
			"Attached image must show no signs of manipulation.",
			"Quotes must be attributed correctly.",
			"Quotes must not omit important context.",
			"Graphs must not misrepresent data.",
			"Article must identify its publisher.",
			"Publisher must be verified.",
			"Publish date must be within the last month.",
			"URL must be checked",
			"Article must not use politically biased framing.",
			"Claims must not rely on speculation.",
			"Other trusted sources must not contradict the claim.",
			"Article must not be sensationalized"
		],
		14: [
			"Article must have an author.",
			"Author identity must be verified.",
			"Attached image must be relevant to claims.",
			"Attached image must show no signs of manipulation.",
			"Quotes must be attributed correctly.",
			"Quotes must not omit important context.",
			"Graphs must not misrepresent data.",
			"Article must identify its publisher.",
			"Publisher must be verified.",
			"Publish date must be within the last month.",
			"URL must be checked",
			"Article must not use politically biased framing.",
			"Claims must not rely on speculation.",
			"Other trusted sources must not contradict the claim.",
			"Article must not be sensationalized"
		],
		15: [
			"Article must have an author.",
			"Author identity must be verified.",
			"Attached image must be relevant to claims.",
			"Attached image must show no signs of manipulation.",
			"Quotes must be attributed correctly.",
			"Quotes must not omit important context.",
			"Graphs must not misrepresent data.",
			"Article must identify its publisher.",
			"Publisher must be verified.",
			"Publish date must be within the last month.",
			"URL must be checked",
			"Article must not use politically biased framing.",
			"Claims must not rely on speculation.",
			"Other trusted sources must not contradict the claim.",
			"Article must not be sensationalized"
		],
	}
	
static func get_authors_db() -> Dictionary:
	return {
		"light_yugami": {
			"name": "Light Yugami",
			"status": "Verified",
			"description": "Reputable political journalist for Solaris. Writes for Daily Notes.",
			"portrait": "res://Assets/portraits/man9.png"
		},
		"gem_stone": {
			"name": "Gem Stone",
			"status": "Verified",
			"description": "Reputable political journalist for Rocca. Writes for Set In Stone.",
			"portrait": "res://Assets/portraits/woman10.png"
		},
		"nemo_coral": {
			"name": "Nemo Coral",
			"status": "Verified",
			"description": "Reputable political journalist for Al Mare. Writes for Flowing Words.",
			"portrait": "res://Assets/portraits/man8.png"
		},
		"lena_voss": {
			"name": "Lena Voss",
			"status": "Verified",
			"description": "Reliable local reporter covering civic developments and public spaces. Writes for Morning Ledger.",
			"portrait": "res://Assets/portraits/woman4.png"
		},
		"elias_rowan": {
			"name": "Elias Rowan",
			"status": "Verified",
			"description": "Trusted local journalist covering municipal projects and official announcements. Writes for Morning Ledger.",
			"portrait": "res://Assets/portraits/man5.png"
		},
		"mira_colen": {
			"name": "Mira Colen",
			"status": "Unverified",
			"description": "Small-time journalist who does not always check facts carefully. Often appears in City Pulse.",
			"portrait": "res://Assets/portraits/woman1.png"
		},
		"james_lies": {
			"name": "James Lies",
			"status": "Unverified",
			"description": "Known instigator and truth manipulator. Frequently appears in The Spark.",
			"portrait": "res://Assets/portraits/man7.png"
		},

		"paige_turner": {
			"name": "Paige Turner",
			"status": "Verified",
			"description": "Feature reporter covering culture, festivals, schools, and light civic stories. Writes for City Pulse.",
			"portrait": "res://Assets/portraits/woman3.png"
		},
		"reed_moore": {
			"name": "Reed Moore",
			"status": "Verified",
			"description": "Steady general-assignment journalist known for clear and concise reporting. Writes for Public Record.",
			"portrait": "res://Assets/portraits/man4.png"
		},
		"cliff_hanger": {
			"name": "Cliff Hanger",
			"status": "Verified",
			"description": "Reporter covering infrastructure, transport, and occasionally dramatic public incidents. Writes for Harbor Herald.",
			"portrait": "res://Assets/portraits/man2.png"
		},
		"rose_thorne": {
			"name": "Rose Thorne",
			"status": "Verified",
			"description": "Political and civic affairs journalist with a calm, measured tone. Writes for Public Record.",
			"portrait": "res://Assets/portraits/woman7.png"
		},
		"ash_ember": {
			"name": "Ash Ember",
			"status": "Verified",
			"description": "Science and technology reporter covering research, industry, and experimental projects. Writes for Daily Notes.",
			"portrait": "res://Assets/portraits/woman8.png"
		},
		"olive_branch": {
			"name": "Olive Branch",
			"status": "Verified",
			"description": "Diplomacy and public affairs reporter often writing about negotiations and regional tension. Writes for Flowing Words.",
			"portrait": "res://Assets/portraits/woman6.png"
		},
		"gale_force": {
			"name": "Gale Force",
			"status": "Verified",
			"description": "Field reporter often used for weather disruptions, ports, and fast-moving events. Writes for Harbor Herald.",
			"portrait": "res://Assets/portraits/man1.png"
		},

		"rhea_toric": {
			"name": "Rhea Toric",
			"status": "Unverified",
			"description": "Freelance writer with a habit of presenting rumors as developing facts. Often appears in The Spark.",
			"portrait": "res://Assets/portraits/woman5.png"
		},
		"pixie_late": {
			"name": "Pixie Late",
			"status": "Unverified",
			"description": "Fast-posting entertainment and gossip writer who often publishes before verifying details. Frequently appears in Loudmouth.",
			"portrait": "res://Assets/portraits/woman9.png"
		},
		"brock_ett": {
			"name": "Brock Ett",
			"status": "Unverified",
			"description": "Sensationalist columnist known for provocative framing and selective context. Frequently appears in Loudmouth.",
			"portrait": "res://Assets/portraits/man3.png"
		},
		"ivy_league": {
			"name": "Ivy League",
			"status": "Unverified",
			"description": "Pseudonymous opinion-heavy writer whose articles often blur reporting and commentary. Often appears in The Spark.",
			"portrait": "res://Assets/portraits/woman2.png"
		},
		"skip_trace": {
			"name": "Skip Trace",
			"status": "Unverified",
			"description": "Inconsistently sourced contributor associated with vague claims and disappearing citations. Frequently appears in Loudmouth.",
			"portrait": "res://Assets/portraits/man6.png"
		},
		"chip_static": {
			"name": "Chip Static",
			"status": "Unverified",
			"description": "Well known conspiracy theorist.",
			"portrait": "res://Assets/portraits/man10.png"
		},
	}

static func get_sources_db() -> Dictionary:
	return {
		"set_in_stone": {
			"name": "Set In Stone",
			"status": "Verified",
			"description": "Largest newspaper in Rocca."
		},
		"daily_notes": {
			"name": "Daily Notes",
			"status": "Verified",
			"description": "Largest newspaper in Solaris."
		},
		"flowing_words": {
			"name": "Flowing Words",
			"status": "Verified",
			"description": "Largest newspaper in Al Mare."
		},

		"morning_ledger": {
			"name": "Morning Ledger",
			"status": "Verified",
			"description": "Reliable city paper focused on local government, public works, and community events."
		},
		"city_pulse": {
			"name": "City Pulse",
			"status": "Verified",
			"description": "Regional paper covering lifestyle, neighborhoods, and lighter civic stories."
		},
		"harbor_herald": {
			"name": "Harbor Herald",
			"status": "Verified",
			"description": "Trusted coastal paper known for shipping, weather, and port coverage."
		},
		"public_record": {
			"name": "Public Record",
			"status": "Verified",
			"description": "Dry but dependable paper focused on institutions, regulations, and official statements."
		},

		"loudmouth": {
			"name": "Loudmouth",
			"status": "Unverified",
			"description": "Sensationalist outlet known for exaggerated claims and weak sourcing."
		},
		"the_spark": {
			"name": "The Spark",
			"status": "Unverified",
			"description": "Fast-moving online outlet that often mixes rumor, commentary, and reporting."
		},
		"signalwatch_unverified": {
			"name": "Signal Watch",
			"status": "Unverified",
			"description": "A niche outlet focused on communications and surveillance rumors. Known for publishing claims before they are verified."
		},
		"continental_dispatch": {
			"name": "Continental Dispatch",
			"status": "Verified",
			"description": "Foreign affairs and trade outlet focused on regional logistics and cross-border reporting."
		}
	}

static func get_urls_db() -> Dictionary:
	return {
		"daily_notes_url": {
			"title": "URL Check",
			"status": "Verified",
			"description": "Official Daily Notes domain."
		},
		"flowing_words_url": {
			"title": "URL Check",
			"status": "Verified",
			"description": "Official Flowing Words domain."
		},
		"set_in_stone_url": {
			"title": "URL Check",
			"status": "Verified",
			"description": "Official Set In Stone domain."
		},
		"morning_ledger_url": {
			"title": "URL Check",
			"status": "Verified",
			"description": "Official Morning Ledger domain."
		},
		"city_pulse_url": {
			"title": "URL Check",
			"status": "Verified",
			"description": "Official City Pulse domain."
		},
		"harbor_herald_url": {
			"title": "URL Check",
			"status": "Verified",
			"description": "Official Harbor Herald domain."
		},
		"public_record_url": {
			"title": "URL Check",
			"status": "Verified",
			"description": "Official Public Record domain."
		},
		"loudmouth_url": {
			"title": "URL Check",
			"status": "Unverified",
			"description": "Suspicious domain associated with the sensationalist outlet Loudmouth."
		},
		"the_spark_url": {
			"title": "URL Check",
			"status": "Unverified",
			"description": "Domain used by The Spark, an outlet with weak verification standards."
		},
		"set_in_stoone_url": {
			"title": "URL Check",
			"status": "Fake",
			"description": "Imitation domain designed to resemble Set In Stone's official site."
		},
		"daily_notess_url": {
			"title": "URL Check",
			"status": "Fake",
			"description": "Typosquatted domain made to look like the official Daily Notes site."
		},
		"public_record_fake_url": {
			"title": "URL Check",
			"status": "Fake",
			"description": "The domain is a typo and does not belong to the official Public Record site."
		},
		"signalwatch_fake_url": {
			"title": "URL Check",
			"status": "Unverified",
			"description": "Domain used by Signal Watch, an unverified outlet with weak sourcing standards."
		},
		"continental_dispatch_url": {
			"title": "URL Check",
			"status": "Verified",
			"description": "Official Continental Dispatch domain."
		},
		"continental_dispatch_fake_url": {
			"title": "URL Check",
			"status": "Fake",
			"description": "Typosquatted domain designed to resemble the official Continental Dispatch site."
		}
	}

static func get_images_db() -> Dictionary:
	return {
		"statue_cracked": {
			"title": "Cracked Statue",
			"status": "Manipulated",
			"description": "This image has been manipulated and does not reflect the statue's current condition.",
			"picture": "res://Assets/newsImg/cracked_statue_fake.png"
		},
		"energy_core": {
			"title": "Solaris Energy Core",
			"description": "Image matches the reported maritime energy technology demonstration.",
			"picture": "res://Assets/newsImg/energy_core.png"
		},
		"solaris_vessel": {
			"title": "Solaris Test Vessel",
			"description": "Image shows the Solaris vessel referenced in the article.",
			"picture": "res://Assets/newsImg/solaris_ship.png"
		},
		"al_mare_port_expansion": {
			"title": "Al Mare Port Expansion",
			"description": "Image supports claims about Al Mare's infrastructure expansion.",
			"picture": "res://Assets/newsImg/port.png"
		},
		"vessel_explosion_fake": {
			"title": "Old Explosion Image",
			"status": "Outdated",
			"description": "The image is from an older incident and should not be used as current evidence.",
			"picture": "res://Assets/newsImg/ship_explosion_fake.png"
		},
		"al_mare_protests": {
			"title": "Al Mare Protests",
			"description": "Image matches reports of demonstrations in Al Mare.",
			"picture": "res://Assets/newsImg/protest.png"
		},
		"solaris_energy_ship": {
			"title": "Solaris Energy Ship",
			"description": "Image shows the Solaris vessel used in recent energy trials.",
			"picture": "res://Assets/newsImg/solaris_ship.png"
		},
		"veloria_low_water": {
			"title": "Veloria Low Water Levels",
			"description": "Image supports the report of low water levels in Veloria.",
			"picture": "res://Assets/newsImg/dried_riverbed_real.png"
		},
		"solaris_ship_explosion": {
			"title": "Solaris Ship Explosion",
			"description": "Image is consistent with early reports of damage to the Solaris vessel.",
			"picture": "res://Assets/newsImg/solaris_ship_explosion.png"
		},
		"solaris_ship_with_exploded_ship": {
			"title": "Damaged Ship Near Blast Site",
			"description": "Image shows vessels near the explosion site but does not establish responsibility.",
			"picture": "res://Assets/newsImg/solaris_ship_explosion.png"
		},
		"joint_meeting": {
			"title": "Joint Meeting",
			"description": "Image shows representatives meeting to discuss the incident investigation.",
			"picture": "res://Assets/newsImg/meeting.png"
		},
		"al_mare_protest": {
			"title": "Al Mare Protest",
			"description": "Image reflects demonstrations and public reaction in Al Mare.",
			"picture": "res://Assets/newsImg/protest.png"
		},
		"military_buildup": {
			"title": "Military Buildup",
			"description": "Image shows military mobilization near borders.",
			"picture": "res://Assets/newsImg/military_buildup.png"
		},
		"harbor_beacon_smoke": { ###
			"title": "Flames at Lighthouse",
			"status": "Manipulated",
			"description": "The image was edited to make it appear as though smoke was rising from the beacon.",
			"picture": "res://Assets/newsImg/lighthouse_smoking_fake.png"
		},
		"harbor_beacon_lit": {
			"title": "Lighthouse Lit",
			"description": "The image shows the lighthouse operating normally during the festival opening.",
			"picture": "res://Assets/newsImg/lighthouse.png"
		},
		"glowing_symbols_fake": {
			"title": "Glowing Street Symbols",
			"status": "Manipulated",
			"description": "The glow effect has been artificially added to the image and does not reflect real conditions.",
			"picture": "res://Assets/newsImg/symbol_fake.png"
		},
		"veloria_dry_river_fake": {
			"title": "Dry Riverbed in Veloria",
			"status": "Manipulated",
			"description": "The image has been altered to make the river appear completely dry.",
			"picture": "res://Assets/newsImg/dried_riverbed.png"
		},
		"relay_tower_image": {
			"title": "Border Relay Tower",
			"description": "Image shows the relay tower construction site and is relevant to the reported project.",
			"picture": "res://Assets/newsImg/relay.png"
		},
		"bridge_damage_fake": {
			"title": "Bridge Structural Damage",
			"status": "Manipulated",
			"description": "The image exaggerates cracks and structural damage that are not present in the actual bridge.",
			"picture": "res://Assets/newsImg/broken_bridge_fake.png"
		},
		"harbor_lanterns": {
			"title": "Released Lanterns",
			"description": "The image shows released paper laterns along the harbor.",
			"picture": "res://Assets/newsImg/balloons.png"
		}
	}

static func get_graphs_db() -> Dictionary:
	return {
		"projection_chart": {
			"title": "Mining Output Projection Chart",
			"status": "Misleading",
			"description": "The graph exaggerates projected gains by using a narrow scale and omitting cost context.",
			"picture": "res://Assets/newsGraphs/projection_full.png"
		},
		"veloria_water_graph": {
			"title": "Veloria Water Reserves Graph",
			"status": "Misleading",
			"description": "The graph omits earlier years.",
			"picture": "res://Assets/newsGraphs/water_full.png"
		},
		"static_wave_graph": {
			"title": "Pressure Shifts Graph",
			"status": "Misleading",
			"description": "The graph uses invented categories and presents no meaningful or verifiable data.",
			"picture": "res://Assets/newsGraphs/nonsense_graph.png"
		}
	}

static func get_quotes_db() -> Dictionary:
	return {
		"name_lastname_quote_1": {
			"title": "Quote Check",
			"speaker": "Name Lastname",
			"description": "Placeholder test quote.",
			"original": "\"blablabla, blabla\""
		},
		"flint_ship_crossing": {
			"title": "Quote Check",
			"speaker": "President Cole Flint",
			"status": "Out of context",
			"description": "The article quote removes the part where Flint says the vessel was approved to pass through Roccan waters.",
			"original": "\"Solaris' vessel was approved to pass through our waters, even though we do not approve of the project and deem it extremely dangerous.\""
		},
		"uriel_trade": {
			"title": "Quote Check",
			"speaker": "Uriel Blue",
			"description": "The quote matches the attributed statement.",
			"original": "\"Trade is the lifeblood of Al Mare. This expansion ensures that we remain open, competitive, and connected.\""
		},
		"uriel_blame": {
			"title": "Quote Check",
			"speaker": "Uriel Blue",
			"description": "The quote is correctly attributed and presented in context.",
			"original": "\"External pressure from Solaris and Rocca is distorting our economy and making it harder to maintain balance.\""
		},
		"protester_blame": {
			"title": "Quote Check",
			"speaker": "Aurelio Varnis",
			"description": "The quote matches the attributed speaker and context.",
			"original": "\"They keep blaming others while nothing changes here.\""
		},
		"aikiu_risk_quote": {
			"title": "Quote Check",
			"speaker": "Lou Aikiu",
			"description": "The quote is attributed correctly, but the surrounding claim remains speculative.",
			"original": "\"We cannot ignore the possibility that this system is more than what it appears. The risks are too great.\""
		},
		"steele_security": {
			"title": "Quote Check",
			"speaker": "General Darius Steele",
			"description": "The quote matches the attributed statement.",
			"original": "\"We are taking necessary precautions to ensure regional security.\""
		},
		"steele_blame": {
			"title": "Quote Check",
			"speaker": "General Darius Steele",
			"description": "The quote is reported accurately.",
			"original": "\"This was not an accident. It was a deliberate act meant to send a message. We consider this a serious threat.\""
		},
		"investigation_path_quote": {
			"title": "Quote Check",
			"speaker": "Elira Kestrel",
			"description": "The quote is correctly attributed and presented with full context.",
			"original": "\"We must rely on facts, not assumptions. A joint investigation is the only responsible path forward.\""
		},
		"cant_ignore_risks_quote": {
			"title": "Quote Check",
			"speaker": "Darian Solvek",
			"description": "The quote is accurately reported as a political statement.",
			"original": "\"We cannot ignore the risks any longer. The evidence is clear enough to act.\""
		},
		"joint_statement": {
			"title": "Quote Check",
			"speaker": "Joint Solaris-Rocca statement",
			"description": "The quote reflects the published joint conclusion.",
			"original": "\"The findings confirm that this was an internal malfunction. There is no indication of hostile involvement.\""
		},
		"steele_unresolved": {
			"title": "Quote Check",
			"speaker": "General Darius Steele",
			"description": "The quote is presented accurately as part of the escalation coverage.",
			"original": "\"We must act to protect our interests while the situation remains unresolved.\""
		},
		"moon_poison_quote": {
			"title": "Quote Check",
			"speaker": "Mayor Tessa Rowan",
			"status": "Altered",
			"description": "The article removes the part where the mayor says there is no evidence of contamination.",
			"original": "\"We are investigating the reports, but there is no confirmed evidence that crops are being poisoned.\""
		},
		"clinic_ship_wave_quote": {
			"title": "Quote Check",
			"speaker": "Doctor Elian Wave",
			"description": "The quote is correctly attributed and includes the necessary context.",
			"original": "\"The goal is to bring basic medical services closer to communities that do not always have easy access to them.\""
		},
		"static_fake_quote_1": {
			"title": "Quote Check",
			"speaker": "Dr. Lumen",
			"status": "No Record",
			"description": "No public record exists of Dr. Lumen making this statement.",
			"original": "No public record exists for this statement."
		},
		"static_fake_quote_2": {
			"title": "Quote Check",
			"speaker": "General Darius Steele",
			"status": "No Record",
			"description": "No public record exists of General Darius Steele making this statement.",
			"original": "No public record exists for this statement."
		},
		"static_fake_quote_3": {
			"title": "Quote Check",
			"speaker": "Cole Flint",
			"status": "Misleading",
			"description": "In the real quote Cole Flint is discussing unrelated topics",
			"original": "\"Yes, I know about the railroad construction. This was planned a long time ago.\""
		},
		"flint_railroad_quote": {
			"title": "Quote Check",
			"speaker": "Cole Flint",
			"description": "The quote is correctly attributed and matches official statements.",
			"original": "\"Yes, I know about the railroad construction. This was planned a long time ago.\""
		},
		"lanterns_quote_cut": {
			"title": "Quote Check",
			"speaker": "Elin Marek",
			"status": "Falsified",
			"description": "The quote completely deviates from the original.",
			"original": "\"I see it as misfortune. I believe the returning lanterns signify nothing going the way we want.\""
		},
		"relay_quote_cut": {
			"title": "Quote Check",
			"speaker": "Engineer Tal Ren",
			"status": "Missing Context",
			"description": "The article removes the part where the engineer explains that control limitations would apply only under extreme weather or emergency failure conditions.",
			"original": "\"The system cannot be fully controlled under extreme weather or emergency failure conditions, but under normal operation it remains stable and within expected limits.\""
		},
		"shadow_tide_quote_1": {
			"title": "Quote Check",
			"speaker": "Mara Pell",
			"status": "Missing Context",
			"description": "The article removes the part where the inspector says the issue concerns processing speed during peak loads, not product safety.",
			"original": "\"We cannot guarantee every crate will be checked instantly during peak loads, but the inspection system is still functioning and no safety alert has been issued.\""
		}
	}

static func get_cross_references_db() -> Dictionary:
	return {
		"main_13": {
			"title": "Cross Reference",
			"entries": [
				"Daily Notes reports that the cause of the explosion is still under investigation.",
				"Solaris denies Rocca's accusation and says no independent findings have been released.",
				"No verified source has confirmed the cause of the explosion."
			]
		},
		"shadow_tide_5": {
			"title": "Cross Reference",
			"entries": [
				 "Public Record reports that no named lender has confirmed a transfer freeze involving Al Mare firms.",
				 "Flowing Words says business groups are urging calm and have not received formal notice of broad banking restrictions.",
				 "No verified bank statement has announced a general suspension of transfers to Al Mare businesses."
			]
		},
		"grain_shipments_1": {
			"title": "Cross Reference",
			"entries": [
				"Public Record reports no export restrictions have been announced for grain shipments.",
				"Continental Dispatch states that shipping schedules remain unchanged across major ports.",
				"No official trade authority has confirmed limits on outgoing agricultural goods."
			]
		},
		"relay_6": {
			"title": "Cross Reference",
			"entries": [
				"Other trusted sources report on this similarly."
			]
		},
		"main_11": {
			"title": "Cross Reference",
			"entries": [
				"Other trusted sources report on this similarly."
			]
		},
		"port_fees_1": {
			"title": "Cross Reference",
			"entries": [
				"Other trusted sources report on this similarly."
			]
		},
		"shadow_tide_3": {
			"title": "Cross Reference",
			"entries": [
				"Other trusted sources report on this similarly."
			]
		},
		"main_12": {
			"title": "Cross Reference",
			"entries": [
				"Other trusted sources report on this similarly."
			]
		},
		"relay_7": {
			"title": "Cross Reference",
			"entries": [
				"Other trusted sources report on this similarly."
			]
		},
		"shadow_tide_4": {
			"title": "Cross Reference",
			"entries": [
				"Other trusted sources report on this similarly."
			]
		},
		"bridge_repair_3": {
			"title": "Cross Reference",
			"entries": [
				"Other trusted sources report on this similarly."
			]
		},
		"harbor_lanterns_1": {
			"title": "Cross Reference",
			"entries": [
				"Other trusted sources report on this similarly."
			]
		},
		"main_14_good": {
			"title": "Cross Reference",
			"entries": [
				"Other trusted sources report on this similarly."
			]
		},
		"main_14_bad": {
			"title": "Cross Reference",
			"entries": [
				"Other trusted sources report on this similarly."
			]
		},
		"civic_forum_1": {
			"title": "Cross Reference",
			"entries": [
				"Other trusted sources report on this similarly."
			]
		},
		"static_ship_3": {
			"title": "Cross Reference",
			"entries": [
				"Other trusted sources report on this similarly."
			]
		},
		"main_15_good": {
			"title": "Cross Reference",
			"entries": [
				"Other trusted sources report on this similarly."
			]
		},
		"main_15_bad": {
			"title": "Cross Reference",
			"entries": [
				"Other trusted sources report on this similarly."
			]
		},
	}

static func get_cases() -> Array:
	return [


##############################################CASES START####################################################################

		{
			"id": "intro2_1",
			"day": 1,
			"type": "news",
			"content": [
				{"type": "url", "text": "www.citypulse.ar", "id": "city_pulse_url"},
				{"type": "title", "text": "Local Bakery Sets Record for Largest Strawberry Pie"},
				{"type": "author", "text": "By Mira Colen", "id": "mira_colen"},
				{"type": "body", "text": "A small neighborhood bakery has set a new local record after creating the largest strawberry pie ever made in the region."},
				{"type": "body", "text": "The pie, which measured over two meters in diameter, was prepared as part of a weekend community event."},
				{"type": "body", "text": "Visitors gathered to watch the final stages of preparation and were later invited to sample the dessert."}
			],
			"correct_verdict": "trust",
			"explanation": "The article includes a title and an author.",
			"story_type": "side",
			"story_id": "intro2",
			"mistake_types": ["dismissed"],

			"trust_outcome": "advance_good",
			"dismiss_outcome": "advance_bad"
		},
		{
			"id": "free_outdoor_movie_1",
			"day": 1,
			"type": "news",
			"content": [
				{"type": "url", "text": "www.loudmouth.co", "id": "loudmouth_url"},
				{"type": "title", "text": "Free Outdoor Movie!"},
				{"type": "body", "text": "A free outdoor movie night for everybody that shows up!"},
				{"type": "body", "text": "We have a big screen and loads of snacks!"}
			],
			"correct_verdict": "dismiss",
			"explanation": "The article is missing an author.",
			"story_type": "side",
			"story_id": "free_outdoor_movie",
			"is_final_article": true,
			"mistake_types": ["author"],

			"trust_outcome": "advance_bad",
			"dismiss_outcome": "advance_good"
		},
		{
			"id": "main_1",
			"day": 1,
			"type": "news",
			"content": [
				{"type": "url", "text": "www.dailynotes.so", "id": "daily_notes_url"},
				{"type": "source", "text": "Daily Notes", "id": "daily_notes"},
				{"type": "title", "text": "Solaris Unveils Breakthrough Energy Source for Maritime Use"},
				{"type": "date", "text": "01.01.2001"},
				{"type": "author", "text": "By Light Yugami", "id": "light_yugami"},
				{"type": "body", "text": "Solaris scientists have announced a new compact energy system designed for long-distance maritime transport. The project, led by Dr. Lumen, aims to reduce fuel dependency across international shipping routes."},
				{"type": "body", "text": "Officials from Al Mare have expressed interest in the technology, citing potential benefits for trade efficiency."},
				{"type": "body", "text": "The prototype is expected to begin testing within the next few days."}
			],
			"correct_verdict": "trust",
			"explanation": "The article includes a title and an author.",
			"story_type": "main",
			"story_id": "main",
			"mistake_types": ["dismissed"],

			"trust_outcome": "advance_good",
			"dismiss_outcome": "advance_bad"
		},
		{
			"id": "statue_1",
			"day": 1,
			"type": "news",
			"content": [
				{"type": "url", "text": "www.morningledger.so", "id": "morning_ledger_url"},
				{"type": "title", "text": "Historic Statue Temporarily Removed for Restoration"},
				{"type": "author", "text": "By Lena Voss", "id": "lena_voss"},
				{"type": "body", "text": "A well-known statue in the city center has been temporarily removed as part of a scheduled restoration project."},
				{"type": "body", "text": "City officials stated that the work is expected to take several days."}
			],
			"correct_verdict": "trust",
			"explanation": "The article includes a title and an author.",
			"story_type": "side",
			"story_id": "statue_story",
			"is_final_article": false,
			"mistake_types": ["dismissed"],
			
			"trust_outcome": "advance_good",
			"dismiss_outcome": "advance_bad",
		},
		{
			"id": "intro1_1",
			"day": 1,
			"type": "news",
			"content": [
				{"type": "url", "text": "www.morningledger.so", "id": "morning_ledger_url"},
				{"type": "title", "text": "City Park Renovation Project Completed Ahead of Schedule"},
				{"type": "author", "text": "By Elias Rowan", "id": "elias_rowan"},
				{"type": "body", "text": "A local park renovation project has been completed earlier than expected, according to city officials."},
				{"type": "body", "text": "The project included new walking paths, updated lighting, and additional seating areas for visitors."},
				{"type": "body", "text": "Residents have welcomed the improvements, noting increased accessibility and comfort."}
			],
			"correct_verdict": "trust",
			"explanation": "The article includes a title and an author.",
			"story_type": "side",
			"story_id": "intro1",
			"mistake_types": ["dismissed"],

			"trust_outcome": "advance_good",
			"dismiss_outcome": "advance_bad"
		},
##############################################DAY BREAK#########################################
		
		{
			"id": "harbor_beacon_1",
			"day": 2,
			"type": "news",
			"content": [
				{"type": "url", "text": "www.harborherald.am", "id": "harbor_herald_url"},
				{"type": "title", "text": "Old Lighthouse to Be Lit Again for Spring Festival"},
				{"type": "author", "text": "By Gale Force", "id": "gale_force"},
				{"type": "body", "text": "City organizers say the old lighthouse will be lit again this week as part of the annual spring festival."},
				{"type": "body", "text": "The structure has been inactive for years, but crews say only minor cleaning and wiring checks were needed."},
				{"type": "body", "text": "Residents have welcomed the decision, calling the beacon one of the waterfront's most recognizable landmarks."}
			],
			"correct_verdict": "trust",
			"explanation": "The article includes a title and a verified author",
			"story_type": "side",
			"story_id": "harbor_beacon",
			"mistake_types": ["dismissed"],

			"trust_outcome": "advance_good",
			"dismiss_outcome": "advance_bad",
			"is_final_article": false
		},
		{
			"id": "lost_pet_1",
			"day": 2,
			"type": "news",
			"content": [
				{"type": "url", "text": "www.citypulse.ar", "id": "city_pulse_url"},
				{"type": "title", "text": "Family Searches for Missing Dog After Park Visit"},
				{"type": "author", "text": "By Pixie Late", "id": "pixie_late"},
				{"type": "body", "text": "A local family is asking for help in locating their dog, which went missing during an evening walk in the central park."},
				{"type": "body", "text": "The dog, described as a small white terrier with a blue collar, was last seen near the park’s southern entrance."},
				{"type": "body", "text": "Citizens in the area are encouraged to report any sightings to the contact information provided by the family."}
			],
			"correct_verdict": "dismiss",
			"explanation": "The article is written by an unverified author. According to protocol, it must be dismissed regardless of the content.",
			"story_type": "side",
			"story_id": "lost_pet",
			"mistake_types": ["author"],

			"trust_outcome": "advance_bad",
			"dismiss_outcome": "advance_good",
			"is_final_article": true
		},
		{
			"id": "statue_2",
			"day": 2,
			"type": "news",
			"content": [
				{"type": "title", "text": "Restoration Work on City Statue Progressing as Planned"},
				{"type": "author", "text": "By Lena Voss", "id": "lena_voss"},
				{"type": "body", "text": "Restoration work on the recently removed city statue is proceeding according to schedule."},
				{"type": "body", "text": "Officials confirmed that the statue is expected to be returned to its original location soon."}
			],
			"correct_verdict": "trust",
			"explanation": "The article continues to provide consistent and verified updates from official sources.",
			"story_type": "side",
			"story_id": "statue_story",
			"is_final_article": false,
			"mistake_types": ["dismissed"],
			
			"trust_outcome": "advance_good",
			"dismiss_outcome": "advance_bad"
			
		},
		{
			"id": "main_2",
			"day": 2,
			"type": "news",
			"content": [
				{"type": "url", "text": "www.setinstone.rc", "id": "set_in_stone_url"},
				{"type": "source", "text": "Set In Stone", "id": "set_in_stone"},
				{"type": "title", "text": "Rocca Expands Mining Operations Near Solaris Border"},
				{"type": "date", "text": "02.01.2001"},
				{"type": "author", "text": "By Gem Stone", "id": "gem_stone"},
				{"type": "body", "text": "Rocca has officially approved the expansion of its northern mining sector, bringing operations closer to the Solaris border than ever before."},
				{"type": "body", "text": "President Cole Flint stated that the expansion is necessary to maintain resource independence and strengthen Rocca’s industrial output."},
				{"type": "body", "text": "Solaris officials have not confirmed whether the expansion violates existing agreements, though some analysts warn it may increase regional tension."}
			],
			"correct_verdict": "trust",
			"explanation": "The article includes a title and a verified author.",
			"story_type": "main",
			"story_id": "main",
			"mistake_types": ["dismissed"],

			"trust_outcome": "advance_good",
			"dismiss_outcome": "advance_bad"
		},
		{
			"id": "street_artist_1",
			"day": 2,
			"type": "news",
			"content": [
				{"type": "url", "text": "www.loudmouth.co", "id": "loudmouth_url"},
				{"type": "title", "text": "Mysterious Street Artist Leaves Glowing Symbols Across City"},
				{"type": "author", "text": "By Brock Ett", "id": "brock_ett"},
				{"type": "body", "text": "Reports have begun circulating about a mysterious street artist leaving glowing symbols across several parts of the city overnight."},
				{"type": "body", "text": "Witnesses claim the markings appeared suddenly and emit a faint light, though no official confirmation has been provided."},
				{"type": "body", "text": "Some residents believe the symbols may carry a hidden meaning or message."}
			],
			"correct_verdict": "dismiss",
			"explanation": "The article is written by an unverified author.",
			"story_type": "side",
			"story_id": "street_artist",
			"mistake_types": ["author"],

			"trust_outcome": "advance_bad",
			"dismiss_outcome": "advance_good",
			"is_final_article": false
		},
		
##############################################DAY BREAK#########################################
		
		
		{
			"id": "veloria_drought_1",
			"day": 3,
			"type": "news",
			"content": [
				{"type": "url", "text": "www.publicrecord.ar", "id": "public_record_url"},
				{"type": "title", "text": "Lower Water Levels Reported in Parts of Veloria"},
				{"type": "author", "text": "By Reed Moore", "id": "reed_moore"},
				{"type": "image", "path": "res://Assets/newsImg/dried_riverbed_real.png", "id": "veloria_low_water"},
				{"type": "body", "text": "Officials in Veloria have reported lower-than-usual water levels in several regional rivers following a period of reduced rainfall."},
				{"type": "body", "text": "An image released alongside the report shows a partially exposed riverbank in one of the affected areas."},
				{"type": "body", "text": "Authorities state that the situation is being monitored, but have not declared a drought."}
			],
			"correct_verdict": "trust",
			"explanation": "The article includes a verified author and a relevant, unmanipulated image that supports the claims.",
			"story_type": "side",
			"story_id": "veloria_drought",
			"mistake_types": ["dismissed"],

			"trust_outcome": "advance_good",
			"dismiss_outcome": "advance_bad",
			"is_final_article": false
		},
		{
			"id": "main_3",
			"day": 3,
			"type": "news",
			"content": [
				{"type": "url", "text": "www.flowing-words.am", "id": "flowing_words_url"},
				{"type": "source", "text": "Flowing Words", "id": "flowing_words"},
				{"type": "title", "text": "Al Mare Shipping Vessel Reportedly Targeted by Rocca Forces"},
				{"type": "date", "text": "03.01.2001"},
				{"type": "author", "text": "By James Lies", "id": "james_lies"},
				{"type": "body", "text": "Reports claim that Rocca's military is preparing to intercept an Al Mare shipping vessel known as \"Seafarer\" in international waters."},
				{"type": "body", "text": "According to early sources, a Rocca destroyer has already been dispatched with orders to board the vessel."}
			],
			"correct_verdict": "dismiss",
			"explanation": "The author has a history of spreading misleading and unreliable information, making the article untrustworthy.",
			"story_type": "main",
			"story_id": "main",
			"mistake_types": ["author"],

			"trust_outcome": "advance_bad",
			"dismiss_outcome": "advance_good"
		},
		{
			"id": "statue_3",
			"day": 3,
			"type": "news",
			"content": [
				{"type": "title", "text": "City Statue Reportedly Damaged During Maintenance Work"},
				{"type": "author", "text": "By Lena Voss", "id": "lena_voss"},
				{"type": "image", "path": "res://Assets/newsImg/cracked_statue.png", "id": "statue_cracked"},
				{"type": "body", "text": "Reports claim that the city’s historic statue was damaged during ongoing restoration work."},
				{"type": "body", "text": "An image circulating online appears to show visible cracks along the statue’s surface."}
			],
			"correct_verdict": "dismiss",
			"explanation": "The article must be dismissed because the attached image is manipulated.",
			"story_type": "side",
			"story_id": "statue_story",
			"is_final_article": true,
			"mistake_types": ["image"],
			
			"trust_outcome": "advance_bad",
			"dismiss_outcome": "advance_good"
		},
		{
			"id": "street_artist_2",
			"day": 3,
			"type": "news",
			"content": [
				{"type": "url", "text": "www.loudmouth.co", "id": "loudmouth_url"},
				{"type": "title", "text": "Photo Appears to Show Glowing Symbols Pulsing at Night"},
				{"type": "author", "text": "By Brock Ett", "id": "brock_ett"},
				{"type": "image", "path": "res://Assets/newsImg/symbol.png", "id": "glowing_symbols_fake"},
				{"type": "body", "text": "A newly shared photo appears to show the reported street symbols glowing brightly and pulsing during the night."},
				{"type": "body", "text": "The image has fueled speculation that the markings may involve unknown materials or technology."}
			],
			"correct_verdict": "dismiss",
			"explanation": "The article is written by an unverified author and includes a manipulated image, making it unreliable.",
			"story_type": "side",
			"story_id": "street_artist",
			"mistake_types": ["author", "image"],

			"trust_outcome": "advance_bad",
			"dismiss_outcome": "advance_good",
			"is_final_article": true
		},
		{
			"id": "harbor_beacon_2",
			"day": 3,
			"type": "news",
			"content": [
				{"type": "url", "text": "www.harborherald.am", "id": "harbor_herald_url"},
				{"type": "title", "text": "Image Appears to Show Smoke Rising from Restored Lighthouse"},
				{"type": "author", "text": "By Gale Force", "id": "gale_force"},
				{"type": "image", "path": "res://Assets/newsImg/lighthouse_smoking.png", "id": "harbor_beacon_smoke"},
				{"type": "body", "text": "Concern spread near the waterfront after an image circulating locally appeared to show smoke rising from the recently restored lighthouse."},
				{"type": "body", "text": "Some residents questioned whether the structure had been safely prepared for public use ahead of the spring festival."}
			],
			"correct_verdict": "dismiss",
			"explanation": "The image is manipulated and should not be trusted as evidence.",
			"story_type": "side",
			"story_id": "harbor_beacon",
			"mistake_types": ["image"],

			"trust_outcome": "advance_bad",
			"dismiss_outcome": "advance_good",
			"is_final_article": false
		},


##############################################DAY BREAK#########################################
		
		{
			"id": "clinic_ship_1",
			"day": 4,
			"type": "news",
			"content": [
				{"type": "url", "text": "www.harborherald.am", "id": "harbor_herald_url"},
				{"type": "title", "text": "Floating Clinic Expected to Arrive in Outer Harbor This Week"},
				{"type": "author", "text": "By Cliff Hanger", "id": "cliff_hanger"},
				{"type": "body", "text": "A floating medical clinic is expected to arrive in the outer harbor later this week as part of a regional healthcare outreach program."},
				{"type": "body", "text": "Officials say the vessel will provide checkups, vaccinations, and basic treatment services in coastal neighborhoods."},
				{"type": "body", "text": "Local organizers have described the visit as temporary, with operations planned for several days."}
			],
			"correct_verdict": "trust",
			"explanation": "The article includes a title and a verified author.",
			"story_type": "side",
			"story_id": "clinic_ship",
			"mistake_types": ["dismissed"],

			"trust_outcome": "advance_good",
			"dismiss_outcome": "advance_bad",
			"is_final_article": false
		},
		{
			"id": "night_market_1",
			"day": 4,
			"type": "news",
			"content": [
				{"type": "url", "text": "www.citypulse.ar", "id": "city_pulse_url"},
				{"type": "title", "text": "Night Market to Expand with New Vendors This Weekend"},
				{"type": "body", "text": "Organizers of the popular night market have announced plans to expand the event with additional vendors this weekend."},
				{"type": "body", "text": "The expansion is expected to include more food stalls, handmade goods, and live performances."},
				{"type": "body", "text": "Visitors are encouraged to arrive early due to expected higher attendance."}
			],
			"correct_verdict": "dismiss",
			"explanation": "The article is missing an author.",
			"story_type": "side",
			"story_id": "night_market",
			"mistake_types": ["author"],

			"trust_outcome": "advance_bad",
			"dismiss_outcome": "advance_good",
			"is_final_article": true
		},
		{
			"id": "main_4",
			"day": 4,
			"type": "news",
			"content": [
				{"type": "url", "text": "www.dailynotes.so", "id": "daily_notes_url"},
				{"type": "source", "text": "Daily Notes", "id": "daily_notes"},
				{"type": "title", "text": "Solaris Begins Testing of New Maritime Energy System"},
				{"type": "date", "text": "04.01.2001"},
				{"type": "author", "text": "By Light Yugami", "id": "light_yugami"},
				{"type": "image", "path": "res://Assets/newsImg/energy_core.png", "id": "energy_core"},
				{"type": "body", "text": "Solaris has officially begun live testing of its newly developed maritime energy system, just days after the project was first announced."},
				{"type": "body", "text": "The system, developed under the direction of Dr. Lumen, is being tested on a mid-sized transport vessel operating along controlled routes."},
				{"type": "body", "text": "Officials state that early results are promising, with improved efficiency already being recorded."}
			],
			"correct_verdict": "trust",
			"explanation": "The article includes a verified author and the image matches the reported event.",
			"story_type": "main",
			"story_id": "main",
			"mistake_types": ["dismissed"],

			"trust_outcome": "advance_good",
			"dismiss_outcome": "advance_bad"
		},
		{
			"id": "orinth_scholarship_1",
			"day": 4,
			"type": "news",
			"content": [
				{"type": "url", "text": "www.citypulse.ar", "id": "city_pulse_url"},
				{"type": "title", "text": "Orinth to Offer Hundreds of Foreign Scholarships Next Season"},
				{"type": "author", "text": "By Rhea Toric", "id": "rhea_toric"},
				{"type": "body", "text": "Reports are circulating that Orinth is preparing a major scholarship program for foreign students next season."},
				{"type": "body", "text": "The plan is said to include technical training, language study, and housing support for selected applicants."}
			],
			"correct_verdict": "dismiss",
			"explanation": "The article must be dismissed because the author is unverified.",
			"story_type": "side",
			"story_id": "orinth_scholarship",
			"mistake_types": ["author"],

			"trust_outcome": "advance_bad",
			"dismiss_outcome": "advance_good",
			"is_final_article": false
		},
		{
			"id": "harbor_beacon_3",
			"day": 4,
			"type": "news",
			"content": [
				{"type": "url", "text": "www.harborherald.am", "id": "harbor_herald_url"},
				{"type": "title", "text": "Lighthouse Opens Festival as Planned After False Alarm"},
				{"type": "author", "text": "By Gale Force", "id": "gale_force"},
				{"type": "image", "path": "res://Assets/newsImg/lighthouse.png", "id": "harbor_beacon_lit"},
				{"type": "body", "text": "The lighthouse was lit on schedule last night, opening the spring festival without disruption."},
				{"type": "body", "text": "Festival traffic along the waterfront remained steady, with visitors gathering to watch the lighting from nearby piers."}
			],
			"correct_verdict": "trust",
			"explanation": "The article includes a verified author, and the attached image is relevant and unmanipulated.",
			"story_type": "side",
			"story_id": "harbor_beacon",
			"mistake_types": ["dismissed"],

			"trust_outcome": "advance_good",
			"dismiss_outcome": "advance_bad",
			"is_final_article": true
		},
		
		
##############################################DAY BREAK#########################################
		
		
		{
			"id": "library_event_1",
			"day": 5,
			"type": "news",
			"content": [
				{"type": "url", "text": "www.morningledger.so", "id": "morning_ledger_url"},
				{"type": "title", "text": "City Library Announces Weeklong Reading Event"},
				{"type": "author", "text": "By Elias Rowan", "id": "elias_rowan"},
				{"type": "body", "text": "The city library has announced a weeklong reading event aimed at encouraging community engagement and literacy."},
				{"type": "body", "text": "The program will include daily readings, guest speakers, and activities for younger visitors."},
				{"type": "body", "text": "Organizers say the event is open to all residents and will begin later this week."}
			],
			"correct_verdict": "trust",
			"explanation": "The article includes a title and a verified author.",
			"story_type": "side",
			"story_id": "library_event",
			"mistake_types": ["dismissed"],

			"trust_outcome": "advance_good",
			"dismiss_outcome": "advance_bad",
			"is_final_article": false
		},
		{
			"id": "main_5",
			"day": 5,
			"type": "news",
			"content": [
				{"type": "url", "text": "www.setinstone.rc", "id": "set_in_stone_url"},
				{"type": "source", "text": "Set In Stone", "id": "set_in_stone"},
				{"type": "title", "text": "Rocca Condemns Solaris Vessel Movement Near Its Waters"},
				{"type": "date", "text": "05.01.2001"},
				{"type": "author", "text": "By Gem Stone", "id": "gem_stone"},
				{"type": "image", "path": "res://Assets/newsImg/solaris_ship.png", "id": "solaris_vessel"},
				{"type": "body", "text": "A Solaris test vessel involved in the new maritime energy trials passed through waters claimed by Rocca earlier today."},
				{"type": "body", "text": "Roccan officials criticized the project and renewed warnings about the risks they believe the system poses."},
				{"type": "quote", "text": "\"We do not approve. Extremely dangerous.\" said President Cole Flint.", "id": "flint_ship_crossing"},
				{"type": "body", "text": "Some believe this maneuver is a direct threat by Solaris after Rocca's mining expansion plans."}
			],
			"correct_verdict": "dismiss",
			"explanation": "The quote presented is misleading. The full statement included that the vessel was approved to pass through Rocca's waters, but this context was omitted, altering the meaning.",
			"story_type": "main",
			"story_id": "main",
			"mistake_types": ["quote"],

			"trust_outcome": "advance_bad",
			"dismiss_outcome": "advance_good"
		},
		{
			"id": "static_ship_1",
			"day": 5,
			"type": "news",
			"content": [
				{"type": "url", "text": "www.loudmouth.co", "id": "loudmouth_url"},
				{"type": "title", "text": "The Ship Will Burn: Why the Signs Have Been Obvious for Days"},
				{"type": "author", "text": "By Chip Static", "id": "chip_static"},
				{"type": "body", "text": "The Solaris energy ship is going to explode. Anyone still pretending otherwise is either blind or lying."},
				{"type": "body", "text": "Bird patterns have changed above the coast. Harbor lights have blinked irregularly for three nights. Fish have been surfacing early. These are not random events."},
				{"type": "quote", "text": "Dr. Lumen himself said the vessel is \"already unstable\"!", "id": "static_fake_quote_1"},
				{"type": "body", "text": "When the explosion happens, officials will act surprised. They always do."}
			],
			"correct_verdict": "dismiss",
			"explanation": "The article must be dismissed. The author is unverified, and the article presents unsupported claims and an unattributed quote with no verifiable source.",
			"story_type": "side",
			"story_id": "static_ship",
			"mistake_types": ["author", "quote"],

			"trust_outcome": "advance_bad",
			"dismiss_outcome": "advance_good",
			"is_final_article": false
		},
		{
			"id": "clinic_ship_2",
			"day": 5,
			"type": "news",
			"content": [
				{"type": "url", "text": "www.harborherald.am", "id": "harbor_herald_url"},
				{"type": "title", "text": "Floating Clinic Opens in Harbor as Medical Teams Begin Visits"},
				{"type": "author", "text": "By Cliff Hanger", "id": "cliff_hanger"},
				{"type": "quote", "text": "\"The goal is to bring basic medical services closer to communities that do not always have easy access to them,\" said Doctor Elian Wave, coordinator of the visiting medical team.", "id": "clinic_ship_wave_quote"},
				{"type": "body", "text": "The floating clinic opened in the harbor this morning, with medical teams beginning scheduled visits shortly after arrival."},
				{"type": "body", "text": "Residents were seen lining up for consultations and preventative care services during the first hours of operation."},
				{"type": "body", "text": "Organizers say the clinic will remain in place through the weekend before continuing to other ports."}
			],
			"correct_verdict": "trust",
			"explanation": "The article includes a verified author, and the quote is correctly attributed and presented with sufficient context.",
			"story_type": "side",
			"story_id": "clinic_ship",
			"mistake_types": ["dismissed"],

			"trust_outcome": "advance_good",
			"dismiss_outcome": "advance_bad",
			"is_final_article": true
		},
		
		
##############################################DAY BREAK#########################################
		
		{
			"id": "relay_1",
			"day": 6,
			"type": "news",
			"content": [
				{"type": "url", "text": "www.publicrecord.ar", "id": "public_record_url"},
				{"type": "title", "text": "New Communications Relay Planned Near Northern Border"},
				{"type": "author", "text": "By Reed Moore", "id": "reed_moore"},
				{"type": "image", "path": "res://Assets/newsImg/relay.png", "id": "relay_tower_image"},
				{"type": "body", "text": "Plans have been announced for the installation of a new communications relay tower near the northern border region."},
				{"type": "body", "text": "Officials state the relay is intended to improve signal coverage and emergency communication capacity."},
				{"type": "body", "text": "Construction is expected to begin within the next few days."}
			],
			"correct_verdict": "trust",
			"explanation": "Verified author, neutral reporting, and relevant image.",
			"story_type": "side",
			"story_id": "relay_project",
			"trust_outcome": "advance_good",
			"dismiss_outcome": "advance_bad",
			"is_final_article": false
		},
		{
			"id": "veloria_drought_2",
			"day": 6,
			"type": "news",
			"content": [
				{"type": "url", "text": "www.publicrecord.ar", "id": "public_record_url"},
				{"type": "title", "text": "Graph Suggests Sharp Decline in Veloria Water Reserves"},
				{"type": "author", "text": "By Reed Moore", "id": "reed_moore"},
				{"type": "graph", "path": "res://Assets/newsGraphs/water_cut.png", "id": "veloria_water_graph"},
				{"type": "body", "text": "New data suggests that Veloria’s water reserves may be lower than ever, according to a recently published graph."},
				{"type": "body", "text": "The data compares recent measurements with previous years, indicating a sudden drop in available water."}
			],
			"correct_verdict": "dismiss",
			"explanation": "The graph is misleading due to improper scaling, exaggerating a relatively small decline in water reserves.",
			"story_type": "side",
			"story_id": "veloria_drought",
			"mistake_types": ["graph"],

			"trust_outcome": "advance_bad",
			"dismiss_outcome": "advance_good",
			"is_final_article": false
		},
		{
			"id": "library_event_2",
			"day": 6,
			"type": "news",
			"content": [
				{"type": "url", "text": "www.morningledger.so", "id": "morning_ledger_url"},
				{"type": "title", "text": "Library Reading Event Draws Steady Attendance"},
				{"type": "author", "text": "By Elias Rowan", "id": "elias_rowan"},
				{"type": "body", "text": "The city library’s ongoing reading event has seen steady attendance since its opening day."},
				{"type": "body", "text": "Visitors have participated in group readings and attended talks by local authors and educators."},
				{"type": "body", "text": "Library staff noted that turnout has been consistent across different age groups."}
			],
			"correct_verdict": "trust",
			"explanation": "The article includes a verified author and presents consistent, factual updates without any misleading elements.",
			"story_type": "side",
			"story_id": "library_event",
			"mistake_types": ["dismissed"],

			"trust_outcome": "advance_good",
			"dismiss_outcome": "advance_bad",
			"is_final_article": false
		},
		{
			"id": "main_6",
			"day": 6,
			"type": "news",
			"content": [
				{"type": "url", "text": "www.setinstone.rc", "id": "set_in_stone_url"},
				{"type": "source", "text": "Set In Stone", "id": "set_in_stone"},
				{"type": "title", "text": "Projected Mining Expansion Shows Significant Resource Gains for Rocca"},
				{"type": "date", "text": "06.01.2001"},
				{"type": "author", "text": "By Gem Stone", "id": "gem_stone"},
				{"type": "graph", "path": "res://Assets/newsGraphs/projection_cut.png", "id": "projection_chart"},
				{"type": "body", "text": "New projections suggest that Rocca’s proposed mining expansion near the Solaris border could significantly increase mineral extraction output."},
				{"type": "body", "text": "The estimates compare current extraction levels with projected output if the expansion is approved."},
				{"type": "body", "text": "Officials supporting the plan argue that the increase would strengthen Rocca’s long-term resource independence."}
			],
			"correct_verdict": "dismiss",
			"explanation": "The graph exaggerates a very small increase by using a narrow y-axis range.",
			"story_type": "main",
			"story_id": "main",
			"mistake_types": ["graph"],

			"trust_outcome": "advance_bad",
			"dismiss_outcome": "advance_good"
		},
		
		
##############################################DAY BREAK#########################################
		
		
		{
			"id": "main_7",
			"day": 7,
			"type": "news",
			"content": [
				{"type": "url", "text": "www.flowing-words.am", "id": "flowing_words_url"},
				{"type": "source", "text": "Flowing Words", "id": "flowing_words"},
				{"type": "title", "text": "Al Mare Announces Major Expansion of Coastal Trade Infrastructure"},
				{"type": "date", "text": "07.01.2001"},
				{"type": "author", "text": "By Nemo Coral", "id": "nemo_coral"},
				{"type": "image", "path": "res://Assets/newsImg/port.png", "id": "al_mare_port_expansion"},
				{"type": "body", "text": "Al Mare has announced a large-scale expansion of its coastal trade infrastructure, aiming to increase shipping capacity and strengthen its position as a regional trade hub."},
				{"type": "body", "text": "Leader Uriel Blue stated that the investment is necessary to keep pace with growing demand for maritime transport across the region."},
				{"type": "quote", "text": "\"Trade is the lifeblood of Al Mare. This expansion ensures that we remain open, competitive, and connected,\" said Uriel Blue.", "id": "uriel_trade"},
				{"type": "body", "text": "Some local groups have raised concerns about how the economic benefits of the expansion will be distributed across the population."}
			],
			"correct_verdict": "trust",
			"explanation": "The article comes from a verified and reliable source. The reporting includes attributed quotes.",
			"story_type": "main",
			"story_id": "main",
			"mistake_types": ["dismissed"],

			"trust_outcome": "advance_good",
			"dismiss_outcome": "advance_bad"
		},
		{
			"id": "relay_2",
			"day": 7,
			"type": "news",
			"content": [
				{"type": "url", "text": "www.signalwatch.net", "id": "signalwatch_fake_url"},
				{"type": "source", "text": "Signal Watch", "id": "signalwatch_unverified"},
				{"type": "title", "text": "Foreign-Controlled Relay Tower Already Operational"},
				{"type": "author", "text": "By Reed Moore", "id": "reed_moore"},
				{"type": "body", "text": "Reports claim the communications relay near the border is already active and under foreign operational control."},
				{"type": "body", "text": "The system is said to be transmitting data beyond national oversight."}
			],
			"correct_verdict": "dismiss",
			"explanation": "The source is unverified and the claims are not supported by official information.",
			"story_type": "side",
			"story_id": "relay_project",
			"mistake_types": ["source"],
			"trust_outcome": "advance_bad",
			"dismiss_outcome": "advance_good",
			"is_final_article": false
		},
		{
			"id": "static_ship_2",
			"day": 7,
			"type": "news",
			"content": [
				{"type": "url", "text": "www.loudmouth.co", "id": "loudmouth_url"},
				{"type": "source", "text": "Loudmouth", "id": "loudmouth"},
				{"type": "title", "text": "After the Blast, the Blame: Rocca's Script Is Already Written"},
				{"type": "author", "text": "By Chip Static", "id": "chip_static"},
				{"type": "body", "text": "The ship will explode, and Rocca will blame Solaris before the smoke clears. That is the plan."},
				{"type": "graph", "path": "res://Assets/newsGraphs/nonsense_graph.png", "id": "static_wave_graph"},
				{"type": "body", "text": "The graph above tracks pressure shifts that match pre-conflict signaling behavior."},
				{"type": "quote", "text": "\"This will be used to justify escalation,\" said General Darius Steele.", "id": "static_fake_quote_2"}
			],
			"correct_verdict": "dismiss",
			"explanation": "The author and source are unverified, the image is manipulated, the graph is misleading, and the attributed quote has no public record.",
			"story_type": "side",
			"story_id": "static_ship",
			"mistake_types": ["author", "source", "graph", "quote"],

			"trust_outcome": "advance_bad",
			"dismiss_outcome": "advance_good",
			"is_final_article": false
		},
		{
			"id": "library_event_3",
			"day": 7,
			"type": "news",
			"content": [
				{"type": "url", "text": "www.morningledger.so", "id": "morning_ledger_url"},
				{"type": "source", "text": "Morning Ledger", "id": "morning_ledger"},
				{"type": "title", "text": "Library Reading Event Concludes with Strong Community Participation"},
				{"type": "author", "text": "By Elias Rowan", "id": "elias_rowan"},
				{"type": "body", "text": "The city library’s weeklong reading event has concluded, with organizers reporting strong participation throughout the program."},
				{"type": "body", "text": "Events included public readings, educational talks, and activities for children, all of which saw consistent attendance."},
				{"type": "body", "text": "Library staff described the event as a success and expressed interest in organizing similar programs in the future."}
			],
			"correct_verdict": "trust",
			"explanation": "The article meets all protocol requirements.",
			"story_type": "side",
			"story_id": "library_event",
			"mistake_types": ["dismissed"],

			"trust_outcome": "advance_good",
			"dismiss_outcome": "advance_bad",
			"is_final_article": true
		},

		
		
##############################################DAY BREAK#########################################
		
		{
			"id": "orinth_scholarship_2",
			"day": 8,
			"type": "news",
			"content": [
				{"type": "url", "text": "www.publicrecord.rc", "id": "public_record_url"},
				{"type": "source", "text": "Public Record", "id": "public_record"},
				{"type": "title", "text": "Orinth Confirms Scholarship Program for Regional Students"},
				{"type": "date", "text": "08.01.2001"},
				{"type": "author", "text": "By Rose Thorne", "id": "rose_thorne"},
				{"type": "body", "text": "Officials in Orinth have confirmed the launch of a new scholarship program for students from neighboring countries."},
				{"type": "body", "text": "According to the announcement, the program will focus on engineering, maritime logistics, and public administration."},
				{"type": "body", "text": "Education offices in several regional capitals are expected to begin distributing application guidance later this month."}
			],
			"correct_verdict": "trust",
			"explanation": "The article meets all protocol requirements",
			"story_type": "side",
			"story_id": "orinth_scholarship",
			"mistake_types": ["dismissed"],

			"trust_outcome": "advance_good",
			"dismiss_outcome": "advance_bad",
			"is_final_article": true
		},
		{
			"id": "main_8",
			"day": 8,
			"type": "news",
			"content": [
				{"type": "url", "text": "www.dailynotes.so", "id": "daily_notes_url"},
				{"type": "source", "text": "Daily Notes", "id": "daily_notes"},
				{"type": "title", "text": "Explosion Reported During Solaris Energy Test at Sea"},
				{"type": "date", "text": "08.01.2000"},
				{"type": "author", "text": "By Light Yugami", "id": "light_yugami"},
				{"type": "image", "path": "res://Assets/newsImg/ship_explosion_fake.png", "id": "vessel_explosion_fake"},
				{"type": "body", "text": "An explosion has been reported during a Solaris maritime energy test, raising concerns about the safety of the newly developed system."},
				{"type": "body", "text": "The test, led by Dr. Lumen, was part of an early trial phase of the energy technology."},
				{"type": "body", "text": "Officials at the time stated that the situation was under control, though questions remained about the stability of the system."}
			],
			"correct_verdict": "dismiss",
			"explanation": "The article is outdated.",
			"story_type": "main",
			"story_id": "main",
			"mistake_types": ["date"],

			"trust_outcome": "advance_bad",
			"dismiss_outcome": "advance_good"
		},
		{
			"id": "veloria_drought_3",
			"day": 8,
			"type": "news",
			"content": [
				{"type": "url", "text": "www.publicrecord.ar", "id": "public_record_url"},
				{"type": "source", "text": "Public Record", "id": "public_record"},
				{"type": "title", "text": "Veloria Faces Severe Drought, Officials Say"},
				{"type": "date", "text": "12.11.2000"},
				{"type": "author", "text": "By Reed Moore", "id": "reed_moore"},
				{"type": "body", "text": "Officials in Veloria previously warned of a severe drought affecting several regions, citing reduced rainfall and lower reservoir levels."},
				{"type": "body", "text": "The situation raised concerns about long-term water availability and agricultural impact."},
				{"type": "body", "text": "No recent updates have been provided on whether conditions have improved or worsened."}
			],
			"correct_verdict": "dismiss",
			"explanation": "The article is outdated.",
			"story_type": "side",
			"story_id": "veloria_drought",
			"mistake_types": ["date"],

			"trust_outcome": "advance_bad",
			"dismiss_outcome": "advance_good",
			"is_final_article": false,
		},
		{
			"id": "relay_3",
			"day": 8,
			"type": "news",
			"content": [
				{"type": "url", "text": "www.publicrecord.ar", "id": "public_record_url"},
				{"type": "source", "text": "Public Record", "id": "public_record"},
				{"type": "title", "text": "Construction Begins on Border Relay Tower"},
				{"type": "date", "text": "08.01.2001"},
				{"type": "author", "text": "By Reed Moore", "id": "reed_moore"},
				{"type": "image", "path": "res://Assets/newsImg/relay.png", "id": "relay_tower_image"},
				{"type": "body", "text": "Construction crews have begun work on the communications relay tower near the northern border."},
				{"type": "body", "text": "Officials confirmed that the project remains under domestic control and oversight."},
				{"type": "body", "text": "The installation is expected to improve regional communication reliability."}
			],
			"correct_verdict": "trust",
			"explanation": "The article meets all protocol requirements.",
			"story_type": "side",
			"story_id": "relay_project",
			"trust_outcome": "advance_good",
			"dismiss_outcome": "advance_bad",
			"mistake_types": ["dismissed"],
			"is_final_article": false
		},
##############################################DAY BREAK#########################################
		
		
		{
			"id": "shadow_tide_1",
			"day": 9,
			"type": "news",
			"content": [
				{"type": "url", "text": "www.continentaldispatch.nr", "id": "continental_dispatch_url"},
				{"type": "source", "text": "Continental Dispatch", "id": "continental_dispatch"},
				{"type": "title", "text": "Insurers Review Al Mare Cargo Rates After New Risk Concerns"},
				{"type": "date", "text": "09.01.2001"},
				{"type": "body", "text": "Several maritime insurers are reportedly reviewing cargo rates connected to Al Mare routes following what sources describe as rising regional uncertainty."},
				{"type": "body", "text": "Shipping companies have not announced any immediate disruptions, but some brokers say clients are being advised to expect price changes."},
			],
			"correct_verdict": "dismiss",
			"mistake_types": ["author"],
			"explanation": "The article is missing an author.",
			"story_type": "side",
			"story_id": "shadow_tide",
			"trust_outcome": "advance_bad",
			"dismiss_outcome": "advance_good",
			"is_final_article": false
		},
		{
			"id": "railroad_expansion_1",
			"day": 9,
			"type": "news",
			"content": [
				{"type": "url", "text": "www.setinstone.rc", "id": "set_in_stone_url"},
				{"type": "source", "text": "Set In Stone", "id": "set_in_stone"},
				{"type": "title", "text": "Rocca Confirms Long-Planned Railroad Expansion Project"},
				{"type": "date", "text": "09.01.2001"},
				{"type": "author", "text": "By Gem Stone", "id": "gem_stone"},
				{"type": "body", "text": "Rocca officials have confirmed that construction on a new railway line is currently underway in the northern region of the country."},
				{"type": "body", "text": "The project, which had not been widely publicized in recent months, is part of a broader infrastructure plan aimed at improving internal transport and industrial logistics."},
				{"type": "quote", "text": "\"Yes, I know about the railroad construction. This was planned a long time ago.\" said President Cole Flint.", "id": "flint_railroad_quote"}
			],
			"correct_verdict": "trust",
			"explanation": "The article includes a verified author, source, and URL. The quote is accurately attributed and consistent with official statements, and no protocol violations are present.",
			"story_type": "side",
			"story_id": "railroad_expansion",
			"mistake_types": ["dismissed"],

			"trust_outcome": "advance_good",
			"dismiss_outcome": "advance_bad",
			"is_final_article": true
		},
		{
			"id": "main_9",
			"day": 9,
			"type": "news",
			"content": [
				{"type": "url", "text": "www.flowing-words.am", "id": "flowing_words_url"},
				{"type": "source", "text": "Flowing Words", "id": "flowing_words"},
				{"type": "title", "text": "Tensions Rise in Al Mare as Leadership Blames Foreign Pressure for Inequality"},
				{"type": "date", "text": "09.01.2001"},
				{"type": "author", "text": "By Nemo Coral", "id": "nemo_coral"},
				{"type": "image", "path": "res://Assets/newsImg/protest.png", "id": "al_mare_protests"},
				{"type": "body", "text": "Public frustration is growing across Al Mare as inequality continues to rise, with protests reported in several major coastal districts."},
				{"type": "quote", "text": "\"External pressure from Solaris and Rocca is distorting our economy and making it harder to maintain balance,\" said leader Uriel Blue.", "id":"uriel_blame"},
				{"type": "body", "text": "However, many citizens and local groups have rejected this explanation, arguing that internal policy decisions are the primary cause of widening wealth gaps."},
				{"type": "quote", "text": "\"They keep blaming others while nothing changes here,\" said protester Aurelio Varnis during a demonstration.", "id": "protester_blame"},
				{"type": "body", "text": "Citizen Ivo Meres has called for greater accountability from leadership as tensions continue to rise."}
			],
			"correct_verdict": "trust",
			"explanation": "The article comes from a verified source with a legitimate URL and presents multiple perspectives with clearly attributed quotes.",
			"story_type": "main",
			"story_id": "main",
			"mistake_types": ["dismissed"],

			"trust_outcome": "advance_good",
			"dismiss_outcome": "advance_bad"
		},
		{
			"id": "relay_4",
			"day": 9,
			"type": "news",
			"content": [
				{"type": "url", "text": "www.loudmouth.co", "id": "loudmouth_url"},
				{"type": "source", "text": "Loudmouth", "id": "loudmouth"},
				{"type": "title", "text": "Workers Claim Relay Tower Hides Unknown Equipment"},
				{"type": "author", "text": "By Brock Ett", "id": "brock_ett"},
				{"type": "body", "text": "Anonymous workers have reportedly claimed that the relay tower includes undisclosed equipment not listed in official plans."},
				{"type": "body", "text": "The claims suggest the installation may have a secondary purpose."},
			],
			"correct_verdict": "dismiss",
			"explanation": "The author is unverified.",
			"story_type": "side",
			"story_id": "relay_project",
			"trust_outcome": "advance_bad",
			"dismiss_outcome": "advance_good",
			"mistake_types": ["author"],
			"is_final_article": false
		},
		
		
##############################################DAY BREAK#########################################
		
		
		{
			"id": "shadow_tide_2",
			"day": 10,
			"type": "news",
			"content": [
				{"type": "url", "text": "www.continentald1spatch.nr", "id": "continental_dispatch_fake_url"},
				{"type": "source", "text": "Continental Dispatch", "id": "continental_dispatch"},
				{"type": "title", "text": "Two Ferry Operators Said to Be Quietly Reducing Al Mare Bookings"},
				{"type": "date", "text": "10.01.2001"},
				{"type": "author", "text": "By Rose Thorne", "id": "rose_thorne"},
				{"type": "body", "text": "Reports claim that two regional ferry operators have begun quietly reducing ticket availability for routes connected to Al Mare."},
				{"type": "body", "text": "The alleged changes have been linked to uncertainty over inspections and schedule reliability, though neither company has announced a formal policy shift."},
				{"type": "body", "text": "Travel agents contacted by local press said bookings remain open, but some customers have reported unusual delays."}
			],
			"correct_verdict": "dismiss",
			"mistake_types": ["url"],
			"explanation": "The URL is fake and does not match the verified source domain.",
			"story_type": "side",
			"story_id": "shadow_tide",
			"trust_outcome": "advance_bad",
			"dismiss_outcome": "advance_good",
			"is_final_article": false
		},
		{
			"id": "relay_5",
			"day": 10,
			"type": "news",
			"content": [
				{"type": "url", "text": "www.publicrecord.ar", "id": "public_record_url"},
				{"type": "source", "text": "Public Record", "id": "public_record"},
				{"type": "title", "text": "Relay Tower Installation Near Completion"},
				{"type": "date", "text": "10.01.2001"},
				{"type": "author", "text": "By Reed Moore", "id": "reed_moore"},
				{"type": "image", "path": "res://Assets/newsImg/relay.png", "id": "relay_tower_image"},
				{"type": "body", "text": "The communications relay tower project is nearing completion, with final systems currently being installed."},
				{"type": "body", "text": "Officials confirmed that the system will operate within existing regulatory frameworks."},
				{"type": "body", "text": "Testing is expected to begin shortly after installation is finalized."}
			],
			"correct_verdict": "trust",
			"explanation": "All elements are verified and consistent with prior reporting.",
			"story_type": "side",
			"story_id": "relay_project",
			"trust_outcome": "advance_good",
			"dismiss_outcome": "advance_bad",
			"mistake_types": ["dismissed"],
			"is_final_article": false
		},
		{
			"id": "main_10",
			"day": 10,
			"type": "news",
			"content": [
				{"type": "url", "text": "www.flowing-words.am", "id": "flowing_words_url"},
				{"type": "source", "text": "Flowing Words", "id": "flowing_words"},
				{"type": "title", "text": "Al Mare Figure Claims Solaris Energy Project May Be Weaponized"},
				{"type": "date", "text": "10.01.2001"},
				{"type": "author", "text": "By Nemo Coral", "id": "nemo_coral"},
				{"type": "image", "path": "res://Assets/newsImg/solaris_ship.png", "id": "solaris_energy_ship"},
				{"type": "body", "text": "Concerns are rising in Al Mare following claims that Solaris’ new maritime energy system could be repurposed as a weapon."},
				{"type": "body", "text": "In some forums it was suggested that the technology may be functionally similar to controlled nuclear output, though no technical evidence was provided."},
				{"type": "body", "text": "Solaris officials have previously described the system as a civilian energy solution."}
			],
			"correct_verdict": "dismiss",
			"explanation": "The claim is speculative and lacks evidence.",
			"story_type": "main",
			"story_id": "main",
			"mistake_types": ["speculative"],

			"trust_outcome": "advance_bad",
			"dismiss_outcome": "advance_good"
		},
		{
			"id": "veloria_drought_4",
			"day": 10,
			"type": "news",
			"content": [
				{"type": "url", "text": "www.publicrec0rd.ar", "id": "public_record_fake_url"},
				{"type": "source", "text": "Public Record", "id": "public_record"},
				{"type": "title", "text": "Emergency Declared in Veloria as Water Crisis Deepens"},
				{"type": "date", "text": "10.01.2001"},
				{"type": "author", "text": "By Reed Moore", "id": "reed_moore"},
				{"type": "body", "text": "Veloria has reportedly declared a state of emergency as water shortages continue to worsen across the country."},
				{"type": "body", "text": "The announcement comes after weeks of growing concern over reservoir levels and agricultural strain."},
			],
			"correct_verdict": "dismiss",
			"explanation": "The URL is fake and does not match the verified source domain, making the article unreliable.",
			"story_type": "side",
			"story_id": "veloria_drought",
			"mistake_types": ["url"],

			"trust_outcome": "advance_bad",
			"dismiss_outcome": "advance_good",
			"is_final_article": true
		},
		
		
##############################################DAY BREAK#########################################
		
		
		{
			"id": "relay_6",
			"day": 11,
			"type": "news",
			"content": [
				{"type": "url", "text": "www.flowing-words.am", "id": "flowing_words_url"},
				{"type": "source", "text": "Flowing Words", "id": "flowing_words"},
				{"type": "title", "text": "Official Admits Relay System 'Cannot Be Fully Controlled'"},
				{"type": "date", "text": "11.01.2001"},
				{"type": "author", "text": "By Nemo Coral", "id": "nemo_coral"},
				{"type": "quote", "text": "\"The system cannot be fully controlled,\" said engineer Tal Ren.", "id": "relay_quote_cut"},
				{"type": "body", "text": "Concerns have emerged following statements suggesting the relay system may operate unpredictably."},
				{"type": "body", "text": "The claim has raised questions about the safety and oversight of the installation."}
			],
			"correct_verdict": "dismiss",
			"explanation": "The quote omits key context. The full statement clarified limitations under extreme conditions, not general lack of control.",
			"story_type": "side",
			"story_id": "relay_project",
			"mistake_types": ["quote"],
			"trust_outcome": "advance_bad",
			"dismiss_outcome": "advance_good",
			"is_final_article": false
		},
		{
			"id": "main_11",
			"day": 11,
			"type": "news",
			"content": [
				{"type": "url", "text": "www.setinstone.rc", "id": "set_in_stone_url"},
				{"type": "source", "text": "Set In Stone", "id": "set_in_stone"},
				{"type": "title", "text": "Rocca Deploys Naval Units Toward Solaris Test Vessel"},
				{"type": "date", "text": "11.01.2001"},
				{"type": "author", "text": "By Gem Stone", "id": "gem_stone"},
				{"type": "body", "text": "Rocca has deployed multiple naval units toward the Solaris test vessel currently operating near shared maritime routes."},
				{"type": "body", "text": "Officials have not confirmed the purpose of the deployment, though it follows several days of rising concern over Solaris’ energy testing program."},
				{"type": "quote", "text": "\"We are taking necessary precautions to ensure regional security,\" said General Darius Steele.", "id": "steele_security"}
			],
			"correct_verdict": "trust",
			"explanation": "While the situation is tense, the information is presented factually without unsupported claims.",
			"story_type": "main",
			"story_id": "main",
			"mistake_types": ["dismissed"],

			"trust_outcome": "advance_good",
			"dismiss_outcome": "advance_bad"
		},
		{
			"id": "port_fees_1",
			"day": 11,
			"type": "news",
			"content": [
				{"type": "url", "text": "www.thespark.news", "id": "the_spark_url"},
				{"type": "source", "text": "The Spark", "id": "the_spark"},
				{"type": "title", "text": "Docking Fees Expected to Rise Sharply Across Major Ports"},
				{"type": "date", "text": "11.01.2001"},
				{"type": "author", "text": "By Reed Moore", "id": "reed_moore"},
				{"type": "body", "text": "Port authorities are preparing to increase docking fees across several major trade hubs."},
			],
			"correct_verdict": "dismiss",
			"explanation": "The article must be dismissed because the source is unverified.",
			"story_type": "side",
			"story_id": "port_fees",
			"mistake_types": ["source"],
			"trust_outcome": "advance_bad",
			"dismiss_outcome": "advance_good",
			"is_final_article": true
		},
		{
			"id": "shadow_tide_3",
			"day": 11,
			"type": "news",
			"content": [
				{"type": "url", "text": "www.publicrecord.rc", "id": "public_record_url"},
				{"type": "source", "text": "Public Record", "id": "public_record"},
				{"type": "title", "text": "Inspector Warning Raises Fresh Questions About Al Mare Produce Checks"},
				{"type": "date", "text": "11.01.2001"},
				{"type": "author", "text": "By Reed Moore", "id": "reed_moore"},
				{"type": "quote", "text": "\"We cannot guarantee every crate,\" said warehouse inspector Mara Pell.", "id": "shadow_tide_quote_1"},
				{"type": "body", "text": "A statement from a warehouse inspector has prompted renewed concern about produce checks on shipments coming through Al Mare."},
				{"type": "body", "text": "The remark has been cited by several commentators as evidence that screening procedures may be under strain."}
			],
			"correct_verdict": "dismiss",
			"mistake_types": ["quote"],
			"explanation": "The article must be dismissed because the quote removes key context.",
			"story_type": "side",
			"story_id": "shadow_tide",
			"trust_outcome": "advance_bad",
			"dismiss_outcome": "advance_good",
			"is_final_article": false
		},
		
##############################################DAY BREAK#########################################
		
		
		{
			"id": "main_12",
			"day": 12,
			"type": "news",
			"content": [
				{"type": "url", "text": "www.dailynotes.so", "id": "daily_notes_url"},
				{"type": "source", "text": "Daily Notes", "id": "daily_notes"},
				{"type": "title", "text": "Explosion Reported on Solaris Test Vessel in Open Waters"},
				{"type": "date", "text": "12.01.2001"},
				{"type": "author", "text": "By Light Yugami", "id": "light_yugami"},
				{"type": "image", "path": "res://Assets/newsImg/solaris_ship_explosion.png", "id": "solaris_ship_explosion"},
				{"type": "body", "text": "An explosion has been reported on a Solaris test vessel operating in open waters earlier today."},
				{"type": "body", "text": "The vessel was part of the ongoing maritime energy testing program led by Dr. Lumen."},
				{"type": "body", "text": "Initial reports confirm significant damage to the vessel, though the full extent of the incident is still being assessed."},
				{"type": "body", "text": "Authorities have not yet determined the cause of the explosion, and no official statements have been made regarding responsibility."}
			],
			"correct_verdict": "trust",
			"explanation": "The article presents verified information about the event without speculation. It avoids assigning blame and clearly states that the cause is unknown.",
			"story_type": "main",
			"story_id": "main",
			"mistake_types": ["dismissed"],

			"trust_outcome": "advance_good",
			"dismiss_outcome": "advance_bad"
		},
		{
			"id": "relay_7",
			"day": 12,
			"type": "news",
			"content": [
				{"type": "url", "text": "www.publicrecord.ar", "id": "public_record_url"},
				{"type": "source", "text": "Public Record", "id": "public_record"},
				{"type": "title", "text": "Relay Tower Enters Operation Without Incident"},
				{"type": "date", "text": "12.01.2001"},
				{"type": "author", "text": "By Reed Moore", "id": "reed_moore"},
				{"type": "body", "text": "The border communications relay has officially entered operation following successful testing."},
				{"type": "body", "text": "Officials report stable performance and improved communication coverage in the region."},
				{"type": "body", "text": "Earlier concerns about control and oversight were described as misunderstandings of technical limitations."}
			],
			"correct_verdict": "trust",
			"explanation": "The article follows protocol.",
			"story_type": "side",
			"story_id": "relay_project",
			"is_final_article": true,
			"mistake_types": ["dismissed"],
			"trust_outcome": "advance_good",
			"dismiss_outcome": "advance_bad",
		},
		{
			"id": "shadow_tide_4",
			"day": 12,
			"type": "news",
			"content": [
				{"type": "url", "text": "www.citypulse.ar", "id": "city_pulse_url"},
				{"type": "source", "text": "City Pulse", "id": "city_pulse"},
				{"type": "title", "text": "PANIC BUYING HITS AL MARE AS SHELVES START TO EMPTY"},
				{"type": "date", "text": "12.01.2001"},
				{"type": "author", "text": "By Paige Turner", "id": "paige_turner"},
				{"type": "body", "text": "Some residents in Al Mare were seen purchasing extra pantry staples."},
				{"type": "body", "text": "Residents may be hoarding supplies following days of rumors about trade disruption and product checks."},
				{"type": "body", "text": "No authority has announced a shortage, and retailers say supply chains are still functioning."}
			],
			"correct_verdict": "dismiss",
			"mistake_types": ["sensationalized_title, speculative"],
			"explanation": "The article must be dismissed because the title is sensationalized and does not match the more limited facts presented in the article.",
			"story_type": "side",
			"story_id": "shadow_tide",
			"trust_outcome": "advance_bad",
			"dismiss_outcome": "advance_good",
			"is_final_article": false
		},
		{
			"id": "grain_shipments_1",
			"day": 12,
			"type": "news",
			"content": [
				{"type": "url", "text": "www.citypulse.ar", "id": "city_pulse_url"},
				{"type": "source", "text": "City Pulse", "id": "city_pulse"},
				{"type": "title", "text": "Grain Export Limits Begin Affecting Regional Trade"},
				{"type": "date", "text": "12.01.2001"},
				{"type": "author", "text": "By Paige Turner", "id": "paige_turner"},
				{"type": "body", "text": "Reports indicate that new export limits on grain shipments are beginning to affect regional trade routes."},
				{"type": "body", "text": "Some buyers are said to be adjusting contracts in response to reduced availability."}
			],
			"correct_verdict": "dismiss",
			"explanation": "The article must be dismissed because cross-references show no verified source has confirmed export restrictions, and official reports state shipments are continuing normally.",
			"story_type": "side",
			"story_id": "grain_shipments",
			"mistake_types": ["cross_reference"],
			"trust_outcome": "advance_bad",
			"dismiss_outcome": "advance_good",
			"is_final_article": true
		},
##############################################DAY BREAK#########################################
		
		
		{
			"id": "main_13",
			"day": 13,
			"type": "news",
			"content": [
				{"type": "url", "text": "www.setinstone.rc", "id": "set_in_stone_url"},
				{"type": "source", "text": "Set In Stone", "id": "set_in_stone"},
				{"type": "title", "text": "Rocca Officials Say Ship Explosion Was Deliberate Act by Solaris"},
				{"type": "date", "text": "13.01.2001"},
				{"type": "author", "text": "By Gem Stone", "id": "gem_stone"},
				{"type": "image", "path": "res://Assets/newsImg/solaris_ship_explosion.png", "id": "solaris_ship_explosion"},
				{"type": "body", "text": "Rocca officials have stated that the recent explosion near their waters was an intentional act carried out by Solaris."},
				{"type": "body", "text": "Authorities claim the incident may have been retaliation for Rocca’s recent mining expansion plans, raising concerns about a direct threat to regional stability."},
				{"type": "quote", "text": "\"This was not an accident. It was a deliberate act meant to send a message. We consider this a serious threat,\" said General Darius Steele.", "id": "steele_blame"}
			],
			"correct_verdict": "dismiss",
			"explanation": "The article must be dismissed because trusted cross-references report that the cause of the explosion is under investigation, accusations baseless.",
			"story_type": "main",
			"story_id": "main",
			"mistake_types": ["cross_reference"],

			"trust_outcome": "advance_bad",
			"dismiss_outcome": "advance_good"
		},
		{
			"id": "bridge_repair_3",
			"day": 13,
			"type": "news",
			"content": [
				{"type": "url", "text": "www.morningledger.so", "id": "morning_ledger_url"},
				{"type": "source", "text": "Morning Ledger", "id": "morning_ledger"},
				{"type": "title", "text": "Image Shows Severe Cracking on Recently Repaired Bridge"},
				{"type": "date", "text": "13.01.2001"},
				{"type": "author", "text": "By Elias Rowan", "id": "elias_rowan"},
				{"type": "image", "path": "res://Assets/newsImg/broken_bridge.png", "id": "bridge_damage_fake"},
				{"type": "body", "text": "A widely shared image appears to show severe cracks forming on a recently repaired bridge."},
				{"type": "body", "text": "The image has raised concerns about the quality of the repair work."},
				{"type": "body", "text": "Officials have stated that the bridge remains structurally sound."}
			],
			"correct_verdict": "dismiss",
			"explanation": "The article must be dismissed because the image is manipulated and exaggerates structural damage.",
			"story_type": "side",
			"story_id": "bridge_repair",
			"mistake_types": ["image"],
			"trust_outcome": "advance_bad",
			"dismiss_outcome": "advance_good",
			"is_final_article": true
		},
		{
			"id": "shadow_tide_5",
			"day": 13,
			"type": "news",
			"content": [
				{"type": "url", "text": "www.publicrecord.rc", "id": "public_record_url"},
				{"type": "source", "text": "Public Record", "id": "public_record"},
				{"type": "title", "text": "Regional Lenders Said to Be Quietly Freezing Transfers to Al Mare Firms"},
				{"type": "date", "text": "13.01.2001"},
				{"type": "author", "text": "By Rose Thorne", "id": "rose_thorne"},
				{"type": "body", "text": "New claims suggest that several regional lenders have quietly paused transfer activity involving Al Mare businesses, fueling concern over confidence in the country’s financial position."},
				{"type": "body", "text": "Business groups say even rumors of restrictions could have immediate effects on trade confidence if left unanswered."}
			],
			"correct_verdict": "dismiss",
			"mistake_types": ["cross_reference"],
			"explanation": "The article must be dismissed the claim is contradicted by other trusted reporting.",
			"story_type": "side",
			"story_id": "shadow_tide",
			"trust_outcome": "advance_bad",
			"dismiss_outcome": "advance_good",
			"is_final_article": true
		},
##############################################DAY BREAK#########################################
		
		{
			"id": "harbor_lanterns_1",
			"day": 14,
			"type": "news",
			"content": [
				{"type": "url", "text": "www.morningledger.so", "id": "morning_ledger_url"},
				{"type": "source", "text": "Morning Ledger", "id": "morning_ledger"},
				{"type": "title", "text": "Released Lanterns Return to Shore as Crowds Look for Signs of Recovery"},
				{"type": "date", "text": "14.01.2001"},
				{"type": "author", "text": "By Paige Turner", "id": "paige_turner"},
				{"type": "image", "path": "res://Assets/newsImg/balloons.png", "id": "harbor_lanterns"},
				{"type": "body", "text": "Residents gathered along the harbor this evening to release paper lanterns and handwritten notes in a public display meant to lift spirits after days of fear and uncertainty."},
				{"type": "body", "text": "Volunteers said the display was organized to remind people that ordinary life still matters, even as the wider situation remains unresolved."},
				{"type": "quote", "text": "After a few moments, the lanterns were blown back toward the shore. \"I believe the returning lanterns signify hasty return to normality,\" said participant Elin Marek.", "id": "lanterns_quote_cut"},
				{"type": "body", "text": "Crowds were quiet but emotional, with some visitors saying the lanterns gave them a reason to believe things may still improve."}
			],
			"correct_verdict": "dismiss",
			"explanation": "The quoted remark has been changed completely.",
			"story_type": "side",
			"story_id": "harbor_lanterns",
			"mistake_types": ["quote", "sensationalized_title"],

			"trust_outcome": "advance_bad",
			"dismiss_outcome": "advance_good",
			"is_final_article": true
		},
		{
			"id": "main_14_good",
			"day": 14,
			"type": "news",
			"content": [
				{"type": "url", "text": "www.dailynotes.so", "id": "daily_notes_url"},
				{"type": "source", "text": "Daily Notes", "id": "daily_notes"},
				{"type": "title", "text": "Solaris and Rocca Agree to Joint Investigation into Vessel Explosion"},
				{"type": "date", "text": "14.01.2001"},
				{"type": "author", "text": "By Light Yugami", "id": "light_yugami"},
				{"type": "image", "path": "res://Assets/newsImg/meeting.png", "id": "joint_meeting"},
				{"type": "body", "text": "Solaris and Rocca have agreed to conduct a joint investigation into the recent explosion involving the Solaris test vessel."},
				{"type": "body", "text": "Officials from both sides stated that determining the cause of the incident through verified findings is a priority."},
				{"type": "quote", "text": "\"We must rely on facts, not assumptions. A joint investigation is the only responsible path forward,\" said Solaris representative Elira Kestrel.", "id": "investigation_path_quote"},
				{"type": "body", "text": "Al Mare has expressed support for the investigation and has offered to provide logistical assistance."}
			],
			"path": "good",
			"correct_verdict": "trust",
			"explanation": "The article presents a cooperative and fact-based response to the incident, with no unsupported claims and clear attribution.",
			"story_type": "main",
			"story_id": "main",
			"trust_outcome": "advance_good",
			"dismiss_outcome": "advance_bad",
			"mistake_types": ["dismissed"],
		},
		{
			"id": "main_14_bad",
			"day": 14,
			"type": "news",
			"content": [
				{"type": "url", "text": "www.flowing-words.am", "id": "flowing_words_url"},
				{"type": "source", "text": "Flowing Words", "id": "flowing_words"},
				{"type": "title", "text": "Al Mare Aligns with Rocca, Blames Solaris for Vessel Explosion"},
				{"type": "date", "text": "14.01.2001"},
				{"type": "author", "text": "By Nemo Coral", "id": "nemo_coral"},
				{"type": "image", "path": "res://Assets/newsImg/protest.png", "id": "al_mare_protest"},
				{"type": "body", "text": "Al Mare has officially aligned with Rocca in placing responsibility for the recent vessel explosion on Solaris."},
				{"type": "body", "text": "The decision follows mounting public pressure and growing concern over the safety of Solaris’ energy technology."},
				{"type": "quote", "text": "\"We cannot ignore the risks any longer. The evidence is clear enough to act,\" saidDarian Solvek from Al Mare leadership.", "id": "cant_ignore_risks_quote"},
				{"type": "body", "text": "Solaris has rejected the accusations, stating that no confirmed findings have been released and warning against premature conclusions."}
			],
			"path": "bad",
			"correct_verdict": "trust",
			"explanation": "The article accurately reports a political alignment and public reaction. While the claims may be disputed, the reporting itself is factual.",
			"story_type": "main",
			"story_id": "main",
			"mistake_types": ["dismissed"],
			
			"trust_outcome": "advance_good",
			"dismiss_outcome": "advance_bad"
		},
		{
			"id": "civic_forum_1",
			"day": 14,
			"type": "news",
			"content": [
				{"type": "url", "text": "www.publicrecord.rc", "id": "public_record_url"},
				{"type": "source", "text": "Public Record", "id": "public_record"},
				{"type": "title", "text": "Local Leaders Flounder While Real Statesmen Abroad Show How It's Done"},
				{"type": "date", "text": "14.01.2001"},
				{"type": "author", "text": "By Rose Thorne", "id": "rose_thorne"},
				{"type": "body", "text": "At a recent civic forum, local Solaris' officials once again demonstrated their inability to lead, offering vague responses and avoiding real accountability."},
				{"type": "body", "text": "In contrast, leaders in Rocca continue to show decisive action and clarity, setting an example that our own officials seem unwilling or unable to follow."},
				{"type": "body", "text": "Despite the article's claims, the forum itself consisted of standard policy discussions with no major incidents or admissions of failure."}
			],
			"correct_verdict": "dismiss",
			"explanation": "The article uses emotionally loaded language and makes baseless comparisons to foreign leaders that are not supported by evidence in the article.",
			"story_type": "side",
			"story_id": "civic_forum",
			"mistake_types": ["bias", "sensationalized_title"],
			"trust_outcome": "advance_bad",
			"dismiss_outcome": "advance_good",
			"is_final_article": true
		},
		{
			"id": "static_ship_3",
			"day": 14,
			"type": "news",
			"content": [
				{"type": "url", "text": "www.loudmouth.co", "id": "loudmouth_url"},
				{"type": "source", "text": "Loudmouth", "id": "loudmouth"},
				{"type": "title", "text": "I WAS RIGHT: THE SHIP BLEW UP, THE LIES STARTED, AND NOW THEY WANT YOU QUIET"},
				{"type": "date", "text": "14.01.2001"},
				{"type": "author", "text": "By Chip Static", "id": "chip_static"},
				{"type": "body", "text": "I said the ship would explode, and it exploded. I said blame would follow, and blame followed. Everything is happening exactly as predicted."},
				{"type": "body", "text": "Now the same officials who ignored the warnings are pretending this can still be explained through a normal investigation. It cannot."},
				{"type": "quote", "text": "\"This was planned a long time ago,\" said President Cole Flint.", "id": "static_fake_quote_3"},
				{"type": "body", "text": "Nobody listened! See the consequences!"}
			],
			"correct_verdict": "dismiss",
			"explanation": "The author and source are unverified, the title is sensationalised, the article is politically biased, it includes a quote with no public record.",
			"story_type": "side",
			"story_id": "static_ship",
			"mistake_types": ["author", "source", "quote", "bias", "sensationalized_title"],

			"trust_outcome": "advance_bad",
			"dismiss_outcome": "advance_good",
			"is_final_article": false
		},
		
		
##############################################DAY BREAK#########################################
		
		
		{
			"id": "main_15_good",
			"day": 15,
			"type": "news",
			"content": [
				{"type": "url", "text": "www.dailynotes.so", "id": "daily_notes_url"},
				{"type": "source", "text": "Daily Notes", "id": "daily_notes"},
				{"type": "title", "text": "Joint Investigation Finds Vessel Explosion Caused by System Failure"},
				{"type": "date", "text": "15.01.2001"},
				{"type": "author", "text": "By Light Yugami", "id": "light_yugami"},
				{"type": "body", "text": "A joint investigation conducted by Solaris and Rocca has concluded that the explosion on the Solaris test vessel was caused by a critical system failure."},
				{"type": "body", "text": "According to the report, no evidence of external interference or attack was found during the investigation."},
				{"type": "quote", "text": "\"The findings confirm that this was an internal malfunction. There is no indication of hostile involvement,\" said a joint statement released by both parties.", "id": "joint_statement"},
				{"type": "body", "text": "Al Mare officials have acknowledged the results and expressed support for continued cooperation in addressing the incident."}
			],
			"path": "good",
			"correct_verdict": "trust",
			"explanation": "The article follows protocol.",
			"story_type": "main",
			"story_id": "main",
			"mistake_types": ["dismissed"],
			
			"trust_outcome": "advance_good",
			"dismiss_outcome": "advance_bad"
		},
		{
			"id": "main_15_bad",
			"day": 15,
			"type": "news",
			"content": [
				{"type": "url", "text": "www.setinstone.rc", "id": "set_in_stone_url"},
				{"type": "source", "text": "Set In Stone", "id": "set_in_stone"},
				{"type": "title", "text": "Rocca and Al Mare Increase Military Presence Following Explosion Dispute"},
				{"type": "date", "text": "15.01.2001"},
				{"type": "author", "text": "By Gem Stone", "id": "gem_stone"},
				{"type": "image", "path": "res://Assets/newsImg/military_buildup.png", "id": "military_buildup"},
				{"type": "body", "text": "Rocca and Al Mare have increased their military presence near border zones following the ongoing dispute over the cause of the Solaris vessel explosion."},
				{"type": "body", "text": "Both nations maintain that Solaris bears responsibility, though no independent investigation results have been released."},
				{"type": "quote", "text": "\"We must act to protect our interests while the situation remains unresolved,\" said General Darius Steele.", "id": "steele_unresolved"},
				{"type": "body", "text": "Solaris has continued to deny the accusations and has called for a joint investigation, which has not yet been agreed upon."}
			],
			"path": "bad",
			"correct_verdict": "trust",
			"explanation": "The article accurately reports the escalation and positions of the involved parties, even though the situation remains unresolved.",
			"story_type": "main",
			"story_id": "main",
			"mistake_types": ["dismissed"],
			
			"trust_outcome": "advance_good",
			"dismiss_outcome": "advance_bad"
		}
	]

static func get_endings() -> Dictionary:
	return {
		"ending_1": {
			"text": "Peace\nYour careful reporting helped keep the region focused on facts instead of panic.",
			"background": "res://Assets/newsImg/peace.png"
		},
		"ending_2": {
			"text": "Closed Borders\nYou reached the truth, but only after distrust had already spread too far.",
			"background": "res://Assets/newsImg/border2.png"
		},
		"ending_3": {
			"text": "Military Buildup\nMany of your decisions were sound, but the final turn pushed events toward instability.",
			"background": "res://Assets/newsImg/mili.png"
		},
		"ending_4": {
			"text": "War\nConfusion and misinformation escalated unchecked, and the consequences were severe.",
			"background": "res://Assets/newsImg/bang.png"
		}
	}


static func get_tutorial_article() -> Dictionary:
	return {
		"id": "tutorial",
		"content": [
			{"type": "title", "text": "Tutorial"},
			{"type": "body", "text": "You are a fact-checker. Your job is to review articles and decide whether they should be trusted or dismissed. The citizens rely on you for reliable information."},

			{"type": "divider"},

			{"type": "title", "text": "Protocol"},
			{"type": "body", "text": "The Protocol window lists everything you should check that day."},
			{"type": "body", "text": "Protocol must be strictly followed."},
			{"type": "image", "path": "res://Assets/tutorial/tut_protocol_sc-export.png"},

			{"type": "divider"},

			{"type": "title", "text": "Articles"},
			{"type": "body", "text": "Click the article app icon to open and read articles."},
			{"type": "image", "path": "res://Assets/desktopIcons/caseIcon.png"},

			{"type": "divider"},

			{"type": "title", "text": "Trust and Dismiss"},
			{"type": "body", "text": "Use the Trust and Dismiss buttons to make your decision on the current article."},
			{"type": "image", "path": "res://Assets/tutorial/tut_trust_n_dismiss.png"},

			{"type": "divider"},
			
			{"type": "title", "text": "Result Notification"},
			{"type": "body", "text": "After you’ve made your decision, a notification in the top-right corner will indicate whether it was correct and provide an explanation."},
			{"type": "body", "text": "Once you’ve read the result notification, click it to continue the game."},
			{"type": "image", "path": "res://Assets/tutorial/resultNotification.png"},

			{"type": "divider"},

			{"type": "title", "text": "Tools"},
			{"type": "body", "text": "All available tools are visible on the home screen and can be opened by clicking on their icon."},
			{"type": "image", "path": "res://Assets/desktopIcons/authorCheckerIcon.png"},
			{"type": "body", "text": "Article elements such as authors, quotes, images, graphs, sources, URLs, and titles may be clickable, which opens the relevant application."},
			{"type": "body", "text": "Some articles cannot be judged solely depending on tools, but you have to make the choice based on how they're written (e.g., political bias, sensationalism, or speculation)."},

			{"type": "divider"},

			{"type": "title", "text": "Morning News"},
			{"type": "body", "text": "Morning News appears at the start of each day and reports outcomes."},

			{"type": "divider"},

			{"type": "title", "text": "Windows"},
			{"type": "body", "text": "You can move windows by dragging the top bar and resize them from the bottom-right corner."},

			{"type": "divider"},

			{"type": "title", "text": "Saving"},
			{"type": "body", "text": "Game saves automatically at the start of each day."},
			{"type": "body", "text": "It's possible to manually save from the menu."},
			{"type": "image", "path": "res://Assets/buttons/loadGameBtnIcon.png"},
		]
	}
