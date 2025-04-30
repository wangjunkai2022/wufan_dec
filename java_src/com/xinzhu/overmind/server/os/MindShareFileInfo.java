package com.xinzhu.overmind.server.os;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import java.io.File;
import java.io.FileInputStream;
/* loaded from: classes.dex */
public class MindShareFileInfo implements Parcelable {
    public static final Parcelable.Creator<MindShareFileInfo> CREATOR = new a();

    /* renamed from: a  reason: collision with root package name */
    public String f64496a;

    /* renamed from: b  reason: collision with root package name */
    public Boolean f64497b;

    /* renamed from: c  reason: collision with root package name */
    public Boolean f64498c;

    /* renamed from: d  reason: collision with root package name */
    public long f64499d;

    /* loaded from: classes3.dex */
    class a implements Parcelable.Creator<MindShareFileInfo> {
        a() {
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public MindShareFileInfo createFromParcel(Parcel in2) {
            return new MindShareFileInfo(in2);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: b */
        public MindShareFileInfo[] newArray(int size) {
            return new MindShareFileInfo[size];
        }
    }

    public MindShareFileInfo(File file) {
        this.f64496a = file.getAbsolutePath();
        this.f64497b = Boolean.valueOf(file.exists());
        this.f64498c = Boolean.valueOf(file.isDirectory());
        this.f64499d = a(file);
    }

    private static long a(File file) {
        try {
            if (!file.exists() || file.isDirectory()) {
                return 0L;
            }
            return new FileInputStream(file).available();
        } catch (Throwable th) {
            th.printStackTrace();
            return 0L;
        }
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @NonNull
    public String toString() {
        return "MindShareFileInfo{path=" + this.f64496a + ", exists=" + this.f64497b + ", isDirectory='" + this.f64498c + "', fileSize=" + this.f64499d + '}';
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel dest, int flags) {
        dest.writeString(this.f64496a);
        dest.writeByte(this.f64497b.booleanValue() ? (byte) 1 : (byte) 0);
        dest.writeByte(this.f64498c.booleanValue() ? (byte) 1 : (byte) 0);
        dest.writeLong(this.f64499d);
    }

    protected MindShareFileInfo(Parcel in2) {
        this.f64496a = in2.readString();
        this.f64497b = Boolean.valueOf(in2.readByte() != 0);
        this.f64498c = Boolean.valueOf(in2.readByte() != 0);
        this.f64499d = in2.readLong();
    }
}
