import 'package:base_template/bloc/user_bloc/user_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class UserListScreen extends StatefulWidget {
  const UserListScreen({Key? key}) : super(key: key);

  @override
  State<UserListScreen> createState() => _UserListScreenState();
}

class _UserListScreenState extends State<UserListScreen> {
  @override
  void didChangeDependencies() {
    BlocProvider.of<UserBloc>(context).add(GetUserList());
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('User List')),
      body: BlocBuilder<UserBloc, UserState>(
        builder: (context, state) {
          if (state.status == UserStatus.loading) {
            return const Center(child: CircularProgressIndicator());
          } else if (state.status == UserStatus.loaded) {
            return ListView.builder(
              itemCount: state.userList!.length,
              itemBuilder: (context, index) => ListTile(
                title: Text(state.userList![index].name!),
                subtitle: Text(state.userList![index].email!),
              ),
            );
          } else if (state.status == UserStatus.error) {
            return const Text('sumthing wong');
          } else {
            return const SizedBox.shrink();
          }
        },
      ),
    );
  }
}
