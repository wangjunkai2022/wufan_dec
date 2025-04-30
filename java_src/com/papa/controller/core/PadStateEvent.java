package com.papa.controller.core;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes4.dex */
public class PadStateEvent extends BaseEvent implements Parcelable {
    public static final Parcelable.Creator<PadStateEvent> CREATOR = new a();
    final int J;
    final int K;

    /* renamed from: n0  reason: collision with root package name */
    protected String f54766n0;

    /* loaded from: classes4.dex */
    class a implements Parcelable.Creator<PadStateEvent> {
        a() {
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public PadStateEvent createFromParcel(Parcel parcel) {
            return new PadStateEvent(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: b */
        public PadStateEvent[] newArray(int i2) {
            return new PadStateEvent[i2];
        }
    }

    public PadStateEvent(long j4, int i2, String str, int i4, int i5, String str2) {
        super(j4, i2, str);
        this.f54766n0 = "";
        this.J = i4;
        this.K = i5;
        this.f54766n0 = str2;
    }

    public int d() {
        return this.K;
    }

    public String e() {
        return this.f54766n0;
    }

    public int f() {
        return this.J;
    }

    public String toString() {
        return "PadStateEvent{state=" + this.J + ", action=" + this.K + ", mac='" + this.f54766n0 + "'}";
    }

    @Override // com.papa.controller.core.BaseEvent, android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        super.writeToParcel(parcel, i2);
        parcel.writeInt(this.J);
        parcel.writeInt(this.K);
        parcel.writeString(this.f54766n0);
    }

    public PadStateEvent(Parcel parcel) {
        super(parcel);
        this.f54766n0 = "";
        this.J = parcel.readInt();
        this.K = parcel.readInt();
        this.f54766n0 = parcel.readString();
    }
}
