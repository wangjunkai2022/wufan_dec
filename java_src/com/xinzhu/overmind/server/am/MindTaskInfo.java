package com.xinzhu.overmind.server.am;

import android.content.ComponentName;
import android.content.Intent;
import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes.dex */
public class MindTaskInfo implements Parcelable {
    public static final Parcelable.Creator<MindTaskInfo> CREATOR = new a();

    /* renamed from: a  reason: collision with root package name */
    public int f64419a;

    /* renamed from: b  reason: collision with root package name */
    public Intent f64420b;

    /* renamed from: c  reason: collision with root package name */
    public ComponentName f64421c;

    /* renamed from: d  reason: collision with root package name */
    public ComponentName f64422d;

    /* loaded from: classes3.dex */
    class a implements Parcelable.Creator<MindTaskInfo> {
        a() {
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public MindTaskInfo createFromParcel(Parcel in2) {
            return new MindTaskInfo(in2);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: b */
        public MindTaskInfo[] newArray(int size) {
            return new MindTaskInfo[size];
        }
    }

    public MindTaskInfo(int taskId, Intent baseIntent, ComponentName baseActivity, ComponentName topActivity) {
        this.f64419a = taskId;
        this.f64420b = baseIntent;
        this.f64421c = baseActivity;
        this.f64422d = topActivity;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel dest, int flags) {
        dest.writeInt(this.f64419a);
        dest.writeParcelable(this.f64420b, flags);
        dest.writeParcelable(this.f64421c, flags);
        dest.writeParcelable(this.f64422d, flags);
    }

    protected MindTaskInfo(Parcel in2) {
        this.f64419a = in2.readInt();
        this.f64420b = (Intent) in2.readParcelable(Intent.class.getClassLoader());
        this.f64421c = (ComponentName) in2.readParcelable(ComponentName.class.getClassLoader());
        this.f64422d = (ComponentName) in2.readParcelable(ComponentName.class.getClassLoader());
    }
}
