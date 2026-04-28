import '/auth/firebase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/dropdowns/modal_create_account/modal_create_account_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/flutter_flow/custom_functions.dart' as functions;
import '/index.dart';
import 'v_total_bayar_widget.dart' show VTotalBayarWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class VTotalBayarModel extends FlutterFlowModel<VTotalBayarWidget> {
  ///  State fields for stateful widgets in this component.

  // Stores action output result for [Backend Call - API (MidtransTransaction)] action in Button widget.
  ApiCallResponse? midtransResponse;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
