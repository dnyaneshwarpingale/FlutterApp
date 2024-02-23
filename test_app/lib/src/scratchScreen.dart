import 'package:flutter/material.dart';
import 'package:scratcher/scratcher.dart';

class ScratchCardScreen extends StatefulWidget {
  @override
  _ScratchCardScreenState createState() => _ScratchCardScreenState();
}

class _ScratchCardScreenState extends State<ScratchCardScreen> {
  GlobalKey<ScratcherState> _scratcherKey = GlobalKey<ScratcherState>();
  bool _isScratched = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Scratch Card'),
      ),
      body: Center(
        child: GestureDetector(
          onTap: () {
            if (!_isScratched) {
              _scratcherKey.currentState!.canScratch;
            }
          },
          child: Stack(
            children: [
              Scratcher(
                child: Container(
                  height: 200,
                  width: 200,
                ),
                key: _scratcherKey,
                brushSize: 40,
                threshold: 50,
                color: Colors.transparent, // Set color to transparent
                image: Image.asset("assets/reward2.4.jpg"),
                onChange: (value) {
                  if (value > 50) {
                    setState(() {
                      _isScratched = true;
                    });
                  }
                },
              ),
              if (_isScratched)
                Positioned.fill(
                  child: Center(
                    child: Image.asset("assets/rewards2.2.jpg"),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}





// import 'package:flutter/material.dart';
// import 'package:scratcher/scratcher.dart';

// class ScratchCardScreen extends StatefulWidget {
//   @override
//   _ScratchCardScreenState createState() => _ScratchCardScreenState();
// }

// class _ScratchCardScreenState extends State<ScratchCardScreen> {
//   GlobalKey<ScratcherState> _scratcherKey = GlobalKey<ScratcherState>();
//   bool _isScratched = false;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Scratch Card'),
//       ),
//       body: Center(
//         child: GestureDetector(
//           onTap: () {
//             if (!_isScratched) {
//               _scratcherKey.currentState!.checked;
//             }
//           },
//           child: Scratcher(
//             key: _scratcherKey,
//             brushSize: 40,
//             threshold: 50,
//             color: Colors.grey,
//             onThreshold: () {
//               setState(() {
//                 _isScratched = false;
//               });
//             },
//             child: _isScratched
//                 ? ClipRRect(
//                     borderRadius: BorderRadius.circular(10),
//                     child: Image.asset("assets/rewards2.2.jpg"),
                    
//                   )
//                 : ClipRRect(
//                     borderRadius: BorderRadius.circular(10),
//                     child: Image.asset("assets/reward2.4.jpg"),
//                   ),
//           ),
//         ),
//       ),
//     );
//   }
// }
