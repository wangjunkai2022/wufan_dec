package com.papa.controller.core;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes4.dex */
public class PadKeyEvent extends BaseEvent implements Parcelable {
    public static final Parcelable.Creator<PadKeyEvent> CREATOR = new a();
    final int J;
    final int K;

    /* renamed from: n0  reason: collision with root package name */
    final float f54764n0;

    /* loaded from: classes4.dex */
    class a implements Parcelable.Creator<PadKeyEvent> {
        a() {
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public PadKeyEvent createFromParcel(Parcel parcel) {
            return new PadKeyEvent(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: b */
        public PadKeyEvent[] newArray(int i2) {
            return new PadKeyEvent[i2];
        }
    }

    public PadKeyEvent(long j4, int i2, String str, int i4, int i5, float f4) {
        super(j4, i2, str);
        this.J = i4;
        this.K = i5;
        this.f54764n0 = f4;
    }

    public int d() {
        return this.K;
    }

    public int e() {
        return this.J;
    }

    public float f() {
        return this.f54764n0;
    }

    @Override // com.papa.controller.core.BaseEvent, android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        super.writeToParcel(parcel, i2);
        parcel.writeInt(this.J);
        parcel.writeInt(this.K);
        parcel.writeFloat(this.f54764n0);
    }

    public PadKeyEvent(Parcel parcel) {
        super(parcel);
        this.J = parcel.readInt();
        this.K = parcel.readInt();
        this.f54764n0 = parcel.readFloat();
    }
}
