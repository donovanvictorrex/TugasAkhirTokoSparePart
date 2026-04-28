import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/firebase_storage/storage.dart';
import '/flutter_flow/flutter_flow_choice_chips.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/upload_data.dart';
import 'dart:ui';
import '/index.dart';
import 'create_product_widget.dart' show CreateProductWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CreateProductModel extends FlutterFlowModel<CreateProductWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  bool isDataUploading_uploadImageprodUsy = false;
  FFUploadedFile uploadedLocalFile_uploadImageprodUsy =
      FFUploadedFile(bytes: Uint8List.fromList([]), originalFilename: '');
  String uploadedFileUrl_uploadImageprodUsy = '';

  // State field(s) for Name widget.
  FocusNode? nameFocusNode;
  TextEditingController? nameTextController;
  String? Function(BuildContext, String?)? nameTextControllerValidator;
  // State field(s) for desc widget.
  FocusNode? descFocusNode;
  TextEditingController? descTextController;
  String? Function(BuildContext, String?)? descTextControllerValidator;
  // State field(s) for category widget.
  FormFieldController<List<String>>? categoryValueController;
  String? get categoryValue => categoryValueController?.value?.firstOrNull;
  set categoryValue(String? val) =>
      categoryValueController?.value = val != null ? [val] : [];
  // State field(s) for harga widget.
  FocusNode? hargaFocusNode;
  TextEditingController? hargaTextController;
  String? Function(BuildContext, String?)? hargaTextControllerValidator;
  // State field(s) for qty widget.
  FocusNode? qtyFocusNode;
  TextEditingController? qtyTextController;
  String? Function(BuildContext, String?)? qtyTextControllerValidator;
  // State field(s) for panjang widget.
  FocusNode? panjangFocusNode;
  TextEditingController? panjangTextController;
  String? Function(BuildContext, String?)? panjangTextControllerValidator;
  // State field(s) for lebar widget.
  FocusNode? lebarFocusNode;
  TextEditingController? lebarTextController;
  String? Function(BuildContext, String?)? lebarTextControllerValidator;
  // State field(s) for tinggi widget.
  FocusNode? tinggiFocusNode;
  TextEditingController? tinggiTextController;
  String? Function(BuildContext, String?)? tinggiTextControllerValidator;
  // State field(s) for berat widget.
  FocusNode? beratFocusNode;
  TextEditingController? beratTextController;
  String? Function(BuildContext, String?)? beratTextControllerValidator;
  bool isDataUploading_uploadedProductImage = false;
  FFUploadedFile uploadedLocalFile_uploadedProductImage =
      FFUploadedFile(bytes: Uint8List.fromList([]), originalFilename: '');
  String uploadedFileUrl_uploadedProductImage = '';

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    nameFocusNode?.dispose();
    nameTextController?.dispose();

    descFocusNode?.dispose();
    descTextController?.dispose();

    hargaFocusNode?.dispose();
    hargaTextController?.dispose();

    qtyFocusNode?.dispose();
    qtyTextController?.dispose();

    panjangFocusNode?.dispose();
    panjangTextController?.dispose();

    lebarFocusNode?.dispose();
    lebarTextController?.dispose();

    tinggiFocusNode?.dispose();
    tinggiTextController?.dispose();

    beratFocusNode?.dispose();
    beratTextController?.dispose();
  }
}
