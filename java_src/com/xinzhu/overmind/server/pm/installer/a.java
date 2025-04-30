package com.xinzhu.overmind.server.pm.installer;

import com.xinzhu.overmind.entity.pm.InstallOption;
import com.xinzhu.overmind.server.pm.MindPackageSettings;
import com.xinzhu.overmind.utils.j;
import com.xinzhu.overmind.utils.p;
import java.io.File;
import java.io.IOException;
/* compiled from: CopyExecutor.java */
/* loaded from: classes3.dex */
public class a implements d {

    /* renamed from: b  reason: collision with root package name */
    private static final String f64614b = "a";

    private void b(MindPackageSettings ps, File originApk, File targetApk, InstallOption option) throws IOException {
        if (option.c(2)) {
            if (option.c(8)) {
                if (j.r(originApk, targetApk)) {
                    return;
                }
                j.b(originApk, targetApk);
                return;
            }
            j.b(originApk, targetApk);
        }
    }

    private void c(MindPackageSettings ps, File apk) throws Exception {
        if (ps.a()) {
            p.a(apk, new File(com.xinzhu.overmind.a.f(ps.f64563a.f64526m), com.xinzhu.overmind.a.H(com.xinzhu.overmind.a.f63947i)), false);
            com.xinzhu.overmind.b.a(f64614b, "apk emptyAbi detected, copy native libs.");
            return;
        }
        if (ps.r()) {
            p.a(apk, new File(com.xinzhu.overmind.a.f(ps.f64563a.f64526m), com.xinzhu.overmind.a.H(com.xinzhu.overmind.a.f63947i)), false);
            com.xinzhu.overmind.b.a(f64614b, "apk 32bit detected, copy native libs.");
        }
        if (ps.s()) {
            p.a(apk, new File(com.xinzhu.overmind.a.f(ps.f64563a.f64526m), com.xinzhu.overmind.a.H(com.xinzhu.overmind.a.f63949k)), true);
            com.xinzhu.overmind.b.a(f64614b, "apk 64bit detected, copy native libs.");
        }
    }

    @Override // com.xinzhu.overmind.server.pm.installer.d
    public int a(MindPackageSettings ps, InstallOption option, int userId) {
        String[] strArr;
        try {
            String str = ps.f64563a.f64535v;
            File file = new File(str);
            File j4 = com.xinzhu.overmind.a.j(ps.f64563a.f64526m);
            c(ps, file);
            b(ps, file, j4, option);
            if (option.c(2)) {
                ps.f64563a.f64535v = j4.getAbsolutePath();
            }
            if (!com.xinzhu.overmind.utils.d.o(ps.f64563a.f64534u)) {
                for (String str2 : ps.f64563a.f64534u) {
                    File I = com.xinzhu.overmind.a.I(str, str2);
                    if (!I.exists()) {
                        I = com.xinzhu.overmind.a.U(str, str2);
                    }
                    File K = com.xinzhu.overmind.a.K(ps.f64563a.f64526m, str2);
                    c(ps, I);
                    b(ps, I, K, option);
                }
            }
            return 0;
        } catch (Throwable th) {
            th.printStackTrace();
            return -1;
        }
    }
}
