package com.bda.controller;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes2.dex */
public final class KeyEvent extends BaseEvent implements Parcelable {
    public static final Parcelable.Creator<KeyEvent> CREATOR = new a();

    /* renamed from: e  reason: collision with root package name */
    public static final int f9979e = 0;

    /* renamed from: f  reason: collision with root package name */
    public static final int f9980f = 19;

    /* renamed from: g  reason: collision with root package name */
    public static final int f9981g = 20;

    /* renamed from: h  reason: collision with root package name */
    public static final int f9982h = 21;

    /* renamed from: i  reason: collision with root package name */
    public static final int f9983i = 22;

    /* renamed from: j  reason: collision with root package name */
    public static final int f9984j = 96;

    /* renamed from: k  reason: collision with root package name */
    public static final int f9985k = 97;

    /* renamed from: l  reason: collision with root package name */
    public static final int f9986l = 99;

    /* renamed from: m  reason: collision with root package name */
    public static final int f9987m = 100;

    /* renamed from: n  reason: collision with root package name */
    public static final int f9988n = 102;

    /* renamed from: o  reason: collision with root package name */
    public static final int f9989o = 103;

    /* renamed from: p  reason: collision with root package name */
    public static final int f9990p = 104;

    /* renamed from: q  reason: collision with root package name */
    public static final int f9991q = 105;

    /* renamed from: r  reason: collision with root package name */
    public static final int f9992r = 106;

    /* renamed from: s  reason: collision with root package name */
    public static final int f9993s = 107;

    /* renamed from: t  reason: collision with root package name */
    public static final int f9994t = 108;

    /* renamed from: u  reason: collision with root package name */
    public static final int f9995u = 109;

    /* renamed from: v  reason: collision with root package name */
    public static final int f9996v = 0;

    /* renamed from: w  reason: collision with root package name */
    public static final int f9997w = 1;

    /* renamed from: c  reason: collision with root package name */
    final int f9998c;

    /* renamed from: d  reason: collision with root package name */
    final int f9999d;

    /* loaded from: classes2.dex */
    static class a implements Parcelable.Creator<KeyEvent> {
        a() {
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public KeyEvent createFromParcel(Parcel parcel) {
            return new KeyEvent(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: b */
        public KeyEvent[] newArray(int i2) {
            return new KeyEvent[i2];
        }
    }

    public KeyEvent(long j4, int i2, int i4, int i5) {
        super(j4, i2);
        this.f9998c = i4;
        this.f9999d = i5;
    }

    public final int c() {
        return this.f9999d;
    }

    public final int d() {
        return this.f9998c;
    }

    @Override // com.bda.controller.BaseEvent, android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // com.bda.controller.BaseEvent, android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        super.writeToParcel(parcel, i2);
        parcel.writeInt(this.f9998c);
        parcel.writeInt(this.f9999d);
    }

    KeyEvent(Parcel parcel) {
        super(parcel);
        this.f9998c = parcel.readInt();
        this.f9999d = parcel.readInt();
    }
}
