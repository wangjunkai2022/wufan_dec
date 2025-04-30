package androidx.fragment.app;

import android.annotation.SuppressLint;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.fragment.app.FragmentManager;
import java.util.ArrayList;
/* JADX INFO: Access modifiers changed from: package-private */
@SuppressLint({"BanParcelableUsage"})
/* loaded from: classes.dex */
public final class FragmentManagerState implements Parcelable {
    public static final Parcelable.Creator<FragmentManagerState> CREATOR = new Parcelable.Creator<FragmentManagerState>() { // from class: androidx.fragment.app.FragmentManagerState.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public FragmentManagerState createFromParcel(Parcel parcel) {
            return new FragmentManagerState(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public FragmentManagerState[] newArray(int i2) {
            return new FragmentManagerState[i2];
        }
    };

    /* renamed from: a  reason: collision with root package name */
    ArrayList<FragmentState> f5932a;

    /* renamed from: b  reason: collision with root package name */
    ArrayList<String> f5933b;

    /* renamed from: c  reason: collision with root package name */
    BackStackState[] f5934c;

    /* renamed from: d  reason: collision with root package name */
    int f5935d;

    /* renamed from: e  reason: collision with root package name */
    String f5936e;

    /* renamed from: f  reason: collision with root package name */
    ArrayList<String> f5937f;

    /* renamed from: g  reason: collision with root package name */
    ArrayList<Bundle> f5938g;

    /* renamed from: h  reason: collision with root package name */
    ArrayList<FragmentManager.LaunchedFragmentInfo> f5939h;

    public FragmentManagerState() {
        this.f5936e = null;
        this.f5937f = new ArrayList<>();
        this.f5938g = new ArrayList<>();
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeTypedList(this.f5932a);
        parcel.writeStringList(this.f5933b);
        parcel.writeTypedArray(this.f5934c, i2);
        parcel.writeInt(this.f5935d);
        parcel.writeString(this.f5936e);
        parcel.writeStringList(this.f5937f);
        parcel.writeTypedList(this.f5938g);
        parcel.writeTypedList(this.f5939h);
    }

    public FragmentManagerState(Parcel parcel) {
        this.f5936e = null;
        this.f5937f = new ArrayList<>();
        this.f5938g = new ArrayList<>();
        this.f5932a = parcel.createTypedArrayList(FragmentState.CREATOR);
        this.f5933b = parcel.createStringArrayList();
        this.f5934c = (BackStackState[]) parcel.createTypedArray(BackStackState.CREATOR);
        this.f5935d = parcel.readInt();
        this.f5936e = parcel.readString();
        this.f5937f = parcel.createStringArrayList();
        this.f5938g = parcel.createTypedArrayList(Bundle.CREATOR);
        this.f5939h = parcel.createTypedArrayList(FragmentManager.LaunchedFragmentInfo.CREATOR);
    }
}
