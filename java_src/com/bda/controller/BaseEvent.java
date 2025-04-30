package com.bda.controller;

import android.os.Parcel;
import android.os.Parcelable;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public class BaseEvent implements Parcelable {
    public static final Parcelable.Creator<BaseEvent> CREATOR = new a();

    /* renamed from: a  reason: collision with root package name */
    final long f9970a;

    /* renamed from: b  reason: collision with root package name */
    final int f9971b;

    /* loaded from: classes2.dex */
    static class a implements Parcelable.Creator<BaseEvent> {
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

    public BaseEvent(long j4, int i2) {
        this.f9970a = j4;
        this.f9971b = i2;
    }

    public final int a() {
        return this.f9971b;
    }

    public final long b() {
        return this.f9970a;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeLong(this.f9970a);
        parcel.writeInt(this.f9971b);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public BaseEvent(Parcel parcel) {
        this.f9970a = parcel.readLong();
        this.f9971b = parcel.readInt();
    }
}
