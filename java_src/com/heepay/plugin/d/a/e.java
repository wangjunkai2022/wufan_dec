package com.heepay.plugin.d.a;

import android.webkit.WebView;
import java.lang.ref.WeakReference;
/* loaded from: classes2.dex */
public class e {

    /* renamed from: a  reason: collision with root package name */
    private int f16799a;

    /* renamed from: b  reason: collision with root package name */
    private boolean f16800b = true;

    /* renamed from: c  reason: collision with root package name */
    private WeakReference<WebView> f16801c;

    /* renamed from: d  reason: collision with root package name */
    private String f16802d;

    public e(WebView webView, String str, int i2) {
        this.f16801c = new WeakReference<>(webView);
        this.f16802d = str;
        this.f16799a = i2;
    }
}
