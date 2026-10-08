{
  "graph": {
    "cells": [
      {
        "position": {
          "x": 0,
          "y": 0
        },
        "size": {
          "height": 10,
          "width": 10
        },
        "type": "Statechart",
        "id": "00ffb6d1-d225-4bc0-8b73-7df9987f57b7",
        "attrs": {
          "name": {
            "text": "system_setup_menu Export"
          },
          "specification": {
            "text": "@EventDriven\n@SuperSteps(no)\n\ninterface:\n    in event ev_enter\n    in event ev_next\n    in event ev_escape\n    \n    var m1_power : boolean = true \n    var m1_speed : integer = 8 \n    var m1_spin : integer = 0\n    var m2_power : boolean = true \n    var m2_speed : integer = 8 \n    var m2_spin : integer = 0 \n    \n    //Variables del Motor\n    var motor_idx : integer = 0 \n    var parametro_idx : integer=0\n    //0=speed 1=power 2==spin"
          }
        },
        "z": 1
      },
      {
        "position": {
          "x": -27,
          "y": -156
        },
        "size": {
          "width": -1,
          "height": -1
        },
        "type": "State",
        "attrs": {
          "name": {
            "text": "St_Menu_2",
            "fontSize": 11
          }
        },
        "id": "46261408-2cd8-4c69-bcd3-2d00b35c92ce",
        "z": 19,
        "embeds": [
          "1824c343-023e-4f62-aa98-44b4fb711ea7"
        ]
      },
      {
        "position": {
          "x": 418,
          "y": -158
        },
        "size": {
          "height": 227,
          "width": 420
        },
        "type": "State",
        "attrs": {
          "name": {
            "text": "St_Menu_3",
            "fontSize": 11
          }
        },
        "id": "6c222f29-44e6-483d-ba7d-6a2118cfb8ce",
        "z": 25,
        "embeds": []
      },
      {
        "type": "Transition",
        "attrs": {},
        "source": {
          "id": "46261408-2cd8-4c69-bcd3-2d00b35c92ce"
        },
        "target": {
          "id": "6c222f29-44e6-483d-ba7d-6a2118cfb8ce"
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "ev_enter"
              }
            },
            "position": {}
          },
          {
            "attrs": {
              "label": {
                "text": "1"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "id": "d44cb2cb-6579-40f5-ace7-71189e29889b",
        "z": 26,
        "router": {
          "name": "orthogonal"
        },
        "vertices": []
      },
      {
        "position": {
          "x": 10,
          "y": -513
        },
        "size": {
          "width": -1,
          "height": -1
        },
        "type": "State",
        "attrs": {
          "name": {
            "text": "St_Main",
            "fontSize": 11
          }
        },
        "id": "341ed6ca-cbdd-4718-9393-1a79ee8cb773",
        "z": 27
      },
      {
        "position": {
          "x": 36,
          "y": -326
        },
        "size": {
          "width": -1,
          "height": -1
        },
        "type": "State",
        "attrs": {
          "name": {
            "text": "St_Menu_1",
            "fontSize": 11
          }
        },
        "id": "eb2193d6-4715-4c03-aaa5-1c45c33f80bc",
        "z": 29,
        "embeds": [
          "165a9248-517d-4a78-a47e-cb981791b158"
        ]
      },
      {
        "type": "Transition",
        "attrs": {},
        "source": {
          "id": "341ed6ca-cbdd-4718-9393-1a79ee8cb773"
        },
        "target": {
          "id": "eb2193d6-4715-4c03-aaa5-1c45c33f80bc"
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "ev_enter/ motor_idx=0"
              }
            },
            "position": {
              "distance": 0.468,
              "offset": -36.99999786376952,
              "angle": 0
            }
          },
          {
            "attrs": {
              "label": {
                "text": "1"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "id": "4525c37f-3be4-4122-996b-1fbfb1ebb9cc",
        "z": 30,
        "router": {
          "name": "orthogonal"
        },
        "vertices": []
      },
      {
        "type": "Transition",
        "attrs": {},
        "source": {
          "id": "eb2193d6-4715-4c03-aaa5-1c45c33f80bc"
        },
        "target": {
          "id": "46261408-2cd8-4c69-bcd3-2d00b35c92ce"
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "ev_enter/parametro_idx=0"
              }
            },
            "position": {
              "distance": 0.2950546657893528,
              "offset": -37.60106479249506,
              "angle": 0
            }
          },
          {
            "attrs": {
              "label": {
                "text": "1"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "id": "576a56e1-6996-4b15-9a71-7bafbdb2fa7f",
        "z": 30,
        "router": {
          "name": "orthogonal"
        },
        "vertices": [
          {
            "x": 44,
            "y": -220
          }
        ]
      },
      {
        "type": "Transition",
        "attrs": {},
        "source": {
          "id": "eb2193d6-4715-4c03-aaa5-1c45c33f80bc"
        },
        "target": {
          "id": "eb2193d6-4715-4c03-aaa5-1c45c33f80bc",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": "93.193%",
              "dy": "36.667%",
              "rotate": true
            }
          },
          "priority": true
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "ev_next/ motor_idx=(motor_idx+1)%2"
              }
            },
            "position": {
              "distance": 0.5885227351838228,
              "offset": 8,
              "angle": 0
            }
          },
          {
            "attrs": {
              "label": {
                "text": "2"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "id": "165a9248-517d-4a78-a47e-cb981791b158",
        "z": 31,
        "router": {
          "name": "orthogonal"
        },
        "vertices": [
          {
            "x": 225,
            "y": -266
          },
          {
            "x": 272,
            "y": -304
          }
        ],
        "parent": "eb2193d6-4715-4c03-aaa5-1c45c33f80bc"
      },
      {
        "type": "Transition",
        "attrs": {},
        "source": {
          "id": "46261408-2cd8-4c69-bcd3-2d00b35c92ce"
        },
        "target": {
          "id": "46261408-2cd8-4c69-bcd3-2d00b35c92ce",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": "49.77%",
              "dy": "88.333%",
              "rotate": true
            }
          },
          "priority": true
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "ev_next/ parametro_idx=(parametro_idx+1)%3"
              }
            },
            "position": {
              "distance": 0.6401286019249055,
              "offset": 32.931592503944145,
              "angle": 0
            }
          },
          {
            "attrs": {
              "label": {
                "text": "2"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "id": "1824c343-023e-4f62-aa98-44b4fb711ea7",
        "z": 33,
        "router": {
          "name": "orthogonal"
        },
        "vertices": [
          {
            "x": -14,
            "y": -47
          }
        ],
        "parent": "46261408-2cd8-4c69-bcd3-2d00b35c92ce"
      },
      {
        "type": "Transition",
        "attrs": {},
        "source": {
          "id": "46261408-2cd8-4c69-bcd3-2d00b35c92ce"
        },
        "target": {
          "id": "eb2193d6-4715-4c03-aaa5-1c45c33f80bc",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": "14.911%",
              "dy": "78.333%",
              "rotate": true
            }
          },
          "priority": true
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "ev_escape"
              }
            },
            "position": {
              "distance": 0.3683090458911439,
              "offset": -25,
              "angle": 0
            }
          },
          {
            "attrs": {
              "label": {
                "text": "3"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "id": "f109f88c-780c-4f78-ac9f-a5dba1f23962",
        "z": 34,
        "router": {
          "name": "orthogonal"
        },
        "vertices": [
          {
            "x": -27,
            "y": -247
          }
        ]
      },
      {
        "position": {
          "x": 564,
          "y": -357
        },
        "size": {
          "width": 15,
          "height": 15
        },
        "type": "Choice",
        "attrs": {},
        "id": "929200e7-3d11-4139-bf13-813aa26cee69",
        "z": 52
      },
      {
        "type": "Transition",
        "attrs": {},
        "source": {
          "id": "6c222f29-44e6-483d-ba7d-6a2118cfb8ce"
        },
        "target": {
          "id": "929200e7-3d11-4139-bf13-813aa26cee69"
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "[ev_next && parametro_idx==0]"
              }
            },
            "position": {
              "distance": 0.6501251164491849,
              "offset": -22.238015416913722,
              "angle": 0
            }
          },
          {
            "attrs": {
              "label": {
                "text": "1"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "id": "a403b6d3-5c17-4fcb-b707-d8b97d15c4c4",
        "z": 53,
        "router": {
          "name": "orthogonal"
        },
        "vertices": [
          {
            "x": 456,
            "y": -314
          }
        ]
      },
      {
        "position": {
          "x": 1034,
          "y": -68
        },
        "size": {
          "width": 15,
          "height": 15
        },
        "type": "Choice",
        "attrs": {},
        "id": "b10e1600-ac21-4e08-b78a-e07b02bb7fe1",
        "z": 62
      },
      {
        "type": "Transition",
        "attrs": {},
        "source": {
          "id": "6c222f29-44e6-483d-ba7d-6a2118cfb8ce"
        },
        "target": {
          "id": "b10e1600-ac21-4e08-b78a-e07b02bb7fe1"
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "[ev_next && parametro_idx==2]"
              }
            },
            "position": {}
          },
          {
            "attrs": {
              "label": {
                "text": "3"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "id": "3daf2c88-c347-4ab4-8e32-2d1e46093fe6",
        "z": 63,
        "router": {
          "name": "orthogonal"
        },
        "vertices": []
      },
      {
        "type": "Transition",
        "attrs": {},
        "source": {
          "id": "b10e1600-ac21-4e08-b78a-e07b02bb7fe1"
        },
        "target": {
          "id": "6c222f29-44e6-483d-ba7d-6a2118cfb8ce",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": "94.762%",
              "dy": "75.771%",
              "rotate": true
            }
          },
          "priority": true
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "[motor_idx==1]/ m2_spin=(m1_spin + 1)%2"
              }
            },
            "position": {}
          },
          {
            "attrs": {
              "label": {
                "text": "1"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "id": "902d47e7-c019-4760-9dfd-bbf527a8745d",
        "z": 63,
        "router": {
          "name": "orthogonal"
        },
        "vertices": []
      },
      {
        "position": {
          "x": 654,
          "y": 286
        },
        "size": {
          "width": 15,
          "height": 15
        },
        "type": "Choice",
        "attrs": {},
        "id": "465dd1c2-4efa-4311-be9e-4cbceef512c9",
        "z": 65
      },
      {
        "type": "Transition",
        "attrs": {},
        "source": {
          "id": "6c222f29-44e6-483d-ba7d-6a2118cfb8ce"
        },
        "target": {
          "id": "465dd1c2-4efa-4311-be9e-4cbceef512c9"
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "[ev_next && parametro_idx==1]"
              }
            },
            "position": {
              "distance": 0.4215686274509804,
              "offset": -26,
              "angle": 0
            }
          },
          {
            "attrs": {
              "label": {
                "text": "2"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "id": "f4b4540c-4ef7-4b16-b340-1a210f9ebd53",
        "z": 66,
        "router": {
          "name": "orthogonal"
        },
        "vertices": []
      },
      {
        "type": "Transition",
        "attrs": {},
        "source": {
          "id": "465dd1c2-4efa-4311-be9e-4cbceef512c9"
        },
        "target": {
          "id": "6c222f29-44e6-483d-ba7d-6a2118cfb8ce",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": "2.41%",
              "dy": "80.556%",
              "rotate": true
            }
          },
          "priority": true
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "[motor_idx==1] / m2_power=!m2_power "
              }
            },
            "position": {
              "distance": 0.4919105148296109,
              "offset": -26.75307940293472,
              "angle": 0
            }
          },
          {
            "attrs": {
              "label": {
                "text": "2"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "id": "f537677f-6006-431e-b4d3-dc8c0652e82f",
        "z": 66,
        "router": {
          "name": "orthogonal"
        },
        "vertices": [
          {
            "x": 445,
            "y": 290.53
          }
        ]
      },
      {
        "type": "Transition",
        "attrs": {},
        "source": {
          "id": "465dd1c2-4efa-4311-be9e-4cbceef512c9"
        },
        "target": {
          "id": "6c222f29-44e6-483d-ba7d-6a2118cfb8ce",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": "80.12%",
              "dy": "92.593%",
              "rotate": true
            }
          },
          "priority": true
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "/ m1_power=!m1_power "
              }
            },
            "position": {
              "distance": 0.4304824017909589,
              "offset": 49.934983055795556,
              "angle": 0
            }
          },
          {
            "attrs": {
              "label": {
                "text": "1"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "id": "e932db2f-78f9-4c86-a6d7-b331f4303bfe",
        "z": 66,
        "router": {
          "name": "orthogonal"
        },
        "vertices": [
          {
            "x": 942,
            "y": 293.53
          },
          {
            "x": 942,
            "y": 221
          }
        ]
      },
      {
        "position": {
          "x": 36,
          "y": -682
        },
        "size": {
          "height": 18,
          "width": 18
        },
        "type": "Entry",
        "entryKind": "Initial",
        "attrs": {},
        "id": "07e16992-47ab-47e7-9617-14751b23f227",
        "z": 67,
        "embeds": [
          "71b7e9ba-d582-47cb-9122-4fa7f2894c5a"
        ]
      },
      {
        "type": "NodeLabel",
        "label": true,
        "size": {
          "width": 15,
          "height": 15
        },
        "position": {
          "x": 36,
          "y": -667
        },
        "attrs": {
          "label": {
            "refX": "50%",
            "textAnchor": "middle",
            "refY": "50%",
            "textVerticalAnchor": "middle"
          }
        },
        "id": "71b7e9ba-d582-47cb-9122-4fa7f2894c5a",
        "z": 68,
        "parent": "07e16992-47ab-47e7-9617-14751b23f227"
      },
      {
        "type": "Transition",
        "attrs": {},
        "source": {
          "id": "07e16992-47ab-47e7-9617-14751b23f227"
        },
        "target": {
          "id": "341ed6ca-cbdd-4718-9393-1a79ee8cb773",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": "54.645%",
              "dy": "6.452%",
              "rotate": true
            }
          },
          "priority": true
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {},
            "position": {}
          },
          {
            "attrs": {
              "label": {
                "text": "1"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "id": "b294428e-8081-461d-88e4-3cced8c3ee42",
        "z": 69,
        "router": {
          "name": "orthogonal"
        },
        "vertices": []
      },
      {
        "position": {
          "x": 669,
          "y": -266
        },
        "size": {
          "width": 15,
          "height": 15
        },
        "type": "Choice",
        "attrs": {},
        "id": "fa227810-fcab-421c-834c-ea7f4382f00a",
        "z": 70
      },
      {
        "type": "Transition",
        "attrs": {},
        "source": {
          "id": "929200e7-3d11-4139-bf13-813aa26cee69"
        },
        "target": {
          "id": "fa227810-fcab-421c-834c-ea7f4382f00a"
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "[motor_idx==0]"
              }
            },
            "position": {}
          },
          {
            "attrs": {
              "label": {
                "text": "1"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "id": "c24efb26-076c-4942-895a-fdcec6bdef41",
        "z": 72,
        "router": {
          "name": "orthogonal"
        },
        "vertices": []
      },
      {
        "type": "Transition",
        "attrs": {},
        "source": {
          "id": "fa227810-fcab-421c-834c-ea7f4382f00a"
        },
        "target": {
          "id": "6c222f29-44e6-483d-ba7d-6a2118cfb8ce",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": "23.571%",
              "dy": "3.084%",
              "rotate": true
            }
          },
          "priority": true
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "[m1_speed<9] / m1_speed+=1"
              }
            },
            "position": {}
          },
          {
            "attrs": {
              "label": {
                "text": "1"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "id": "8a737b77-e5ad-478c-812f-32293fc91303",
        "z": 74,
        "router": {
          "name": "orthogonal"
        },
        "vertices": []
      },
      {
        "type": "Transition",
        "attrs": {},
        "source": {
          "id": "fa227810-fcab-421c-834c-ea7f4382f00a"
        },
        "target": {
          "id": "6c222f29-44e6-483d-ba7d-6a2118cfb8ce",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": "62.857%",
              "dy": "2.643%",
              "rotate": true
            }
          },
          "priority": true
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "/m1_speed=0"
              }
            },
            "position": {}
          },
          {
            "attrs": {
              "label": {
                "text": "2"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "id": "02a50b4a-4151-4b5a-a2e7-f644388c6481",
        "z": 75,
        "router": {
          "name": "orthogonal"
        },
        "vertices": []
      },
      {
        "position": {
          "x": 808,
          "y": -336
        },
        "size": {
          "width": 15,
          "height": 15
        },
        "type": "Choice",
        "attrs": {},
        "id": "ec73d771-c303-4f6d-b2d5-fc2742112769",
        "z": 76
      },
      {
        "type": "Transition",
        "attrs": {},
        "source": {
          "id": "929200e7-3d11-4139-bf13-813aa26cee69"
        },
        "target": {
          "id": "ec73d771-c303-4f6d-b2d5-fc2742112769"
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {},
            "position": {}
          },
          {
            "attrs": {
              "label": {
                "text": "2"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "id": "432ee3cb-a643-40e6-83ad-625f651304ae",
        "z": 77,
        "router": {
          "name": "orthogonal"
        },
        "vertices": [
          {
            "x": 690,
            "y": -391.47
          }
        ]
      },
      {
        "type": "Transition",
        "attrs": {},
        "source": {
          "id": "ec73d771-c303-4f6d-b2d5-fc2742112769"
        },
        "target": {
          "id": "6c222f29-44e6-483d-ba7d-6a2118cfb8ce",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": "80.714%",
              "dy": "3.524%",
              "rotate": true
            }
          },
          "priority": true
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "[m2_speed<9]/ m2_speed+=1"
              }
            },
            "position": {}
          },
          {
            "attrs": {
              "label": {
                "text": "1"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "id": "abc1f875-9523-4799-8063-45db82d34627",
        "z": 78,
        "router": {
          "name": "orthogonal"
        },
        "vertices": []
      },
      {
        "type": "Transition",
        "attrs": {},
        "source": {
          "id": "ec73d771-c303-4f6d-b2d5-fc2742112769"
        },
        "target": {
          "id": "6c222f29-44e6-483d-ba7d-6a2118cfb8ce",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": "96.19%",
              "dy": "8.37%",
              "rotate": true
            }
          },
          "priority": true
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "/m2_speed=0"
              }
            },
            "position": {}
          },
          {
            "attrs": {
              "label": {
                "text": "2"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "id": "26eda72f-78a1-4c10-93e1-56f1149718ff",
        "z": 79,
        "router": {
          "name": "orthogonal"
        },
        "vertices": [
          {
            "x": 937,
            "y": -328.47
          }
        ]
      },
      {
        "type": "Transition",
        "attrs": {},
        "source": {
          "id": "b10e1600-ac21-4e08-b78a-e07b02bb7fe1"
        },
        "target": {
          "id": "6c222f29-44e6-483d-ba7d-6a2118cfb8ce",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": "99.762%",
              "dy": "20.705%",
              "rotate": true
            }
          },
          "priority": true
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "/ m1_spin=(m1_spin + 1)%2"
              }
            },
            "position": {}
          },
          {
            "attrs": {
              "label": {
                "text": "2"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "id": "329a02a0-5235-44e2-b4c7-5f1ded6b2ecf",
        "z": 80,
        "router": {
          "name": "orthogonal"
        },
        "vertices": [
          {
            "x": 1042.5,
            "y": -111
          }
        ]
      },
      {
        "type": "Transition",
        "attrs": {},
        "source": {
          "id": "eb2193d6-4715-4c03-aaa5-1c45c33f80bc"
        },
        "target": {
          "id": "341ed6ca-cbdd-4718-9393-1a79ee8cb773",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": "87.988%",
              "dy": "96.774%",
              "rotate": true
            }
          },
          "priority": true
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "ev_escape"
              }
            },
            "position": {
              "distance": 0.5452541587619606,
              "offset": 26,
              "angle": 0
            }
          },
          {
            "attrs": {
              "label": {
                "text": "3"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "id": "01a3b982-aedb-465c-8121-c95536b2f3c6",
        "z": 81,
        "router": {
          "name": "orthogonal"
        },
        "vertices": [
          {
            "x": -68,
            "y": -336
          }
        ]
      },
      {
        "type": "Transition",
        "attrs": {},
        "source": {
          "id": "6c222f29-44e6-483d-ba7d-6a2118cfb8ce"
        },
        "target": {
          "id": "46261408-2cd8-4c69-bcd3-2d00b35c92ce",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": "91.667%",
              "dy": "93.333%",
              "rotate": true
            }
          },
          "priority": true
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "ev_escape"
              }
            },
            "position": {}
          },
          {
            "attrs": {
              "label": {
                "text": "4"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "id": "ce34ff2a-8033-44c1-ba3b-dcdf2eab84e5",
        "z": 82,
        "router": {
          "name": "orthogonal"
        },
        "vertices": []
      }
    ]
  },
  "genModel": {
    "generator": {
      "type": "create::c",
      "features": {
        "Outlet": {
          "targetProject": "",
          "targetFolder": "",
          "libraryTargetFolder": "",
          "skipLibraryFiles": "",
          "apiTargetFolder": ""
        },
        "LicenseHeader": {
          "licenseText": ""
        },
        "FunctionInlining": {
          "inlineReactions": false,
          "inlineEntryActions": false,
          "inlineExitActions": false,
          "inlineEnterSequences": false,
          "inlineExitSequences": false,
          "inlineChoices": false,
          "inlineEnterRegion": false,
          "inlineExitRegion": false,
          "inlineEntries": false
        },
        "OutEventAPI": {
          "observables": false,
          "getters": false
        },
        "IdentifierSettings": {
          "moduleName": "SystemSetupMenu",
          "statemachinePrefix": "systemSetupMenu",
          "separator": "_",
          "headerFilenameExtension": "h",
          "sourceFilenameExtension": "c"
        },
        "Tracing": {
          "enterState": false,
          "exitState": false,
          "generic": false
        },
        "Includes": {
          "useRelativePaths": false,
          "generateAllSpecifiedIncludes": false
        },
        "GeneratorOptions": {
          "userAllocatedQueue": false,
          "metaSource": false
        },
        "GeneralFeatures": {
          "timerService": false,
          "timerServiceTimeType": ""
        },
        "Debug": {
          "dumpSexec": false
        }
      }
    }
  }
}