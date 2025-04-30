package com.join.mgps.mod.utils;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.res.AssetManager;
import android.content.res.Resources;
import android.os.Bundle;
import com.join.mgps.Util.u0;
import com.join.mgps.mod.bean.ModMeta;
import dalvik.system.DexClassLoader;
import java.io.File;
import java.lang.reflect.Constructor;
import java.lang.reflect.Method;
/* compiled from: ApkLoader.java */
/* loaded from: classes.dex */
public class b {

    /* renamed from: l  reason: collision with root package name */
    private static final String f51058l = "Plugin";

    /* renamed from: a  reason: collision with root package name */
    private String f51059a;

    /* renamed from: b  reason: collision with root package name */
    private Context f51060b;

    /* renamed from: c  reason: collision with root package name */
    private PackageInfo f51061c;

    /* renamed from: d  reason: collision with root package name */
    private DexClassLoader f51062d;

    /* renamed from: e  reason: collision with root package name */
    private AssetManager f51063e;

    /* renamed from: f  reason: collision with root package name */
    private Resources f51064f;

    /* renamed from: g  reason: collision with root package name */
    private boolean f51065g = false;

    /* renamed from: h  reason: collision with root package name */
    private String f51066h;

    /* renamed from: i  reason: collision with root package name */
    private String f51067i;

    /* renamed from: j  reason: collision with root package name */
    private String f51068j;

    /* renamed from: k  reason: collision with root package name */
    private Object f51069k;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ApkLoader.java */
    /* loaded from: classes4.dex */
    public class a extends DexClassLoader {
        a(String str, String str2, String str3, ClassLoader classLoader) {
            super(str, str2, str3, classLoader);
        }

        @Override // java.lang.ClassLoader
        public Class<?> loadClass(String str) throws ClassNotFoundException {
            try {
                return super.loadClass(str);
            } catch (ClassNotFoundException unused) {
                return ModMeta.class.getClassLoader().loadClass(str);
            }
        }
    }

    public b(Context context) {
        this.f51059a = null;
        this.f51060b = context;
        this.f51059a = context.getDir(d.f51078h, 0).getAbsolutePath();
    }

    private AssetManager a(String str) {
        try {
            AssetManager assetManager = (AssetManager) AssetManager.class.newInstance();
            assetManager.getClass().getMethod("addAssetPath", String.class).invoke(assetManager, str);
            return assetManager;
        } catch (Exception e4) {
            e4.printStackTrace();
            return null;
        }
    }

    private DexClassLoader b(String str) {
        File dir = this.f51060b.getDir("dex", 0);
        if (dir.exists()) {
            dir.delete();
        }
        dir.mkdirs();
        this.f51066h = dir.getAbsolutePath();
        return new a(str, this.f51066h, this.f51059a, this.f51060b.getClassLoader());
    }

    private Resources c(AssetManager assetManager) {
        Resources resources = this.f51060b.getResources();
        return new Resources(assetManager, resources.getDisplayMetrics(), resources.getConfiguration());
    }

    private void l(PackageInfo packageInfo, String str) {
        this.f51061c = packageInfo;
        this.f51062d = b(str);
        u0.e("Plugin", "dexClassLoader:" + this.f51062d);
        this.f51063e = a(str);
        u0.e("Plugin", "assetManager:" + this.f51063e);
        this.f51064f = c(this.f51063e);
        u0.e("Plugin", "resources:" + this.f51064f);
    }

    public AssetManager d() {
        return this.f51063e;
    }

    public DexClassLoader e() {
        return this.f51062d;
    }

    public String f() {
        return this.f51067i;
    }

    public String g() {
        return this.f51068j;
    }

    public Resources getResources() {
        return this.f51064f;
    }

    public PackageInfo h() {
        return this.f51061c;
    }

    public String i() {
        return this.f51061c.packageName;
    }

    public boolean j() {
        return this.f51061c != null && this.f51065g;
    }

    public void k(String str) {
        u0.e("Plugin", "loadApk " + str);
        PackageInfo packageArchiveInfo = this.f51060b.getPackageManager().getPackageArchiveInfo(str, 128);
        u0.e("Plugin", "loadApk packageInfo");
        if (packageArchiveInfo == null) {
            u0.e("Plugin", "loadApk get packageInfo failed");
            return;
        }
        this.f51067i = packageArchiveInfo.applicationInfo.metaData.getString("Plugin");
        this.f51068j = packageArchiveInfo.applicationInfo.metaData.getString(d.f51080j);
        u0.e("Plugin", "loadApk preparePluginEnv");
        l(packageArchiveInfo, str);
        this.f51065g = true;
    }

    public void m(String str, Bundle bundle) {
        try {
            u0.e("ApkLoader", "processCommand");
            Object obj = this.f51069k;
            if (obj == null) {
                return;
            }
            Method e4 = c.e(obj, "processCommand", String.class, Bundle.class);
            if (e4 != null) {
                e4.invoke(this.f51069k, str, bundle);
            }
            u0.e("ApkLoader", "processCommand invoked");
        } catch (Exception e5) {
            e5.printStackTrace();
        }
    }

    public Object n(ModMeta modMeta) {
        try {
            Class<?> f4 = c.f(e(), this.f51067i);
            u0.e("start mod", "constructor=" + f4);
            if (f4 == null) {
                return null;
            }
            String str = "";
            for (int i2 = 0; i2 < f4.getConstructors().length; i2++) {
                str = str + f4.getConstructors()[i2] + ";\n";
            }
            u0.e("start mod", "init \n" + str);
            Constructor<?> declaredConstructor = f4.getDeclaredConstructor(ModMeta.class);
            u0.e("start mod", "finish");
            Object newInstance = declaredConstructor.newInstance(modMeta);
            this.f51069k = newInstance;
            return newInstance;
        } catch (Exception e4) {
            e4.printStackTrace();
            return null;
        }
    }

    public b(Context context, String str) {
        this.f51059a = null;
        this.f51060b = context;
        this.f51059a = str;
    }
}
