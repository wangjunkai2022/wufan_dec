package org.androidannotations.api.builder;

import android.os.Bundle;
import android.os.Parcelable;
import android.util.SparseArray;
import java.io.Serializable;
import java.util.ArrayList;
import org.androidannotations.api.builder.d;
/* compiled from: FragmentBuilder.java */
/* loaded from: classes5.dex */
public abstract class d<I extends d<I, F>, F> extends c {
    protected Bundle args = new Bundle();

    public I arg(Bundle bundle) {
        this.args.putAll(bundle);
        return this;
    }

    public Bundle args() {
        return this.args;
    }

    public abstract F build();

    public I integerArrayListArg(String str, ArrayList<Integer> arrayList) {
        this.args.putIntegerArrayList(str, arrayList);
        return this;
    }

    public I parcelableArrayListArg(String str, ArrayList<? extends Parcelable> arrayList) {
        this.args.putParcelableArrayList(str, arrayList);
        return this;
    }

    public I stringArrayListArg(String str, ArrayList<String> arrayList) {
        this.args.putStringArrayList(str, arrayList);
        return this;
    }

    public I arg(String str, boolean z3) {
        this.args.putBoolean(str, z3);
        return this;
    }

    public I arg(String str, byte b4) {
        this.args.putByte(str, b4);
        return this;
    }

    public I arg(String str, char c4) {
        this.args.putChar(str, c4);
        return this;
    }

    public I arg(String str, short s3) {
        this.args.putShort(str, s3);
        return this;
    }

    public I arg(String str, int i2) {
        this.args.putInt(str, i2);
        return this;
    }

    public I arg(String str, long j4) {
        this.args.putLong(str, j4);
        return this;
    }

    public I arg(String str, float f4) {
        this.args.putFloat(str, f4);
        return this;
    }

    public I arg(String str, double d4) {
        this.args.putDouble(str, d4);
        return this;
    }

    public I arg(String str, String str2) {
        this.args.putString(str, str2);
        return this;
    }

    public I arg(String str, CharSequence charSequence) {
        this.args.putCharSequence(str, charSequence);
        return this;
    }

    public I arg(String str, Parcelable parcelable) {
        this.args.putParcelable(str, parcelable);
        return this;
    }

    public I arg(String str, Parcelable[] parcelableArr) {
        this.args.putParcelableArray(str, parcelableArr);
        return this;
    }

    public I arg(String str, SparseArray<? extends Parcelable> sparseArray) {
        this.args.putSparseParcelableArray(str, sparseArray);
        return this;
    }

    public I arg(String str, Serializable serializable) {
        this.args.putSerializable(str, serializable);
        return this;
    }

    public I arg(String str, boolean[] zArr) {
        this.args.putBooleanArray(str, zArr);
        return this;
    }

    public I arg(String str, byte[] bArr) {
        this.args.putByteArray(str, bArr);
        return this;
    }

    public I arg(String str, short[] sArr) {
        this.args.putShortArray(str, sArr);
        return this;
    }

    public I arg(String str, char[] cArr) {
        this.args.putCharArray(str, cArr);
        return this;
    }

    public I arg(String str, int[] iArr) {
        this.args.putIntArray(str, iArr);
        return this;
    }

    public I arg(String str, long[] jArr) {
        this.args.putLongArray(str, jArr);
        return this;
    }

    public I arg(String str, float[] fArr) {
        this.args.putFloatArray(str, fArr);
        return this;
    }

    public I arg(String str, double[] dArr) {
        this.args.putDoubleArray(str, dArr);
        return this;
    }

    public I arg(String str, String[] strArr) {
        this.args.putStringArray(str, strArr);
        return this;
    }

    public I arg(String str, Bundle bundle) {
        this.args.putBundle(str, bundle);
        return this;
    }
}
