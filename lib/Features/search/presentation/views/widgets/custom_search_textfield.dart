import 'package:bookly/Features/search/presentation/manger/search_cubit/search_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomSearchTextfield extends StatelessWidget {
  const CustomSearchTextfield({super.key,});
   

  @override
  Widget build(BuildContext context) {
    return TextField(
    onSubmitted: (value)=>
    BlocProvider.of<SearchCubit>(context).fetchSearchBooks(userSearch: value),
    
      decoration: InputDecoration(
        //search bar when not active
        enabledBorder: buildOutlinedInputBorder(),
        //search bar when active
        focusedBorder: buildOutlinedInputBorder(),
        //UI of search bar
        hintText: 'search..',
        suffixIcon: IconButton(
          onPressed: () {},
          icon: const Opacity(
            opacity: .5,
            child: Icon(
              FontAwesomeIcons.magnifyingGlass,
              size: 25,
            ),
          ),
        ),
      ),
    );
  }

  OutlineInputBorder buildOutlinedInputBorder() {
    return OutlineInputBorder(
      borderSide: const BorderSide(
        color: Color(0xffC2C2C2),
      ),
      borderRadius: BorderRadius.circular(12),
    );
  }
}
