package com.xinzhu.overmind.entity;

import android.content.ComponentName;
import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes3.dex */
public class UnbindRecord implements Parcelable {
    public static final Parcelable.Creator<UnbindRecord> CREATOR = new a();

    /* renamed from: a  reason: collision with root package name */
    private int f64287a;

    /* renamed from: b  reason: collision with root package name */
    private int f64288b;

    /* renamed from: c  reason: collision with root package name */
    private ComponentName f64289c;

    /* loaded from: classes3.dex */
    class a implements Parcelable.Creator<UnbindRecord> {
        a() {
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public UnbindRecord createFromParcel(Parcel source) {
            return new UnbindRecord(source);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: b */
        public UnbindRecord[] newArray(int size) {
            return new UnbindRecord[size];
        }
    }

    public UnbindRecord() {
    }

    public static Parcelable.Creator<UnbindRecord> b() {
        return CREATOR;
    }

    public int a() {
        return this.f64287a;
    }

    public ComponentName c() {
        return this.f64289c;
    }

    public int d() {
        return this.f64288b;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public void e(int bindCount) {
        this.f64287a = bindCount;
    }

    public void f(ComponentName componentName) {
        this.f64289c = componentName;
    }

    public void g(int startId) {
        this.f64288b = startId;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel dest, int flags) {
        dest.writeInt(this.f64287a);
        dest.writeInt(this.f64288b);
        dest.writeParcelable(this.f64289c, flags);
    }

    protected UnbindRecord(Parcel in2) {
        this.f64287a = in2.readInt();
        this.f64288b = in2.readInt();
        this.f64289c = (ComponentName) in2.readParcelable(ComponentName.class.getClassLoader());
    }
}
