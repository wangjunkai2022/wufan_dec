package com.xinzhu.overmind.entity.pm;

import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.os.Parcel;
import android.os.Parcelable;
import com.xinzhu.overmind.Overmind;
import java.util.Objects;
/* loaded from: classes3.dex */
public class InstalledPackage implements Parcelable {
    public static final Parcelable.Creator<InstalledPackage> CREATOR = new a();

    /* renamed from: a  reason: collision with root package name */
    public int f64304a;

    /* renamed from: b  reason: collision with root package name */
    public String f64305b;

    /* loaded from: classes3.dex */
    class a implements Parcelable.Creator<InstalledPackage> {
        a() {
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public InstalledPackage createFromParcel(Parcel source) {
            return new InstalledPackage(source);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: b */
        public InstalledPackage[] newArray(int size) {
            return new InstalledPackage[size];
        }
    }

    public InstalledPackage() {
    }

    public ApplicationInfo a() {
        return Overmind.getMindPackageManager().f(this.f64305b, 128, this.f64304a);
    }

    public PackageInfo b() {
        return Overmind.getMindPackageManager().l(this.f64305b, 128, this.f64304a);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object o3) {
        if (this == o3) {
            return true;
        }
        if (o3 == null || getClass() != o3.getClass()) {
            return false;
        }
        return Objects.equals(this.f64305b, ((InstalledPackage) o3).f64305b);
    }

    public int hashCode() {
        return Objects.hash(this.f64305b);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel dest, int flags) {
        dest.writeInt(this.f64304a);
        dest.writeString(this.f64305b);
    }

    public InstalledPackage(String packageName) {
        this.f64305b = packageName;
    }

    protected InstalledPackage(Parcel in2) {
        this.f64304a = in2.readInt();
        this.f64305b = in2.readString();
    }
}
