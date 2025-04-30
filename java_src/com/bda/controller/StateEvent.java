package com.bda.controller;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes2.dex */
public class StateEvent extends BaseEvent implements Parcelable {
    public static final Parcelable.Creator<StateEvent> CREATOR = new a();

    /* renamed from: e  reason: collision with root package name */
    public static final int f10008e = 0;

    /* renamed from: f  reason: collision with root package name */
    public static final int f10009f = 1;

    /* renamed from: g  reason: collision with root package name */
    public static final int f10010g = 2;
    @Deprecated

    /* renamed from: h  reason: collision with root package name */
    public static final int f10011h = 3;
    @Deprecated

    /* renamed from: i  reason: collision with root package name */
    public static final int f10012i = 4;

    /* renamed from: j  reason: collision with root package name */
    public static final int f10013j = 3;

    /* renamed from: k  reason: collision with root package name */
    public static final int f10014k = 4;

    /* renamed from: l  reason: collision with root package name */
    public static final int f10015l = 0;

    /* renamed from: m  reason: collision with root package name */
    public static final int f10016m = 1;

    /* renamed from: n  reason: collision with root package name */
    public static final int f10017n = 0;

    /* renamed from: o  reason: collision with root package name */
    public static final int f10018o = 1;

    /* renamed from: p  reason: collision with root package name */
    public static final int f10019p = 0;

    /* renamed from: q  reason: collision with root package name */
    public static final int f10020q = 1;

    /* renamed from: r  reason: collision with root package name */
    public static final int f10021r = 2;

    /* renamed from: c  reason: collision with root package name */
    final int f10022c;

    /* renamed from: d  reason: collision with root package name */
    final int f10023d;

    /* loaded from: classes2.dex */
    static class a implements Parcelable.Creator<StateEvent> {
        a() {
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public StateEvent createFromParcel(Parcel parcel) {
            return new StateEvent(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: b */
        public StateEvent[] newArray(int i2) {
            return new StateEvent[i2];
        }
    }

    public StateEvent(long j4, int i2, int i4, int i5) {
        super(j4, i2);
        this.f10022c = i4;
        this.f10023d = i5;
    }

    public final int c() {
        return this.f10023d;
    }

    public final int d() {
        return this.f10022c;
    }

    @Override // com.bda.controller.BaseEvent, android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // com.bda.controller.BaseEvent, android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        super.writeToParcel(parcel, i2);
        parcel.writeInt(this.f10022c);
        parcel.writeInt(this.f10023d);
    }

    StateEvent(Parcel parcel) {
        super(parcel);
        this.f10022c = parcel.readInt();
        this.f10023d = parcel.readInt();
    }
}
