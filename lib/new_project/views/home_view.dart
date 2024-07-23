import 'package:basketball_counter_app/new_project/cubit/counter_cubit.dart';
import 'package:basketball_counter_app/new_project/cubit/counter_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeView extends StatelessWidget {
  HomeView({
    super.key,
  });


  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CounterCubit, CounterState>(
      listener: (context, state) {

      },
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.orange,
            title: const Text('points Counter'),
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    height: 500,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        const Text(
                          'Team A',
                          style: TextStyle(
                            fontSize: 32,
                          ),
                        ),
                        Text(
                          '${BlocProvider.of<CounterCubit>(context).teamAPoints}',
                          style: const TextStyle(
                            fontSize: 150,
                          ),
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.orange,
                            maximumSize: const Size(180, 80),
                          ),
                          onPressed: () {
                            BlocProvider.of<CounterCubit>(context)
                                .teamIncrement(team: 'A', buttonNumber: 1);
                          },
                          child: const Text(
                            'Add 1 point',
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.orange,
                            maximumSize: const Size(180, 80),
                          ),
                          onPressed: () {
                            BlocProvider.of<CounterCubit>(context)
                                .teamIncrement(team: 'A', buttonNumber: 2);
                          },
                          child: const Text(
                            'Add 2 point',
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.orange,
                            maximumSize: const Size(180, 80),
                          ),
                          onPressed: () {
                            BlocProvider.of<CounterCubit>(context)
                                .teamIncrement(team: 'A', buttonNumber: 3);
                          },
                          child: const Text(
                            'Add 3 point',
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 500,
                    child: VerticalDivider(
                      endIndent: 50,
                      indent: 50,
                      color: Colors.grey,
                      thickness: 1,
                    ),
                  ),
                  SizedBox(
                    height: 500,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        const Text(
                          'Team B',
                          style: TextStyle(
                            fontSize: 32,
                          ),
                        ),
                        Text(
                          '${BlocProvider.of<CounterCubit>(context).teamBPoints}',
                          style: const TextStyle(
                            fontSize: 150,
                          ),
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.orange,
                            maximumSize: const Size(180, 80),
                          ),
                          onPressed: () {
                            BlocProvider.of<CounterCubit>(context)
                                .teamIncrement(team: 'B', buttonNumber: 1);
                          },
                          child: const Text(
                            'Add 1 point',
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.orange,
                            maximumSize: const Size(180, 80),
                          ),
                          onPressed: () {
                            BlocProvider.of<CounterCubit>(context)
                                .teamIncrement(team: 'B', buttonNumber: 2);
                          },
                          child: const Text(
                            'Add 2 point',
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.orange,
                            maximumSize: const Size(180, 80),
                          ),
                          onPressed: () {
                            BlocProvider.of<CounterCubit>(context)
                                .teamIncrement(team: 'B', buttonNumber: 3);
                          },
                          child: const Text(
                            'Add 3 point',
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.orange,
                  maximumSize: const Size(180, 80),
                ),
                onPressed: () {},
                child: const Text(
                  'Reset',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.black,
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
