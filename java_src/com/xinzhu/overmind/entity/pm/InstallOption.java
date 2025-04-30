package com.xinzhu.overmind.entity.pm;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes.dex */
public class InstallOption implements Parcelable {
    public static final Parcelable.Creator<InstallOption> CREATOR = new a();

    /* renamed from: b  reason: collision with root package name */
    public static final int f64290b = 1;

    /* renamed from: c  reason: collision with root package name */
    public static final int f64291c = 2;

    /* renamed from: d  reason: collision with root package name */
    public static final int f64292d = 4;

    /* renamed from: e  reason: collision with root package name */
    public static final int f64293e = 8;

    /* renamed from: a  reason: collision with root package name */
    public int f64294a;

    /* loaded from: classes3.dex */
    class a implements Parcelable.Creator<InstallOption> {
        a() {
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public InstallOption createFromParcel(Parcel source) {
            return new InstallOption(source);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: b */
        public InstallOption[] newArray(int size) {
            return new InstallOption[size];
        }
    }

    public InstallOption() {
        this.f64294a = 0;
    }

    public static InstallOption a() {
        InstallOption installOption = new InstallOption();
        installOption.f64294a |= 2;
        return installOption;
    }

    public static InstallOption b() {
        InstallOption installOption = new InstallOption();
        installOption.f64294a |= 1;
        return installOption;
    }

    public boolean c(int flag) {
        return (flag & this.f64294a) != 0;
    }

    public InstallOption d() {
        this.f64294a |= 8;
        return this;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public InstallOption e() {
        this.f64294a |= 4;
        return this;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel dest, int flags) {
        dest.writeInt(this.f64294a);
    }

    protected InstallOption(Parcel in2) {
        this.f64294a = 0;
        this.f64294a = in2.readInt();
    }
}
