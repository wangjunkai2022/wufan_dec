package com.umeng.commonsdk.internal.utils;

import java.io.BufferedReader;
import java.io.FileReader;
import java.io.InputStream;
/* compiled from: CpuUtil.java */
/* loaded from: classes4.dex */
public class d {

    /* compiled from: CpuUtil.java */
    /* loaded from: classes4.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        public String f61197a;

        /* renamed from: b  reason: collision with root package name */
        public String f61198b;

        /* renamed from: c  reason: collision with root package name */
        public int f61199c;

        /* renamed from: d  reason: collision with root package name */
        public String f61200d;

        /* renamed from: e  reason: collision with root package name */
        public String f61201e;

        /* renamed from: f  reason: collision with root package name */
        public String f61202f;

        /* renamed from: g  reason: collision with root package name */
        public String f61203g;

        /* renamed from: h  reason: collision with root package name */
        public String f61204h;

        /* renamed from: i  reason: collision with root package name */
        public String f61205i;

        /* renamed from: j  reason: collision with root package name */
        public String f61206j;

        /* renamed from: k  reason: collision with root package name */
        public String f61207k;

        /* renamed from: l  reason: collision with root package name */
        public String f61208l;
    }

    /* JADX WARN: Removed duplicated region for block: B:128:0x012f A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:133:0x0128 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:138:0x013e A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:142:0x0137 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.umeng.commonsdk.internal.utils.d.a a() {
        /*
            Method dump skipped, instructions count: 325
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.umeng.commonsdk.internal.utils.d.a():com.umeng.commonsdk.internal.utils.d$a");
    }

    public static String b() {
        byte[] bArr;
        String str = "";
        try {
            InputStream inputStream = new ProcessBuilder("/system/bin/cat", "/sys/devices/system/cpu/cpu0/cpufreq/cpuinfo_max_freq").start().getInputStream();
            while (inputStream.read(new byte[24]) != -1) {
                str = str + new String(bArr);
            }
            inputStream.close();
        } catch (Exception unused) {
        }
        return str.trim();
    }

    public static String c() {
        byte[] bArr;
        String str = "";
        try {
            InputStream inputStream = new ProcessBuilder("/system/bin/cat", "/sys/devices/system/cpu/cpu0/cpufreq/cpuinfo_min_freq").start().getInputStream();
            while (inputStream.read(new byte[24]) != -1) {
                str = str + new String(bArr);
            }
            inputStream.close();
        } catch (Exception unused) {
        }
        return str.trim();
    }

    public static String d() {
        BufferedReader bufferedReader;
        Throwable th;
        BufferedReader bufferedReader2 = null;
        try {
            bufferedReader = new BufferedReader(new FileReader("/sys/devices/system/cpu/cpu0/cpufreq/scaling_cur_freq"));
            try {
                String trim = bufferedReader.readLine().trim();
                try {
                    bufferedReader.close();
                    return trim;
                } catch (Throwable unused) {
                    return trim;
                }
            } catch (Exception unused2) {
                bufferedReader2 = bufferedReader;
                if (bufferedReader2 != null) {
                    try {
                        bufferedReader2.close();
                    } catch (Throwable unused3) {
                    }
                }
                return "";
            } catch (Throwable th2) {
                th = th2;
                if (bufferedReader != null) {
                    try {
                        bufferedReader.close();
                    } catch (Throwable unused4) {
                    }
                }
                throw th;
            }
        } catch (Exception unused5) {
        } catch (Throwable th3) {
            bufferedReader = null;
            th = th3;
        }
    }
}
