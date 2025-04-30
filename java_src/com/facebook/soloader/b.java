package com.facebook.soloader;

import android.content.Context;
import android.content.pm.PackageManager;
import android.os.StrictMode;
import java.io.File;
import java.io.IOException;
import java.util.Collection;
import javax.annotation.Nullable;
/* compiled from: ApplicationSoSource.java */
/* loaded from: classes.dex */
public class b extends t {

    /* renamed from: j  reason: collision with root package name */
    private Context f13542j;

    /* renamed from: k  reason: collision with root package name */
    private int f13543k;

    /* renamed from: l  reason: collision with root package name */
    private c f13544l;

    public b(Context context, int i2) {
        Context applicationContext = context.getApplicationContext();
        this.f13542j = applicationContext;
        if (applicationContext == null) {
            this.f13542j = context;
        }
        this.f13543k = i2;
        this.f13544l = new c(new File(this.f13542j.getApplicationInfo().nativeLibraryDir), i2);
    }

    @Override // com.facebook.soloader.t
    public void a(Collection<String> collection) {
        this.f13544l.a(collection);
    }

    @Override // com.facebook.soloader.t
    public int c(String str, int i2, StrictMode.ThreadPolicy threadPolicy) throws IOException {
        return this.f13544l.c(str, i2, threadPolicy);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.facebook.soloader.t
    public void d(int i2) throws IOException {
        this.f13544l.d(i2);
    }

    @Override // com.facebook.soloader.t
    @Nullable
    public File e(String str) throws IOException {
        return this.f13544l.e(str);
    }

    public boolean f() throws IOException {
        try {
            File file = this.f13544l.f13547j;
            Context context = this.f13542j;
            Context createPackageContext = context.createPackageContext(context.getPackageName(), 0);
            File file2 = new File(createPackageContext.getApplicationInfo().nativeLibraryDir);
            if (file.equals(file2)) {
                return false;
            }
            StringBuilder sb = new StringBuilder();
            sb.append("Native library directory updated from ");
            sb.append(file);
            sb.append(" to ");
            sb.append(file2);
            int i2 = this.f13543k | 1;
            this.f13543k = i2;
            c cVar = new c(file2, i2);
            this.f13544l = cVar;
            cVar.d(this.f13543k);
            this.f13542j = createPackageContext;
            return true;
        } catch (PackageManager.NameNotFoundException e4) {
            throw new RuntimeException(e4);
        }
    }

    @Override // com.facebook.soloader.t
    public String toString() {
        return this.f13544l.toString();
    }
}
