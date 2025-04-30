package com.xinzhu.overmind.entity;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes.dex */
public class ClientConfig implements Parcelable {
    public static final Parcelable.Creator<ClientConfig> CREATOR = new a();

    /* renamed from: a  reason: collision with root package name */
    public String f64268a;

    /* renamed from: b  reason: collision with root package name */
    public String f64269b;

    /* renamed from: c  reason: collision with root package name */
    public int f64270c;

    /* renamed from: d  reason: collision with root package name */
    public int f64271d;

    /* renamed from: e  reason: collision with root package name */
    public int f64272e;

    /* renamed from: f  reason: collision with root package name */
    public int f64273f;

    /* renamed from: g  reason: collision with root package name */
    public int f64274g;

    /* renamed from: h  reason: collision with root package name */
    public IBinder f64275h;

    /* renamed from: i  reason: collision with root package name */
    public boolean f64276i;

    /* loaded from: classes3.dex */
    class a implements Parcelable.Creator<ClientConfig> {
        a() {
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public ClientConfig createFromParcel(Parcel source) {
            return new ClientConfig(source);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: b */
        public ClientConfig[] newArray(int size) {
            return new ClientConfig[size];
        }
    }

    public ClientConfig() {
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel dest, int flags) {
        dest.writeString(this.f64268a);
        dest.writeString(this.f64269b);
        dest.writeInt(this.f64270c);
        dest.writeInt(this.f64271d);
        dest.writeInt(this.f64272e);
        dest.writeInt(this.f64273f);
        dest.writeInt(this.f64274g);
        dest.writeStrongBinder(this.f64275h);
        dest.writeByte(this.f64276i ? (byte) 1 : (byte) 0);
    }

    protected ClientConfig(Parcel in2) {
        this.f64268a = in2.readString();
        this.f64269b = in2.readString();
        this.f64270c = in2.readInt();
        this.f64271d = in2.readInt();
        this.f64272e = in2.readInt();
        this.f64273f = in2.readInt();
        this.f64274g = in2.readInt();
        this.f64275h = in2.readStrongBinder();
        this.f64276i = in2.readByte() != 0;
    }
}
