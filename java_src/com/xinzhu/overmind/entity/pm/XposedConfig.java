package com.xinzhu.overmind.entity.pm;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes3.dex */
public class XposedConfig implements Parcelable {
    public static final Parcelable.Creator<XposedConfig> CREATOR = new a();

    /* renamed from: a  reason: collision with root package name */
    public boolean f64306a;

    /* renamed from: b  reason: collision with root package name */
    public Map<String, Boolean> f64307b;

    /* loaded from: classes3.dex */
    class a implements Parcelable.Creator<XposedConfig> {
        a() {
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public XposedConfig createFromParcel(Parcel source) {
            return new XposedConfig(source);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: b */
        public XposedConfig[] newArray(int size) {
            return new XposedConfig[size];
        }
    }

    public XposedConfig() {
        this.f64307b = new HashMap();
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel dest, int flags) {
        dest.writeByte(this.f64306a ? (byte) 1 : (byte) 0);
        dest.writeInt(this.f64307b.size());
        for (Map.Entry<String, Boolean> entry : this.f64307b.entrySet()) {
            dest.writeString(entry.getKey());
            dest.writeValue(entry.getValue());
        }
    }

    public XposedConfig(Parcel in2) {
        this.f64307b = new HashMap();
        this.f64306a = in2.readByte() != 0;
        int readInt = in2.readInt();
        this.f64307b = new HashMap(readInt);
        for (int i2 = 0; i2 < readInt; i2++) {
            this.f64307b.put(in2.readString(), (Boolean) in2.readValue(Boolean.class.getClassLoader()));
        }
    }
}
