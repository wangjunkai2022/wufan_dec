package com.ss.android.downloadlib.a.b;

import android.os.Parcel;
import android.os.Parcelable;
/* compiled from: AidlMsg.java */
/* loaded from: classes4.dex */
public class b implements Parcelable {
    public static final Parcelable.Creator<b> CREATOR = new Parcelable.Creator<b>() { // from class: com.ss.android.downloadlib.a.b.b.1
        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public b createFromParcel(Parcel parcel) {
            return new b(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public b[] newArray(int i2) {
            return new b[i2];
        }
    };

    /* renamed from: a  reason: collision with root package name */
    public int f57047a;

    /* renamed from: b  reason: collision with root package name */
    public int f57048b;

    /* renamed from: c  reason: collision with root package name */
    public String f57049c;

    /* renamed from: d  reason: collision with root package name */
    public int f57050d;

    /* renamed from: e  reason: collision with root package name */
    public String f57051e;

    /* renamed from: f  reason: collision with root package name */
    public String f57052f;

    public b() {
        this.f57049c = "";
        this.f57051e = "";
        this.f57052f = "";
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && getClass() == obj.getClass()) {
            b bVar = (b) obj;
            if (this.f57047a == bVar.f57047a && this.f57048b == bVar.f57048b) {
                String str = this.f57049c;
                if (str != null) {
                    return str.equals(bVar.f57049c);
                }
                if (bVar.f57049c == null) {
                    return true;
                }
            }
        }
        return false;
    }

    public int hashCode() {
        int i2 = ((this.f57047a * 31) + this.f57048b) * 31;
        String str = this.f57049c;
        return i2 + (str != null ? str.hashCode() : 0);
    }

    public String toString() {
        return "";
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeInt(this.f57047a);
        parcel.writeInt(this.f57048b);
        parcel.writeString(this.f57049c);
        parcel.writeString(this.f57051e);
        parcel.writeString(this.f57052f);
        parcel.writeInt(this.f57050d);
    }

    protected b(Parcel parcel) {
        this.f57049c = "";
        this.f57051e = "";
        this.f57052f = "";
        this.f57047a = parcel.readInt();
        this.f57048b = parcel.readInt();
        this.f57049c = parcel.readString();
        this.f57051e = parcel.readString();
        this.f57052f = parcel.readString();
        this.f57050d = parcel.readInt();
    }
}
