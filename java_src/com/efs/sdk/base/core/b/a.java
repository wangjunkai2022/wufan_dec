package com.efs.sdk.base.core.b;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.efs.sdk.base.core.controller.ControllerCenter;
import com.efs.sdk.base.core.f.f;
import java.io.File;
import java.util.Comparator;
import java.util.List;
/* loaded from: classes2.dex */
public final class a {

    /* renamed from: a */
    public boolean f11257a;

    /* renamed from: b */
    public boolean f11258b;

    /* renamed from: c */
    public com.efs.sdk.base.core.b.b f11259c;

    /* renamed from: d */
    public C0053a f11260d;

    /* renamed from: com.efs.sdk.base.core.b.a$a */
    /* loaded from: classes2.dex */
    public static class C0053a implements Comparator<File> {
        @Override // java.util.Comparator
        public final /* synthetic */ int compare(File file, File file2) {
            long lastModified = file.lastModified() - file2.lastModified();
            if (lastModified > 0) {
                return 1;
            }
            return lastModified == 0 ? 0 : -1;
        }
    }

    /* loaded from: classes2.dex */
    public static class b {

        /* renamed from: a */
        private static final a f11261a = new a((byte) 0);

        public static /* synthetic */ a a() {
            return f11261a;
        }
    }

    /* synthetic */ a(byte b4) {
        this();
    }

    public static void b(@NonNull File file) {
        com.efs.sdk.base.core.f.f fVar;
        if (!file.getName().startsWith("wa_")) {
            fVar = f.a.f11380a;
            fVar.f11378c.e();
        }
        com.efs.sdk.base.core.util.b.b(file);
    }

    public static void c(File file) {
        com.efs.sdk.base.core.f.f fVar;
        StringBuilder sb = new StringBuilder("file is expire: ");
        sb.append(file.getName());
        sb.append(", now is ");
        com.efs.sdk.base.core.a.a.a();
        sb.append(com.efs.sdk.base.core.a.a.b());
        com.efs.sdk.base.core.util.d.a("efs.cache", sb.toString());
        if (!file.getName().startsWith("wa_")) {
            fVar = f.a.f11380a;
            fVar.f11378c.d();
        }
        com.efs.sdk.base.core.util.b.b(file);
    }

    public final void a() {
        String[] list;
        File d4 = com.efs.sdk.base.core.util.a.d(ControllerCenter.getGlobalEnvStruct().mAppContext, ControllerCenter.getGlobalEnvStruct().getAppid());
        if (!d4.exists() || !d4.isDirectory() || (list = d4.list()) == null || list.length <= 0) {
            return;
        }
        for (String str : list) {
            if (!com.efs.sdk.base.core.util.e.a(ControllerCenter.getGlobalEnvStruct().mAppContext, str)) {
                File file = new File(d4, str);
                List<File> d5 = com.efs.sdk.base.core.util.b.d(file);
                if (!d5.isEmpty()) {
                    for (File file2 : d5) {
                        if (a(file2.getName())) {
                            c(file2);
                        } else {
                            com.efs.sdk.base.core.d.b b4 = com.efs.sdk.base.core.util.b.b(file2.getName());
                            if (b4 == null) {
                                b(file2);
                            } else {
                                e a4 = this.f11259c.a(b4.f11349a.f11343b);
                                if (a4 == null) {
                                    b(file2);
                                } else {
                                    a4.a(file2);
                                }
                            }
                        }
                    }
                }
                com.efs.sdk.base.core.util.b.b(file);
            }
        }
    }

    private a() {
        this.f11257a = false;
        this.f11258b = true;
        this.f11259c = new com.efs.sdk.base.core.b.b();
        this.f11260d = new C0053a();
    }

    public static boolean a(String str) {
        try {
            long parseLong = Long.parseLong(str.substring(str.lastIndexOf("_") + 1));
            com.efs.sdk.base.core.a.a.a();
            return Math.abs(com.efs.sdk.base.core.a.a.b() - parseLong) >= 604800000;
        } catch (Throwable unused) {
            return true;
        }
    }

    @Nullable
    public final com.efs.sdk.base.core.d.b a(File file) {
        try {
            if (file.exists()) {
                if (a(file.getName())) {
                    c(file);
                    return null;
                }
                com.efs.sdk.base.core.d.b b4 = com.efs.sdk.base.core.util.b.b(file.getName());
                if (b4 == null) {
                    b(file);
                    return null;
                }
                e a4 = this.f11259c.a(b4.f11349a.f11343b);
                if (a4 == null) {
                    b(file);
                    return null;
                } else if (a4.a(file, b4)) {
                    return b4;
                } else {
                    b(file);
                    return null;
                }
            }
            return null;
        } catch (Throwable th) {
            com.efs.sdk.base.core.util.d.a("efs.base", "efs.cache", th);
            b(file);
            return null;
        }
    }
}
