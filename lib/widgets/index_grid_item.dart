import 'package:c_sikho/providers/theory.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../screens/c_sub_index_screen.dart';

class CIndexItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Theory theory = Provider.of<Theory>(context);
    return InkWell(
      onTap: () {
        Navigator.of(context).pushNamed(
          CSubIndexScreen.routeName,
          arguments: theory.id,
        );
      },
      splashColor: Theme.of(context).primaryColor,
      borderRadius: BorderRadius.circular(15),
      child: SizedBox(
        width: 250,
        height: 250,
        child: Stack(
          children: <Widget>[
            Container(
              height: 250,
              width: 250,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                  colors: [Color(0xffA084CA), Color(0xffBFACE0)],
                  begin: Alignment.topLeft,
                  end: Alignment.topRight,
                ),
                borderRadius: BorderRadius.circular(15),
                border: Border.all(
                    color: const Color(0xff645CAA),
                    width: 1.0,
                    style: BorderStyle.solid),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black54,
                    offset: Offset(
                      5.0,
                      5.0,
                    ),
                    blurRadius: 10.0,
                    spreadRadius: 2.0,
                  ), //BoxShadow
                  BoxShadow(
                    color: Colors.white,
                    offset: Offset(0.0, 0.0),
                    blurRadius: 0.0,
                    spreadRadius: 0.0,
                  ), //BoxShadow
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Text(
                  theory.title,
                  style: Theme.of(context).textTheme.titleSmall,
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(12.0),
              alignment: Alignment.bottomRight,
              child: theory.isQuizDone
                  ? const Icon(
                      Icons.check_circle_rounded,
                      size: 14,
                      color: const Color(0xff645CAA),
                    )
                  : const Icon(
                      Icons.radio_button_unchecked_rounded,
                      size: 14,
                    ),
            ),
          ],
        ),
      ),
    );
  }
}


// InkWell(
//       onTap: () {
//         Navigator.of(context).pushNamed(
//           CSubIndexScreen.routeName,
//           arguments: theory.id,
//         );
//       },
//       splashColor: Theme.of(context).primaryColor,
//       borderRadius: BorderRadius.circular(15),
//       child: Container(
//         padding: const EdgeInsets.all(15),
//         alignment: Alignment.center,
//         child: Text(
//           theory.isQuizDone?theory.score.toString():theory.title,
//           style: Theme.of(context).textTheme.titleSmall,
//           textAlign: TextAlign.center,
//         ),
//         decoration: BoxDecoration(
//           gradient: LinearGradient(
//             colors: [Color(0xffA084CA), Color(0xffBFACE0)],
//             begin: Alignment.topLeft,
//             end: Alignment.topRight,
//           ),
//           borderRadius: BorderRadius.circular(15),
//           border: Border.all(
//               color: Color(0xff645CAA), width: 1.0, style: BorderStyle.solid),
//           boxShadow: [
//             BoxShadow(
//               color: Colors.black54,
//               offset: const Offset(
//                 5.0,
//                 5.0,
//               ),
//               blurRadius: 10.0,
//               spreadRadius: 2.0,
//             ), //BoxShadow
//             BoxShadow(
//               color: Colors.white,
//               offset: const Offset(0.0, 0.0),
//               blurRadius: 0.0,
//               spreadRadius: 0.0,
//             ), //BoxShadow
//           ],
//         ),
//       ),
//     );