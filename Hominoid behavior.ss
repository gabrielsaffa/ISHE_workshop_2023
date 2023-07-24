xread
'NOXIOUS'61 12
Papio_anubis             12100100000110?1?22011122100123012?00011?1111?100102121021000
Hoolock_hoolock          1??010011?1???101000???0011012?0??101011?0?--1[01]10??111?010??0
Nomascus_concolor        02?00??11?????1010001??0011012?0??000100??0?-???00?011?001??0
Symphalangus_syndactylus 22211101111??1101000???001000210?1?0101?0??-?11?000012?000??0
Hylobates_lar            12301001111??11010001?00000012100100101??01-01[01]0000211?01???0
Pongo_pygmaeus           31333111310031100111111211011210?0001030[01]10--0--0000---111111
Pongo_abelii             31334111310031100111111211011210?0001030[01]10--0--0000---111111
Gorilla_gorilla          302211111000211011001?021101020000001020210110110022122010111
Gorilla_beringei         3021111110002110110011021101020000001020?1?11011101312200???1
Pan_troglodytes          2232211121002201-22001111000213102100001211020211112011112121
Pan_paniscus             31321111210?2201-220?2111000213?121010012?2202000100010011111
Homo_sapiens             323002223101411111011201010?101020?110211211201111[01]3122023132
;
cc - 1.11 15 17.18 21.30 32 35 37.43 45.47 49.54 56.57 59.60;
cc + 0 12.14 16 19.20 31 33.34 36 44 48 55 58;
proc /;
optcode u 0.60;

