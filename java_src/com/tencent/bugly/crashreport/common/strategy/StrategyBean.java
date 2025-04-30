package com.tencent.bugly.crashreport.common.strategy;

import android.os.Parcel;
import android.os.Parcelable;
import com.tencent.bugly.proguard.z;
import java.util.Map;
/* compiled from: BUGLY */
/* loaded from: classes4.dex */
public class StrategyBean implements Parcelable {
    public static final Parcelable.Creator<StrategyBean> CREATOR = new Parcelable.Creator<StrategyBean>() { // from class: com.tencent.bugly.crashreport.common.strategy.StrategyBean.1
        @Override // android.os.Parcelable.Creator
        public final /* synthetic */ StrategyBean createFromParcel(Parcel parcel) {
            return new StrategyBean(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public final /* bridge */ /* synthetic */ StrategyBean[] newArray(int i2) {
            return new StrategyBean[i2];
        }
    };

    /* renamed from: a  reason: collision with root package name */
    public static String f59390a = "https://android.bugly.qq.com/rqd/async";

    /* renamed from: b  reason: collision with root package name */
    public static String f59391b = "https://android.bugly.qq.com/rqd/async";

    /* renamed from: c  reason: collision with root package name */
    public long f59392c;

    /* renamed from: d  reason: collision with root package name */
    public long f59393d;

    /* renamed from: e  reason: collision with root package name */
    public boolean f59394e;

    /* renamed from: f  reason: collision with root package name */
    public boolean f59395f;

    /* renamed from: g  reason: collision with root package name */
    public boolean f59396g;

    /* renamed from: h  reason: collision with root package name */
    public boolean f59397h;

    /* renamed from: i  reason: collision with root package name */
    public boolean f59398i;

    /* renamed from: j  reason: collision with root package name */
    public boolean f59399j;

    /* renamed from: k  reason: collision with root package name */
    public boolean f59400k;

    /* renamed from: l  reason: collision with root package name */
    public boolean f59401l;

    /* renamed from: m  reason: collision with root package name */
    public boolean f59402m;

    /* renamed from: n  reason: collision with root package name */
    public long f59403n;

    /* renamed from: o  reason: collision with root package name */
    public long f59404o;

    /* renamed from: p  reason: collision with root package name */
    public String f59405p;

    /* renamed from: q  reason: collision with root package name */
    public String f59406q;

    /* renamed from: r  reason: collision with root package name */
    public String f59407r;

    /* renamed from: s  reason: collision with root package name */
    public Map<String, String> f59408s;

    /* renamed from: t  reason: collision with root package name */
    public int f59409t;

    /* renamed from: u  reason: collision with root package name */
    public long f59410u;

    /* renamed from: v  reason: collision with root package name */
    public long f59411v;

    public StrategyBean() {
        this.f59392c = -1L;
        this.f59393d = -1L;
        this.f59394e = true;
        this.f59395f = true;
        this.f59396g = true;
        this.f59397h = true;
        this.f59398i = false;
        this.f59399j = true;
        this.f59400k = true;
        this.f59401l = true;
        this.f59402m = true;
        this.f59404o = 30000L;
        this.f59405p = f59390a;
        this.f59406q = f59391b;
        this.f59409t = 10;
        this.f59410u = q.a.f73955b;
        this.f59411v = -1L;
        this.f59393d = System.currentTimeMillis();
        StringBuilder sb = new StringBuilder();
        sb.append("S(@L@L");
        sb.append("@)");
        sb.setLength(0);
        sb.append("*^@K#K");
        sb.append("@!");
        this.f59407r = sb.toString();
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeLong(this.f59393d);
        parcel.writeByte(this.f59394e ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.f59395f ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.f59396g ? (byte) 1 : (byte) 0);
        parcel.writeString(this.f59405p);
        parcel.writeString(this.f59406q);
        parcel.writeString(this.f59407r);
        z.b(parcel, this.f59408s);
        parcel.writeByte(this.f59397h ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.f59398i ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.f59401l ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.f59402m ? (byte) 1 : (byte) 0);
        parcel.writeLong(this.f59404o);
        parcel.writeByte(this.f59399j ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.f59400k ? (byte) 1 : (byte) 0);
        parcel.writeLong(this.f59403n);
        parcel.writeInt(this.f59409t);
        parcel.writeLong(this.f59410u);
        parcel.writeLong(this.f59411v);
    }

    public StrategyBean(Parcel parcel) {
        this.f59392c = -1L;
        this.f59393d = -1L;
        boolean z3 = true;
        this.f59394e = true;
        this.f59395f = true;
        this.f59396g = true;
        this.f59397h = true;
        this.f59398i = false;
        this.f59399j = true;
        this.f59400k = true;
        this.f59401l = true;
        this.f59402m = true;
        this.f59404o = 30000L;
        this.f59405p = f59390a;
        this.f59406q = f59391b;
        this.f59409t = 10;
        this.f59410u = q.a.f73955b;
        this.f59411v = -1L;
        try {
            this.f59393d = parcel.readLong();
            this.f59394e = parcel.readByte() == 1;
            this.f59395f = parcel.readByte() == 1;
            this.f59396g = parcel.readByte() == 1;
            this.f59405p = parcel.readString();
            this.f59406q = parcel.readString();
            this.f59407r = parcel.readString();
            this.f59408s = z.b(parcel);
            this.f59397h = parcel.readByte() == 1;
            this.f59398i = parcel.readByte() == 1;
            this.f59401l = parcel.readByte() == 1;
            this.f59402m = parcel.readByte() == 1;
            this.f59404o = parcel.readLong();
            this.f59399j = parcel.readByte() == 1;
            if (parcel.readByte() != 1) {
                z3 = false;
            }
            this.f59400k = z3;
            this.f59403n = parcel.readLong();
            this.f59409t = parcel.readInt();
            this.f59410u = parcel.readLong();
            this.f59411v = parcel.readLong();
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }
}
