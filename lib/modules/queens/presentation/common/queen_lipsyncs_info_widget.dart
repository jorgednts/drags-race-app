import 'package:flutter/material.dart';

import '../../domain/model/details/lipsync_model.dart';
import 'lipsync_card_widget.dart';

class QueenLipsyncsInfoWidget extends StatelessWidget {
  const QueenLipsyncsInfoWidget({
    required this.lipsyncs,
    Key? key,
  }) : super(key: key);

  final List<LipsyncModel> lipsyncs;

  @override
  Widget build(BuildContext context) => ListView.builder(
    padding: const EdgeInsets.only(top: 15),
        physics: const ScrollPhysics(),
        shrinkWrap: true,
        itemCount: lipsyncs.length,
        itemBuilder: (context, index) =>
            LipsyncCardWidget(lipsync: lipsyncs[index]),
      );
}
