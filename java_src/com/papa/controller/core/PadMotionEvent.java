package com.papa.controller.core;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes4.dex */
public class PadMotionEvent extends BaseEvent implements Parcelable {
    public static final Parcelable.Creator<PadMotionEvent> CREATOR = new a();
    final int J;
    final float K;

    /* renamed from: n0  reason: collision with root package name */
    final float f54765n0;

    /* loaded from: classes4.dex */
    class a implements Parcelable.Creator<PadMotionEvent> {
        a() {
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public PadMotionEvent createFromParcel(Parcel parcel) {
            return new PadMotionEvent(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: b */
        public PadMotionEvent[] newArray(int i2) {
            return new PadMotionEvent[i2];
        }
    }

    public PadMotionEvent(long j4, int i2, String str, int i4, float f4, float f5) {
        super(j4, i2, str);
        this.J = i4;
        this.K = f4;
        this.f54765n0 = f5;
    }

    public int d() {
        return this.J;
    }

    public float e() {
        return this.K;
    }

    public float f() {
        return this.f54765n0;
    }

    @Override // com.papa.controller.core.BaseEvent, android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        super.writeToParcel(parcel, i2);
        parcel.writeInt(this.J);
        parcel.writeFloat(this.K);
        parcel.writeFloat(this.f54765n0);
    }

    public PadMotionEvent(Parcel parcel) {
        super(parcel);
        this.J = parcel.readInt();
        this.K = parcel.readFloat();
        this.f54765n0 = parcel.readFloat();
    }
}
