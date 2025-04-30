package androidx.fragment.app;

import android.annotation.SuppressLint;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
/* JADX INFO: Access modifiers changed from: package-private */
@SuppressLint({"BanParcelableUsage"})
/* loaded from: classes.dex */
public final class FragmentState implements Parcelable {
    public static final Parcelable.Creator<FragmentState> CREATOR = new Parcelable.Creator<FragmentState>() { // from class: androidx.fragment.app.FragmentState.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public FragmentState createFromParcel(Parcel parcel) {
            return new FragmentState(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public FragmentState[] newArray(int i2) {
            return new FragmentState[i2];
        }
    };

    /* renamed from: a  reason: collision with root package name */
    final String f5949a;

    /* renamed from: b  reason: collision with root package name */
    final String f5950b;

    /* renamed from: c  reason: collision with root package name */
    final boolean f5951c;

    /* renamed from: d  reason: collision with root package name */
    final int f5952d;

    /* renamed from: e  reason: collision with root package name */
    final int f5953e;

    /* renamed from: f  reason: collision with root package name */
    final String f5954f;

    /* renamed from: g  reason: collision with root package name */
    final boolean f5955g;

    /* renamed from: h  reason: collision with root package name */
    final boolean f5956h;

    /* renamed from: i  reason: collision with root package name */
    final boolean f5957i;

    /* renamed from: j  reason: collision with root package name */
    final Bundle f5958j;

    /* renamed from: k  reason: collision with root package name */
    final boolean f5959k;

    /* renamed from: l  reason: collision with root package name */
    final int f5960l;

    /* renamed from: m  reason: collision with root package name */
    Bundle f5961m;

    /* JADX INFO: Access modifiers changed from: package-private */
    public FragmentState(Fragment fragment) {
        this.f5949a = fragment.getClass().getName();
        this.f5950b = fragment.mWho;
        this.f5951c = fragment.mFromLayout;
        this.f5952d = fragment.mFragmentId;
        this.f5953e = fragment.mContainerId;
        this.f5954f = fragment.mTag;
        this.f5955g = fragment.mRetainInstance;
        this.f5956h = fragment.mRemoving;
        this.f5957i = fragment.mDetached;
        this.f5958j = fragment.mArguments;
        this.f5959k = fragment.mHidden;
        this.f5960l = fragment.mMaxState.ordinal();
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @NonNull
    public String toString() {
        StringBuilder sb = new StringBuilder(128);
        sb.append("FragmentState{");
        sb.append(this.f5949a);
        sb.append(" (");
        sb.append(this.f5950b);
        sb.append(")}:");
        if (this.f5951c) {
            sb.append(" fromLayout");
        }
        if (this.f5953e != 0) {
            sb.append(" id=0x");
            sb.append(Integer.toHexString(this.f5953e));
        }
        String str = this.f5954f;
        if (str != null && !str.isEmpty()) {
            sb.append(" tag=");
            sb.append(this.f5954f);
        }
        if (this.f5955g) {
            sb.append(" retainInstance");
        }
        if (this.f5956h) {
            sb.append(" removing");
        }
        if (this.f5957i) {
            sb.append(" detached");
        }
        if (this.f5959k) {
            sb.append(" hidden");
        }
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeString(this.f5949a);
        parcel.writeString(this.f5950b);
        parcel.writeInt(this.f5951c ? 1 : 0);
        parcel.writeInt(this.f5952d);
        parcel.writeInt(this.f5953e);
        parcel.writeString(this.f5954f);
        parcel.writeInt(this.f5955g ? 1 : 0);
        parcel.writeInt(this.f5956h ? 1 : 0);
        parcel.writeInt(this.f5957i ? 1 : 0);
        parcel.writeBundle(this.f5958j);
        parcel.writeInt(this.f5959k ? 1 : 0);
        parcel.writeBundle(this.f5961m);
        parcel.writeInt(this.f5960l);
    }

    FragmentState(Parcel parcel) {
        this.f5949a = parcel.readString();
        this.f5950b = parcel.readString();
        this.f5951c = parcel.readInt() != 0;
        this.f5952d = parcel.readInt();
        this.f5953e = parcel.readInt();
        this.f5954f = parcel.readString();
        this.f5955g = parcel.readInt() != 0;
        this.f5956h = parcel.readInt() != 0;
        this.f5957i = parcel.readInt() != 0;
        this.f5958j = parcel.readBundle();
        this.f5959k = parcel.readInt() != 0;
        this.f5961m = parcel.readBundle();
        this.f5960l = parcel.readInt();
    }
}
