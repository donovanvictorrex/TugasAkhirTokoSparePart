import '/flutter_flow/flutter_flow_util.dart';
import 'wholesale_widget.dart' show WholesaleWidget;
import 'package:flutter/material.dart';

class WholesaleModel extends FlutterFlowModel<WholesaleWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for productName widget.
  FocusNode? productNameFocusNode;
  TextEditingController? productNameTextController;
  String? Function(BuildContext, String?)? productNameTextControllerValidator;
  // State field(s) for description widget.
  FocusNode? descriptionFocusNode;
  TextEditingController? descriptionTextController;
  String? Function(BuildContext, String?)? descriptionTextControllerValidator;
  // State field(s) for Harga widget.
  FocusNode? hargaFocusNode;
  TextEditingController? hargaTextController;
  String? Function(BuildContext, String?)? hargaTextControllerValidator;
  // State field(s) for QTY widget.
  FocusNode? qtyFocusNode;
  TextEditingController? qtyTextController;
  String? Function(BuildContext, String?)? qtyTextControllerValidator;
  // State field(s) for supplier widget.
  FocusNode? supplierFocusNode;
  TextEditingController? supplierTextController;
  String? Function(BuildContext, String?)? supplierTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    productNameFocusNode?.dispose();
    productNameTextController?.dispose();

    descriptionFocusNode?.dispose();
    descriptionTextController?.dispose();

    hargaFocusNode?.dispose();
    hargaTextController?.dispose();

    qtyFocusNode?.dispose();
    qtyTextController?.dispose();

    supplierFocusNode?.dispose();
    supplierTextController?.dispose();
  }
}
