import 'package:cinema/screens/payment_screen.dart';
import 'package:flutter/material.dart';
import 'package:cinema/companents/cienma_seat2.dart';

import  '../screens/const.dart';

class BuyTicket extends StatefulWidget {
  final movie;

  const BuyTicket({required this.movie, Key? key}) : super(key: key);

  @override
  _BuyTicketState createState() => _BuyTicketState();

}

class _BuyTicketState extends State<BuyTicket> {
  int _selectedChairs = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF212429),

        title: Text(widget.movie,style:TextStyle(fontSize: 32, color: Colors.yellowAccent, ),),centerTitle: true,
      ),
      backgroundColor: Color(0xFF212429),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 150.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              //first row
            Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                margin: EdgeInsets.only(left: 25),
                child: Stack(
                  children: [
                    CienmaSeat(
                      isReserved: true,
                      onSelected: (isSelected) {
                        // Do nothing, since reserved seats cannot be selected
                      },
                    ),
                    Positioned(
                      top: 8,
                      left: 8,
                      child: Text(
                        '1A',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ),
              Stack(
                children: [
                  CienmaSeat(
                    isReserved: false,
                    onSelected: (isSelected) {
                      setState(() {
                        if (isSelected) {
                          _selectedChairs++;
                        } else {
                          _selectedChairs--;
                        }
                      });
                    },
                  ),
                  Positioned(
                    top: 8,
                    left: 8,
                    child: Text(
                      '2A',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ),
              Stack(
                children: [
                  CienmaSeat(
                    isReserved: false,
                    onSelected: (isSelected) {
                      setState(() {
                        if (isSelected) {
                          _selectedChairs++;
                        } else {
                          _selectedChairs--;
                        }
                      });
                    },
                  ),
                  Positioned(
                    top: 8,
                    left: 8,
                    child: Text(
                      '3A',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ),
              Stack(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 70),
                    child: CienmaSeat(
                      isReserved: false,
                      onSelected: (isSelected) {
                        setState(() {
                          if (isSelected) {
                            _selectedChairs++;
                          } else {
                            _selectedChairs--;
                          }
                        });
                      },
                    ),
                  ),
                  Positioned(
                    top: 8,
                    left: 81,
                    child: Text(
                      '4A',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ),
              Stack(
                children: [
                  CienmaSeat(
                    isReserved: true,
                    onSelected: (isSelected) {
                      // Do nothing, since reserved seats cannot be selected
                    },
                  ),
                  Positioned(
                    top: 8,
                    left: 8,
                    child: Text(
                      '5A',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ),
            ],
          ),
            //SeCEOND ROW
               SizedBox(height: 10),
            Container(margin: EdgeInsets.only(top: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(margin: EdgeInsets.only(left: 25),
                    child: Stack(
                      children: [
                        CienmaSeat(
                          isReserved: false,
                          onSelected: (isSelected) {
                            // Do nothing, since reserved seats cannot be selected
                          },
                        ),
                        Positioned(
                          top: 8,
                          left: 8,
                          child: Text(
                            '1B',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Stack(
                    children: [
                      CienmaSeat(
                        isReserved: false,
                        onSelected: (isSelected) {
                          setState(() {
                            if (isSelected) {
                              _selectedChairs++;
                            } else {
                              _selectedChairs--;
                            }
                          });
                        },
                      ),
                      Positioned(
                        top: 8,
                        left: 8,
                        child: Text(
                          '2B',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                  Stack(
                    children: [
                      CienmaSeat(
                        isReserved: true,
                        onSelected: (isSelected) {
                        },
                      ),
                      Positioned(
                        top: 8,
                        left: 8,
                        child: Text(
                          '3B',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                  Stack(
                    children: [
                      CienmaSeat(
                        isReserved: false,
                        onSelected: (isSelected) {
                          setState(() {
                            if (isSelected) {
                              _selectedChairs++;
                            } else {
                              _selectedChairs--;
                            }
                          });
                        },
                      ),
                      Positioned(
                        top: 8,
                        left: 8,
                        child: Text(
                          '4B',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ],
                  ),

                  Container(
                    margin: EdgeInsets.only(left: 50),
                    child: Stack(
                      children: [
                        CienmaSeat(
                          isReserved: false,
                          onSelected: (isSelected) {

                            setState(() {
                              if (isSelected) {
                                _selectedChairs++;
                              } else {
                                _selectedChairs--;
                              }
                            });
                          },
                        ),
                        Positioned(
                          top: 8,
                          left: 8,
                          child: Text(
                            '5B',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Stack(
                    children: [
                      CienmaSeat(
                        isReserved: false,
                        onSelected: (isSelected) {
                          setState(() {
                            if (isSelected) {
                              _selectedChairs++;
                            } else {
                              _selectedChairs--;
                            }
                          });
                        },
                      ),
                      Positioned(
                        top: 8,
                        left: 8,
                        child: Text(
                          '6B',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ],
                  ),Stack(
                    children: [
                      CienmaSeat(
                        isReserved: false,
                        onSelected: (isSelected) {
                          setState(() {
                            if (isSelected) {
                              _selectedChairs++;
                            } else {
                              _selectedChairs--;
                            }
                          });
                        },
                      ),
                      Positioned(
                        top: 8,
                        left: 8,
                        child: Text(
                          '7B',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
              //trird row
              Container(margin: EdgeInsets.only(top: 20),
                child: Row(

                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(margin: EdgeInsets.only(left: 25),
                      child: Stack(
                        children: [
                          CienmaSeat(
                            isReserved: true,
                            onSelected: (isSelected) {
                              // Do nothing, since reserved seats cannot be selected
                            },
                          ),
                          Positioned(
                            top: 8,
                            left: 8,
                            child: Text(
                              '1C',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Stack(
                      children: [
                        CienmaSeat(
                          isReserved: false,
                          onSelected: (isSelected) {
                            setState(() {
                              if (isSelected) {
                                _selectedChairs++;
                              } else {
                                _selectedChairs--;
                              }
                            });
                          },
                        ),
                        Positioned(
                          top: 8,
                          left: 8,
                          child: Text(
                            '2C',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                    Stack(
                      children: [
                        CienmaSeat(
                          isReserved: false,
                          onSelected: (isSelected) {
                            setState(() {
                              if (isSelected) {
                                _selectedChairs++;
                              } else {
                                _selectedChairs--;
                              }
                            });
                          },
                        ),
                        Positioned(
                          top: 8,
                          left: 8,
                          child: Text(
                            '3C',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                    Stack(
                      children: [
                        CienmaSeat(
                          isReserved: false,
                          onSelected: (isSelected) {
                            setState(() {
                              if (isSelected) {
                                _selectedChairs++;
                              } else {
                                _selectedChairs--;
                              }
                            });
                          },
                        ),
                        Positioned(
                          top: 8,
                          left: 8,
                          child: Text(
                            '4C',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ],
                    ),

                    Container(
                      margin: EdgeInsets.only(left: 50),
                      child: Stack(
                        children: [
                          CienmaSeat(
                            isReserved: false,
                            onSelected: (isSelected) {
                              setState(() {
                                if (isSelected) {
                                  _selectedChairs++;
                                } else {
                                  _selectedChairs--;
                                }
                              });
                            },
                          ),
                          Positioned(
                            top: 8,
                            left: 8,
                            child: Text(
                              '5C',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Stack(
                      children: [
                        CienmaSeat(
                          isReserved: true,
                          onSelected: (isSelected) {
                          },
                        ),
                        Positioned(
                          top: 8,
                          left: 8,
                          child: Text(
                            '6C',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ],
                    ),Stack(
                      children: [
                        CienmaSeat(
                          isReserved: true,
                          onSelected: (isSelected) {
                          },
                        ),
                        Positioned(
                          top: 8,
                          left: 8,
                          child: Text(
                            '7C',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              //fourth row
              Container(margin: EdgeInsets.only(top: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(margin: EdgeInsets.only(left: 25),
                      child: Stack(
                        children: [
                          CienmaSeat(
                            isReserved: false,
                            onSelected: (isSelected) {
                              setState(() {
                                if (isSelected) {
                                  _selectedChairs++;
                                } else {
                                  _selectedChairs--;
                                }
                              });
                            },
                          ),
                          Positioned(
                            top: 8,
                            left: 8,
                            child: Text(
                              '1D',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Stack(
                      children: [
                        CienmaSeat(
                          isReserved: false,
                          onSelected: (isSelected) {
                            setState(() {
                              if (isSelected) {
                                _selectedChairs++;
                              } else {
                                _selectedChairs--;
                              }
                            });
                          },
                        ),
                        Positioned(
                          top: 8,
                          left: 8,
                          child: Text(
                            '2D',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                    Stack(
                      children: [
                        CienmaSeat(
                          isReserved: true,
                          onSelected: (isSelected) {
                          },
                        ),
                        Positioned(
                          top: 8,
                          left: 8,
                          child: Text(
                            '3D',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                    Stack(
                      children: [
                        CienmaSeat(
                          isReserved: false,
                          onSelected: (isSelected) {
                            setState(() {
                              if (isSelected) {
                                _selectedChairs++;
                              } else {
                                _selectedChairs--;
                              }
                            });
                          },
                        ),
                        Positioned(
                          top: 8,
                          left: 8,
                          child: Text(
                            '4D',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ],
                    ),

                    Container(
                      margin: EdgeInsets.only(left: 50),
                      child: Stack(
                        children: [
                          CienmaSeat(
                            isReserved: false,
                            onSelected: (isSelected) {
                              setState(() {
                                if (isSelected) {
                                  _selectedChairs++;
                                } else {
                                  _selectedChairs--;
                                }
                              });
                            },
                          ),
                          Positioned(
                            top: 8,
                            left: 8,
                            child: Text(
                              '5D',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Stack(
                      children: [
                        CienmaSeat(
                          isReserved: true,
                          onSelected: (isSelected) {
                          },
                        ),
                        Positioned(
                          top: 8,
                          left: 8,
                          child: Text(
                            '6D',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ],
                    ),Stack(
                      children: [
                        CienmaSeat(
                          isReserved: false,
                          onSelected: (isSelected) {
                            setState(() {
                              if (isSelected) {
                                _selectedChairs++;
                              } else {
                                _selectedChairs--;
                              }
                            });
                          },
                        ),
                        Positioned(
                          top: 8,
                          left: 8,
                          child: Text(
                            '7D',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              //fifth row
              Container(margin: EdgeInsets.only(top: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(margin: EdgeInsets.only(left: 25),
                      child: Stack(
                        children: [
                          CienmaSeat(
                            isReserved: false,
                            onSelected: (isSelected) {
                              setState(() {
                                if (isSelected) {
                                  _selectedChairs++;
                                } else {
                                  _selectedChairs--;
                                }
                              });
                            },
                          ),
                          Positioned(
                            top: 8,
                            left: 8,
                            child: Text(
                              '1E',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Stack(
                      children: [
                        CienmaSeat(
                          isReserved: false,
                          onSelected: (isSelected) {
                            setState(() {
                              if (isSelected) {
                                _selectedChairs++;
                              } else {
                                _selectedChairs--;
                              }
                            });
                          },
                        ),
                        Positioned(
                          top: 8,
                          left: 8,
                          child: Text(
                            '2E',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                    Stack(
                      children: [
                        CienmaSeat(
                          isReserved: true,
                          onSelected: (isSelected) {
                          },
                        ),
                        Positioned(
                          top: 8,
                          left: 8,
                          child: Text(
                            '3E',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                    Stack(
                      children: [
                        CienmaSeat(
                          isReserved: false,
                          onSelected: (isSelected) {
                            setState(() {
                              if (isSelected) {
                                _selectedChairs++;
                              } else {
                                _selectedChairs--;
                              }
                            });
                          },
                        ),
                        Positioned(
                          top: 8,
                          left: 8,
                          child: Text(
                            '4E',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ],
                    ),

                    Container(
                      margin: EdgeInsets.only(left: 50),
                      child: Stack(
                        children: [
                          CienmaSeat(
                            isReserved: false,
                            onSelected: (isSelected) {
                              setState(() {
                                if (isSelected) {
                                  _selectedChairs++;
                                } else {
                                  _selectedChairs--;
                                }
                              });
                            },
                          ),
                          Positioned(
                            top: 8,
                            left: 8,
                            child: Text(
                              '5E',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Stack(
                      children: [
                        CienmaSeat(
                          isReserved: false,
                          onSelected: (isSelected) {
                            setState(() {
                              if (isSelected) {
                                _selectedChairs++;
                              } else {
                                _selectedChairs--;
                              }
                            });
                          },
                        ),
                        Positioned(
                          top: 8,
                          left: 8,
                          child: Text(
                            '6E',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ],
                    ),Stack(
                      children: [
                        CienmaSeat(
                          isReserved: false,
                          onSelected: (isSelected) {
                            setState(() {
                              if (isSelected) {
                                _selectedChairs++;
                              } else {
                                _selectedChairs--;
                              }
                            });
                          },
                        ),
                        Positioned(
                          top: 8,
                          left: 8,
                          child: Text(
                            '7E',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              //FINAL ROW
              Container(margin: EdgeInsets.only(top: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 25),
                      child: Stack(
                        children: [
                          CienmaSeat(
                            isReserved: true,
                            onSelected: (isSelected) {
                              setState(() {
                                if (isSelected) {
                                  _selectedChairs++;
                                } else {
                                  _selectedChairs--;
                                }
                              });                            },
                          ),
                          Positioned(
                            top: 8,
                            left: 8,
                            child: Text(
                              '1F',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Stack(
                      children: [
                        CienmaSeat(
                          isReserved: false,
                          onSelected: (isSelected) {
                            setState(() {
                              if (isSelected) {
                                _selectedChairs++;
                              } else {
                                _selectedChairs--;
                              }
                            });
                          },
                        ),
                        Positioned(
                          top: 8,
                          left: 8,
                          child: Text(
                            '2F',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                    Stack(
                      children: [
                        CienmaSeat(
                          isReserved: false,
                          onSelected: (isSelected) {
                            setState(() {
                              if (isSelected) {
                                _selectedChairs++;
                              } else {
                                _selectedChairs--;
                              }
                            });
                          },
                        ),
                        Positioned(
                          top: 8,
                          left: 8,
                          child: Text(
                            '3F',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                    Stack(
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 30),
                          child: CienmaSeat(
                            isReserved: false,
                            onSelected: (isSelected) {
                              setState(() {
                                if (isSelected) {
                                  _selectedChairs++;
                                } else {
                                  _selectedChairs--;
                                }
                              });
                            },
                          ),
                        ),
                        Positioned(
                          top: 8,
                          left: 40,
                          child: Text(
                            '4F',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                    Stack(
                      children: [
                        CienmaSeat(
                          isReserved: true,
                          onSelected: (isSelected) {
                            setState(() {
                              if (isSelected) {
                                _selectedChairs++;
                              } else {
                                _selectedChairs--;
                              }
                            });
                          },
                        ),
                        Positioned(
                          top: 8,
                          left: 8,
                          child: Text(
                            '5F',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),


              Container(
                padding: const EdgeInsets.symmetric(horizontal: 50.0, vertical: 10.0),
                margin: EdgeInsets.only(top: 140),
                decoration: const BoxDecoration(
                  color: kActionColor,
                ),

                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Pay $_selectedChairs x 150 = ${_selectedChairs * 150} pounds',
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 14.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    ElevatedButton(

                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder:(context)=>PaymentScreen()));
                      },
                      child: Text('Pay'),
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(Colors.black),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}