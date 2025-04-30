package com.papa.controller.core;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.HashMap;
/* loaded from: classes4.dex */
public class PadInfo implements Parcelable {
    public static final byte A = 1;
    public static final int B = -1;
    public static final Parcelable.Creator<PadInfo> CREATOR = new a();

    /* renamed from: y  reason: collision with root package name */
    public static final byte f54738y = -1;

    /* renamed from: z  reason: collision with root package name */
    public static final byte f54739z = 0;

    /* renamed from: a  reason: collision with root package name */
    protected String f54740a;

    /* renamed from: b  reason: collision with root package name */
    protected String f54741b;

    /* renamed from: c  reason: collision with root package name */
    protected String f54742c;

    /* renamed from: d  reason: collision with root package name */
    protected String f54743d;

    /* renamed from: e  reason: collision with root package name */
    protected String f54744e;

    /* renamed from: f  reason: collision with root package name */
    protected String f54745f;

    /* renamed from: g  reason: collision with root package name */
    protected String f54746g;

    /* renamed from: h  reason: collision with root package name */
    protected String f54747h;

    /* renamed from: i  reason: collision with root package name */
    protected String f54748i;

    /* renamed from: j  reason: collision with root package name */
    protected String f54749j;

    /* renamed from: k  reason: collision with root package name */
    protected String f54750k;

    /* renamed from: l  reason: collision with root package name */
    protected String f54751l;

    /* renamed from: m  reason: collision with root package name */
    protected String f54752m;

    /* renamed from: n  reason: collision with root package name */
    protected String f54753n;

    /* renamed from: o  reason: collision with root package name */
    protected byte f54754o;

    /* renamed from: p  reason: collision with root package name */
    protected byte f54755p;

    /* renamed from: q  reason: collision with root package name */
    protected int f54756q;

    /* renamed from: r  reason: collision with root package name */
    protected int f54757r;

    /* renamed from: s  reason: collision with root package name */
    protected boolean f54758s;

    /* renamed from: t  reason: collision with root package name */
    protected boolean f54759t;

    /* renamed from: u  reason: collision with root package name */
    protected boolean f54760u;

    /* renamed from: v  reason: collision with root package name */
    protected boolean f54761v;

    /* renamed from: w  reason: collision with root package name */
    protected String f54762w;

    /* renamed from: x  reason: collision with root package name */
    protected HashMap<Integer, Float> f54763x;