#
$
;
cn {0 Gestation_length_(months) 5-6 6-7 7-8 >8;
{1 Neonate_weight_as_a_%_of_maternal_weight <3% 3-5% 5-10% >10%;
{2 Postnatal_(early)_growth_rate very_fast fast slow very_slow;
{3 Weaning_age_(years) <2 2-4 4-7 >7;
{4 Interbirth_interval_(years) 1-3 3-5 5-7 6-8 >8;
{5 Age_at_the_1st_molar_eruption_(years) <2 2-5 >5;
{6 Age_at_the_last_molar_eruption_(years) <8 8-12 >18;
{7 Onset_of_puberty_(years) <4 6-10 >10;
{8 Age_at_first_female_reproduction_(years) ±5 ±10 11-15 16-21 >21;
{9 Postponing_first_female_reproduction absent_(early_first_reproduction) present_(late_first_reproduction);
{10 Seasonal_breeding absent_(year-round_breeding) present_(breeding_season_<200_days/year);
{11 Protracted_post-reproductive_female_lifespan_(in_free-ranging_populations) absent present;
{12 Maximum_lifespan_(in_free-ranging_populations) <30_years 30–40_years 40–50_years 50–70_years exceeding_70_years;
{13 Philopatry_(dispersal_patterns) strict_female_philopatry context-dependent_dispersal strict_male_philopatry;
{14 Conjugal_family_as_a_social_unit absent present;
{15 Social_unit_beyond_family_scope no_conjugal_social_units_beyond_family conjugal_social_units_consisting_of_less-related_individuals;
{16 Male_(father)_presence_within_a_group dominant_male_(father)_is_unable_to_maintain_proximity_to_group ccontinuous_presence_of_the_male_(father)_within_a_group;
{17 Social_mating_system monogamy_(one_male_to_one_female) polygyny_(one_male-multifemale) multimale-multifemale_(promiscuous) polyandry_(more_than_one_male_to_one_female);
{18 Male_mating_strategy possessive_(mate_guarding) consortship opportunistic;
{19 Forced_copulations absent_(or_not_reported_for_this_species) present_(reported_for_this_species,_occurs_regularly);
{20 Female_mate_choice_(realized) female_has_limited_opportunity_to_exert_mate_choice female_is_able_to_exert_mate_choice_among_resident_males;
{21 Male_mate_preference_(for_female_age,_rank,_or_parity) no_apparent_male_preference_for_female_age_or_rank (dominant)_males_prefer_older,_higher-ranking,_parous_females (dominant)_males_prefer_younger_(adolescent),_nulliparous_females;
{22 Top-ranking_(top-sire)_in-group_male_paternity_success_(%) high_(100-81%) limited_(80-41%) low_(<40%);
{23 Sexual_dimorphism_in_body_weight_(male:female_body_weight_ratio) insignificant_(0.9:1-1.2:1) moderate_(1.2:1-1.6:1) strong_(1.6:1-2.6:1);
{24 Sexual_dimorphism_in_canine_size insignificant_sexual_dimorphism_in_canine_size male_canines_moderately_larger_than_female_canines male_canines_markedly_larger_than_female_canines;
{25 Sexual_dimorphism_in_androgen-dependent_sexual_adornments_of_adult_males_(beard,_mane,_pelage,_“flanges”,_color_skin_etc.) absent present;
{26 Sexual_dichromatism absent present;
{27 Morphological-physiological-behavioral_polymorphism_of_adult_(sexually_mature)_males_(suppression_of_development_in_some_indiv absent_(one_adult_male_morph) present_(two_adult_male_morphs);
{28 Relative_length_of_erected_penis_(head-body_lenght__:_pars_libera_length__ratio) short_(>2) medium_(0.5–2) long_(<0.5);
{29 Baculum_(os_penis) absent reduced/shortened present;
{30 Testes_size_(mean_combined_testes_weight_:_mean_body_weight__ratio)____ small_(<0.25) medium_(0.25-1.25) large_(1.25-2.5) very_large_(>2.5);
{31 Copulatory_plugs absent present;
{32 Ovulation well-detectable/advertized likelihood_of_ovulation_advertized,_exact_timing_concealed concealed/non-advertized;
{33 Sexual_skin_swellings absent_(or_slight_tumescence_of_circum-vulval_area) conspicuous_swellings exaggerated,_prolonged_or_semi-permanent_swellings;
{34 Mating_initiation mount_usually_initiated_by_female_approach_or_solicitation mount_usually_initiated_by_male_approach_or_courtship_behavior;
{35 Copulatory_posture_(type) dorso-ventral ventro-ventral,_male_superior ventro-ventral,_female_superior;
{36 Copulatory_posture_(flexibility) fixed flexible;
{37 Copulatory_pattern single_intromission multiple_intromission;
{38 Intromission_duration very_short_(<20_s) short_(<1_min) long_(>1.5_min) very_long_(>5_min);
{39 (Post)copulatory_calls absent_(not_reported) present;
{40 Mean_(hourly)_copulatory_frequency <0.01 <0.1 >0.1 >1;
{41 Nocturnal_copulations/mate_guarding absent consortships_continues_at_night,_mates_maintain_proximity present_(prevailing_and_fundamental_for_this_species);
{42 Non-conceptive_sexuality_(function) possibly_paternity_confusion paternity_confusion_+_exchange_for_favors paternity_confusion_+_female_plotting;
{43 Female_intragroup_relations,_cooperation_among_females relatively_weak_female_bonds_(no_female_coalitions) cooperation_among_female_kin significant_cooperation_among_female_non-kin;
{44 Male_intragroup_relations,_male_coalitions weak_male_bonds,_no_male_coalitions coalitions_of_two_or_more_males_occur_occasionally strong_male_bonds,_characteristic_tendency_to_form_male_coalitions;
{45 Intersexual_relations males_dominate_females no_apparent_dominance_of_one_sex_over_another females_dominate_males_(male_status_is_acquired_throug_female(s));
{46 Intergroup_encounters,_nature_of_intergroup_relations affiliative relatively_peaceful hostile;
{47 Sex-specific_participation_in_intergroup_encounters/territorial_defense females_are_equally_or_more_involved_in_intergroup_encounters males_are_more_involved_in_intergroup_encounters;
{48 Stable_all-male_units_(non-breeding_groups) absent present;
{49 Multi-male_bisexual_groups_(inter-male_tolerance) absent present;
{50 Infant_(pre-weaning)_mortality_(in_free-ranging_populations)_ up_to_20_% 20–40_% over_40_%;
{51 Male-led_infanticide_(in_free-ranging_populations) absent rare occasional prominent;
{52 Paternal_care:_protective_function_of_an_adult_male infants_receives_no_direct_paternal_protection male_(father)_actively_defends_his_offspring;
{53 Paternal_care:_male-infant_interactions virtually_no_male-infant_interactions occasional_affiliation substantial_paternal_care;
{54 Paternal_care:_male_(possible_father)_adopts_weaned_infant_if_mother_dies absent_(infant_adoption_by_male_never_reported_for_this_species) occasional_infant_adoption_by_male_reported_for_this_species present_(father_adopts_infant_if_mother_dies);
{55 Feeding/foraging_pattern group_foraging solitary_foraging;
{56 Diet folivorous_(arboreal_leaves_or_terrestrial_herbaceous_vegetation) frugivorous_(ripe_fruit) omnivorous_(plant_foods_and_animal_foods);
{57 Meat_proportion_in_diet/hunting_of_animal_prey absent_(no_reports_on_hunting_and_virtually_no_meat_in_diet) occasional_hunting_or_scavenging_on_animal_prey_reported_for_this_ present_(regular_cooperative_arboreal_hunting_of_animal_prey) present_(regular_cooperative_terrestrial_hunting_of_animal_prey);
{58 Cultural_diversity_(behavioral_traditions) absent present;
{59 Tool_use_(in_free-ranging_populations) absent_ simple_(e.g._stone-handling,_tool-assisted_locomotion) sophisticated_(toolkits,_toolsets,_and_composite_tools_present) elaborate_(containers,_complex_tools,_and_meta-tools_present);
{60 Shelter_construction_(nest_building) shelter_construction_(nest_building)_absent_ shelter_construction_(in_form_of_overnight_nest)_present elaborate_and_permanent_shelters_construction_;
;
