package com.ss.android.socialbase.downloader.constants;

import android.text.TextUtils;
import org.json.JSONObject;
/* compiled from: DownloadConstants.java */
/* loaded from: classes4.dex */
public class e {

    /* renamed from: a  reason: collision with root package name */
    public static volatile String f57871a = "";

    /* renamed from: b  reason: collision with root package name */
    public static volatile String f57872b = "";

    /* renamed from: c  reason: collision with root package name */
    public static volatile String f57873c = "";

    /* renamed from: d  reason: collision with root package name */
    public static long f57874d = 512000;

    /* renamed from: e  reason: collision with root package name */
    public static long f57875e = 50;

    /* renamed from: f  reason: collision with root package name */
    public static long f57876f = 5242880;

    /* renamed from: g  reason: collision with root package name */
    public static long f57877g = 31457280;

    /* renamed from: h  reason: collision with root package name */
    public static long f57878h = 10485760;

    /* renamed from: i  reason: collision with root package name */
    public static final JSONObject f57879i = new JSONObject();

    public static void a(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        f57871a = str;
    }
}
