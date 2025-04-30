package com.mob.apc;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import java.io.Serializable;
/* loaded from: classes4.dex */
public class a {

    /* renamed from: d  reason: collision with root package name */
    public Object f52722d;

    /* renamed from: e  reason: collision with root package name */
    public Bundle f52723e;

    /* renamed from: a  reason: collision with root package name */
    public int f52719a = -1;

    /* renamed from: b  reason: collision with root package name */
    public int f52720b = -1;

    /* renamed from: c  reason: collision with root package name */
    public int f52721c = -1;

    /* renamed from: f  reason: collision with root package name */
    public int f52724f = -1;

    public void a(Parcel parcel, int i2) {
        parcel.writeInt(this.f52719a);
        parcel.writeInt(this.f52720b);
        parcel.writeInt(this.f52721c);
        Object obj = this.f52722d;
        if (obj != null) {
            if (obj instanceof Serializable) {
                parcel.writeInt(2);
                parcel.writeSerializable((Serializable) this.f52722d);
            } else if (obj instanceof Parcelable) {
                parcel.writeInt(3);
                parcel.writeParcelable((Parcelable) this.f52722d, i2);
            }
        }
        if (this.f52723e == null) {
            parcel.writeInt(0);
            return;
        }
        parcel.writeInt(1);
        parcel.writeBundle(this.f52723e);
    }

    public String toString() {
        return "APCMessage{what=" + this.f52719a + ", arg1=" + this.f52720b + ", arg2=" + this.f52721c + ", obj=" + this.f52722d + ", data=" + this.f52723e + '}';
    }

    public a a(Parcel parcel) {
        this.f52719a = parcel.readInt();
        this.f52720b = parcel.readInt();
        this.f52721c = parcel.readInt();
        int readInt = parcel.readInt();
        if (readInt == 2) {
            this.f52722d = parcel.readSerializable();
            readInt = parcel.readInt();
        } else if (readInt == 3) {
            this.f52722d = parcel.readParcelable(getClass().getClassLoader());
            readInt = parcel.readInt();
        }
        if (readInt == 1) {
            this.f52723e = parcel.readBundle();
        }
        return this;
    }
}
