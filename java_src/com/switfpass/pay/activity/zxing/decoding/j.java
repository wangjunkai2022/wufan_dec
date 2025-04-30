package com.switfpass.pay.activity.zxing.decoding;

import com.google.zxing.BarcodeFormat;
import java.util.Vector;
import java.util.regex.Pattern;
/* loaded from: classes4.dex */
final class j {

    /* renamed from: a  reason: collision with root package name */
    private static Vector f58792a;

    /* renamed from: b  reason: collision with root package name */
    static final Vector f58793b;

    /* renamed from: c  reason: collision with root package name */
    static final Vector f58794c;

    /* renamed from: d  reason: collision with root package name */
    static final Vector f58795d;

    static {
        Pattern.compile(",");
        Vector vector = new Vector(5);
        f58792a = vector;
        vector.add(BarcodeFormat.UPC_A);
        f58792a.add(BarcodeFormat.UPC_E);
        f58792a.add(BarcodeFormat.EAN_13);
        f58792a.add(BarcodeFormat.EAN_8);
        f58792a.add(BarcodeFormat.RSS_14);
        Vector vector2 = new Vector(f58792a.size() + 4);
        f58793b = vector2;
        vector2.addAll(f58792a);
        vector2.add(BarcodeFormat.CODE_39);
        vector2.add(BarcodeFormat.CODE_93);
        vector2.add(BarcodeFormat.CODE_128);
        vector2.add(BarcodeFormat.ITF);
        Vector vector3 = new Vector(1);
        f58794c = vector3;
        vector3.add(BarcodeFormat.QR_CODE);
        Vector vector4 = new Vector(1);
        f58795d = vector4;
        vector4.add(BarcodeFormat.DATA_MATRIX);
    }
}
