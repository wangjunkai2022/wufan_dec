package com.xinzhu.overmind.client.hook.common;

import com.xinzhu.overmind.Overmind;
import com.xinzhu.overmind.client.hook.g;
import com.xinzhu.overmind.server.user.MindUserHandle;
import java.lang.reflect.Method;
/* compiled from: ReplacePkgUserIdMethodHookStub.java */
/* loaded from: classes.dex */
public class d extends g {

    /* renamed from: e  reason: collision with root package name */
    public static int f64083e = -1;

    /* renamed from: f  reason: collision with root package name */
    public static int f64084f = -2;

    /* renamed from: g  reason: collision with root package name */
    public static int f64085g = -3;

    /* renamed from: a  reason: collision with root package name */
    String f64086a = getClass().getSimpleName();

    /* renamed from: b  reason: collision with root package name */
    String f64087b;

    /* renamed from: c  reason: collision with root package name */
    int f64088c;

    /* renamed from: d  reason: collision with root package name */
    int f64089d;

    public d(String name, int replace_pkg_index, int replace_userId_index) {
        this.f64087b = name;
        this.f64088c = replace_pkg_index;
        this.f64089d = replace_userId_index;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.xinzhu.overmind.client.hook.g
    public String c() {
        return this.f64087b;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.xinzhu.overmind.client.hook.g
    public Object d(Object who, Method method, Object[] args) throws Throwable {
        int i2;
        if (args == null) {
            return method.invoke(who, args);
        }
        int length = args.length;
        if (this.f64089d < length && (i2 = this.f64088c) < length) {
            if (i2 != f64083e) {
                if (i2 < 0) {
                    if (i2 == f64085g) {
                        i2 = length - 1;
                    } else if (i2 != f64084f) {
                        throw new RuntimeException(this.f64087b + " mReplacePkgIndex unexpected " + this.f64088c);
                    } else {
                        i2 = 0;
                        while (true) {
                            if (i2 >= args.length) {
                                i2 = -1;
                                break;
                            }
                            if (args[i2] instanceof String) {
                                if (Overmind.getMindPackageManager().t((String) args[i2], com.xinzhu.overmind.client.e.getUserId())) {
                                    break;
                                }
                            }
                            i2++;
                        }
                    }
                }
                if (i2 >= 0) {
                    if (args[i2] instanceof String) {
                        args[i2] = Overmind.getHostPkg();
                    } else {
                        StringBuilder sb = new StringBuilder();
                        sb.append(this.f64087b);
                        sb.append(" mReplacePkgIndex unexpected type ");
                        sb.append(args[i2].getClass());
                    }
                }
            }
            int i4 = this.f64089d;
            if (i4 != f64083e) {
                if (i4 < 0) {
                    if (i4 != f64085g) {
                        throw new RuntimeException(this.f64087b + " mReplaceUserIdIndex unexpected " + this.f64089d);
                    }
                    i4 = length - 1;
                }
                if (i4 >= 0) {
                    if (args[i4] instanceof Integer) {
                        args[i4] = Integer.valueOf(MindUserHandle.k(Overmind.getHostUid()));
                    } else {
                        StringBuilder sb2 = new StringBuilder();
                        sb2.append(this.f64087b);
                        sb2.append(" mReplaceUserIdIndex unexpected type ");
                        sb2.append(args[i4].getClass());
                    }
                }
            }
            return method.invoke(who, args);
        }
        throw new RuntimeException(this.f64087b + " mReplaceUserIdIndex or mReplacePkgIndex out of range");
    }
}
