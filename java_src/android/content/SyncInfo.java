package android.content;

import android.accounts.Account;
import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes.dex */
public class SyncInfo implements Parcelable {
    public final Account account;
    public final String authority;
    public final int authorityId;
    public final long startTime;
    private static final Account REDACTED_ACCOUNT = new Account("*****", "*****");
    public static final Parcelable.Creator<SyncInfo> CREATOR = new Parcelable.Creator<SyncInfo>() { // from class: android.content.SyncInfo.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public SyncInfo createFromParcel(Parcel in2) {
            return new SyncInfo(in2);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public SyncInfo[] newArray(int size) {
            return new SyncInfo[size];
        }
    };

    public SyncInfo(int authorityId, Account account, String authority, long startTime) {
        throw new RuntimeException("Stub!");
    }

    public static SyncInfo createAccountRedacted(int authorityId, String authority, long startTime) {
        throw new RuntimeException("Stub!");
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int flags) {
        parcel.writeInt(this.authorityId);
        parcel.writeParcelable(this.account, flags);
        parcel.writeString(this.authority);
        parcel.writeLong(this.startTime);
    }

    public SyncInfo(SyncInfo other) {
        throw new RuntimeException("Stub!");
    }

    SyncInfo(Parcel parcel) {
        throw new RuntimeException("Stub!");
    }
}
