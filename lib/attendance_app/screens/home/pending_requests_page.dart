import 'package:flutter/material.dart';

import '../../style/color.dart';
import '../../style/text_style.dart';

class PendingRequestsPage extends StatelessWidget {
  const PendingRequestsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: AppBar(
        backgroundColor: AppColors.white100,
        title: Text("Pending Requests",
            style: AppTextStyles.kSmall10SemiBoldTextStyleWhite),
      ),
      body: Column(
        children: [
          
        ],
      ),
    );
  }
}
