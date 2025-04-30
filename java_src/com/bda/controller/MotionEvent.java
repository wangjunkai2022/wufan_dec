package com.bda.controller;

import android.os.Parcel;
import android.os.Parcelable;
import android.util.SparseArray;
/* loaded from: classes2.dex */
public final class MotionEvent extends BaseEvent implements Parcelable {
    public static final Parcelable.Creator<MotionEvent> CREATOR = new a();

    /* renamed from: e  reason: collision with root package name */
    public static final int f10000e = 0;

    /* renamed from: f  reason: collision with root package name */
    public static final int f10001f = 1;

    /* renamed from: g  reason: collision with root package name */
    public static final int f10002g = 11;

    /* renamed from: h  reason: collision with root package name */
    public static final int f10003h = 14;

    /* renamed from: i  reason: collision with root package name */
    public static final int f10004i = 17;

    /* renamed from: j  reason: collision with root package name */
    public static final int f10005j = 18;

    /* renamed from: c  reason: collision with root package name */
    final SparseArray<Float> f10006c;

    /* renamed from: d  reason: collision with root package name */
    final SparseArray<Float> f10007d;

    /* loaded from: classes2.dex */
    static class a implements Parcelable.Creator<MotionEvent> {
        a() {
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public MotionEvent createFromParcel(Parcel parcel) {
            return new MotionEvent(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: b */
        public MotionEvent[] newArray(int i2) {
            return new MotionEvent[i2];
        }
    }

    public MotionEvent(long j4, int i2, float f4, float f5, float f6, float f7, float f8, float f9) {
        super(j4, i2);
        SparseArray<Float> sparseArray = new SparseArray<>(4);
        this.f10006c = sparseArray;
        sparseArray.put(0, Float.valueOf(f4));
        sparseArray.put(1, Float.valueOf(f5));
        sparseArray.put(11, Float.valueOf(f6));
        sparseArray.put(14, Float.valueOf(f7));
        SparseArray<Float> sparseArray2 = new SparseArray<>(2);
        this.f10007d = sparseArray2;
        sparseArray2.put(0, Float.valueOf(f8));
        sparseArray2.put(1, Float.valueOf(f9));
    }

    public final int c(int i2) {
        return -1;
    }

    public final float d(int i2) {
        return e(i2, 0);
    }

    @Override // com.bda.controller.BaseEvent, android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public final float e(int i2, int i4) {
        if (i4 == 0) {
            return this.f10006c.get(i2, Float.valueOf(0.0f)).floatValue();
        }
        return 0.0f;
    }

    public final int f() {
        return 1;
    }

    public final int g(int i2) {
        return 0;
    }

    public final float h() {
        return j();
    }

    public final float i() {
        return n();
    }

    public final float j() {
        return e(0, 0);
    }

    public final float k(int i2) {
        return e(0, i2);
    }

    public final float l() {
        return this.f10007d.get(0, Float.valueOf(0.0f)).floatValue();
    }

    public final float n() {
        return e(1, 0);
    }

    public final float o(int i2) {
        return e(1, i2);
    }

    public final float p() {
        return this.f10007d.get(1, Float.valueOf(0.0f)).floatValue();
    }

    @Override // com.bda.controller.BaseEvent, android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        super.writeToParcel(parcel, i2);
        int size = this.f10006c.size();
        parcel.writeInt(size);
        for (int i4 = 0; i4 < size; i4++) {
            parcel.writeInt(this.f10006c.keyAt(i4));
            parcel.writeFloat(this.f10006c.valueAt(i4).floatValue());
        }
        int size2 = this.f10007d.size();
        parcel.writeInt(size2);
        for (int i5 = 0; i5 < size2; i5++) {
            parcel.writeInt(this.f10007d.keyAt(i5));
            parcel.writeFloat(this.f10007d.valueAt(i5).floatValue());
        }
    }

    public MotionEvent(long j4, int i2, int[] iArr, float[] fArr, int[] iArr2, float[] fArr2) {
        super(j4, i2);
        int length = iArr.length;
        this.f10006c = new SparseArray<>(length);
        for (int i4 = 0; i4 < length; i4++) {
            this.f10006c.put(iArr[i4], Float.valueOf(fArr[i4]));
        }
        int length2 = iArr2.length;
        this.f10007d = new SparseArray<>(length2);
        for (int i5 = 0; i5 < length2; i5++) {
            this.f10007d.put(iArr2[i5], Float.valueOf(fArr2[i5]));
        }
    }

    MotionEvent(Parcel parcel) {
        super(parcel);
        int readInt = parcel.readInt();
        this.f10006c = new SparseArray<>(readInt);
        for (int i2 = 0; i2 < readInt; i2++) {
            this.f10006c.put(parcel.readInt(), Float.valueOf(parcel.readFloat()));
        }
        this.f10007d = new SparseArray<>(parcel.readInt());
        for (int i4 = 0; i4 < readInt; i4++) {
            this.f10007d.put(parcel.readInt(), Float.valueOf(parcel.readFloat()));
        }
    }
}
