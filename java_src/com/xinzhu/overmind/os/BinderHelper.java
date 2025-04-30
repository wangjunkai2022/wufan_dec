package com.xinzhu.overmind.os;

import android.os.Binder;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.UserHandle;
import com.xinzhu.haunted.android.os.u;
import com.xinzhu.overmind.server.ProcessRecord;
import com.xinzhu.overmind.server.d;
import com.xinzhu.overmind.server.user.MindUserHandle;
/* loaded from: classes3.dex */
public class BinderHelper {

    /* loaded from: classes3.dex */
    public static class CallingInfo implements Parcelable {
        public static final Parcelable.Creator<CallingInfo> CREATOR = new a();

        /* renamed from: a  reason: collision with root package name */
        public int f64328a;

        /* renamed from: b  reason: collision with root package name */
        public int f64329b;

        /* renamed from: c  reason: collision with root package name */
        public int f64330c;

        /* renamed from: d  reason: collision with root package name */
        public UserHandle f64331d;

        /* loaded from: classes3.dex */
        class a implements Parcelable.Creator<CallingInfo> {
            a() {
            }

            @Override // android.os.Parcelable.Creator
            /* renamed from: a */
            public CallingInfo createFromParcel(Parcel in2) {
                return new CallingInfo(in2);
            }

            @Override // android.os.Parcelable.Creator
            /* renamed from: b */
            public CallingInfo[] newArray(int size) {
                return new CallingInfo[size];
            }
        }

        CallingInfo() {
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel dest, int flags) {
            dest.writeInt(this.f64328a);
            dest.writeInt(this.f64329b);
            dest.writeParcelable(this.f64331d, flags);
        }

        protected CallingInfo(Parcel in2) {
            this.f64328a = in2.readInt();
            this.f64329b = in2.readInt();
            this.f64331d = (UserHandle) in2.readParcelable(UserHandle.class.getClassLoader());
        }
    }

    public static long a() {
        return Binder.clearCallingIdentity();
    }

    public static CallingInfo b() {
        int callingPid = Binder.getCallingPid();
        ProcessRecord b4 = d.d().b(callingPid);
        CallingInfo callingInfo = new CallingInfo();
        if (b4 != null) {
            callingInfo.f64328a = callingPid;
            int i2 = b4.vuid;
            callingInfo.f64329b = i2;
            callingInfo.f64330c = b4.userId;
            callingInfo.f64331d = (UserHandle) u.c(i2).f63546a;
            return callingInfo;
        }
        callingInfo.f64328a = Binder.getCallingPid();
        int callingUid = Binder.getCallingUid();
        callingInfo.f64329b = callingUid;
        callingInfo.f64330c = MindUserHandle.k(callingUid);
        callingInfo.f64331d = Binder.getCallingUserHandle();
        return callingInfo;
    }

    public static void c(long token) {
        Binder.restoreCallingIdentity(token);
    }
}
