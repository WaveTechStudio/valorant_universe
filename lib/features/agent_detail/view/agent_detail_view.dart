import 'package:flutter/material.dart';

import 'package:valorant_universe/features/agents/model/agents_response_model.dart';

class AgentsDetailView extends StatelessWidget {
  const AgentsDetailView({
    Key? key,
    required this.agent,
  }) : super(key: key);

  final AgentsResponseModel? agent;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
    );
  }
}
