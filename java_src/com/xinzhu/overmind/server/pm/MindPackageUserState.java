package com.xinzhu.overmind.server.pm;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes3.dex */
public class MindPackageUserState implements Parcelable {
    public static final Parcelable.Creator<MindPackageUserState> CREATOR = new a();

    /* renamed from: a  reason: collision with root package name */
    public boolean f64570a;

    /* renamed from: b  reason: collision with root package name */
    public boolean f64571b;

    /* renamed from: c  reason: collision with root package name */
    public boolean f64572c;

    /* loaded from: classes3.dex */
    class a implements Parcelable.Creator<MindPackageUserState> {
        a() {
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public MindPackageUserState createFromParcel(Parcel source) {
            return new MindPackageUserState(source);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: b */
        public MindPackageUserState[] newArray(int size) {
            return new MindPackageUserState[size];
        }
    }

    public MindPackageUserState() {
        this.f64570a = false;
        this.f64571b = true;
        this.f64572c = false;
    }

    public static MindPackageUserState a() {
        MindPackageUserState mindPackageUserState = new MindPackageUserState();
        mindPackageUserState.f64570a = true;
        return mindPackageUserState;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel dest, int flags) {
        dest.writeByte(this.f64570a ? (byte) 1 : (byte) 0);
        dest.writeByte(this.f64571b ? (byte) 1 : (byte) 0);
        dest.writeByte(this.f64572c ? (byte) 1 : (byte) 0);
    }

    protected MindPackageUserState(Parcel in2) {
        this.f64570a = in2.readByte() != 0;
        this.f64571b = in2.readByte() != 0;
        this.f64572c = in2.readByte() != 0;
    }

    public MindPackageUserState(MindPackageUserState state) {
        this.f64570a = state.f64570a;
        this.f64571b = state.f64571b;
        this.f64572c = state.f64572c;
    }
}
