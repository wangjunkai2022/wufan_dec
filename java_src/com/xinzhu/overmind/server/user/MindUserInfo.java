package com.xinzhu.overmind.server.user;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes.dex */
public class MindUserInfo implements Parcelable {
    public static final Parcelable.Creator<MindUserInfo> CREATOR = new a();

    /* renamed from: a  reason: collision with root package name */
    public int f64670a;

    /* renamed from: b  reason: collision with root package name */
    public MindUserStatus f64671b;

    /* renamed from: c  reason: collision with root package name */
    public String f64672c;

    /* renamed from: d  reason: collision with root package name */
    public long f64673d;

    /* loaded from: classes3.dex */
    class a implements Parcelable.Creator<MindUserInfo> {
        a() {
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public MindUserInfo createFromParcel(Parcel source) {
            return new MindUserInfo(source);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: b */
        public MindUserInfo[] newArray(int size) {
            return new MindUserInfo[size];
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public MindUserInfo() {
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public String toString() {
        return "MindUserInfo{id=" + this.f64670a + ", status=" + this.f64671b + ", name='" + this.f64672c + "', createTime=" + this.f64673d + '}';
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel dest, int flags) {
        dest.writeInt(this.f64670a);
        MindUserStatus mindUserStatus = this.f64671b;
        dest.writeInt(mindUserStatus == null ? -1 : mindUserStatus.ordinal());
        dest.writeString(this.f64672c);
        dest.writeLong(this.f64673d);
    }

    protected MindUserInfo(Parcel in2) {
        this.f64670a = in2.readInt();
        int readInt = in2.readInt();
        this.f64671b = readInt == -1 ? null : MindUserStatus.values()[readInt];
        this.f64672c = in2.readString();
        this.f64673d = in2.readLong();
    }
}
