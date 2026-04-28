import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '/backend/schema/structs/index.dart';
import '/auth/firebase_auth/auth_util.dart';

double? priceSummary(List<double>? prices) {
  // summarize a list of prices from the product list
  if (prices == null || prices.isEmpty) {
    return null;
  }
  return prices.reduce((value, element) => value + element);
}

int? getCartItemIndex(
  List<CartItemStruct>? cartList,
  DocumentReference? targetRef,
) {
  return cartList!.indexWhere((e) => e.itemRef == targetRef);
}

double? hitungHargaBaris(
  double? harga,
  int? jumlah,
) {
  if (harga == null || jumlah == null) {
    return 0.0;
  }

  return harga * jumlah;
}

int? tambahJumlahBarang(
  int? jumlahLama,
  int? jumlahBaru,
) {
  int lama = jumlahLama ?? 0;
  int baru = jumlahBaru ?? 0;

  return lama + baru;
}
