import 'package:flutter/material.dart';

class AuthAppBarWidget extends StatelessWidget implements PreferredSizeWidget{
  const AuthAppBarWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: IconButton(
        icon: const Icon(Icons.chevron_left_sharp,
        color: Colors.white,),
        onPressed: () => {Navigator.of(context).pop()},
      ),
      titleSpacing: 0,
      centerTitle: true,
      title: const Text(
        'Вход',
        style: TextStyle(color: Colors.white, fontSize: 25),
      ),
    );
  }
  
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
