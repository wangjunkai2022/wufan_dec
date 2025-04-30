package com.tencent.bugly.crashreport.crash;

import android.os.Parcel;
import android.os.Parcelable;
import com.tencent.bugly.crashreport.common.info.PlugInBean;
import com.tencent.bugly.proguard.z;
import java.util.Map;
import java.util.UUID;
/* compiled from: BUGLY */
/* loaded from: classes4.dex */
public class CrashDetailBean implements Parcelable, Comparable<CrashDetailBean> {
    public static final Parcelable.Creator<CrashDetailBean> CREATOR = new Parcelable.Creator<CrashDetailBean>() { // from class: com.tencent.bugly.crashreport.crash.CrashDetailBean.1
        @Override // android.os.Parcelable.Creator
        public final /* synthetic */ CrashDetailBean createFromParcel(Parcel parcel) {
            return new CrashDetailBean(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public final /* bridge */ /* synthetic */ CrashDetailBean[] newArray(int i2) {
            return new CrashDetailBean[i2];
        }
    };
    public String A;
    public String B;
    public long C;
    public long D;
    public long E;
    public long F;
    public long G;
    public long H;
    public String I;
    public String J;
    public String K;
    public String L;
    public long M;
    public boolean N;
    public Map<String, String> O;
    public Map<String, String> P;
    public int Q;
    public int R;
    public Map<String, String> S;
    public Map<String, String> T;
    public byte[] U;
    public String V;
    public String W;
    private String X;

    /* renamed from: a  reason: collision with root package name */
    public long f59428a;

    /* renamed from: b  reason: collision with root package name */
    public int f59429b;

    /* renamed from: c  reason: collision with root package name */
    public String f59430c;

    /* renamed from: d  reason: collision with root package name */
    public boolean f59431d;

    /* renamed from: e  reason: collision with root package name */
    public String f59432e;

    /* renamed from: f  reason: collision with root package name */
    public String f59433f;

    /* renamed from: g  reason: collision with root package name */
    public String f59434g;

    /* renamed from: h  reason: collision with root package name */
    public Map<String, PlugInBean> f59435h;

    /* renamed from: i  reason: collision with root package name */
    public Map<String, PlugInBean> f59436i;

    /* renamed from: j  reason: collision with root package name */
    public boolean f59437j;

    /* renamed from: k  reason: collision with root package name */
    public boolean f59438k;

    /* renamed from: l  reason: collision with root package name */
    public int f59439l;

    /* renamed from: m  reason: collision with root package name */
    public String f59440m;

    /* renamed from: n  reason: collision with root package name */
    public String f59441n;

    /* renamed from: o  reason: collision with root package name */
    public String f59442o;

    /* renamed from: p  reason: collision with root package name */
    public String f59443p;

    /* renamed from: q  reason: collision with root package name */
    public String f59444q;

    /* renamed from: r  reason: collision with root package name */
    public long f59445r;

    /* renamed from: s  reason: collision with root package name */
    public String f59446s;

    /* renamed from: t  reason: collision with root package name */
    public int f59447t;

    /* renamed from: u  reason: collision with root package name */
    public String f59448u;

    /* renamed from: v  reason: collision with root package name */
    public String f59449v;

    /* renamed from: w  reason: collision with root package name */
    public String f59450w;

    /* renamed from: x  reason: collision with root package name */
    public String f59451x;

    /* renamed from: y  reason: collision with root package name */
    public byte[] f59452y;

    /* renamed from: z  reason: collision with root package name */
    public Map<String, String> f59453z;

    public CrashDetailBean() {
        this.f59428a = -1L;
        this.f59429b = 0;
        this.f59430c = UUID.randomUUID().toString();
        this.f59431d = false;
        this.f59432e = "";
        this.f59433f = "";
        this.f59434g = "";
        this.f59435h = null;
        this.f59436i = null;
        this.f59437j = false;
        this.f59438k = false;
        this.f59439l = 0;
        this.f59440m = "";
        this.f59441n = "";
        this.f59442o = "";
        this.f59443p = "";
        this.f59444q = "";
        this.f59445r = -1L;
        this.f59446s = null;
        this.f59447t = 0;
        this.f59448u = "";
        this.f59449v = "";
        this.f59450w = null;
        this.f59451x = null;
        this.f59452y = null;
        this.f59453z = null;
        this.A = "";
        this.B = "";
        this.C = -1L;
        this.D = -1L;
        this.E = -1L;
        this.F = -1L;
        this.G = -1L;
        this.H = -1L;
        this.I = "";
        this.X = "";
        this.J = "";
        this.K = "";
        this.L = "";
        this.M = -1L;
        this.N = false;
        this.O = null;
        this.P = null;
        this.Q = -1;
        this.R = -1;
        this.S = null;
        this.T = null;
        this.U = null;
        this.V = null;
        this.W = null;
    }

    @Override // java.lang.Comparable
    public /* bridge */ /* synthetic */ int compareTo(CrashDetailBean crashDetailBean) {
        CrashDetailBean crashDetailBean2 = crashDetailBean;
        if (crashDetailBean2 != null) {
            long j4 = this.f59445r - crashDetailBean2.f59445r;
            if (j4 <= 0) {
                return j4 < 0 ? -1 : 0;
            }
            return 1;
        }
        return 1;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeInt(this.f59429b);
        parcel.writeString(this.f59430c);
        parcel.writeByte(this.f59431d ? (byte) 1 : (byte) 0);
        parcel.writeString(this.f59432e);
        parcel.writeString(this.f59433f);
        parcel.writeString(this.f59434g);
        parcel.writeByte(this.f59437j ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.f59438k ? (byte) 1 : (byte) 0);
        parcel.writeInt(this.f59439l);
        parcel.writeString(this.f59440m);
        parcel.writeString(this.f59441n);
        parcel.writeString(this.f59442o);
        parcel.writeString(this.f59443p);
        parcel.writeString(this.f59444q);
        parcel.writeLong(this.f59445r);
        parcel.writeString(this.f59446s);
        parcel.writeInt(this.f59447t);
        parcel.writeString(this.f59448u);
        parcel.writeString(this.f59449v);
        parcel.writeString(this.f59450w);
        z.b(parcel, this.f59453z);
        parcel.writeString(this.A);
        parcel.writeString(this.B);
        parcel.writeLong(this.C);
        parcel.writeLong(this.D);
        parcel.writeLong(this.E);
        parcel.writeLong(this.F);
        parcel.writeLong(this.G);
        parcel.writeLong(this.H);
        parcel.writeString(this.I);
        parcel.writeString(this.X);
        parcel.writeString(this.J);
        parcel.writeString(this.K);
        parcel.writeString(this.L);
        parcel.writeLong(this.M);
        parcel.writeByte(this.N ? (byte) 1 : (byte) 0);
        z.b(parcel, this.O);
        z.a(parcel, this.f59435h);
        z.a(parcel, this.f59436i);
        parcel.writeInt(this.Q);
        parcel.writeInt(this.R);
        z.b(parcel, this.S);
        z.b(parcel, this.T);
        parcel.writeByteArray(this.U);
        parcel.writeByteArray(this.f59452y);
        parcel.writeString(this.V);
        parcel.writeString(this.W);
        parcel.writeString(this.f59451x);
    }

    public CrashDetailBean(Parcel parcel) {
        this.f59428a = -1L;
        this.f59429b = 0;
        this.f59430c = UUID.randomUUID().toString();
        this.f59431d = false;
        this.f59432e = "";
        this.f59433f = "";
        this.f59434g = "";
        this.f59435h = null;
        this.f59436i = null;
        this.f59437j = false;
        this.f59438k = false;
        this.f59439l = 0;
        this.f59440m = "";
        this.f59441n = "";
        this.f59442o = "";
        this.f59443p = "";
        this.f59444q = "";
        this.f59445r = -1L;
        this.f59446s = null;
        this.f59447t = 0;
        this.f59448u = "";
        this.f59449v = "";
        this.f59450w = null;
        this.f59451x = null;
        this.f59452y = null;
        this.f59453z = null;
        this.A = "";
        this.B = "";
        this.C = -1L;
        this.D = -1L;
        this.E = -1L;
        this.F = -1L;
        this.G = -1L;
        this.H = -1L;
        this.I = "";
        this.X = "";
        this.J = "";
        this.K = "";
        this.L = "";
        this.M = -1L;
        this.N = false;
        this.O = null;
        this.P = null;
        this.Q = -1;
        this.R = -1;
        this.S = null;
        this.T = null;
        this.U = null;
        this.V = null;
        this.W = null;
        this.f59429b = parcel.readInt();
        this.f59430c = parcel.readString();
        this.f59431d = parcel.readByte() == 1;
        this.f59432e = parcel.readString();
        this.f59433f = parcel.readString();
        this.f59434g = parcel.readString();
        this.f59437j = parcel.readByte() == 1;
        this.f59438k = parcel.readByte() == 1;
        this.f59439l = parcel.readInt();
        this.f59440m = parcel.readString();
        this.f59441n = parcel.readString();
        this.f59442o = parcel.readString();
        this.f59443p = parcel.readString();
        this.f59444q = parcel.readString();
        this.f59445r = parcel.readLong();
        this.f59446s = parcel.readString();
        this.f59447t = parcel.readInt();
        this.f59448u = parcel.readString();
        this.f59449v = parcel.readString();
        this.f59450w = parcel.readString();
        this.f59453z = z.b(parcel);
        this.A = parcel.readString();
        this.B = parcel.readString();
        this.C = parcel.readLong();
        this.D = parcel.readLong();
        this.E = parcel.readLong();
        this.F = parcel.readLong();
        this.G = parcel.readLong();
        this.H = parcel.readLong();
        this.I = parcel.readString();
        this.X = parcel.readString();
        this.J = parcel.readString();
        this.K = parcel.readString();
        this.L = parcel.readString();
        this.M = parcel.readLong();
        this.N = parcel.readByte() == 1;
        this.O = z.b(parcel);
        this.f59435h = z.a(parcel);
        this.f59436i = z.a(parcel);
        this.Q = parcel.readInt();
        this.R = parcel.readInt();
        this.S = z.b(parcel);
        this.T = z.b(parcel);
        this.U = parcel.createByteArray();
        this.f59452y = parcel.createByteArray();
        this.V = parcel.readString();
        this.W = parcel.readString();
        this.f59451x = parcel.readString();
    }
}
