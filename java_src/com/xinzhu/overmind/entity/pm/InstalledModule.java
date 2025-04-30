package com.xinzhu.overmind.entity.pm;

import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.os.Parcel;
import android.os.Parcelable;
import com.xinzhu.overmind.Overmind;
/* loaded from: classes3.dex */
public class InstalledModule implements Parcelable {
    public static final Parcelable.Creator<InstalledModule> CREATOR = new a();

    /* renamed from: a  reason: collision with root package name */
    public String f64299a;

    /* renamed from: b  reason: collision with root package name */
    public String f64300b;

    /* renamed from: c  reason: collision with root package name */
    public String f64301c;

    /* renamed from: d  reason: collision with root package name */
    public String f64302d;

    /* renamed from: e  reason: collision with root package name */
    public boolean f64303e;

    /* loaded from: classes3.dex */
    class a implements Parcelable.Creator<InstalledModule> {
        a() {
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public InstalledModule createFromParcel(Parcel source) {
            return new InstalledModule(source);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: b */
        public InstalledModule[] newArray(int size) {
            return new InstalledModule[size];
        }
    }

    public InstalledModule() {
    }

    public ApplicationInfo a() {
        return Overmind.getMindPackageManager().f(this.f64299a, 128, -4);
    }

    public PackageInfo b() {
        return Overmind.getMindPackageManager().l(this.f64299a, 128, -4);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel dest, int flags) {
        dest.writeString(this.f64299a);
        dest.writeString(this.f64300b);
        dest.writeString(this.f64301c);
        dest.writeString(this.f64302d);
        dest.writeByte(this.f64303e ? (byte) 1 : (byte) 0);
    }

    protected InstalledModule(Parcel in2) {
        this.f64299a = in2.readString();
        this.f64300b = in2.readString();
        this.f64301c = in2.readString();
        this.f64302d = in2.readString();
        this.f64303e = in2.readByte() != 0;
    }
}
