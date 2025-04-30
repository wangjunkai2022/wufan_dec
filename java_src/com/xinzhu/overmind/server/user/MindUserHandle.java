package com.xinzhu.overmind.server.user;

import android.os.Binder;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Process;
import android.os.UserHandle;
import com.xinzhu.haunted.android.os.u;
/* loaded from: classes.dex */
public final class MindUserHandle implements Parcelable {

    /* renamed from: b  reason: collision with root package name */
    public static final int f64648b = 100000;

    /* renamed from: c  reason: collision with root package name */
    public static final int f64649c = -1;

    /* renamed from: e  reason: collision with root package name */
    public static final int f64651e = -2;

    /* renamed from: g  reason: collision with root package name */
    public static final int f64653g = -3;

    /* renamed from: h  reason: collision with root package name */
    public static final int f64654h = -4;

    /* renamed from: j  reason: collision with root package name */
    public static final int f64656j = -10000;
    @Deprecated

    /* renamed from: k  reason: collision with root package name */
    public static final int f64657k = 0;

    /* renamed from: m  reason: collision with root package name */
    public static final int f64659m = 0;

    /* renamed from: n  reason: collision with root package name */
    public static final int f64660n = 0;

    /* renamed from: p  reason: collision with root package name */
    public static final boolean f64662p = true;

    /* renamed from: q  reason: collision with root package name */
    public static final int f64663q = -1;

    /* renamed from: r  reason: collision with root package name */
    public static final int f64664r = 0;

    /* renamed from: s  reason: collision with root package name */
    public static final int f64665s = 10000;

    /* renamed from: t  reason: collision with root package name */
    public static final int f64666t = 19999;

    /* renamed from: u  reason: collision with root package name */
    public static final int f64667u = 50000;

    /* renamed from: v  reason: collision with root package name */
    public static final int f64668v = 20000;

    /* renamed from: a  reason: collision with root package name */
    final int f64669a;

    /* renamed from: d  reason: collision with root package name */
    public static final MindUserHandle f64650d = new MindUserHandle(-1);

    /* renamed from: f  reason: collision with root package name */
    public static final MindUserHandle f64652f = new MindUserHandle(-2);

    /* renamed from: i  reason: collision with root package name */
    public static final MindUserHandle f64655i = new MindUserHandle(-3);
    @Deprecated

    /* renamed from: l  reason: collision with root package name */
    public static final MindUserHandle f64658l = new MindUserHandle(0);

    /* renamed from: o  reason: collision with root package name */
    public static final MindUserHandle f64661o = new MindUserHandle(0);
    public static final Parcelable.Creator<MindUserHandle> CREATOR = new a();

    /* loaded from: classes.dex */
    class a implements Parcelable.Creator<MindUserHandle> {
        a() {
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public MindUserHandle createFromParcel(Parcel in2) {
            return new MindUserHandle(in2);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: b */
        public MindUserHandle[] newArray(int size) {
            return new MindUserHandle[size];
        }
    }

    public MindUserHandle(int h4) {
        this.f64669a = h4;
    }

    public static int a(int uid) {
        return uid % 100000;
    }

    public static int b(int uid) {
        return c(k(uid), a(uid));
    }

    public static int c(int userId, int appId) {
        if (appId < 10000 || appId > 19999) {
            return -1;
        }
        return h(userId, (appId - 10000) + 20000);
    }

    public static int d() {
        return a(Binder.getCallingUid());
    }

    public static int e() {
        return k(Binder.getCallingUid());
    }

    public static int f(int uid) {
        return g(k(uid), a(uid));
    }

    public static int g(int userId, int appId) {
        if (appId < 10000 || appId > 19999) {
            if (appId < 0 || appId > 10000) {
                return -1;
            }
            return appId;
        }
        return (appId - 10000) + f64667u;
    }

    public static int h(int userId, int appId) {
        return (userId * 100000) + (appId % 100000);
    }

    public static int i(int userId) {
        return h(userId, 9997);
    }

    public static MindUserHandle j(int uid) {
        return t(k(uid));
    }

    public static int k(int uid) {
        return uid / 100000;
    }

    public static boolean l(int uid) {
        int a4;
        return uid > 0 && (a4 = a(uid)) >= 10000 && a4 <= 19999;
    }

    public static boolean n(int uid) {
        return uid >= 0 && a(uid) < 10000;
    }

    public static boolean p(int uid1, int uid2) {
        if (a(uid1) == a(uid2)) {
            return true;
        }
        if (uid1 == 1000 || uid2 == 1000) {
            return uid1 == Process.myUid() || uid2 == Process.myUid();
        }
        return false;
    }

    public static boolean q(int uid1, int uid2) {
        return k(uid1) == k(uid2);
    }

    public static int s() {
        return k(Process.myUid());
    }

    public static MindUserHandle t(int userId) {
        return userId == 0 ? f64661o : new MindUserHandle(userId);
    }

    public static int u(String arg) {
        if ("all".equals(arg)) {
            return -1;
        }
        if ("current".equals(arg) || "cur".equals(arg)) {
            return -2;
        }
        try {
            return Integer.parseInt(arg);
        } catch (NumberFormatException unused) {
            throw new IllegalArgumentException("Bad user number: " + arg);
        }
    }

    public static MindUserHandle v(Parcel in2) {
        int readInt = in2.readInt();
        if (readInt != -10000) {
            return new MindUserHandle(readInt);
        }
        return null;
    }

    public static void y(MindUserHandle h4, Parcel out) {
        if (h4 != null) {
            h4.writeToParcel(out, 0);
        } else {
            out.writeInt(-10000);
        }
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (obj != null) {
            try {
                return this.f64669a == ((MindUserHandle) obj).f64669a;
            } catch (ClassCastException unused) {
                return false;
            }
        }
        return false;
    }

    public int getIdentifier() {
        return this.f64669a;
    }

    public int hashCode() {
        return this.f64669a;
    }

    @Deprecated
    public boolean o() {
        return equals(f64658l);
    }

    public boolean r() {
        return equals(f64661o);
    }

    public String toString() {
        return "UserHandle{" + this.f64669a + "}";
    }

    public UserHandle w() {
        return (UserHandle) u.c(this.f64669a).f63546a;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel out, int flags) {
        out.writeInt(this.f64669a);
    }

    public MindUserHandle(Parcel in2) {
        this.f64669a = in2.readInt();
    }
}
