package com.xinzhu.overmind.entity.pm;

import android.os.Parcel;
import android.os.Parcelable;
import com.xinzhu.overmind.utils.u;
/* loaded from: classes.dex */
public class InstallResult implements Parcelable {
    public static final Parcelable.Creator<InstallResult> CREATOR = new a();

    /* renamed from: d  reason: collision with root package name */
    public static final String f64295d = "InstallResult";

    /* renamed from: a  reason: collision with root package name */
    public boolean f64296a;

    /* renamed from: b  reason: collision with root package name */
    public String f64297b;

    /* renamed from: c  reason: collision with root package name */
    public String f64298c;

    /* loaded from: classes3.dex */
    class a implements Parcelable.Creator<InstallResult> {
        a() {
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public InstallResult createFromParcel(Parcel source) {
            return new InstallResult(source);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: b */
        public InstallResult[] newArray(int size) {
            return new InstallResult[size];
        }
    }

    public InstallResult() {
        this.f64296a = true;
    }

    public InstallResult a(String msg) {
        this.f64298c = msg;
        this.f64296a = false;
        u.a(f64295d, msg);
        return this;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel dest, int flags) {
        dest.writeByte(this.f64296a ? (byte) 1 : (byte) 0);
        dest.writeString(this.f64297b);
        dest.writeString(this.f64298c);
    }

    protected InstallResult(Parcel in2) {
        this.f64296a = true;
        this.f64296a = in2.readByte() != 0;
        this.f64297b = in2.readString();
        this.f64298c = in2.readString();
    }
}
