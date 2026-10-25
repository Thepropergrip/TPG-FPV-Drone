local TPG_FPV_AI = {
  Name = "TPG_FPV_AI_RC3_DEMON",
  DisplayName = _("TPG FPV Drone"),
  Picture = "TPG_FPV_Drone.png",
  Rate = 30,
  Shape = "FPV_Drone_RC3_TRIPLE_DROP_ACCU",

  propellorShapeType = "3ARG_PROC_BLUR",
  propellorShapeName = "FPV_drone_Prop.FBX",
  net_animation = {40, 280, 308, 475, 476, 477, 478},
  LandRWCategories = {
    [1] = {
      Name = "HelicopterCarrier"
    },
    [2] = {
      Name = "AircraftCarrier"
    }
  },
  TakeOffRWCategories = {
    [1] = {
      Name = "HelicopterCarrier"
    },
    [2] = {
      Name = "AircraftCarrier"
    }
  },
  shape_table_data = {
    {
      file = "FPV_Drone_RC3_TRIPLE_DROP_ACCU",
      life = 5,
      vis = 3,
      desrt = "Fighter-2-crush",
      fire = {5, 1},
      username = "TPG_FPV_AI_RC3_DEMON",
      index = WSTYPE_PLACEHOLDER,
      classname = "lLandPlane",
      positioning = "BYNORMAL"
    },
    {
      name = "TPG_FPV_AI_RC3_DEMON",
      file = "FPV_Drone_RC3_TRIPLE_DROP_ACCU",
      fire = {5, 1}
    }
  },
  mapclasskey = "P0091000021",
  attribute = {
    wsType_Air,
    wsType_Helicopter,
    wsType_Battleplane,
    WSTYPE_PLACEHOLDER,
    "Attack helicopters"
  },
  Categories = {},
  length = 0.5,
  height = 0.5,
  rotor_height = 2.7,
  rotor_diameter = 10.5,
  blades_number = 3,
  blade_area = 1.8375,
  rotor_RPM = 387,
  engines_count = 1,
  blade_chord = 0.35,
  rotor_MOI = 4100,
  rotor_pos = {
    0,
    1.4,
    0
  },
  thrust_correction = 0.55,
  fuselage_Cxa0 = 0.4,
  fuselage_Cxa90 = 3,
  fuselage_area = 1.4,
  centering = 0,
  tail_pos = {
    -5.934,
    0.583,
    0
  },
  tail_fin_area = 1.6,
  tail_stab_area = 0.6,
  M_empty = 1680,
  M_nominal = 1900,
  M_max = 2100,
  M_fuel_max = 416.33,
  V_max = 100,
  V_max_cruise = 80,
  Vy_max = 14.6,
  H_stat_max_L = 5070,
  H_max = 6000,
  H_stat_max = 3040,
  H_din_two_eng = 6000,
  H_din_one_eng = 6000,
  range = 735,
  flight_time_typical = 140,
  flight_time_maximum = 189,
  nose_gear_pos = {
    0.835,
    -0.06,
    0
  },
  main_gear_pos = {
    -0.434,
    -0.06,
    0.962
  },
  lead_stock_main = -0.1,
  lead_stock_support = -0.1,
  scheme = 0,
  fire_rate = 625,
  crew_size = 2,
  engines_nozzles = {
    {pos = {-0.191677104, 0.023482057, 0.222251325}, orientation = {0, 0, 0}, diameter = 0.05, engine_number = 1},
    {pos = {0.192382533, 0.023372546, 0.221867055}, orientation = {0, 0, 0}, diameter = 0.05, engine_number = 1},
    {pos = {-0.192925412, 0.023677831, -0.222244297}, orientation = {0, 0, 0}, diameter = 0.05, engine_number = 1},
    {pos = {0.192562592, 0.023712628, -0.220544118}, orientation = {0, 0, 0}, diameter = 0.05, engine_number = 1},
  },
  crew_members = {
    [1] = {
      ejection_seat_name = 0,
      drop_canopy_name = 0,
      pos = {
        0,
        0.01,
        0.02
      },
      ejection_order = 1,
      ejection_added_speed = {
        0,
        0,
        5
      },
      can_be_playable = true,
      role = "pilot",
      role_display_name = _("Pilot")
    },
    [2] = {
      ejection_seat_name = 0,
      drop_canopy_name = 0,
      pos = {
        0,
        0.01,
        -0.02
      },
      ejection_order = 2,
      ejection_added_speed = {
        0,
        0,
        -5
      },
      pilot_body_arg = 529,
      can_be_playable = true,
      role = "instructor",
      role_display_name = _("Instructor pilot")
    }
  },
  RCS = 0.01,
  detection_range_max = 0.5,
  IR_emission_coeff = 0.01,
  Vy_land_max = 12.8,
  Ny_max = 3.5,
   sound_name = "Aircrafts/Engines/FPMAVICK",
  engine_data = {
    power_take_off = 473,
    power_max = 473,
    power_WEP = 473,
    power_TH_k =
			{
				[1] = 	{12.535,	-278.03,	2052.6},
				[2] = 	{12.535,	-278.03,	2052.6},
				[3] = 	{12.535,	-278.03,	2052.6},
				[4] = 	{0,	-101.95,	1306},
			},
			SFC_k = 	{0,	-0.000241,	0.6733503},
			power_RPM_k = 	{-0.08639,	0.24277,	0.84175},
			power_RPM_min	=	9.1384,
     sound_name = "Aircrafts/Engines/FPMAVICK",
  },
  cannon_sight_type = 0,
  fires_pos = {
    [1] = {
      -0.049449711,
      0.098502591,
      0.000168802
    }
  },
  passivCounterm = {
    CMDS_Edit = false,
    ChaffNoEdit = true,
    SingleChargeTotal = 32,
    chaff = {
      default = 0,
      increment = 0,
      chargeSz = 0
    },
    flare = {
      default = 32,
      increment = 1,
      chargeSz = 1
    }
  },
  chaff_flare_dispenser = {
    [1] = {
      dir = {
        -0.153,
        0.05,
        -0.987
      },
      pos = {
        -0.144,
        0.306,
        -0.845
      }
    },
    [2] = {
      dir = {
        -0.153,
        0.05,
        0.987
      },
      pos = {
        -0.15,
        0.309,
        0.845
      }
    }
  },
  CanopyGeometry = makeHelicopterCanopyGeometry(LOOK_AVERAGE, LOOK_AVERAGE, LOOK_AVERAGE),
  Sensors = {
  },
  HumanRadio = {
    frequency = 124,
    editable = true,
    minFrequency = 118,
    maxFrequency = 143.975,
    modulation = MODULATION_AM
  },
  panelRadio = {
    [1] = {
      name = _("FM Radio"),
      range = {
        {min = 30, max = 87.975}
      },
      channels = {
        [1] = {
          name = _("Channel 1"),
          default = 30,
          modulation = _("FM")
        },
        [2] = {
          name = _("Channel 2"),
          default = 31,
          modulation = _("FM")
        },
        [3] = {
          name = _("Channel 3"),
          default = 32,
          modulation = _("FM")
        },
        [4] = {
          name = _("Channel 4"),
          default = 33,
          modulation = _("FM")
        },
        [5] = {
          name = _("Channel 5"),
          default = 40,
          modulation = _("FM")
        },
        [6] = {
          name = _("Channel 6"),
          default = 41,
          modulation = _("FM")
        },
        [7] = {
          name = _("Channel 0"),
          default = 42,
          modulation = _("FM")
        },
        [8] = {
          name = _("Channel RG"),
          default = 50,
          modulation = _("FM")
        }
      }
    }
  },
  EPLRS = true,
  Guns = {},
  Pylons = {

    pylon(1, 1, 0.05, 0.0, 0.0,
      {
        use_full_connector_position = false,

        arg = 308,
        arg_value = 1,
      },
      {
        {
          CLSID = "{TPG_FPV_AI_RC3_BLU108_4SKEET_STORE_72_DEMON}",

          DrawArgs = {{13, 1.0}},

          attach_point_position = {-0.0635, -0.080607, 0.0},
          attach_point_oriented = false,
          arg_value = 1,
          forbidden = {{station = 2}},
        },
        {
          CLSID = "{TPG_FPV_AI_RC3_ACCU_DROP_RGD5_FRONT_DEMON}",
          attach_point_position = {0.0, 0.0, 0.0},
          attach_point_oriented = false,
          arg_value = 1,
        },
        {
          CLSID = "{TPG_FPV_AI_RC3_ACCU_DROP_AT_MINE_DEMON}",

          attach_point_position = {-0.075, -0.025, 0.0},
          attach_point_oriented = false,
          arg_value = 1,
          forbidden = {
            {station = 2, loadout = {"{TPG_FPV_AI_RC3_ACCU_DROP_RGD5_REAR_DEMON}"}},
          },
        },
        {
          CLSID = "{TPG_FPV_AI_RC3_DEMON_CORE_SINGLE}",

          attach_point_position = {-0.05, -0.060908, 0.0},
          attach_point_oriented = false,
          arg_value = 1,
          DrawArgs = {{0, 0}},
          forbidden = {{station = 2}},
        },
      }
    ),

    pylon(2, 1, -0.0754, 0.0, 0.0,
      {
        use_full_connector_position = false,
      },
      {
        {
          CLSID = "{TPG_FPV_AI_RC3_ACCU_DROP_RGD5_REAR_DEMON}",
          attach_point_position = {0.0, 0.0, 0.0},
          attach_point_oriented = false,
          arg_value = 1,
          forbidden = {
            {station = 1, loadout = {"{TPG_FPV_AI_RC3_ACCU_DROP_AT_MINE_DEMON}", "{TPG_FPV_AI_RC3_BLU108_4SKEET_STORE_72_DEMON}", "{TPG_FPV_AI_RC3_DEMON_CORE_SINGLE}"}},
          },
        },
      }
    ),
  },
  Tasks = {
    aircraft_task(CAP),
    aircraft_task(AntishipStrike),
    aircraft_task(CAS),
    aircraft_task(GroundAttack),
    aircraft_task(AFAC),
    aircraft_task(Escort),
    aircraft_task(Reconnaissance)
  },
  DefaultTask = aircraft_task(CAS),

  Damage = verbose_to_dmg_properties({
    ["MAIN"] = {critical_damage = 2, args = {151}, deps_cells = {
      "COCKPIT", "WING_L_01", "WING_L_02", "WING_L_03", "WING_L_04"
    }},
    ["COCKPIT"] = {critical_damage = 4, args = {149}},
    ["WING_L_01"] = {critical_damage = 1, args = {152}},
    ["WING_L_02"] = {critical_damage = 1, args = {153}},
    ["WING_L_03"] = {critical_damage = 1, args = {154}},
    ["WING_L_04"] = {critical_damage = 1, args = {155}},
    ["Line_WING_L"] = {critical_damage = 7, args = {156}},
    ["Line_WING_R"] = {critical_damage = 7, args = {157}},
    ["Line_STABIL_L"] = {critical_damage = 7, args = {158}},
    ["Line_STABIL_R"] = {critical_damage = 7, args = {159}},
  }),

	DamageParts =
	{

	},

}
add_aircraft(TPG_FPV_AI)
