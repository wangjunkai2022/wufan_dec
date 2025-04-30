package com.xinzhu.overmind.server;

import android.content.pm.ApplicationInfo;
import android.os.Binder;
import android.os.ConditionVariable;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Process;
import android.text.TextUtils;
import com.xinzhu.overmind.entity.ClientConfig;
import java.util.Arrays;
/* loaded from: classes3.dex */
public class ProcessRecord extends Binder implements Parcelable {
    public static final Parcelable.Creator<ProcessRecord> CREATOR = new a();
    public IInterface appThread;
    public int baseVUid;
    public int callingVUid;
    public com.xinzhu.overmind.client.c client;
    public final ApplicationInfo info;
    public ConditionVariable initLock;
    public int pid;
    public final String processName;
    public boolean runWithPlugin;
    public int uid;
    public int userId;
    public int vpid;
    public int vuid;

    /* loaded from: classes3.dex */
    class a implements Parcelable.Creator<ProcessRecord> {
        a() {
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public ProcessRecord createFromParcel(Parcel source) {
            return new ProcessRecord(source);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: b */
        public ProcessRecord[] newArray(int size) {
            return new ProcessRecord[size];
        }
    }

    public ProcessRecord(ApplicationInfo info, String processName, int vuid, int vpid, int callingVUid) {
        this.initLock = new ConditionVariable();
        this.info = info;
        this.vuid = vuid;
        this.vpid = vpid;
        this.userId = 0;
        this.callingVUid = callingVUid;
        this.processName = processName;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object o3) {
        if (this == o3) {
            return true;
        }
        if (o3 == null || getClass() != o3.getClass()) {
            return false;
        }
        ProcessRecord processRecord = (ProcessRecord) o3;
        return this.pid == processRecord.pid && this.vuid == processRecord.vuid && this.vpid == processRecord.vpid && this.uid == processRecord.uid && this.userId == processRecord.userId && this.baseVUid == processRecord.baseVUid && TextUtils.equals(this.processName, processRecord.processName) && this.runWithPlugin == processRecord.runWithPlugin;
    }

    public int getCallingVUid() {
        return this.callingVUid;
    }

    public ClientConfig getClientConfig() {
        ClientConfig clientConfig = new ClientConfig();
        clientConfig.f64268a = this.info.packageName;
        clientConfig.f64269b = this.processName;
        clientConfig.f64270c = this.vpid;
        clientConfig.f64271d = this.vuid;
        clientConfig.f64272e = this.uid;
        clientConfig.f64273f = this.userId;
        clientConfig.f64275h = this;
        clientConfig.f64274g = this.baseVUid;
        clientConfig.f64276i = this.runWithPlugin;
        return clientConfig;
    }

    public String getPackageName() {
        return this.info.packageName;
    }

    public String getProviderAuthority() {
        if (this.runWithPlugin) {
            return com.xinzhu.overmind.client.f.c(this.vpid);
        }
        return com.xinzhu.overmind.client.f.g(this.vpid);
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.processName, Integer.valueOf(this.pid), Integer.valueOf(this.vuid), Integer.valueOf(this.vpid), Integer.valueOf(this.uid), Integer.valueOf(this.pid), Integer.valueOf(this.userId)});
    }

    public void kill() {
        int i2 = this.pid;
        if (i2 > 0) {
            try {
                Process.killProcess(i2);
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel dest, int flags) {
        dest.writeParcelable(this.info, flags);
        dest.writeString(this.processName);
        dest.writeInt(this.pid);
        dest.writeInt(this.vuid);
        dest.writeInt(this.vpid);
        dest.writeInt(this.uid);
        dest.writeInt(this.callingVUid);
        dest.writeInt(this.userId);
        dest.writeInt(this.baseVUid);
        dest.writeByte(this.runWithPlugin ? (byte) 1 : (byte) 0);
    }

    protected ProcessRecord(Parcel in2) {
        this.initLock = new ConditionVariable();
        this.info = (ApplicationInfo) in2.readParcelable(ApplicationInfo.class.getClassLoader());
        this.processName = in2.readString();
        this.pid = in2.readInt();
        this.vuid = in2.readInt();
        this.vpid = in2.readInt();
        this.uid = in2.readInt();
        this.callingVUid = in2.readInt();
        this.userId = in2.readInt();
        this.baseVUid = in2.readInt();
        this.runWithPlugin = in2.readByte() != 0;
    }
}
