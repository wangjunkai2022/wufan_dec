package android.content;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.ArrayList;
import java.util.Iterator;
/* loaded from: classes.dex */
public class SyncStatusInfo implements Parcelable {
    public static final Parcelable.Creator<SyncStatusInfo> CREATOR = new Parcelable.Creator<SyncStatusInfo>() { // from class: android.content.SyncStatusInfo.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public SyncStatusInfo createFromParcel(Parcel in2) {
            return new SyncStatusInfo(in2);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public SyncStatusInfo[] newArray(int size) {
            return new SyncStatusInfo[size];
        }
    };
    private static final String TAG = "Sync";
    static final int VERSION = 2;
    public final int authorityId;
    public long initialFailureTime;
    public boolean initialize;
    public String lastFailureMesg;
    public int lastFailureSource;
    public long lastFailureTime;
    public int lastSuccessSource;
    public long lastSuccessTime;
    public int numSourceLocal;
    public int numSourcePeriodic;
    public int numSourcePoll;
    public int numSourceServer;
    public int numSourceUser;
    public int numSyncs;
    public boolean pending;
    private ArrayList<Long> periodicSyncTimes;
    public long totalElapsedTime;

    public SyncStatusInfo(int authorityId) {
        this.authorityId = authorityId;
    }

    private void ensurePeriodicSyncTimeSize(int index) {
        if (this.periodicSyncTimes == null) {
            this.periodicSyncTimes = new ArrayList<>(0);
        }
        int i2 = index + 1;
        if (this.periodicSyncTimes.size() < i2) {
            for (int size = this.periodicSyncTimes.size(); size < i2; size++) {
                this.periodicSyncTimes.add(0L);
            }
        }
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public int getLastFailureMesgAsInt(int def) {
        return 0;
    }

    public long getPeriodicSyncTime(int index) {
        ArrayList<Long> arrayList = this.periodicSyncTimes;
        if (arrayList == null || index >= arrayList.size()) {
            return 0L;
        }
        return this.periodicSyncTimes.get(index).longValue();
    }

    public void removePeriodicSyncTime(int index) {
        ArrayList<Long> arrayList = this.periodicSyncTimes;
        if (arrayList == null || index >= arrayList.size()) {
            return;
        }
        this.periodicSyncTimes.remove(index);
    }

    public void setPeriodicSyncTime(int index, long when) {
        ensurePeriodicSyncTimeSize(index);
        this.periodicSyncTimes.set(index, Long.valueOf(when));
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int flags) {
        parcel.writeInt(2);
        parcel.writeInt(this.authorityId);
        parcel.writeLong(this.totalElapsedTime);
        parcel.writeInt(this.numSyncs);
        parcel.writeInt(this.numSourcePoll);
        parcel.writeInt(this.numSourceServer);
        parcel.writeInt(this.numSourceLocal);
        parcel.writeInt(this.numSourceUser);
        parcel.writeLong(this.lastSuccessTime);
        parcel.writeInt(this.lastSuccessSource);
        parcel.writeLong(this.lastFailureTime);
        parcel.writeInt(this.lastFailureSource);
        parcel.writeString(this.lastFailureMesg);
        parcel.writeLong(this.initialFailureTime);
        parcel.writeInt(this.pending ? 1 : 0);
        parcel.writeInt(this.initialize ? 1 : 0);
        ArrayList<Long> arrayList = this.periodicSyncTimes;
        if (arrayList != null) {
            parcel.writeInt(arrayList.size());
            Iterator<Long> it2 = this.periodicSyncTimes.iterator();
            while (it2.hasNext()) {
                parcel.writeLong(it2.next().longValue());
            }
            return;
        }
        parcel.writeInt(-1);
    }

    public SyncStatusInfo(Parcel parcel) {
        int readInt = parcel.readInt();
        if (readInt != 2 && readInt != 1) {
            StringBuilder sb = new StringBuilder();
            sb.append("Unknown version: ");
            sb.append(readInt);
        }
        this.authorityId = parcel.readInt();
        this.totalElapsedTime = parcel.readLong();
        this.numSyncs = parcel.readInt();
        this.numSourcePoll = parcel.readInt();
        this.numSourceServer = parcel.readInt();
        this.numSourceLocal = parcel.readInt();
        this.numSourceUser = parcel.readInt();
        this.lastSuccessTime = parcel.readLong();
        this.lastSuccessSource = parcel.readInt();
        this.lastFailureTime = parcel.readLong();
        this.lastFailureSource = parcel.readInt();
        this.lastFailureMesg = parcel.readString();
        this.initialFailureTime = parcel.readLong();
        this.pending = parcel.readInt() != 0;
        this.initialize = parcel.readInt() != 0;
        if (readInt == 1) {
            this.periodicSyncTimes = null;
            return;
        }
        int readInt2 = parcel.readInt();
        if (readInt2 < 0) {
            this.periodicSyncTimes = null;
            return;
        }
        this.periodicSyncTimes = new ArrayList<>();
        for (int i2 = 0; i2 < readInt2; i2++) {
            this.periodicSyncTimes.add(Long.valueOf(parcel.readLong()));
        }
    }

    public SyncStatusInfo(SyncStatusInfo other) {
        this.authorityId = other.authorityId;
        this.totalElapsedTime = other.totalElapsedTime;
        this.numSyncs = other.numSyncs;
        this.numSourcePoll = other.numSourcePoll;
        this.numSourceServer = other.numSourceServer;
        this.numSourceLocal = other.numSourceLocal;
        this.numSourceUser = other.numSourceUser;
        this.numSourcePeriodic = other.numSourcePeriodic;
        this.lastSuccessTime = other.lastSuccessTime;
        this.lastSuccessSource = other.lastSuccessSource;
        this.lastFailureTime = other.lastFailureTime;
        this.lastFailureSource = other.lastFailureSource;
        this.lastFailureMesg = other.lastFailureMesg;
        this.initialFailureTime = other.initialFailureTime;
        this.pending = other.pending;
        this.initialize = other.initialize;
        if (other.periodicSyncTimes != null) {
            this.periodicSyncTimes = new ArrayList<>(other.periodicSyncTimes);
        }
    }
}
