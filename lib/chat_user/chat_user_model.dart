import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'chat_user_widget.dart' show ChatUserWidget;
import 'package:flutter/material.dart';

class ChatUserModel extends FlutterFlowModel<ChatUserWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
