package com.qq.e.comm.managers;

import android.content.Context;
import android.os.Build;
import android.text.TextUtils;
import com.qq.e.ads.dfa.GDTAppDialogClickListener;
import com.qq.e.comm.managers.devtool.DevTools;
import com.qq.e.comm.managers.plugin.PM;
import com.qq.e.comm.util.GDTLogger;
import java.util.Map;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
/* loaded from: classes4.dex */
public class b implements IGDTAdManager {

    /* renamed from: g  reason: collision with root package name */
    public static final ExecutorService f56430g = Executors.newSingleThreadExecutor();

    /* renamed from: a  reason: collision with root package name */
    private volatile Boolean f56431a;

    /* renamed from: b  reason: collision with root package name */
    private volatile boolean f56432b;

    /* renamed from: c  reason: collision with root package name */
    private volatile Context f56433c;

    /* renamed from: d  reason: collision with root package name */
    private volatile PM f56434d;

    /* renamed from: e  reason: collision with root package name */
    private volatile DevTools f56435e;

    /* renamed from: f  reason: collision with root package name */
    private volatile String f56436f;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes4.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        private static b f56437a = new b(null);
    }

    private b() {
        this.f56431a = Boolean.FALSE;
        this.f56432b = false;
    }

    /* synthetic */ b(com.qq.e.comm.managers.a aVar) {
        this();
    }

    public static b b() {
        return a.f56437a;
    }

    public String a() {
        return this.f56436f;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized boolean b(Context context, String str) {
        if (Build.VERSION.SDK_INT < 14) {
            GDTLogger.e("GDTADManager初始化错误，SDK不支持Android 4.0以下版本");
            return false;
        } else if (this.f56431a.booleanValue()) {
            return true;
        } else {
            if (context == null || TextUtils.isEmpty(str)) {
                GDTLogger.e("GDTADManager初始化错误，context和appId不能为空");
                return false;
            }
            this.f56436f = str;
            this.f56433c = context.getApplicationContext();
            this.f56434d = new PM(this.f56433c, null);
            f56430g.submit(new com.qq.e.comm.managers.a(this));
            this.f56431a = Boolean.TRUE;
            return true;
        }
    }

    public PM c() {
        return this.f56434d;
    }

    public boolean d() {
        if (this.f56431a == null || !this.f56431a.booleanValue()) {
            GDTLogger.e("SDK 尚未初始化，请在 Application 中调用 GDTAdSdk.init() 初始化");
            return false;
        }
        return true;
    }

    @Override // com.qq.e.comm.managers.IGDTAdManager
    public String getBuyerId(Map<String, Object> map) {
        if (d()) {
            try {
                return this.f56434d.getPOFactory().getBuyerId(map);
            } catch (Exception e4) {
                GDTLogger.e("SDK 初始化异常", e4);
                return "";
            }
        }
        return "";
    }

    @Override // com.qq.e.comm.managers.IGDTAdManager
    public DevTools getDevTools() {
        if (this.f56435e == null) {
            this.f56435e = new DevTools();
        }
        return this.f56435e;
    }

    @Override // com.qq.e.comm.managers.IGDTAdManager
    public String getSDKInfo(String str) {
        if (d()) {
            try {
                return this.f56434d.getPOFactory().getSDKInfo(str);
            } catch (Exception e4) {
                GDTLogger.e("SDK 初始化异常", e4);
                return "";
            }
        }
        return "";
    }

    @Override // com.qq.e.comm.managers.IGDTAdManager
    public int showOpenOrInstallAppDialog(GDTAppDialogClickListener gDTAppDialogClickListener) {
        if (this.f56432b) {
            try {
                return this.f56434d.getPOFactory().showOpenOrInstallAppDialog(gDTAppDialogClickListener);
            } catch (Exception e4) {
                GDTLogger.e("SDK 初始化异常", e4);
                return 0;
            }
        }
        return 0;
    }
}
