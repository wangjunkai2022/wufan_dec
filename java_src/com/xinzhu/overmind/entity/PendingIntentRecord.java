package com.xinzhu.overmind.entity;

import android.content.Intent;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
/* loaded from: classes.dex */
public class PendingIntentRecord implements Parcelable {
    public static final Parcelable.Creator<PendingIntentRecord> CREATOR = new a();

    /* renamed from: a  reason: collision with root package name */
    public String f64280a;

    /* renamed from: b  reason: collision with root package name */
    public int f64281b;

    /* renamed from: c  reason: collision with root package name */
    public int f64282c;

    /* renamed from: d  reason: collision with root package name */
    public IBinder f64283d;

    /* renamed from: e  reason: collision with root package name */
    public Intent f64284e;

    /* renamed from: f  reason: collision with root package name */
    public int f64285f;

    /* renamed from: g  reason: collision with root package name */
    public int f64286g;

    /* loaded from: classes3.dex */
    class a implements Parcelable.Creator<PendingIntentRecord> {
        a() {
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public PendingIntentRecord createFromParcel(Parcel in2) {
            return new PendingIntentRecord(in2);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: b */
        public PendingIntentRecord[] newArray(int size) {
            return new PendingIntentRecord[size];
        }
    }

    public PendingIntentRecord(String packageName, int uid, int userId, IBinder intentSender, Intent realIntent, int flags, int type) {
        this.f64280a = packageName;
        this.f64281b = uid;
        this.f64282c = userId;
        this.f64283d = intentSender;
        this.f64284e = realIntent;
        this.f64285f = flags;
        this.f64286g = type;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @NonNull
    public String toString() {
        return "PendingIntentRecord " + this.f64283d + " " + this.f64280a + " " + this.f64281b;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel dest, int flags) {
        dest.writeString(this.f64280a);
        dest.writeInt(this.f64281b);
        dest.writeInt(this.f64282c);
        dest.writeStrongBinder(this.f64283d);
        dest.writeParcelable(this.f64284e, flags);
        dest.writeInt(this.f64285f);
        dest.writeInt(this.f64286g);
    }

    protected PendingIntentRecord(Parcel in2) {
        this.f64280a = in2.readString();
        this.f64281b = in2.readInt();
        this.f64282c = in2.readInt();
        this.f64283d = in2.readStrongBinder();
        this.f64284e = (Intent) in2.readParcelable(Intent.class.getClassLoader());
        this.f64285f = in2.readInt();
        this.f64286g = in2.readInt();
    }
}
