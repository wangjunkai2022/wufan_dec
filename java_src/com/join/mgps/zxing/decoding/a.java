package com.join.mgps.zxing.decoding;

import android.content.Intent;
import android.net.Uri;
import com.google.zxing.BarcodeFormat;
import java.util.Arrays;
import java.util.List;
import java.util.Vector;
import java.util.regex.Pattern;
/* compiled from: DecodeFormatManager.java */
/* loaded from: classes4.dex */
final class a {

    /* renamed from: a  reason: collision with root package name */
    private static final Pattern f52502a = Pattern.compile(",");

    /* renamed from: b  reason: collision with root package name */
    static final Vector<BarcodeFormat> f52503b;

    /* renamed from: c  reason: collision with root package name */
    static final Vector<BarcodeFormat> f52504c;

    /* renamed from: d  reason: collision with root package name */
    static final Vector<BarcodeFormat> f52505d;

    /* renamed from: e  reason: collision with root package name */
    static final Vector<BarcodeFormat> f52506e;

    static {
        Vector<BarcodeFormat> vector = new Vector<>(5);
        f52503b = vector;
        vector.add(BarcodeFormat.UPC_A);
        vector.add(BarcodeFormat.UPC_E);
        vector.add(BarcodeFormat.EAN_13);
        vector.add(BarcodeFormat.EAN_8);
        Vector<BarcodeFormat> vector2 = new Vector<>(vector.size() + 4);
        f52504c = vector2;
        vector2.addAll(vector);
        vector2.add(BarcodeFormat.CODE_39);
        vector2.add(BarcodeFormat.CODE_93);
        vector2.add(BarcodeFormat.CODE_128);
        vector2.add(BarcodeFormat.ITF);
        Vector<BarcodeFormat> vector3 = new Vector<>(1);
        f52505d = vector3;
        vector3.add(BarcodeFormat.QR_CODE);
        Vector<BarcodeFormat> vector4 = new Vector<>(1);
        f52506e = vector4;
        vector4.add(BarcodeFormat.DATA_MATRIX);
    }

    private a() {
    }

    static Vector<BarcodeFormat> a(Intent intent) {
        String stringExtra = intent.getStringExtra("SCAN_FORMATS");
        return c(stringExtra != null ? Arrays.asList(f52502a.split(stringExtra)) : null, intent.getStringExtra("SCAN_MODE"));
    }

    static Vector<BarcodeFormat> b(Uri uri) {
        List<String> queryParameters = uri.getQueryParameters("SCAN_FORMATS");
        if (queryParameters != null && queryParameters.size() == 1 && queryParameters.get(0) != null) {
            queryParameters = Arrays.asList(f52502a.split(queryParameters.get(0)));
        }
        return c(queryParameters, uri.getQueryParameter("SCAN_MODE"));
    }

    private static Vector<BarcodeFormat> c(Iterable<String> iterable, String str) {
        if (iterable != null) {
            Vector<BarcodeFormat> vector = new Vector<>();
            try {
                for (String str2 : iterable) {
                    vector.add(BarcodeFormat.valueOf(str2));
                }
                return vector;
            } catch (IllegalArgumentException unused) {
            }
        }
        if (str != null) {
            if ("PRODUCT_MODE".equals(str)) {
                return f52503b;
            }
            if ("QR_CODE_MODE".equals(str)) {
                return f52505d;
            }
            if ("DATA_MATRIX_MODE".equals(str)) {
                return f52506e;
            }
            if ("ONE_D_MODE".equals(str)) {
                return f52504c;
            }
            return null;
        }
        return null;
    }
}
