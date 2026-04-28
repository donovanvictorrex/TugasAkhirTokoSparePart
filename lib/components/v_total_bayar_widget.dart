import '/auth/firebase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/backend.dart';
import '/dropdowns/modal_create_account/modal_create_account_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'v_total_bayar_model.dart';
export 'v_total_bayar_model.dart';

class VTotalBayarWidget extends StatefulWidget {
  const VTotalBayarWidget({
    super.key,
    this.parameter1,
    this.parameter2,
    this.parameter3,
    this.parameter4,
    int? totalBayar,
  }) : this.totalBayar = totalBayar ?? 0;

  final String? parameter1;
  final String? parameter2;
  final ShippingOptionsStruct? parameter3;
  final double? parameter4;

  /// total
  final int totalBayar;

  @override
  State<VTotalBayarWidget> createState() => _VTotalBayarWidgetState();
}

class _VTotalBayarWidgetState extends State<VTotalBayarWidget> {
  late VTotalBayarModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => VTotalBayarModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(16.0, 16.0, 16.0, 24.0),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Order Summary',
            style: FlutterFlowTheme.of(context).titleLarge.override(
                  fontFamily: FlutterFlowTheme.of(context).titleLargeFamily,
                  letterSpacing: 0.0,
                  useGoogleFonts:
                      !FlutterFlowTheme.of(context).titleLargeIsCustom,
                ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0.0, 4.0, 0.0, 12.0),
            child: Text(
              'Below is a list of your items.',
              style: FlutterFlowTheme.of(context).labelMedium.override(
                    fontFamily: FlutterFlowTheme.of(context).labelMediumFamily,
                    letterSpacing: 0.0,
                    useGoogleFonts:
                        !FlutterFlowTheme.of(context).labelMediumIsCustom,
                  ),
            ),
          ),
          Divider(
            height: 32.0,
            thickness: 2.0,
            color: FlutterFlowTheme.of(context).alternate,
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 24.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 12.0),
                  child: Text(
                    'Price Breakdown',
                    style: FlutterFlowTheme.of(context).labelMedium.override(
                          fontFamily:
                              FlutterFlowTheme.of(context).labelMediumFamily,
                          letterSpacing: 0.0,
                          useGoogleFonts:
                              !FlutterFlowTheme.of(context).labelMediumIsCustom,
                        ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 8.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Sub Total',
                        style: FlutterFlowTheme.of(context).bodySmall.override(
                              font: GoogleFonts.outfit(
                                fontWeight: FontWeight.normal,
                                fontStyle: FlutterFlowTheme.of(context)
                                    .bodySmall
                                    .fontStyle,
                              ),
                              color: FlutterFlowTheme.of(context).secondaryText,
                              fontSize: 14.0,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.normal,
                              fontStyle: FlutterFlowTheme.of(context)
                                  .bodySmall
                                  .fontStyle,
                            ),
                      ),
                      Text(
                        valueOrDefault<String>(
                          formatNumber(
                            functions.priceSummary(
                                FFAppState().cartPriceSummary.toList()),
                            formatType: FormatType.decimal,
                            decimalType: DecimalType.automatic,
                            currency: '\$',
                          ),
                          '0.00',
                        ),
                        textAlign: TextAlign.end,
                        style: FlutterFlowTheme.of(context).titleLarge.override(
                              fontFamily:
                                  FlutterFlowTheme.of(context).titleLargeFamily,
                              letterSpacing: 0.0,
                              useGoogleFonts: !FlutterFlowTheme.of(context)
                                  .titleLargeIsCustom,
                            ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 8.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Taxes',
                        style: FlutterFlowTheme.of(context).bodySmall.override(
                              font: GoogleFonts.outfit(
                                fontWeight: FontWeight.normal,
                                fontStyle: FlutterFlowTheme.of(context)
                                    .bodySmall
                                    .fontStyle,
                              ),
                              color: FlutterFlowTheme.of(context).secondaryText,
                              fontSize: 14.0,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.normal,
                              fontStyle: FlutterFlowTheme.of(context)
                                  .bodySmall
                                  .fontStyle,
                            ),
                      ),
                      Text(
                        valueOrDefault<String>(
                          formatNumber(
                            ((functions.priceSummary(
                                    FFAppState().cartPriceSummary.toList())!) *
                                0.085),
                            formatType: FormatType.decimal,
                            decimalType: DecimalType.automatic,
                            currency: '\$',
                          ),
                          '0.00',
                        ),
                        textAlign: TextAlign.end,
                        style: FlutterFlowTheme.of(context).bodyLarge.override(
                              fontFamily:
                                  FlutterFlowTheme.of(context).bodyLargeFamily,
                              letterSpacing: 0.0,
                              useGoogleFonts: !FlutterFlowTheme.of(context)
                                  .bodyLargeIsCustom,
                            ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 8.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Marketplace Fee',
                        style: FlutterFlowTheme.of(context).bodySmall.override(
                              font: GoogleFonts.outfit(
                                fontWeight: FontWeight.normal,
                                fontStyle: FlutterFlowTheme.of(context)
                                    .bodySmall
                                    .fontStyle,
                              ),
                              color: FlutterFlowTheme.of(context).secondaryText,
                              fontSize: 14.0,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.normal,
                              fontStyle: FlutterFlowTheme.of(context)
                                  .bodySmall
                                  .fontStyle,
                            ),
                      ),
                      Text(
                        valueOrDefault<String>(
                          formatNumber(
                            ((functions.priceSummary(
                                    FFAppState().cartPriceSummary.toList())!) *
                                0.03),
                            formatType: FormatType.decimal,
                            decimalType: DecimalType.automatic,
                            currency: '\$',
                          ),
                          '0.00',
                        ),
                        textAlign: TextAlign.end,
                        style: FlutterFlowTheme.of(context).bodyLarge.override(
                              fontFamily:
                                  FlutterFlowTheme.of(context).bodyLargeFamily,
                              letterSpacing: 0.0,
                              useGoogleFonts: !FlutterFlowTheme.of(context)
                                  .bodyLargeIsCustom,
                            ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 8.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Weight',
                        style: FlutterFlowTheme.of(context).bodySmall.override(
                              font: GoogleFonts.outfit(
                                fontWeight: FontWeight.normal,
                                fontStyle: FlutterFlowTheme.of(context)
                                    .bodySmall
                                    .fontStyle,
                              ),
                              color: FlutterFlowTheme.of(context).secondaryText,
                              fontSize: 14.0,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.normal,
                              fontStyle: FlutterFlowTheme.of(context)
                                  .bodySmall
                                  .fontStyle,
                            ),
                      ),
                      Text(
                        valueOrDefault<String>(
                          formatNumber(
                            ((functions.priceSummary(
                                    FFAppState().cartPriceSummary.toList())!) *
                                0.03),
                            formatType: FormatType.decimal,
                            decimalType: DecimalType.automatic,
                            currency: 'Kg ',
                          ),
                          '0.00',
                        ),
                        textAlign: TextAlign.end,
                        style: FlutterFlowTheme.of(context).bodyLarge.override(
                              fontFamily:
                                  FlutterFlowTheme.of(context).bodyLargeFamily,
                              letterSpacing: 0.0,
                              useGoogleFonts: !FlutterFlowTheme.of(context)
                                  .bodyLargeIsCustom,
                            ),
                      ),
                    ],
                  ),
                ),
                if (widget.parameter3 != null)
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 8.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Shipping',
                          style: FlutterFlowTheme.of(context)
                              .bodySmall
                              .override(
                                font: GoogleFonts.outfit(
                                  fontWeight: FontWeight.normal,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .bodySmall
                                      .fontStyle,
                                ),
                                color:
                                    FlutterFlowTheme.of(context).secondaryText,
                                fontSize: 14.0,
                                letterSpacing: 0.0,
                                fontWeight: FontWeight.normal,
                                fontStyle: FlutterFlowTheme.of(context)
                                    .bodySmall
                                    .fontStyle,
                              ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                4.0, 0.0, 0.0, 0.0),
                            child: Text(
                              widget.parameter1!,
                              style: FlutterFlowTheme.of(context)
                                  .bodySmall
                                  .override(
                                    font: GoogleFonts.outfit(
                                      fontWeight: FontWeight.normal,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodySmall
                                          .fontStyle,
                                    ),
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryText,
                                    fontSize: 14.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.normal,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .bodySmall
                                        .fontStyle,
                                  ),
                            ),
                          ),
                        ),
                        Text(
                          FFAppState().biayaOngkir.toString(),
                          textAlign: TextAlign.end,
                          style: FlutterFlowTheme.of(context)
                              .bodyLarge
                              .override(
                                fontFamily: FlutterFlowTheme.of(context)
                                    .bodyLargeFamily,
                                letterSpacing: 0.0,
                                useGoogleFonts: !FlutterFlowTheme.of(context)
                                    .bodyLargeIsCustom,
                              ),
                        ),
                      ].divide(SizedBox(width: 4.0)),
                    ),
                  ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 8.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Text(
                            'Total',
                            style: FlutterFlowTheme.of(context)
                                .titleMedium
                                .override(
                                  font: GoogleFonts.outfit(
                                    fontWeight: FontWeight.w500,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .titleMedium
                                        .fontStyle,
                                  ),
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryText,
                                  fontSize: 20.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.w500,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .titleMedium
                                      .fontStyle,
                                ),
                          ),
                          FlutterFlowIconButton(
                            borderColor: Colors.transparent,
                            borderRadius: 30.0,
                            borderWidth: 1.0,
                            buttonSize: 36.0,
                            icon: Icon(
                              Icons.info_outlined,
                              color: FlutterFlowTheme.of(context).secondaryText,
                              size: 18.0,
                            ),
                            onPressed: () {
                              print('IconButton pressed ...');
                            },
                          ),
                        ],
                      ),
                      if (widget.parameter3 == null)
                        Text(
                          valueOrDefault<String>(
                            formatNumber(
                              ((functions.priceSummary(FFAppState()
                                      .cartPriceSummary
                                      .toList())!)) +
                                  ((functions.priceSummary(FFAppState()
                                          .cartPriceSummary
                                          .toList())!) *
                                      0.085) +
                                  ((functions.priceSummary(FFAppState()
                                          .cartPriceSummary
                                          .toList())!) *
                                      0.03),
                              formatType: FormatType.decimal,
                              decimalType: DecimalType.automatic,
                              currency: '\$',
                            ),
                            '0.00',
                          ),
                          style: FlutterFlowTheme.of(context)
                              .displaySmall
                              .override(
                                fontFamily: FlutterFlowTheme.of(context)
                                    .displaySmallFamily,
                                letterSpacing: 0.0,
                                useGoogleFonts: !FlutterFlowTheme.of(context)
                                    .displaySmallIsCustom,
                              ),
                        ),
                      if (widget.parameter3 != null)
                        Text(
                          valueOrDefault<String>(
                            formatNumber(
                              ((functions.priceSummary(FFAppState()
                                      .cartPriceSummary
                                      .toList())!)) +
                                  ((functions.priceSummary(FFAppState()
                                          .cartPriceSummary
                                          .toList())!) *
                                      0.085) +
                                  ((functions.priceSummary(FFAppState()
                                          .cartPriceSummary
                                          .toList())!) *
                                      0.03) +
                                  FFAppState().biayaOngkir,
                              formatType: FormatType.decimal,
                              decimalType: DecimalType.automatic,
                              currency: 'Rp',
                            ),
                            '0.00',
                          ),
                          style: FlutterFlowTheme.of(context)
                              .displaySmall
                              .override(
                                fontFamily: FlutterFlowTheme.of(context)
                                    .displaySmallFamily,
                                letterSpacing: 0.0,
                                useGoogleFonts: !FlutterFlowTheme.of(context)
                                    .displaySmallIsCustom,
                              ),
                        ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          FFButtonWidget(
            onPressed: () async {
              if ((currentUserReference != null) &&
                  (widget.parameter3 != null)) {
                // createOrder
                _model.midtransResponse = await MidtransTransactionCall.call(
                  orderId:
                      'INV-${getCurrentTimestamp.millisecondsSinceEpoch.toString()}',
                  amount: valueOrDefault<int>(
                    (((functions.priceSummary(
                                FFAppState().cartPriceSummary.toList())!)) +
                            ((functions.priceSummary(
                                    FFAppState().cartPriceSummary.toList())!) *
                                0.085) +
                            ((functions.priceSummary(
                                    FFAppState().cartPriceSummary.toList())!) *
                                0.03) +
                            FFAppState().biayaOngkir)
                        .round(),
                    0,
                  ),
                );

                if ((_model.midtransResponse?.succeeded ?? true)) {
                  await launchURL(getJsonField(
                    (_model.midtransResponse?.jsonBody ?? ''),
                    r'''$.redirect_url''',
                  ).toString());
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text(
                        'Terjadi kesalahan, silakan coba lagi',
                        style: TextStyle(
                          color: FlutterFlowTheme.of(context).primaryText,
                        ),
                      ),
                      duration: Duration(milliseconds: 4000),
                      backgroundColor: FlutterFlowTheme.of(context).secondary,
                    ),
                  );
                }

                context.pushNamed(
                  SuccessPageWidget.routeName,
                  queryParameters: {
                    'orderTotal': serializeParam(
                      valueOrDefault<double>(
                        ((functions.priceSummary(
                                FFAppState().cartPriceSummary.toList())!)) +
                            ((functions.priceSummary(
                                    FFAppState().cartPriceSummary.toList())!) *
                                0.085) +
                            ((functions.priceSummary(
                                    FFAppState().cartPriceSummary.toList())!) *
                                0.02) +
                            (widget.parameter4!),
                        0.00,
                      ),
                      ParamType.double,
                    ),
                  }.withoutNulls,
                );

                await OrdersRecord.collection.doc().set({
                  ...createOrdersRecordData(
                    name: currentUserDisplayName,
                    amount: valueOrDefault<double>(
                      ((functions.priceSummary(
                              FFAppState().cartPriceSummary.toList())!)) +
                          ((functions.priceSummary(
                                  FFAppState().cartPriceSummary.toList())!) *
                              0.085) +
                          ((functions.priceSummary(
                                  FFAppState().cartPriceSummary.toList())!) *
                              0.03) +
                          (widget.parameter4!),
                      0.00,
                    ),
                    status: 'Finish',
                    tax: valueOrDefault<double>(
                      ((functions.priceSummary(
                              FFAppState().cartPriceSummary.toList())!) *
                          0.085),
                      0.00,
                    ),
                    createdAt: getCurrentTimestamp,
                    vendorName: '',
                    fee: valueOrDefault<double>(
                      ((functions.priceSummary(
                              FFAppState().cartPriceSummary.toList())!) *
                          0.03),
                      0.00,
                    ),
                    userPurchased: currentUserReference,
                    address: updateAddressStruct(
                      AddressStruct(
                        defaultAddress: false,
                      ),
                      clearUnsetFields: false,
                      create: true,
                    ),
                    shippingSelected: updateShippingOptionsStruct(
                      ShippingOptionsStruct(
                        shippingName: FFAppState().shipingselec,
                      ),
                      clearUnsetFields: false,
                      create: true,
                    ),
                  ),
                  ...mapToFirestore(
                    {
                      'itemsOrdered': FFAppState()
                          .mycart
                          .map((e) => e.itemRef)
                          .withoutNulls
                          .toList(),
                    },
                  ),
                });

                await TransactionsRecord.collection
                    .doc()
                    .set(createTransactionsRecordData(
                      name: currentUserDisplayName,
                      amount: valueOrDefault<double>(
                        ((functions.priceSummary(
                                FFAppState().cartPriceSummary.toList())!)) +
                            ((functions.priceSummary(
                                    FFAppState().cartPriceSummary.toList())!) *
                                0.085) +
                            ((functions.priceSummary(
                                    FFAppState().cartPriceSummary.toList())!) *
                                0.03) +
                            (widget.parameter4!),
                        0.00,
                      ),
                      status: 'Finish',
                      tax: valueOrDefault<double>(
                        ((functions.priceSummary(
                                FFAppState().cartPriceSummary.toList())!) *
                            0.085),
                        0.00,
                      ),
                      createdAt: getCurrentTimestamp,
                      vendorName: '',
                    ));
                FFAppState().cart = [];
                FFAppState().cartPriceSummary = [];
              } else {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text(
                      'You need to have an account!',
                      style: FlutterFlowTheme.of(context).titleMedium.override(
                            fontFamily:
                                FlutterFlowTheme.of(context).titleMediumFamily,
                            color: FlutterFlowTheme.of(context).primaryText,
                            letterSpacing: 0.0,
                            useGoogleFonts: !FlutterFlowTheme.of(context)
                                .titleMediumIsCustom,
                          ),
                    ),
                    duration: Duration(milliseconds: 4000),
                    backgroundColor: FlutterFlowTheme.of(context).secondary,
                  ),
                );
                await showModalBottomSheet(
                  isScrollControlled: true,
                  backgroundColor: Colors.transparent,
                  barrierColor: FlutterFlowTheme.of(context).accent4,
                  context: context,
                  builder: (context) {
                    return Padding(
                      padding: MediaQuery.viewInsetsOf(context),
                      child: ModalCreateAccountWidget(),
                    );
                  },
                ).then((value) => safeSetState(() {}));
              }

              safeSetState(() {});
            },
            text: 'Checkout Now',
            options: FFButtonOptions(
              width: double.infinity,
              height: 48.0,
              padding: EdgeInsets.all(0.0),
              iconPadding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
              color: FlutterFlowTheme.of(context).primary,
              textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                    fontFamily: FlutterFlowTheme.of(context).titleSmallFamily,
                    letterSpacing: 0.0,
                    useGoogleFonts:
                        !FlutterFlowTheme.of(context).titleSmallIsCustom,
                  ),
              elevation: 2.0,
              borderSide: BorderSide(
                color: Colors.transparent,
                width: 1.0,
              ),
              borderRadius: BorderRadius.circular(50.0),
              hoverColor: FlutterFlowTheme.of(context).accent1,
              hoverBorderSide: BorderSide(
                color: FlutterFlowTheme.of(context).primary,
                width: 1.0,
              ),
              hoverTextColor: FlutterFlowTheme.of(context).primary,
            ),
          ),
        ],
      ),
    );
  }
}
