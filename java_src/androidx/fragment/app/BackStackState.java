package androidx.fragment.app;

import android.annotation.SuppressLint;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import androidx.fragment.app.FragmentTransaction;
import androidx.lifecycle.Lifecycle;
import java.util.ArrayList;
/* JADX INFO: Access modifiers changed from: package-private */
@SuppressLint({"BanParcelableUsage"})
/* loaded from: classes.dex */
public final class BackStackState implements Parcelable {
    public static final Parcelable.Creator<BackStackState> CREATOR = new Parcelable.Creator<BackStackState>() { // from class: androidx.fragment.app.BackStackState.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public BackStackState createFromParcel(Parcel parcel) {
            return new BackStackState(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public BackStackState[] newArray(int i2) {
            return new BackStackState[i2];
        }
    };

    /* renamed from: o  reason: collision with root package name */
    private static final String f5729o = "FragmentManager";

    /* renamed from: a  reason: collision with root package name */
    final int[] f5730a;

    /* renamed from: b  reason: collision with root package name */
    final ArrayList<String> f5731b;

    /* renamed from: c  reason: collision with root package name */
    final int[] f5732c;

    /* renamed from: d  reason: collision with root package name */
    final int[] f5733d;

    /* renamed from: e  reason: collision with root package name */
    final int f5734e;

    /* renamed from: f  reason: collision with root package name */
    final String f5735f;

    /* renamed from: g  reason: collision with root package name */
    final int f5736g;

    /* renamed from: h  reason: collision with root package name */
    final int f5737h;

    /* renamed from: i  reason: collision with root package name */
    final CharSequence f5738i;

    /* renamed from: j  reason: collision with root package name */
    final int f5739j;

    /* renamed from: k  reason: collision with root package name */
    final CharSequence f5740k;

    /* renamed from: l  reason: collision with root package name */
    final ArrayList<String> f5741l;

    /* renamed from: m  reason: collision with root package name */
    final ArrayList<String> f5742m;

    /* renamed from: n  reason: collision with root package name */
    final boolean f5743n;

    public BackStackState(BackStackRecord backStackRecord) {
        int size = backStackRecord.f6012c.size();
        this.f5730a = new int[size * 5];
        if (backStackRecord.f6018i) {
            this.f5731b = new ArrayList<>(size);
            this.f5732c = new int[size];
            this.f5733d = new int[size];
            int i2 = 0;
            int i4 = 0;
            while (i2 < size) {
                FragmentTransaction.Op op = backStackRecord.f6012c.get(i2);
                int i5 = i4 + 1;
                this.f5730a[i4] = op.f6029a;
                ArrayList<String> arrayList = this.f5731b;
                Fragment fragment = op.f6030b;
                arrayList.add(fragment != null ? fragment.mWho : null);
                int[] iArr = this.f5730a;
                int i6 = i5 + 1;
                iArr[i5] = op.f6031c;
                int i7 = i6 + 1;
                iArr[i6] = op.f6032d;
                int i8 = i7 + 1;
                iArr[i7] = op.f6033e;
                iArr[i8] = op.f6034f;
                this.f5732c[i2] = op.f6035g.ordinal();
                this.f5733d[i2] = op.f6036h.ordinal();
                i2++;
                i4 = i8 + 1;
            }
            this.f5734e = backStackRecord.f6017h;
            this.f5735f = backStackRecord.f6020k;
            this.f5736g = backStackRecord.G;
            this.f5737h = backStackRecord.f6021l;
            this.f5738i = backStackRecord.f6022m;
            this.f5739j = backStackRecord.f6023n;
            this.f5740k = backStackRecord.f6024o;
            this.f5741l = backStackRecord.f6025p;
            this.f5742m = backStackRecord.f6026q;
            this.f5743n = backStackRecord.f6027r;
            return;
        }
        throw new IllegalStateException("Not on back stack");
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public BackStackRecord instantiate(FragmentManager fragmentManager) {
        BackStackRecord backStackRecord = new BackStackRecord(fragmentManager);
        int i2 = 0;
        int i4 = 0;
        while (i2 < this.f5730a.length) {
            FragmentTransaction.Op op = new FragmentTransaction.Op();
            int i5 = i2 + 1;
            op.f6029a = this.f5730a[i2];
            if (FragmentManager.y0(2)) {
                StringBuilder sb = new StringBuilder();
                sb.append("Instantiate ");
                sb.append(backStackRecord);
                sb.append(" op #");
                sb.append(i4);
                sb.append(" base fragment #");
                sb.append(this.f5730a[i5]);
            }
            String str = this.f5731b.get(i4);
            if (str != null) {
                op.f6030b = fragmentManager.c0(str);
            } else {
                op.f6030b = null;
            }
            op.f6035g = Lifecycle.State.values()[this.f5732c[i4]];
            op.f6036h = Lifecycle.State.values()[this.f5733d[i4]];
            int[] iArr = this.f5730a;
            int i6 = i5 + 1;
            int i7 = iArr[i5];
            op.f6031c = i7;
            int i8 = i6 + 1;
            int i9 = iArr[i6];
            op.f6032d = i9;
            int i10 = i8 + 1;
            int i11 = iArr[i8];
            op.f6033e = i11;
            int i12 = iArr[i10];
            op.f6034f = i12;
            backStackRecord.f6013d = i7;
            backStackRecord.f6014e = i9;
            backStackRecord.f6015f = i11;
            backStackRecord.f6016g = i12;
            backStackRecord.b(op);
            i4++;
            i2 = i10 + 1;
        }
        backStackRecord.f6017h = this.f5734e;
        backStackRecord.f6020k = this.f5735f;
        backStackRecord.G = this.f5736g;
        backStackRecord.f6018i = true;
        backStackRecord.f6021l = this.f5737h;
        backStackRecord.f6022m = this.f5738i;
        backStackRecord.f6023n = this.f5739j;
        backStackRecord.f6024o = this.f5740k;
        backStackRecord.f6025p = this.f5741l;
        backStackRecord.f6026q = this.f5742m;
        backStackRecord.f6027r = this.f5743n;
        backStackRecord.e(1);
        return backStackRecord;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeIntArray(this.f5730a);
        parcel.writeStringList(this.f5731b);
        parcel.writeIntArray(this.f5732c);
        parcel.writeIntArray(this.f5733d);
        parcel.writeInt(this.f5734e);
        parcel.writeString(this.f5735f);
        parcel.writeInt(this.f5736g);
        parcel.writeInt(this.f5737h);
        TextUtils.writeToParcel(this.f5738i, parcel, 0);
        parcel.writeInt(this.f5739j);
        TextUtils.writeToParcel(this.f5740k, parcel, 0);
        parcel.writeStringList(this.f5741l);
        parcel.writeStringList(this.f5742m);
        parcel.writeInt(this.f5743n ? 1 : 0);
    }

    public BackStackState(Parcel parcel) {
        this.f5730a = parcel.createIntArray();
        this.f5731b = parcel.createStringArrayList();
        this.f5732c = parcel.createIntArray();
        this.f5733d = parcel.createIntArray();
        this.f5734e = parcel.readInt();
        this.f5735f = parcel.readString();
        this.f5736g = parcel.readInt();
        this.f5737h = parcel.readInt();
        this.f5738i = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
        this.f5739j = parcel.readInt();
        this.f5740k = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
        this.f5741l = parcel.createStringArrayList();
        this.f5742m = parcel.createStringArrayList();
        this.f5743n = parcel.readInt() != 0;
    }
}
