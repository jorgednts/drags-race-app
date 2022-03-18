import 'package:flutter/material.dart';

import '../../domain/model/details/queen_details_model.dart';

class QueenDetailsPage extends StatefulWidget {
  const QueenDetailsPage({
    required this.queenID,
    Key? key,
  }) : super(key: key);

  final int queenID;

  @override
  State<QueenDetailsPage> createState() => _QueenDetailsPageState();
}

class _QueenDetailsPageState extends State<QueenDetailsPage> {
  @override
  Widget build(BuildContext context) => Container();
}
