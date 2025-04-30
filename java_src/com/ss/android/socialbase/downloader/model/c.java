package com.ss.android.socialbase.downloader.model;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
/* compiled from: HttpHeader.java */
/* loaded from: classes4.dex */
public class c implements Parcelable, Comparable {
    public static final Parcelable.Creator<c> CREATOR = new Parcelable.Creator<c>() { // from class: com.ss.android.socialbase.downloader.model.c.1
        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public c createFromParcel(Parcel parcel) {
            return new c(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public c[] newArray(int i2) {
            return new c[i2];
        }
    };

    /* renamed from: a  reason: collision with root package name */
    private final String f58484a;

    /* renamed from: b  reason: collision with root package name */
    private final String f58485b;

    public c(String str, String str2) {
        this.f58484a = str;
        this.f58485b = str2;
    }

    public String a() {
        return this.f58484a;
    }

    public String b() {
        return this.f58485b;
    }

    @Override // java.lang.Comparable
    public int compareTo(Object obj) {
        if (obj instanceof c) {
            c cVar = (c) obj;
            if (TextUtils.equals(this.f58484a, cVar.a())) {
                return 0;
            }
            String str = this.f58484a;
            if (str == null) {
                return -1;
            }
            int compareTo = str.compareTo(cVar.a());
            if (compareTo > 0) {
                return 1;
            }
            return compareTo < 0 ? -1 : 0;
        }
        return 1;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        c cVar = (c) obj;
        return TextUtils.equals(this.f58484a, cVar.f58484a) && TextUtils.equals(this.f58485b, cVar.f58485b);
    }

    public int hashCode() {
        String str = this.f58484a;
        int hashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.f58485b;
        return hashCode + (str2 != null ? str2.hashCode() : 0);
    }

    public String toString() {
        return "HttpHeader{name='" + this.f58484a + "', value='" + this.f58485b + "'}";
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeString(this.f58484a);
        parcel.writeString(this.f58485b);
    }

    protected c(Parcel parcel) {
        this.f58484a = parcel.readString();
        this.f58485b = parcel.readString();
    }
}
