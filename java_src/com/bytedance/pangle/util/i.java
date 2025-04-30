package com.bytedance.pangle.util;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.res.AssetManager;
import android.content.res.Resources;
import android.os.Build;
import android.text.TextUtils;
import androidx.annotation.RequiresApi;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.bytedance.pangle.Zeus;
import com.bytedance.pangle.log.ZeusLogger;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
/* loaded from: classes2.dex */
public final class i {

    /* renamed from: a  reason: collision with root package name */
    private static String f10389a;

    public static List<String> a() {
        AssetManager assetManager;
        try {
            assetManager = (AssetManager) AssetManager.class.newInstance();
        } catch (Exception e4) {
            ZeusLogger.errReport(ZeusLogger.TAG_RESOURCES, "Execute 'AssetManager.class.newInstance()' failed. ", e4);
            assetManager = null;
        }
        return a(assetManager);
    }

    public static String b(AssetManager assetManager) {
        List<String> a4 = a(assetManager);
        StringBuilder sb = new StringBuilder("[");
        if (a4.size() > 0) {
            for (String str : a4) {
                sb.append(str);
                sb.append(" , ");
            }
            sb.delete(sb.lastIndexOf(" , "), sb.length());
        }
        sb.append("]");
        return sb.toString();
    }

    public static List<String> a(AssetManager assetManager) {
        ArrayList arrayList = new ArrayList();
        if (assetManager == null) {
            return arrayList;
        }
        try {
            if (h.e()) {
                Object[] objArr = (Object[]) MethodUtils.invokeMethod(assetManager, "getApkAssets", new Object[0]);
                if (objArr != null && objArr.length > 0) {
                    for (Object obj : objArr) {
                        arrayList.add((String) MethodUtils.invokeMethod(obj, "getAssetPath", new Object[0]));
                    }
                }
            } else {
                int intValue = ((Integer) MethodUtils.invokeMethod(assetManager, "getStringBlockCount", new Object[0])).intValue();
                for (int i2 = 0; i2 < intValue; i2++) {
                    try {
                        String str = (String) MethodUtils.invokeMethod(assetManager, "getCookieName", Integer.valueOf(i2 + 1));
                        if (!TextUtils.isEmpty(str)) {
                            arrayList.add(str);
                        }
                    } catch (IndexOutOfBoundsException unused) {
                    }
                }
            }
        } catch (Throwable th) {
            ZeusLogger.errReport(ZeusLogger.TAG_RESOURCES, "ResUtils GetAssetsPaths error. ", th);
        }
        return arrayList;
    }

    public static List<String> b() {
        ArrayList arrayList = new ArrayList();
        boolean z3 = false;
        if (h.b()) {
            try {
                Resources resources = Zeus.getAppApplication().getResources();
                arrayList.add(Zeus.getAppApplication().createPackageContext(resources.getString(resources.getIdentifier("android:string/config_webViewPackageName", TypedValues.Custom.S_STRING, q.a.f73954a)), 0).getApplicationInfo().sourceDir);
            } catch (Exception e4) {
                ZeusLogger.errReport(ZeusLogger.TAG_LOAD, "getWebViewPaths1 failed.", e4);
            }
        } else if (h.c()) {
            try {
                Object invokeStaticMethod = MethodUtils.invokeStaticMethod(Class.forName("android.webkit.WebViewFactory"), "getWebViewContextAndSetProvider", new Object[0]);
                int i2 = Build.VERSION.SDK_INT;
                if (i2 >= 29 || (i2 == 28 && Build.VERSION.PREVIEW_SDK_INT > 0)) {
                    z3 = true;
                }
                if (z3) {
                    Collections.addAll(arrayList, a(((Context) invokeStaticMethod).getApplicationInfo()));
                } else {
                    arrayList.add(((Context) invokeStaticMethod).getApplicationInfo().sourceDir);
                }
            } catch (Exception e5) {
                ZeusLogger.errReport(ZeusLogger.TAG_LOAD, "getWebViewPaths2 failed.", e5);
            }
        }
        return arrayList;
    }

    public static boolean a(AssetManager assetManager, String str) {
        try {
            if (h.e()) {
                Object[] objArr = (Object[]) MethodUtils.invokeMethod(assetManager, "getApkAssets", new Object[0]);
                if (objArr != null && objArr.length > 0) {
                    for (Object obj : objArr) {
                        if (TextUtils.equals((String) MethodUtils.invokeMethod(obj, "getAssetPath", new Object[0]), str)) {
                            return true;
                        }
                    }
                }
            } else {
                int intValue = ((Integer) MethodUtils.invokeMethod(assetManager, "getStringBlockCount", new Object[0])).intValue();
                int i2 = 0;
                while (i2 < intValue) {
                    i2++;
                    if (TextUtils.equals((String) MethodUtils.invokeMethod(assetManager, "getCookieName", Integer.valueOf(i2)), str)) {
                        return true;
                    }
                }
            }
        } catch (Throwable th) {
            ZeusLogger.errReport(ZeusLogger.TAG_RESOURCES, "containsPath error. ", th);
        }
        return false;
    }

    @RequiresApi(api = 21)
    private static String[] a(ApplicationInfo applicationInfo) {
        String[] strArr;
        try {
            strArr = (String[]) com.bytedance.pangle.a.b.a.a(ApplicationInfo.class, "resourceDirs").get(applicationInfo);
        } catch (Throwable th) {
            ZeusLogger.errReport(ZeusLogger.TAG_LOAD, "get resourceDirs failed.", th);
            strArr = new String[0];
        }
        String[][] strArr2 = {applicationInfo.splitSourceDirs, applicationInfo.sharedLibraryFiles, strArr};
        ArrayList arrayList = new ArrayList(10);
        String str = applicationInfo.sourceDir;
        if (str != null) {
            arrayList.add(str);
        }
        for (int i2 = 0; i2 < 3; i2++) {
            String[] strArr3 = strArr2[i2];
            if (strArr3 != null) {
                arrayList.addAll(Arrays.asList(strArr3));
            }
        }
        return (String[]) arrayList.toArray(new String[0]);
    }
}
