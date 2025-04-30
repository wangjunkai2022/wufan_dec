package com.sdk.f;

import android.content.Context;
import com.sdk.Unicorn.base.framework.bean.AInfo;
import com.sdk.Unicorn.base.framework.bean.PInfo;
import com.sdk.Unicorn.base.framework.bean.SInfo;
import com.sdk.Unicorn.base.framework.utils.app.AppUtils;
import com.sdk.Unicorn.base.module.config.BaseConfig;
import java.util.ArrayList;
/* loaded from: classes4.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    public static boolean f56634a = false;

    /* renamed from: b  reason: collision with root package name */
    public static String f56635b = "";

    /* renamed from: c  reason: collision with root package name */
    public static String f56636c = "";

    public static AInfo a(Context context) {
        String appMd5;
        AInfo aInfo = new AInfo();
        aInfo.setN(AppUtils.getAppLable(context));
        aInfo.setC(AppUtils.getVersionCode(context));
        aInfo.setV(AppUtils.getVersionName(context));
        if (f56634a) {
            aInfo.setPk(f56636c);
            appMd5 = f56635b;
        } else {
            aInfo.setPk(AppUtils.getPackageName(context));
            appMd5 = AppUtils.getAppMd5(context);
        }
        aInfo.setMd5(appMd5);
        return aInfo;
    }

    public static ArrayList a() {
        return new ArrayList();
    }

    public static PInfo b() {
        PInfo pInfo = new PInfo();
        pInfo.setOs("Android");
        return pInfo;
    }

    public static SInfo c() {
        SInfo sInfo = new SInfo();
        sInfo.setN(BaseConfig.f56508n);
        sInfo.setC(BaseConfig.f56507c);
        sInfo.setV(BaseConfig.f56509v);
        sInfo.setCm(BaseConfig.cm);
        return sInfo;
    }
}
