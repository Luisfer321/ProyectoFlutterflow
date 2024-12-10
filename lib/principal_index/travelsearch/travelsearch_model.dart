import '/flutter_flow/flutter_flow_util.dart';
import 'travelsearch_widget.dart' show TravelsearchWidget;
import 'package:flutter/material.dart';

class TravelsearchModel extends FlutterFlowModel<TravelsearchWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for emailAddress widget.
  FocusNode? emailAddressFocusNode;
  TextEditingController? emailAddressTextController;
  String? Function(BuildContext, String?)? emailAddressTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    emailAddressFocusNode?.dispose();
    emailAddressTextController?.dispose();
  }
}
