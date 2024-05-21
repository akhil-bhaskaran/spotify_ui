import 'package:flutter/material.dart';
import 'package:spotify/components/similar_pages.dart';
import 'package:spotify/pages/naming.dart';

class CreateAccPage extends StatefulWidget {
  const CreateAccPage({super.key});

  @override
  State<CreateAccPage> createState() => _CreateAccPageState();
}

class _CreateAccPageState extends State<CreateAccPage> {
  @override
  Widget build(BuildContext context) {
    return SimilarPages(
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const CreatePassword(),
              ));
        },
        info: 'You will need to confirm this eamil later',
        instructionText: "What's your email?");
  }
}

class CreatePassword extends StatelessWidget {
  const CreatePassword({super.key});

  @override
  Widget build(BuildContext context) {
    return SimilarPages(
      instructionText: 'Create a password',
      info: 'Use atleast 8 characters',
      onPressed: () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const Gender(),
            ));
      },
    );
  }
}

class Gender extends StatelessWidget {
  const Gender({super.key});

  @override
  Widget build(BuildContext context) {
    return SimilarPages(
      instructionText: "What's your gender?",
      info: '',
      onPressed: () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => Naming(),
            ));
      },
    );
  }
}
