package androidx.activity.result;

import android.annotation.SuppressLint;
import android.content.Intent;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
@SuppressLint({"BanParcelableUsage"})
/* loaded from: classes.dex */
public final class ActivityResult implements Parcelable {
    @NonNull
    public static final Parcelable.Creator<ActivityResult> CREATOR = new Parcelable.Creator<ActivityResult>() { // from class: androidx.activity.result.ActivityResult.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ActivityResult createFromParcel(@NonNull Parcel parcel) {
            return new ActivityResult(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ActivityResult[] newArray(int i2) {
            return new ActivityResult[i2];
        }
    };

    /* renamed from: a  reason: collision with root package name */
    private final int f58a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private final Intent f59b;

    public ActivityResult(int i2, @Nullable Intent intent) {
        this.f58a = i2;
        this.f59b = intent;
    }

    @NonNull
    public static String resultCodeToString(int i2) {
        return i2 != -1 ? i2 != 0 ? String.valueOf(i2) : "RESULT_CANCELED" : "RESULT_OK";
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Nullable
    public Intent getData() {
        return this.f59b;
    }

    public int getResultCode() {
        return this.f58a;
    }

    public String toString() {
        return "ActivityResult{resultCode=" + resultCodeToString(this.f58a) + ", data=" + this.f59b + '}';
    }

    @Override // android.os.Parcelable
    public void writeToParcel(@NonNull Parcel parcel, int i2) {
        parcel.writeInt(this.f58a);
        parcel.writeInt(this.f59b == null ? 0 : 1);
        Intent intent = this.f59b;
        if (intent != null) {
            intent.writeToParcel(parcel, i2);
        }
    }

    ActivityResult(Parcel parcel) {
        this.f58a = parcel.readInt();
        this.f59b = parcel.readInt() == 0 ? null : (Intent) Intent.CREATOR.createFromParcel(parcel);
    }
}
