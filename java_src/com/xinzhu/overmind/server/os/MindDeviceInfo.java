package com.xinzhu.overmind.server.os;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes.dex */
public class MindDeviceInfo implements Parcelable {
    public static final Parcelable.Creator<MindDeviceInfo> CREATOR = new a();

    /* renamed from: a  reason: collision with root package name */
    public String f64490a;

    /* renamed from: b  reason: collision with root package name */
    public String f64491b;

    /* renamed from: c  reason: collision with root package name */
    public String f64492c;

    /* renamed from: d  reason: collision with root package name */
    public String f64493d;

    /* renamed from: e  reason: collision with root package name */
    public String f64494e;

    /* renamed from: f  reason: collision with root package name */
    public String f64495f;

    /* loaded from: classes3.dex */
    class a implements Parcelable.Creator<MindDeviceInfo> {
        a() {
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public MindDeviceInfo createFromParcel(Parcel in2) {
            return new MindDeviceInfo(in2);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: b */
        public MindDeviceInfo[] newArray(int size) {
            return new MindDeviceInfo[size];
        }
    }

    public MindDeviceInfo() {
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel dest, int flags) {
        dest.writeString(this.f64490a);
        dest.writeString(this.f64491b);
        dest.writeString(this.f64492c);
        dest.writeString(this.f64493d);
        dest.writeString(this.f64494e);
        dest.writeString(this.f64495f);
    }

    protected MindDeviceInfo(Parcel in2) {
        this.f64490a = in2.readString();
        this.f64491b = in2.readString();
        this.f64492c = in2.readString();
        this.f64493d = in2.readString();
        this.f64494e = in2.readString();
        this.f64495f = in2.readString();
    }
}
