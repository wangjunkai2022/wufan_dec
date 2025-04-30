package com.umeng.commonsdk.statistics.common;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import com.umeng.commonsdk.framework.UMFrUtils;
import com.umeng.commonsdk.statistics.internal.PreferenceWrapper;
import java.io.File;
import java.io.FilenameFilter;
import java.util.Arrays;
import java.util.Locale;
/* compiled from: StoreHelper.java */
/* loaded from: classes4.dex */
public final class d {

    /* renamed from: a  reason: collision with root package name */
    private static d f61314a = null;

    /* renamed from: b  reason: collision with root package name */
    private static Context f61315b = null;

    /* renamed from: c  reason: collision with root package name */
    private static String f61316c = null;

    /* renamed from: e  reason: collision with root package name */
    private static final String f61317e = "mobclick_agent_user_";

    /* renamed from: f  reason: collision with root package name */
    private static final String f61318f = "mobclick_agent_header_";

    /* renamed from: g  reason: collision with root package name */
    private static final String f61319g = "mobclick_agent_cached_";

    /* renamed from: d  reason: collision with root package name */
    private a f61320d;

    /* compiled from: StoreHelper.java */
    /* loaded from: classes4.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        private final int f61321a;

        /* renamed from: b  reason: collision with root package name */
        private File f61322b;

        /* renamed from: c  reason: collision with root package name */
        private FilenameFilter f61323c;

        public a(Context context) {
            this(context, ".um");
        }

        public boolean a() {
            File[] listFiles = this.f61322b.listFiles();
            return listFiles != null && listFiles.length > 0;
        }

        public void b() {
            File[] listFiles = this.f61322b.listFiles(this.f61323c);
            if (listFiles == null || listFiles.length <= 0) {
                return;
            }
            for (File file : listFiles) {
                file.delete();
            }
        }

        public int c() {
            File[] listFiles = this.f61322b.listFiles(this.f61323c);
            if (listFiles == null || listFiles.length <= 0) {
                return 0;
            }
            return listFiles.length;
        }

        public a(Context context, String str) {
            this.f61321a = 10;
            this.f61323c = new FilenameFilter() { // from class: com.umeng.commonsdk.statistics.common.d.a.1
                @Override // java.io.FilenameFilter
                public boolean accept(File file, String str2) {
                    return str2.startsWith("um");
                }
            };
            File file = new File(context.getFilesDir(), str);
            this.f61322b = file;
            if (file.exists() && this.f61322b.isDirectory()) {
                return;
            }
            this.f61322b.mkdir();
        }

        public void a(b bVar) {
            File file;
            File[] listFiles = this.f61322b.listFiles(this.f61323c);
            if (listFiles != null && listFiles.length >= 10) {
                Arrays.sort(listFiles);
                int length = listFiles.length - 10;
                for (int i2 = 0; i2 < length; i2++) {
                    listFiles[i2].delete();
                }
            }
            if (listFiles == null || listFiles.length <= 0) {
                return;
            }
            bVar.a(this.f61322b);
            int length2 = listFiles.length;
            for (int i4 = 0; i4 < length2; i4++) {
                try {
                } catch (Throwable unused) {
                    file = listFiles[i4];
                }
                if (bVar.b(listFiles[i4])) {
                    file = listFiles[i4];
                    file.delete();
                }
            }
            bVar.c(this.f61322b);
        }

        public void a(byte[] bArr) {
            if (bArr == null || bArr.length == 0) {
                return;
            }
            try {
                HelperUtils.writeFile(new File(this.f61322b, String.format(Locale.US, "um_cache_%d.env", Long.valueOf(System.currentTimeMillis()))), bArr);
            } catch (Exception unused) {
            }
        }
    }

    /* compiled from: StoreHelper.java */
    /* loaded from: classes4.dex */
    public interface b {
        void a(File file);

        boolean b(File file);

        void c(File file);
    }

    public d(Context context) {
        this.f61320d = new a(context);
    }

    public static synchronized d a(Context context) {
        d dVar;
        synchronized (d.class) {
            f61315b = context.getApplicationContext();
            f61316c = context.getPackageName();
            if (f61314a == null) {
                f61314a = new d(context);
            }
            dVar = f61314a;
        }
        return dVar;
    }

    private SharedPreferences f() {
        Context context = f61315b;
        return context.getSharedPreferences(f61317e + f61316c, 0);
    }

    public String b() {
        SharedPreferences sharedPreferences = PreferenceWrapper.getDefault(f61315b);
        if (sharedPreferences != null) {
            return sharedPreferences.getString("st", null);
        }
        return null;
    }

    public boolean c() {
        return UMFrUtils.envelopeFileNumber(f61315b) > 0;
    }

    public String[] d() {
        try {
            SharedPreferences f4 = f();
            String string = f4.getString("au_p", null);
            String string2 = f4.getString("au_u", null);
            if (string != null && string2 != null) {
                return new String[]{string, string2};
            }
        } catch (Exception unused) {
        }
        return null;
    }

    public void e() {
        f().edit().remove("au_p").remove("au_u").commit();
    }

    public void a(int i2) {
        SharedPreferences sharedPreferences = PreferenceWrapper.getDefault(f61315b);
        if (sharedPreferences != null) {
            sharedPreferences.edit().putInt("vt", i2).commit();
        }
    }

    public int a() {
        SharedPreferences sharedPreferences = PreferenceWrapper.getDefault(f61315b);
        if (sharedPreferences != null) {
            return sharedPreferences.getInt("vt", 0);
        }
        return 0;
    }

    public void a(String str) {
        SharedPreferences sharedPreferences = PreferenceWrapper.getDefault(f61315b);
        if (sharedPreferences != null) {
            sharedPreferences.edit().putString("st", str).commit();
        }
    }

    public void a(String str, String str2) {
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
            return;
        }
        SharedPreferences.Editor edit = f().edit();
        edit.putString("au_p", str);
        edit.putString("au_u", str2);
        edit.commit();
    }
}
