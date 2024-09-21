import 'package:flutter/material.dart';

class GardenDropdown<T> extends StatefulWidget {
  final List<T?> items;
  final T? model;
  final Function(T?) callback;

  const GardenDropdown({
    super.key,
    required this.items,
    required this.model,
    required this.callback,
  });

  @override
  State<GardenDropdown<T>> createState() => GardenDropdownState<T>();
}

class GardenDropdownState<T> extends State<GardenDropdown<T>> {
  T? item;

  @override
  void initState() {
    super.initState();
    item = widget.model;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: dropdownBoxDecoration,
      child: Theme(
        data: Theme.of(context).copyWith(
          canvasColor: Colors.white,
        ),
        child: DropdownButtonHideUnderline(
          child: ButtonTheme(
            alignedDropdown: true,
            child: DropdownButton<T>(
              onChanged: (T? value) {
                widget.callback(value);
                setState(() {
                  item = value;
                });
              },
              value: item,
              padding: const EdgeInsets.only(left: 12),
              isExpanded: true,
            
              items: widget.items.map<DropdownMenuItem<T>>(
                (T? item) {
                  return DropdownMenuItem<T>(
                    value: item as T,
                    child: Center(child: Text(item.toString())),
                  );
                },
              ).toList(),
            ),
          ),
        ),
      ),
    );
  }
}

final dropdownBoxDecoration = BoxDecoration(
  border: Border.all(color: const Color(0xFFAA8DD3), width: 1.5),
  borderRadius: const BorderRadius.all(Radius.circular(5)),
  color: Colors.white,
);
