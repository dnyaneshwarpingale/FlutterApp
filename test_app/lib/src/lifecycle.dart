import 'package:flutter/material.dart';
class LifeCycle extends StatefulWidget{
  const LifeCycle({super.key});
  @override
  State createState(){
    
    print ("In create state");

     return _LifeCycleState();
  }
}
class _LifeCycleState extends State{
  @override
  void initState() {
    
    super.initState();
    print("In initState ");
  }

  @override
  void didChangeDependencies() {
    
    super.didChangeDependencies();
    print("In didChange dependencies");

  }

 @override
  void setState(VoidCallback fn) {
    
    super.setState(fn);
    print("In SetState");
  }
  @override
  void didUpdateWidget(covariant StatefulWidget oldWidget) {
    
    super.didUpdateWidget(oldWidget);
    print("In didUpdate");

  }
  @override
  void deactivate() {
    
    super.deactivate();
    print("in deactivate");
  }
  @override
  void dispose() {
    
    super.dispose();
    print("in dispose");
  }
  @override
  Widget build(BuildContext context){
    print(" In build method");
    return Scaffold();
  }
}