    /* loaded from: classes4.dex */
    class a implements Parcelable.Creator<PadInfo> {
        a() {
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public PadInfo createFromParcel(Parcel parcel) {
            return new PadInfo(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: b */
        public PadInfo[] newArray(int i2) {
            return new PadInfo[i2];
        }
    }

    public PadInfo() {
        this.f54740a = "";
        this.f54741b = "";
        this.f54742c = "";
        this.f54743d = "";
        this.f54744e = "";
        this.f54745f = "";
        this.f54746g = "";
        this.f54747h = "";
        this.f54748i = "";
        this.f54749j = "";
        this.f54750k = "";
        this.f54751l = "";
        this.f54752m = "";
        this.f54753n = "";
        this.f54754o = (byte) -1;
        this.f54755p = (byte) -1;
        this.f54756q = -1;
        this.f54757r = 0;
        this.f54758s = false;
        this.f54759t = false;
        this.f54760u = false;
        this.f54761v = false;
        this.f54762w = "";
        this.f54763x = new HashMap<>();
    }

    private HashMap<Integer, Integer> j(com.papa.controller.core.hardware.d dVar) {
        HashMap<Integer, Integer> hashMap = new HashMap<>();
        int[] iArr = {109, 19, 20, 21, 22, 96, 97, 99, 100, 102, 103, 104, 105, 106, 107, 108, 198, 199, 200, 201};
        int[] iArr2 = {dVar.r(), dVar.E(), dVar.s(), dVar.x(), dVar.A(), dVar.k(), dVar.q(), dVar.F(), dVar.G(), dVar.v(), dVar.y(), dVar.w(), dVar.z(), dVar.C(), dVar.D(), dVar.B(), dVar.t(), dVar.u(), (dVar.l() << 8) | dVar.m(), dVar.o() | (dVar.n() << 8)};
        if (this.f54763x.size() == 0) {
            for (int i2 = 0; i2 < 20; i2++) {
                this.f54763x.put(Integer.valueOf(iArr[i2]), Float.valueOf(0.0f));
            }
        }
        for (int i4 = 0; i4 < 20; i4++) {
            hashMap.put(Integer.valueOf(iArr[i4]), Integer.valueOf(iArr2[i4]));
        }
        return hashMap;
    }

    private PadMotionEvent n(com.papa.controller.core.hardware.d dVar) {
        try {
            int l4 = dVar.l();
            return new PadMotionEvent(System.currentTimeMillis(), this.f54756q, this.f54740a, 200, ((l4 - 128) * 1.0f) / 128.0f, ((dVar.m() - 128) * 1.0f) / 128.0f);
        } catch (Exception e4) {
            e4.printStackTrace();
            return null;
        }
    }

    private PadMotionEvent o(com.papa.controller.core.hardware.d dVar) {
        try {
            int n4 = dVar.n();
            return new PadMotionEvent(System.currentTimeMillis(), this.f54756q, this.f54740a, 201, ((n4 - 128) * 1.0f) / 128.0f, ((dVar.o() - 128) * 1.0f) / 128.0f);
        } catch (Exception e4) {
            e4.printStackTrace();
            return null;
        }
    }

    public boolean B() {
        return this.f54761v;
    }

    public boolean C() {
        return this.f54759t;
    }

    public boolean D() {
        return this.f54758s;
    }

    public void E(int i2) {
        this.f54757r = i2;
    }

    public void F(int i2) {
        this.f54756q = i2;
    }

    public void G(String str) {
        this.f54744e = str;
    }

    public void H(String str) {
        this.f54747h = str;
    }

    public void I(String str) {
        this.f54745f = str;
    }

    public void J(String str) {
        this.f54762w = str;
    }

    public void K(boolean z3) {
        this.f54760u = z3;
    }

    public void L(boolean z3) {
        this.f54761v = z3;
    }

    public void M(String str) {
        this.f54746g = str;
    }

    public void N(HashMap<Integer, Float> hashMap) {
        this.f54763x = hashMap;
    }

    public void O(String str) {
        this.f54743d = str;
    }

    public void P(byte b4) {
        this.f54754o = b4;
    }

    public void Q(byte b4) {
        this.f54755p = b4;
    }

    public void R(String str) {
        this.f54740a = str;
    }

    public void S(String str) {
        this.f54748i = str;
    }

    public void T(String str) {
        this.f54752m = str;
    }

    public void V(String str) {
        this.f54753n = str;
    }

    public void W(boolean z3) {
        this.f54759t = z3;
    }

    public void X(String str) {
        this.f54742c = str;
    }

    public void Z(String str) {
        this.f54749j = str;
    }

    public void a(c cVar, com.papa.controller.core.hardware.d dVar) {
        float f4;
        HashMap<Integer, Integer> j4 = j(dVar);
        int[] iArr = {109, 19, 20, 21, 22, 106, 107, 108, 198, 199};
        int i2 = 0;
        while (true) {
            f4 = 1.0f;
            if (i2 >= 10) {
                break;
            }
            int i4 = iArr[i2];
            if (j4.containsKey(Integer.valueOf(i4)) && this.f54763x.containsKey(Integer.valueOf(i4))) {
                float intValue = j4.get(Integer.valueOf(i4)).intValue() * 1.0f;
                if (this.f54763x.get(Integer.valueOf(i4)).floatValue() != intValue) {
                    int i5 = intValue != 1.0f ? 0 : 1;
                    PadKeyEvent padKeyEvent = new PadKeyEvent(System.currentTimeMillis(), this.f54756q, this.f54740a, i4, i5 ^ 1, i5 != 0 ? intValue : 0.0f);
                    this.f54763x.put(Integer.valueOf(i4), Float.valueOf(i5 != 0 ? intValue : 0.0f));
                    if (i5 != 0) {
                        cVar.h(i4, padKeyEvent);
                    } else {
                        cVar.R(i4, padKeyEvent);
                    }
                }
            }
            i2++;
        }
        int[] iArr2 = {96, 97, 99, 100, 102, 103, 104, 105};
        int i6 = 0;
        while (i6 < 8) {
            int i7 = iArr2[i6];
            if (j4.containsKey(Integer.valueOf(i7)) && this.f54763x.containsKey(Integer.valueOf(i7))) {
                float intValue2 = (j4.get(Integer.valueOf(i7)).intValue() * f4) / 255.0f;
                if (this.f54763x.get(Integer.valueOf(i7)).floatValue() != intValue2) {
                    int i8 = intValue2 > 0.0f ? 1 : 0;
                    PadKeyEvent padKeyEvent2 = new PadKeyEvent(System.currentTimeMillis(), this.f54756q, this.f54740a, i7, i8 ^ 1, intValue2);
                    this.f54763x.put(Integer.valueOf(i7), Float.valueOf(i8 != 0 ? intValue2 : 0.0f));
                    cVar.k0(i7, intValue2, padKeyEvent2);
                }
            }
            i6++;
            f4 = 1.0f;
        }
        PadMotionEvent n4 = n(dVar);
        if (n4 != null) {
            float l4 = (dVar.l() << 8) | dVar.m();
            if (this.f54763x.get(Integer.valueOf(n4.d())).floatValue() != l4) {
                this.f54763x.put(Integer.valueOf(n4.d()), Float.valueOf(l4));
                cVar.F(n4.e(), n4.f(), n4);
            }
        }
        PadMotionEvent o3 = o(dVar);
        if (o3 != null) {
            float o4 = dVar.o() | (dVar.n() << 8);
            if (this.f54763x.get(Integer.valueOf(o3.d())).floatValue() != o4) {
                this.f54763x.put(Integer.valueOf(o3.d()), Float.valueOf(o4));
                cVar.G(o3.e(), o3.f(), o3);
            }
        }
    }

    public int b() {
        return this.f54757r;
    }

    public void b0(String str) {
        this.f54750k = str;
    }

    public int c() {
        return this.f54756q;
    }

    public void c0(String str) {
        this.f54751l = str;
    }

    public String d() {
        return this.f54744e;
    }

    public void d0(String str) {
        this.f54741b = str;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public String e() {
        return this.f54747h;
    }

    public String f() {
        return this.f54745f;
    }

    public void f0(boolean z3) {
        this.f54758s = z3;
    }

    public String g() {
        return this.f54762w;
    }

    public String getType() {
        return this.f54742c;
    }

    public String h() {
        return this.f54746g;
    }

    public HashMap<Integer, Float> i() {
        return this.f54763x;
    }

    public String k() {
        return this.f54743d;
    }

    public byte l() {
        return this.f54754o;
    }

    public byte p() {
        return this.f54755p;
    }

    public String q() {
        return this.f54740a;
    }

    public String r() {
        return this.f54748i;
    }

    public String s() {
        return this.f54752m;
    }

    public String t() {
        return this.f54753n;
    }

    public String u() {
        return this.f54749j;
    }

    public String v() {
        return this.f54750k;
    }

    public String w() {
        return this.f54751l;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeString(this.f54740a);
        parcel.writeString(this.f54741b);
        parcel.writeString(this.f54742c);
        parcel.writeString(this.f54743d);
        parcel.writeString(this.f54744e);
        parcel.writeString(this.f54745f);
        parcel.writeString(this.f54746g);
        parcel.writeString(this.f54747h);
        parcel.writeString(this.f54748i);
        parcel.writeString(this.f54749j);
        parcel.writeString(this.f54750k);
        parcel.writeString(this.f54751l);
        parcel.writeString(this.f54752m);
        parcel.writeString(this.f54753n);
        parcel.writeByte(this.f54754o);
        parcel.writeByte(this.f54755p);
        parcel.writeInt(this.f54756q);
        parcel.writeInt(this.f54757r);
        parcel.writeByte(this.f54758s ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.f54759t ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.f54760u ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.f54761v ? (byte) 1 : (byte) 0);
        parcel.writeString(this.f54762w);
        parcel.writeMap(this.f54763x);
    }

    public String y() {
        return this.f54741b;
    }

    public boolean z() {
        return this.f54760u;
    }

    public PadInfo(String str, String str2, String str3, String str4, String str5) {
        this.f54740a = "";
        this.f54741b = "";
        this.f54742c = "";
        this.f54743d = "";
        this.f54744e = "";
        this.f54745f = "";
        this.f54746g = "";
        this.f54747h = "";
        this.f54748i = "";
        this.f54749j = "";
        this.f54750k = "";
        this.f54751l = "";
        this.f54752m = "";
        this.f54753n = "";
        this.f54754o = (byte) -1;
        this.f54755p = (byte) -1;
        this.f54756q = -1;
        this.f54757r = 0;
        this.f54758s = false;
        this.f54759t = false;
        this.f54760u = false;
        this.f54761v = false;
        this.f54762w = "";
        this.f54763x = new HashMap<>();
        this.f54740a = str;
        this.f54741b = str2;
        this.f54742c = str3;
        this.f54743d = str4;
        this.f54744e = str5;
    }

    public PadInfo(Parcel parcel) {
        this.f54740a = "";
        this.f54741b = "";
        this.f54742c = "";
        this.f54743d = "";
        this.f54744e = "";
        this.f54745f = "";
        this.f54746g = "";
        this.f54747h = "";
        this.f54748i = "";
        this.f54749j = "";
        this.f54750k = "";
        this.f54751l = "";
        this.f54752m = "";
        this.f54753n = "";
        this.f54754o = (byte) -1;
        this.f54755p = (byte) -1;
        this.f54756q = -1;
        this.f54757r = 0;
        this.f54758s = false;
        this.f54759t = false;
        this.f54760u = false;
        this.f54761v = false;
        this.f54762w = "";
        this.f54763x = new HashMap<>();
        this.f54740a = parcel.readString();
        this.f54741b = parcel.readString();
        this.f54742c = parcel.readString();
        this.f54743d = parcel.readString();
        this.f54744e = parcel.readString();
        this.f54745f = parcel.readString();
        this.f54746g = parcel.readString();
        this.f54747h = parcel.readString();
        this.f54748i = parcel.readString();
        this.f54749j = parcel.readString();
        this.f54750k = parcel.readString();
        this.f54751l = parcel.readString();
        this.f54752m = parcel.readString();
        this.f54753n = parcel.readString();
        this.f54754o = parcel.readByte();
        this.f54755p = parcel.readByte();
        this.f54756q = parcel.readInt();
        this.f54757r = parcel.readInt();
        this.f54758s = parcel.readByte() != 0;
        this.f54759t = parcel.readByte() != 0;
        this.f54760u = parcel.readByte() != 0;
        this.f54761v = parcel.readByte() != 0;
        this.f54762w = parcel.readString();
        this.f54763x = parcel.readHashMap(null);
    }
}
