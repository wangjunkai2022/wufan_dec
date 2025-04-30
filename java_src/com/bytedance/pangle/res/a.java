package com.bytedance.pangle.res;

import android.content.res.AssetManager;
import android.content.res.Resources;
import android.os.Build;
import android.text.TextUtils;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.bytedance.pangle.Zeus;
import com.bytedance.pangle.log.ZeusLogger;
import com.bytedance.pangle.util.FieldUtils;
import com.bytedance.pangle.util.MethodUtils;
import com.bytedance.pangle.util.h;
import com.bytedance.pangle.util.i;
import java.lang.reflect.Array;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
/* loaded from: classes2.dex */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    private static Map<String, Integer> f10304a = new HashMap();

    /* renamed from: b  reason: collision with root package name */
    private LinkedHashMap<String, Integer> f10305b;

    static {
        List<String> a4 = i.a();
        if (a4 == null || a4.size() <= 0) {
            return;
        }
        for (String str : a4) {
            f10304a.put(str, 0);
        }
    }

    public a() {
        LinkedHashMap<String, Integer> linkedHashMap = new LinkedHashMap<>();
        this.f10305b = linkedHashMap;
        linkedHashMap.put(Zeus.getAppApplication().getApplicationInfo().sourceDir, 0);
    }

    private static AssetManager b(AssetManager assetManager, String str, boolean z3) {
        int intValue;
        String str2 = "addAssetPath";
        String str3 = z3 ? "addAssetPathAsSharedLibrary" : "addAssetPath";
        int i2 = Build.VERSION.SDK_INT;
        if ((i2 >= 30 || (i2 == 29 && Build.VERSION.PREVIEW_SDK_INT > 0)) && !z3 && str.startsWith("/product/overlay/")) {
            str3 = "addOverlayPath";
        }
        Method accessibleMethod = MethodUtils.getAccessibleMethod(AssetManager.class, str3, String.class);
        if (accessibleMethod == null && z3) {
            accessibleMethod = MethodUtils.getAccessibleMethod(AssetManager.class, "addAssetPath", String.class);
            ZeusLogger.w(ZeusLogger.TAG_LOAD, "AssetManagerProcessor AssetManager.addAssetPath() invoke addAssetPathAsSharedLibrary failed. use addAssetPath.");
        } else {
            str2 = str3;
        }
        if (accessibleMethod != null) {
            int i4 = 3;
            while (true) {
                int i5 = i4 - 1;
                if (i4 < 0) {
                    break;
                }
                try {
                    intValue = ((Integer) accessibleMethod.invoke(assetManager, str)).intValue();
                } catch (Exception e4) {
                    ZeusLogger.errReport(ZeusLogger.TAG_LOAD, "AssetManagerProcessor invoke AssetManager.addAssetPath() failed. asSharedLibrary = " + z3 + ", methodName = " + str2, e4);
                }
                if (intValue != 0) {
                    ZeusLogger.i(ZeusLogger.TAG_LOAD, "AssetManagerProcessor invoke AssetManager.addAssetPath() success, cookie = " + intValue + ", path = " + str);
                    break;
                }
                ZeusLogger.errReport(ZeusLogger.TAG_LOAD, "AssetManagerProcessor invoke AssetManager.addAssetPath() failed, cookie = " + intValue + " " + str);
                i4 = i5;
            }
        } else {
            ZeusLogger.errReport(ZeusLogger.TAG_LOAD, "AssetManagerProcessor reflect AssetManager.addAssetPath() failed. addAssetPathMethod == null. asSharedLibrary = " + z3 + " methodName:" + str2);
        }
        return assetManager;
    }

    private static AssetManager c(AssetManager assetManager, String str, boolean z3) {
        int i2 = 3;
        Throwable th = null;
        int i4 = 3;
        while (true) {
            int i5 = i4 - 1;
            if (i4 < 0) {
                break;
            }
            try {
                synchronized (assetManager) {
                    int i6 = 0;
                    for (int i7 = 0; i7 < i2; i7++) {
                        if (h.b()) {
                            i6 = ((Integer) MethodUtils.invokeMethod(assetManager, "addAssetPathNative", new Object[]{str}, new Class[]{String.class})).intValue();
                        } else {
                            int i8 = Build.VERSION.SDK_INT;
                            if (i8 >= 24 && i8 <= 25) {
                                i6 = ((Integer) MethodUtils.invokeMethod(assetManager, "addAssetPathNative", new Object[]{str, Boolean.valueOf(z3)}, new Class[]{String.class, Boolean.TYPE})).intValue();
                            }
                        }
                        if (i6 != 0) {
                            break;
                        }
                    }
                    if (i6 != 0) {
                        Object readField = FieldUtils.readField(assetManager, "mStringBlocks");
                        int length = readField != null ? Array.getLength(readField) : 0;
                        int intValue = ((Integer) MethodUtils.invokeMethod(assetManager, "getStringBlockCount", new Object[0])).intValue();
                        Object newInstance = Array.newInstance(readField.getClass().getComponentType(), intValue);
                        for (int i9 = 0; i9 < intValue; i9++) {
                            if (i9 < length) {
                                Array.set(newInstance, i9, Array.get(readField, i9));
                            } else {
                                Array.set(newInstance, i9, MethodUtils.invokeConstructor(readField.getClass().getComponentType(), new Object[]{Long.valueOf(((Long) MethodUtils.invokeMethod(assetManager, "getNativeStringBlock", new Object[]{Integer.valueOf(i9)}, new Class[]{Integer.TYPE})).longValue()), Boolean.TRUE}, new Class[]{Long.TYPE, Boolean.TYPE}));
                            }
                        }
                        FieldUtils.writeField(assetManager, "mStringBlocks", newInstance);
                        ZeusLogger.d(ZeusLogger.TAG_LOAD, "AssetManagerProcessor appendAssetPathSafely success, sourceDir = ".concat(String.valueOf(str)));
                    }
                }
            } catch (Throwable th2) {
                th = th2;
                i4 = i5;
                i2 = 3;
            }
        }
        if (th != null && !TextUtils.equals(Build.BRAND.toLowerCase(), "samsung")) {
            ZeusLogger.errReport(ZeusLogger.TAG_LOAD, "AssetManagerProcessor appendAssetPathSafely failed, sourceDir = ".concat(String.valueOf(str)), th);
        }
        return assetManager;
    }

    public final AssetManager a(AssetManager assetManager, String str, boolean z3) {
        AssetManager a4;
        if (str.endsWith(".frro")) {
            ZeusLogger.w(ZeusLogger.TAG_LOAD, "AssetManagerProcessor updateAssetManager skip frro. ".concat(str));
            return assetManager;
        }
        if (h.a()) {
            int i2 = Build.VERSION.SDK_INT;
            if (i2 >= 21 && i2 <= 25) {
                a4 = c(assetManager, str, z3);
                if (!i.a(a4, str)) {
                    a4 = b(assetManager, str, z3);
                }
            } else {
                a4 = b(assetManager, str, z3);
            }
        } else {
            a4 = a(assetManager, str);
        }
        synchronized (this.f10305b) {
            this.f10305b.put(str, 0);
        }
        ZeusLogger.i(ZeusLogger.TAG_LOAD, "AssetManagerProcessor updateAssetManager, newAssetManager=" + a4 + ", assets=" + i.b(a4));
        return a4;
    }

    private AssetManager a(AssetManager assetManager, String str) {
        AssetManager assetManager2;
        List<String> a4 = i.a(assetManager);
        ArrayList<String> arrayList = new ArrayList();
        StringBuilder sb = new StringBuilder();
        for (String str2 : a4) {
            if (!f10304a.containsKey(str2) && !this.f10305b.containsKey(str2) && !str2.equals(str)) {
                arrayList.add(str2);
            }
        }
        ZeusLogger.d(ZeusLogger.TAG_LOAD, "AssetManagerProcessor newAssetManager, runtimeAdditionalAssets");
        try {
            if (assetManager.getClass().getName().equals("android.content.res.BaiduAssetManager")) {
                assetManager2 = (AssetManager) Class.forName("android.content.res.BaiduAssetManager").getConstructor(new Class[0]).newInstance(new Object[0]);
            } else {
                assetManager2 = (AssetManager) AssetManager.class.newInstance();
            }
            ZeusLogger.i(ZeusLogger.TAG_LOAD, "AssetManagerProcessor newAssetManager = ".concat(String.valueOf(assetManager2)));
            synchronized (this.f10305b) {
                for (Map.Entry<String, Integer> entry : this.f10305b.entrySet()) {
                    if (!f10304a.containsKey(entry.getKey())) {
                        sb.append(entry.getKey());
                        b(assetManager2, entry.getKey(), false);
                    }
                }
            }
            if (!sb.toString().contains(Zeus.getAppApplication().getApplicationInfo().sourceDir)) {
                b(assetManager2, Zeus.getAppApplication().getApplicationInfo().sourceDir, false);
                ZeusLogger.w(ZeusLogger.TAG_LOAD, "AssetManagerProcessor newAssetManager lost host path : " + f10304a.containsKey(Zeus.getAppApplication().getApplicationInfo().sourceDir));
            }
            sb.append(str);
            b(assetManager2, str, false);
            if (!arrayList.isEmpty()) {
                for (String str3 : arrayList) {
                    sb.append(str3);
                    b(assetManager2, str3, false);
                }
            }
            int i2 = Build.VERSION.SDK_INT;
            if ((i2 >= 21 && i2 < 23) && !sb.toString().toLowerCase().contains("webview")) {
                try {
                    Resources resources = Zeus.getAppApplication().getResources();
                    String str4 = Zeus.getAppApplication().createPackageContext(resources.getString(resources.getIdentifier("android:string/config_webViewPackageName", TypedValues.Custom.S_STRING, q.a.f73954a)), 0).getApplicationInfo().sourceDir;
                    if (!TextUtils.isEmpty(str4)) {
                        b(assetManager2, str4, false);
                    }
                } catch (Exception e4) {
                    ZeusLogger.errReport(ZeusLogger.TAG_LOAD, "AssetManagerProcessor newAssetManager appendAsset webview failed.", e4);
                }
            }
            assetManager = assetManager2;
        } catch (Exception e5) {
            ZeusLogger.errReport(ZeusLogger.TAG_LOAD, "AssetManagerProcessor newAssetManager failed.", e5);
            b(assetManager, str, false);
        }
        try {
            MethodUtils.invokeMethod(assetManager, "ensureStringBlocks", new Object[0]);
            ZeusLogger.i(ZeusLogger.TAG_LOAD, "AssetManagerProcessor ensureStringBlocks");
        } catch (Exception e6) {
            ZeusLogger.errReport(ZeusLogger.TAG_LOAD, "AssetManagerProcessor ensureStringBlocks failed.", e6);
        }
        return assetManager;
    }
}
