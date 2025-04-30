package com.facebook.soloader;

import android.os.StrictMode;
import java.io.File;
import java.io.IOException;
import java.util.Arrays;
import java.util.Collection;
import javax.annotation.Nullable;
/* compiled from: DirectorySoSource.java */
/* loaded from: classes.dex */
public class c extends t {

    /* renamed from: l  reason: collision with root package name */
    public static final int f13545l = 1;

    /* renamed from: m  reason: collision with root package name */
    public static final int f13546m = 2;

    /* renamed from: j  reason: collision with root package name */
    protected final File f13547j;

    /* renamed from: k  reason: collision with root package name */
    protected final int f13548k;

    public c(File file, int i2) {
        this.f13547j = file;
        this.f13548k = i2;
    }

    private static String[] f(File file) throws IOException {
        boolean z3 = SoLoader.f13515c;
        if (z3) {
            Api18TraceUtils.a("SoLoader.getElfDependencies[" + file.getName() + "]");
        }
        try {
            String[] a4 = MinElf.a(file);
            if (z3) {
                Api18TraceUtils.b();
            }
            return a4;
        } catch (Throwable th) {
            if (SoLoader.f13515c) {
                Api18TraceUtils.b();
            }
            throw th;
        }
    }

    private void g(File file, int i2, StrictMode.ThreadPolicy threadPolicy) throws IOException {
        String[] f4 = f(file);
        StringBuilder sb = new StringBuilder();
        sb.append("Loading lib dependencies: ");
        sb.append(Arrays.toString(f4));
        for (String str : f4) {
            if (!str.startsWith(net.lingala.zip4j.util.e.F0)) {
                SoLoader.m(str, i2 | 1, threadPolicy);
            }
        }
    }

    @Override // com.facebook.soloader.t
    public void a(Collection<String> collection) {
        collection.add(this.f13547j.getAbsolutePath());
    }

    @Override // com.facebook.soloader.t
    public int c(String str, int i2, StrictMode.ThreadPolicy threadPolicy) throws IOException {
        return h(str, i2, this.f13547j, threadPolicy);
    }

    @Override // com.facebook.soloader.t
    @Nullable
    public File e(String str) throws IOException {
        File file = new File(this.f13547j, str);
        if (file.exists()) {
            return file;
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public int h(String str, int i2, File file, StrictMode.ThreadPolicy threadPolicy) throws IOException {
        File file2 = new File(file, str);
        if (!file2.exists()) {
            StringBuilder sb = new StringBuilder();
            sb.append(str);
            sb.append(" not found on ");
            sb.append(file.getCanonicalPath());
            return 0;
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append(str);
        sb2.append(" found on ");
        sb2.append(file.getCanonicalPath());
        if ((i2 & 1) != 0 && (this.f13548k & 2) != 0) {
            StringBuilder sb3 = new StringBuilder();
            sb3.append(str);
            sb3.append(" loaded implicitly");
            return 2;
        }
        if ((this.f13548k & 1) != 0) {
            g(file2, i2, threadPolicy);
        } else {
            StringBuilder sb4 = new StringBuilder();
            sb4.append("Not resolving dependencies for ");
            sb4.append(str);
        }
        try {
            SoLoader.f13516d.a(file2.getAbsolutePath(), i2);
            return 1;
        } catch (UnsatisfiedLinkError e4) {
            if (e4.getMessage().contains("bad ELF magic")) {
                return 3;
            }
            throw e4;
        }
    }

    @Override // com.facebook.soloader.t
    public String toString() {
        String name;
        try {
            name = String.valueOf(this.f13547j.getCanonicalPath());
        } catch (IOException unused) {
            name = this.f13547j.getName();
        }
        return getClass().getName() + "[root = " + name + " flags = " + this.f13548k + ']';
    }
}
