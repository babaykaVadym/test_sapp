import 'package:flutter/material.dart';
import 'package:widgets_library/core/styles/colors.dart';

class AppCompactSwitch extends StatefulWidget {
  final bool? value;
  final void Function(bool)? onChanged;
  final bool useOnlyValue;
  final double height;
  final double width;

  const AppCompactSwitch({
    super.key,
    this.value,
    this.onChanged,
    this.useOnlyValue = false,
    this.height = 32,
    this.width = 48,
  });

  @override
  State<StatefulWidget> createState() => AppCompactSwitchState();
}

class AppCompactSwitchState extends State<AppCompactSwitch> {
  bool _on = false;

  @override
  void initState() {
    super.initState();
    _on = widget.value ?? false;
  }

  @override
  void didUpdateWidget(covariant AppCompactSwitch oldWidget) {
    if (widget.useOnlyValue) {
      setState(() {
        _on = widget.value ?? false;
      });
    }

    super.didUpdateWidget(oldWidget);
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 400),
      curve: Curves.easeInOut,
      height: widget.height,
      width: widget.width,
      decoration: ShapeDecoration(
        shape: StadiumBorder(
          side: BorderSide(
            color:
                _on
                    ? Clr.of(context).primaryBlue40
                    : Clr.of(context).neutralGrey60,
            width: 2,
          ),
        ),
        color: _on ? Clr.of(context).primaryBlue40 : Colors.transparent,
      ),
      clipBehavior: Clip.antiAlias,
      child: Material(
        type: MaterialType.transparency,
        child: InkWell(
          onTap: () {
            setState(() {
              _on = !_on;
            });
            widget.onChanged?.call(_on);
          },
          splashColor: Colors.transparent,
          child: AnimatedAlign(
            duration: const Duration(milliseconds: 300),
            curve: Curves.easeInOut,
            alignment: _on ? Alignment.centerRight : Alignment.centerLeft,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 4),
              child: AnimatedContainer(
                duration: const Duration(milliseconds: 300),
                curve: Curves.easeInOut,
                height: _on ? 24 : 16,
                width: _on ? 24 : 16,
                decoration: ShapeDecoration(
                  shape: const CircleBorder(),
                  color: _on ? Colors.white : Clr.of(context).neutralGrey30,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
