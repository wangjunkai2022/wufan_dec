package com.join.mgps.Util;

import android.content.Context;
import android.os.Environment;
import java.io.File;
/* compiled from: Constants.java */
/* loaded from: classes.dex */
public class u {

    /* renamed from: a  reason: collision with root package name */
    public static final boolean f27842a = false;

    /* renamed from: b  reason: collision with root package name */
    public static final long f27843b = 83886080;

    /* renamed from: c  reason: collision with root package name */
    public static final long f27844c = 104857600;

    /* renamed from: d  reason: collision with root package name */
    public static String f27845d = Environment.getExternalStorageDirectory().getAbsolutePath();

    /* renamed from: e  reason: collision with root package name */
    public static String f27846e = f27845d + "/wufan91/";

    /* renamed from: f  reason: collision with root package name */
    public static String f27847f = f27845d + "/wufan91/";

    /* renamed from: g  reason: collision with root package name */
    public static String f27848g = f27845d + "/wufan91/";

    /* renamed from: h  reason: collision with root package name */
    public static String f27849h = f27845d + "/wufan91/cloudRecord/cloud";

    /* renamed from: i  reason: collision with root package name */
    public static String f27850i = f27845d + "/wufan91/cloudRecord/marcket";

    /* renamed from: j  reason: collision with root package name */
    public static String f27851j = f27845d + "/wufan91/Image/";

    /* renamed from: k  reason: collision with root package name */
    public static String f27852k = f27845d + "/wufan91/.cache/";

    /* renamed from: l  reason: collision with root package name */
    public static String f27853l = f27852k + "avatar/";

    /* renamed from: m  reason: collision with root package name */
    public static String f27854m = f27852k + "crop/";

    /* renamed from: n  reason: collision with root package name */
    public static String f27855n = f27852k + "homePopupAd/";

    /* renamed from: o  reason: collision with root package name */
    public static String f27856o = Environment.getExternalStorageDirectory().getAbsolutePath() + "/Android/obb";

    /* renamed from: p  reason: collision with root package name */
    public static String f27857p = Environment.getExternalStorageDirectory().getAbsolutePath() + "/Android/data";

    /* renamed from: q  reason: collision with root package name */
    public static String f27858q = Environment.getExternalStorageDirectory().getAbsolutePath() + "/Android";

    /* renamed from: r  reason: collision with root package name */
    public static String f27859r = "x-cos-meta-md5,etag";

    /* renamed from: s  reason: collision with root package name */
    public static String f27860s = "com.papa91.arc.base";

    /* renamed from: t  reason: collision with root package name */
    public static final String f27861t = "10";

    public static File a() {
        return new File(f27854m, "temp_cropped.jpg");
    }

    public static File b(Context context) {
        File d4 = q1.d(context, null);
        if (d4 == null) {
            return new File(f27855n);
        }
        return new File(d4, "homePopupAd");
    }

    public static File c() {
        return new File(f27853l + "avatar.jpg");
    }

    public static File d(Context context) {
        File d4 = q1.d(context, null);
        if (d4 == null) {
            return new File(f27851j);
        }
        return new File(d4, "SplashImage");
    }

    public static void e(Context context) {
        if (context.getExternalFilesDir("") == null) {
            f27845d = Environment.getExternalStorageDirectory().getAbsolutePath();
        } else {
            f27845d = context.getExternalFilesDir("").getAbsolutePath();
        }
        f27846e = f27845d + "/wufan91/";
        f27847f = f27845d + "/wufan91/";
        f27848g = f27845d + "/wufan91/";
        f27849h = f27845d + "/wufan91/cloudRecord/cloud";
        f27850i = f27845d + "/wufan91/cloudRecord/marcket";
        f27851j = f27845d + "/wufan91/Image/";
        f27852k = f27845d + "/wufan91/.cache/";
        f27853l = f27852k + "avatar/";
        f27854m = f27852k + "crop/";
        f27855n = f27852k + "homePopupAd/";
        f27856o = Environment.getExternalStorageDirectory().getAbsolutePath() + "/Android/obb";
        f27857p = Environment.getExternalStorageDirectory().getAbsolutePath() + "/Android/data";
    }
}
