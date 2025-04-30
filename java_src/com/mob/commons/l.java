package com.mob.commons;

import android.text.TextUtils;
import com.mob.MobSDK;
import com.mob.tools.MobLog;
import com.mob.tools.utils.FileLocker;
import com.mob.tools.utils.ResHelper;
import java.io.File;
/* loaded from: classes4.dex */
public class l {

    /* renamed from: a  reason: collision with root package name */
    public static final String f53045a;

    /* renamed from: b  reason: collision with root package name */
    public static final String f53046b;

    /* renamed from: c  reason: collision with root package name */
    public static final String f53047c;

    /* renamed from: d  reason: collision with root package name */
    public static final String f53048d;

    /* renamed from: e  reason: collision with root package name */
    public static final String f53049e;

    /* renamed from: f  reason: collision with root package name */
    public static final String f53050f;

    /* renamed from: g  reason: collision with root package name */
    public static final String f53051g;

    /* renamed from: h  reason: collision with root package name */
    public static final Object f53052h;

    /* renamed from: i  reason: collision with root package name */
    public static final Object f53053i;

    /* renamed from: j  reason: collision with root package name */
    private static final String f53054j;

    static {
        String a4 = com.mob.commons.a.o.a("011_ehfdKmmh(fefdehekghSh");
        f53054j = a4;
        f53045a = a4 + ".mrlock";
        f53046b = a4 + com.mob.commons.a.o.a("0075fmXid]fefdehek");
        f53047c = a4 + com.mob.commons.a.o.a("011Bfmggfefdgdegfeflfdehek");
        f53048d = a4 + com.mob.commons.a.o.a("008Wfm4iZejeefefdehek");
        f53049e = a4 + com.mob.commons.a.o.a("008Vfm_i!gheefefdehek");
        f53050f = a4 + ".cl_lock";
        f53051g = a4 + ".gcf_lock";
        f53052h = new Object();
        f53053i = new Object();
    }

    public static synchronized File a(String str) {
        File dataCacheFile;
        synchronized (l.class) {
            dataCacheFile = ResHelper.getDataCacheFile(MobSDK.getContext(), str);
        }
        return dataCacheFile;
    }

    private static String b(String str) {
        if (!TextUtils.isEmpty(str)) {
            String str2 = f53047c;
            if (str.endsWith(str2)) {
                return str2;
            }
            String str3 = f53046b;
            if (str.endsWith(str3)) {
                return str3;
            }
            String str4 = f53048d;
            if (str.endsWith(str4)) {
                return str4;
            }
            String str5 = f53049e;
            if (str.endsWith(str5)) {
                return str5;
            }
            String str6 = f53050f;
            if (str.endsWith(str6)) {
                return str6;
            }
            String str7 = f53051g;
            if (str.endsWith(str7)) {
                return str7;
            }
        }
        return str;
    }

    public static boolean a(File file, k kVar) {
        return a(file, true, kVar);
    }

    public static boolean a(File file, boolean z3, k kVar) {
        try {
            if (!file.getParentFile().exists()) {
                file.getParentFile().mkdirs();
            }
            if (!file.exists()) {
                file.createNewFile();
            }
            String absolutePath = file.getAbsolutePath();
            synchronized (b(absolutePath)) {
                FileLocker fileLocker = new FileLocker();
                fileLocker.setLockFile(absolutePath);
                if (fileLocker.lock(z3)) {
                    if (!kVar.a(fileLocker)) {
                        fileLocker.release();
                    }
                    return true;
                }
                return false;
            }
        } catch (Throwable th) {
            MobLog.getInstance().w(th);
            return true;
        }
    }
}
