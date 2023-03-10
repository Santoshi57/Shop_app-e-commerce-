import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fluttersample/presentation/home_page.dart';
import 'package:fluttersample/presentation/login_page.dart';

import '../providers/auth_provider.dart';



class StatusPage extends ConsumerWidget {

  @override
  Widget build(BuildContext context, ref) {
    final auth = ref.watch(authProvider);
    return Container(
           child: auth.user == null ? LoginPage(): HomePage(),
        );
  }
}
