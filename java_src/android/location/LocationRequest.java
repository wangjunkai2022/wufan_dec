package android.location;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes.dex */
public final class LocationRequest implements Parcelable {
    public static final Parcelable.Creator<LocationRequest> CREATOR = new Parcelable.Creator<LocationRequest>() { // from class: android.location.LocationRequest.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public LocationRequest createFromParcel(Parcel in2) {
            return null;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public LocationRequest[] newArray(int size) {
            return null;
        }
    };

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public String getProvider() {
        return null;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel dest, int flags) {
    }
}
