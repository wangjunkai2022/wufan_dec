package com.papa.controller.core;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes4.dex */
public class BaseEvent implements Parcelable {
    public static final int A = -1;
    public static final int B = 0;
    public static final int C = 1;
    public static final Parcelable.Creator<BaseEvent> CREATOR = new a();
    public static final int D = 2;
    public static final int E = 8;
    public static final int F = 9;
    public static final int G = 0;
    public static final int H = 1;
    public static final int I = 2;

    /* renamed from: d  reason: collision with root package name */
    public static final int f54696d = 19;

    /* renamed from: e  reason: collision with root package name */
    public static final int f54697e = 20;

    /* renamed from: f  reason: collision with root package name */
    public static final int f54698f = 21;

    /* renamed from: g  reason: collision with root package name */
    public static final int f54699g = 22;

    /* renamed from: h  reason: collision with root package name */
    public static final int f54700h = 96;

    /* renamed from: i  reason: collision with root package name */
    public static final int f54701i = 97;

    /* renamed from: j  reason: collision with root package name */
    public static final int f54702j = 99;

    /* renamed from: k  reason: collision with root package name */
    public static final int f54703k = 100;

    /* renamed from: l  reason: collision with root package name */
    public static final int f54704l = 102;

    /* renamed from: m  reason: collision with root package name */
    public static final int f54705m = 103;

    /* renamed from: n  reason: collision with root package name */
    public static final int f54706n = 104;

    /* renamed from: o  reason: collision with root package name */
    public static final int f54707o = 105;

    /* renamed from: p  reason: collision with root package name */
    public static final int f54708p = 106;

    /* renamed from: q  reason: collision with root package name */
    public static final int f54709q = 107;

    /* renamed from: r  reason: collision with root package name */
    public static final int f54710r = 108;

    /* renamed from: s  reason: collision with root package name */
    public static final int f54711s = 109;

    /* renamed from: t  reason: collision with root package name */
    public static final int f54712t = 198;

    /* renamed from: u  reason: collision with root package name */
    public static final int f54713u = 199;

    /* renamed from: v  reason: collision with root package name */
    public static final int f54714v = 200;

    /* renamed from: w  reason: collision with root package name */
    public static final int f54715w = 201;

    /* renamed from: x  reason: collision with root package name */
    public static final int f54716x = 0;

    /* renamed from: y  reason: collision with root package name */
    public static final int f54717y = 1;

    /* renamed from: z  reason: collision with root package name */
    public static final int f54718z = -1;

    /* renamed from: a  reason: collision with root package name */
    final long f54719a;

    /* renamed from: b  reason: collision with root package name */
    final int f54720b;

    /* renamed from: c  reason: collision with root package name */
    final String f54721c;

    /* loaded from: classes4.dex */
    class a implements Parcelable.Creator<BaseEvent> {
        a() {
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public BaseEvent createFromParcel(Parcel parcel) {
            return new BaseEvent(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: b */
        public BaseEvent[] newArray(int i2) {
            return new BaseEvent[i2];
        }
    }

    public BaseEvent(long j4, int i2, String str) {
        this.f54719a = j4;
        this.f54720b = i2;
        this.f54721c = str;
    }

    public int a() {
        return this.f54720b;
    }

    public long b() {
        return this.f54719a;
    }

    public String c() {
        return this.f54721c;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeLong(this.f54719a);
        parcel.writeInt(this.f54720b);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public BaseEvent(Parcel parcel) {
        this.f54719a = parcel.readLong();
        this.f54720b = parcel.readInt();
        this.f54721c = parcel.readString();
    }
}
