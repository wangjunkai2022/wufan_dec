package com.tencent.bugly.crashreport.common.info;

import android.os.Parcel;
import android.os.Parcelable;
/* compiled from: BUGLY */
/* loaded from: classes4.dex */
public class PlugInBean implements Parcelable {
    public static final Parcelable.Creator<PlugInBean> CREATOR = new Parcelable.Creator<PlugInBean>() { // from class: com.tencent.bugly.crashreport.common.info.PlugInBean.1
        @Override // android.os.Parcelable.Creator
        public final /* synthetic */ PlugInBean createFromParcel(Parcel parcel) {
            return new PlugInBean(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public final /* bridge */ /* synthetic */ PlugInBean[] newArray(int i2) {
            return new PlugInBean[i2];
        }
    };

    /* renamed from: a  reason: collision with root package name */
    public final String f59358a;

    /* renamed from: b  reason: collision with root package name */
    public final String f59359b;

    /* renamed from: c  reason: collision with root package name */
    public final String f59360c;

    public PlugInBean(String str, String str2, String str3) {
        this.f59358a = str;
        this.f59359b = str2;
        this.f59360c = str3;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public String toString() {
        return "plid:" + this.f59358a + " plV:" + this.f59359b + " plUUID:" + this.f59360c;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeString(this.f59358a);
        parcel.writeString(this.f59359b);
        parcel.writeString(this.f59360c);
    }

    public PlugInBean(Parcel parcel) {
        this.f59358a = parcel.readString();
        this.f59359b = parcel.readString();
        this.f59360c = parcel.readString();
    }
}
