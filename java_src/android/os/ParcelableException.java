package android.os;

import android.annotation.TargetApi;
import android.os.Parcelable;
@TargetApi(26)
/* loaded from: classes.dex */
public final class ParcelableException extends RuntimeException implements Parcelable {
    public static final Parcelable.Creator<ParcelableException> CREATOR = new Parcelable.Creator<ParcelableException>() { // from class: android.os.ParcelableException.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ParcelableException createFromParcel(Parcel source) {
            return new ParcelableException(ParcelableException.readFromParcel(source));
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ParcelableException[] newArray(int size) {
            return new ParcelableException[size];
        }
    };

    public ParcelableException(Throwable t3) {
        super(t3);
    }

    public static Throwable readFromParcel(Parcel in2) {
        throw new RuntimeException("Stub!");
    }

    public static void writeToParcel(Parcel out, Throwable t3) {
        throw new RuntimeException("Stub!");
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public <T extends Throwable> void maybeRethrow(Class<T> clazz) throws Throwable {
        throw new RuntimeException("Stub!");
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel dest, int flags) {
        throw new RuntimeException("Stub!");
    }
}
