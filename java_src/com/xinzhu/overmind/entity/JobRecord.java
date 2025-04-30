package com.xinzhu.overmind.entity;

import android.app.Service;
import android.app.job.JobInfo;
import android.content.pm.ServiceInfo;
import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes3.dex */
public class JobRecord implements Parcelable {
    public static final Parcelable.Creator<JobRecord> CREATOR = new a();

    /* renamed from: a  reason: collision with root package name */
    public JobInfo f64277a;

    /* renamed from: b  reason: collision with root package name */
    public ServiceInfo f64278b;

    /* renamed from: c  reason: collision with root package name */
    public Service f64279c;

    /* loaded from: classes3.dex */
    class a implements Parcelable.Creator<JobRecord> {
        a() {
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public JobRecord createFromParcel(Parcel source) {
            return new JobRecord(source);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: b */
        public JobRecord[] newArray(int size) {
            return new JobRecord[size];
        }
    }

    public JobRecord() {
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel dest, int flags) {
        dest.writeParcelable(this.f64277a, flags);
        dest.writeParcelable(this.f64278b, flags);
    }

    protected JobRecord(Parcel in2) {
        this.f64277a = (JobInfo) in2.readParcelable(JobInfo.class.getClassLoader());
        this.f64278b = (ServiceInfo) in2.readParcelable(ServiceInfo.class.getClassLoader());
    }
}
