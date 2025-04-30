package com.mob.apc.a;

import android.os.Parcel;
import com.mob.apc.APCException;
/* loaded from: classes4.dex */
public class e {

    /* renamed from: a  reason: collision with root package name */
    public com.mob.apc.a f52747a;

    /* renamed from: b  reason: collision with root package name */
    public String f52748b;

    /* renamed from: e  reason: collision with root package name */
    public long f52751e;

    /* renamed from: d  reason: collision with root package name */
    public APCException f52750d = null;

    /* renamed from: c  reason: collision with root package name */
    public String f52749c = com.mob.apc.b.a().getPackageName();

    public e(com.mob.apc.a aVar, String str, long j4) {
        this.f52751e = -1L;
        this.f52747a = aVar;
        this.f52748b = str;
        this.f52751e = j4;
    }

    public void a(Parcel parcel, int i2) {
        parcel.writeLong(this.f52751e);
        if (this.f52747a != null) {
            parcel.writeInt(1);
            this.f52747a.a(parcel, i2);
        }
        if (this.f52748b != null) {
            parcel.writeInt(2);
            parcel.writeString(this.f52748b);
        }
        this.f52749c = com.mob.apc.b.a().getPackageName();
        parcel.writeInt(3);
        parcel.writeString(this.f52749c);
    }

    public String toString() {
        return "InnerMessage{apcMessage=" + this.f52747a + ", businessID='" + this.f52748b + "', pkg='" + this.f52749c + "'}";
    }

    public static e a(Parcel parcel) {
        e eVar = new e(null, null, parcel.readLong());
        int readInt = parcel.readInt();
        if (readInt == 1) {
            eVar.f52747a = new com.mob.apc.a().a(parcel);
            readInt = parcel.readInt();
        }
        if (readInt == 2) {
            eVar.f52748b = parcel.readString();
            readInt = parcel.readInt();
        }
        if (readInt == 3) {
            eVar.f52749c = parcel.readString();
        }
        return eVar;
    }
}
