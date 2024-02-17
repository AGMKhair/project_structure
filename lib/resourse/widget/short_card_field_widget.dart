import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:project_structure/architecture/base/basic_mixin.dart';
import 'package:project_structure/model/key_value_pair.dart';
import 'package:project_structure/resourse/style/size_manager.dart';
import 'package:project_structure/resourse/util/business_dictionary.dart';
import 'package:project_structure/resourse/util/regx_constant.dart';
import 'package:project_structure/resourse/util/string_dictionary.dart';
import 'package:project_structure/resourse/widget/space_widget.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';

class ShortCardFormField extends StatefulWidget {
  final String label;
  final TextEditingController controller;
  final bool? isVisible;
  final List<KeyValuePair>? suggestionList;

  ShortCardFormField({
    required this.controller,
    this.isVisible = true,
    this.label = 'Card Number (Last 4 digit)',
    this.suggestionList = const [],
  });

  @override
  State<ShortCardFormField> createState() => _ShortCardFormFieldState();
}

class _ShortCardFormFieldState extends State<ShortCardFormField> with BasicMixin {
  @override
  Widget build(BuildContext context) {
    return widget.isVisible!
        ? Column(
            children: <Widget>[
        /*      TypeAheadFormField(
                textFieldConfiguration: TextFieldConfiguration(
                  controller: widget.controller,
                  decoration: InputDecoration(
                    labelText: widget.label,
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(SizeManager.BOX_RADIUS)),
                    counterText: '',
                    prefix: Text('****   ****   ****   '),
                  ),
                  maxLength: BusinessDictionary.CARD_NUMBER_SHORT_LENGTH,
                  enableInteractiveSelection: false,
                  keyboardType: TextInputType.number,
                  inputFormatters: [FilteringTextInputFormatter.allow(RegExp(RegXConstant.NUMBER))],
                ),
                suggestionsCallback: (pattern) {
                  return widget.suggestionList!.where((KeyValuePair s) => s.key.startsWith(pattern.split(' ').join()));
                },
                itemBuilder: (context, KeyValuePair suggestion) {
                  return Column(
                    children: <Widget>[
                      ListTile(
                        title: Text(suggestion.key),
                        subtitle: suggestion.value != StringDictionary.NONE ? Text(suggestion.value) : null,
                        leading: Icon(Icons.credit_card, size: SizeManager.ICON_SIZE_SM),
                      ),
                      const Divider(height: 1),
                    ],
                  );
                },
                transitionBuilder: (context, suggestionsBox, controller) => suggestionsBox,
                onSuggestionSelected: (KeyValuePair suggestion) => widget.controller.text = suggestion.key,
                validator: (String? value) {
                  if (value!.isEmpty || value.trim().isEmpty) {
                    return 'Card number is required';
                  }
                  if (value.trim().length < BusinessDictionary.CARD_NUMBER_SHORT_LENGTH) {
                    return 'Please enter last four digit of your card';
                  }
                  return null;
                },
                hideOnEmpty: true,
              ),*/
              Space(),
            ],
          )
        : Container();
  }
}
