package com.tencent.bugly.crashreport.biz;

import android.os.Parcel;
import android.os.Parcelable;
import com.tencent.bugly.proguard.z;
import java.util.Map;
/* compiled from: BUGLY */
/* loaded from: classes4.dex */
public class UserInfoBean implements Parcelable {
    public static final Parcelable.Creator<UserInfoBean> CREATOR = new Parcelable.Creator<UserInfoBean>() { // from class: com.tencent.bugly.crashreport.biz.UserInfoBean.1
        @Override // android.os.Parcelable.Creator
        public final /* synthetic */ UserInfoBean createFromParcel(Parcel parcel) {
            return new UserInfoBean(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public final /* bridge */ /* synthetic */ UserInfoBean[] newArray(int i2) {
            return new UserInfoBean[i2];
        }
    };

    /* renamed from: a  reason: collision with root package name */
    public long f59310a;

    /* renamed from: b  reason: collision with root package name */
    public int f59311b;

    /* renamed from: c  reason: collision with root package name */
    public String f59312c;

    /* renamed from: d  reason: collision with root package name */
    public String f59313d;

    /* renamed from: e  reason: collision with root package name */
    public long f59314e;

    /* renamed from: f  reason: collision with root package name */
    public long f59315f;

    /* renamed from: g  reason: collision with root package name */
    public long f59316g;

    /* renamed from: h  reason: collision with root package name */
    public long f59317h;

    /* renamed from: i  reason: collision with root package name */
    public long f59318i;

    /* renamed from: j  reason: collision with root package name */
    public String f59319j;

    /* renamed from: k  reason: collision with root package name */
    public long f59320k;

    /* renamed from: l  reason: collision with root package name */
    public boolean f59321l;

    /* renamed from: m  reason: collision with root package name */
    public String f59322m;

    /* renamed from: n  reason: collision with root package name */
    public String f59323n;

    /* renamed from: o  reason: collision with root package name */
    public int f59324o;

    /* renamed from: p  reason: collision with root package name */
    public int f59325p;

    /* renamed from: q  reason: collision with root package name */
    public int f59326q;

    /* renamed from: r  reason: collision with root package name */
    public Map<String, String> f59327r;

    /* renamed from: s  reason: collision with root package name */
    public Map<String, String> f59328s;

    public UserInfoBean() {
        this.f59320k = 0L;
        this.f59321l = false;
        this.f59322m = "unknown";
        this.f59325p = -1;
        this.f59326q = -1;
        this.f59327r = null;
        this.f59328s = null;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeInt(this.f59311b);
        parcel.writeString(this.f59312c);
        parcel.writeString(this.f59313d);
        parcel.writeLong(this.f59314e);
        parcel.writeLong(this.f59315f);
        parcel.writeLong(this.f59316g);
        parcel.writeLong(this.f59317h);
        parcel.writeLong(this.f59318i);
        parcel.writeString(this.f59319j);
        parcel.writeLong(this.f59320k);
        parcel.writeByte(this.f59321l ? (byte) 1 : (byte) 0);
        parcel.writeString(this.f59322m);
        parcel.writeInt(this.f59325p);
        parcel.writeInt(this.f59326q);
        z.b(parcel, this.f59327r);
        z.b(parcel, this.f59328s);
        parcel.writeString(this.f59323n);
        parcel.writeInt(this.f59324o);
    }

    public UserInfoBean(Parcel parcel) {
        this.f59320k = 0L;
        this.f59321l = false;
        this.f59322m = "unknown";
        this.f59325p = -1;
        this.f59326q = -1;
        this.f59327r = null;
        this.f59328s = null;
        this.f59311b = parcel.readInt();
        this.f59312c = parcel.readString();
        this.f59313d = parcel.readString();
        this.f59314e = parcel.readLong();
        this.f59315f = parcel.readLong();
        this.f59316g = parcel.readLong();
        this.f59317h = parcel.readLong();
        this.f59318i = parcel.readLong();
        this.f59319j = parcel.readString();
        this.f59320k = parcel.readLong();
        this.f59321l = parcel.readByte() == 1;
        this.f59322m = parcel.readString();
        this.f59325p = parcel.readInt();
        this.f59326q = parcel.readInt();
        this.f59327r = z.b(parcel);
        this.f59328s = z.b(parcel);
        this.f59323n = parcel.readString();
        this.f59324o = parcel.readInt();
    }
}
