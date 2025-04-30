package com.mob.commons.b;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.pm.Signature;
import android.os.Build;
import android.os.IBinder;
import android.text.TextUtils;
import com.mob.commons.b.g;
import com.mob.tools.utils.DeviceHelper;
import java.security.MessageDigest;
/* loaded from: classes4.dex */
public class k extends g {

    /* renamed from: c  reason: collision with root package name */
    private String f52897c;

    public k(Context context) {
        super(context);
    }

    @Override // com.mob.commons.b.g
    protected Intent a() {
        Intent intent = new Intent();
        intent.setComponent(new ComponentName(com.mob.commons.n.a("017Ycfdb3kZdkWbh ch)c,ce^dZdkdbUdh!cjcd@g"), com.mob.commons.n.a("033=cfdbCkAdk)bh%ch:c:ce8dVdkdb8dh3cjcd>gVdkdfKghOcjUcOcdegchdg4h]cg)iWcdcf_h")));
        intent.setAction(com.mob.commons.n.a("0402cecfOc:cddbcjdkcfdb0kVdkTbh0ch2cBceGd;dkdb1dhLcjcd^gXdkekfgfcdeccdfehccdgfcfdfedffffc"));
        return intent;
    }

    @Override // com.mob.commons.b.g
    public synchronized boolean h() {
        boolean z3 = false;
        try {
            PackageInfo pInfo = DeviceHelper.getInstance(this.f52869a).getPInfo(com.mob.commons.n.a("017;cfdb1kRdk,bh4chBc3ceId5dkdbIdhFcjcd[g"), 0);
            if (Build.VERSION.SDK_INT >= 28) {
                if (pInfo != null && pInfo.getLongVersionCode() >= 1) {
                    z3 = true;
                }
                return z3;
            }
            if (pInfo != null && pInfo.versionCode >= 1) {
                z3 = true;
            }
            return z3;
        } catch (Throwable unused) {
            return false;
        }
    }

    @Override // com.mob.commons.b.g
    public g.c a(IBinder iBinder) {
        g.c cVar = new g.c();
        cVar.f52884c = a(iBinder, com.mob.commons.n.a("0042didddfeh"));
        cVar.f52883b = a(iBinder, com.mob.commons.n.a("004'ekdddfeh"));
        cVar.f52886e = a(iBinder, com.mob.commons.n.a("004-ehdddfeh"));
        return cVar;
    }

    private final String a(IBinder iBinder, String str) {
        if (TextUtils.isEmpty(this.f52870b)) {
            this.f52870b = this.f52869a.getPackageName();
        }
        if (TextUtils.isEmpty(this.f52897c)) {
            try {
                Signature[] signatureArr = DeviceHelper.getInstance(this.f52869a).getPInfo(this.f52870b, 64).signatures;
                if (signatureArr != null && signatureArr.length > 0) {
                    byte[] byteArray = signatureArr[0].toByteArray();
                    MessageDigest messageDigest = MessageDigest.getInstance(com.mob.commons.n.a("004Sdggcdifk"));
                    if (messageDigest != null) {
                        byte[] digest = messageDigest.digest(byteArray);
                        StringBuilder sb = new StringBuilder();
                        for (byte b4 : digest) {
                            sb.append(Integer.toHexString((b4 & 255) | 256).substring(1, 3));
                        }
                        this.f52897c = sb.toString();
                    }
                }
            } catch (Throwable unused) {
            }
        }
        return a(str, iBinder, com.mob.commons.n.a("025Hcfdb0k.dk@bh,ch^cSce<d*dkdbIdhZcjcdJgUdkdfekEdhCcjdfeh"), 1, this.f52870b, this.f52897c, str);
    }
}
