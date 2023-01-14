import 'package:building_design_systems/shared/theme/app_colors.dart';
import 'package:building_design_systems/shared/widgets/buttons_widget.dart';
import 'package:building_design_systems/shared/widgets/text_fields_widget.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Building Design Systems')),
      body: Container(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            buildTitle("Buttons Components"),
            ButtonsWidget.primary(
              onTap: () {},
              title: 'Primary',
              icon: icon,
            ),

            ButtonsWidget.secondary(onTap: () {}, title: 'Secondary'),

            Row(
              children: [
                ButtonsWidget.primary(onTap: () {}, icon: icon),
                const SizedBox(width: 10),
                const ButtonsWidget.primary(
                  onTap: null,
                  title: 'Disabled',
                ),
              ],
            ),

            buildTitle("Text Fields Components"),
            TextFieldsWidget(
              controller: controller,
              label: 'Required and hint',
              isRequired: true,
              hint: 'Type something',
            ),

            TextFieldsWidget(
              controller: controller,
              label: 'Focused and Icon',
              suffixIcon: icon,
            ),
            
            TextFieldsWidget(
              controller: controller,
              label: 'Error',
              errorText: 'Error Message',
            ),
          ],
        ),
      ),
    );
  }

  final icon = const Icon(
    Icons.edit_rounded,
    color: AppColors.white,
  );

  buildTitle(String title) {
    return Column(
      children: [
        const SizedBox(height: 20),
        Text(
          title,
          style: Theme.of(context).textTheme.headline1,
        ),
      ],
    );
  }
}
