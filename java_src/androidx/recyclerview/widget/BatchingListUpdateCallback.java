package androidx.recyclerview.widget;

import androidx.annotation.NonNull;
/* loaded from: classes2.dex */
public class BatchingListUpdateCallback implements ListUpdateCallback {

    /* renamed from: f  reason: collision with root package name */
    private static final int f6767f = 0;

    /* renamed from: g  reason: collision with root package name */
    private static final int f6768g = 1;

    /* renamed from: h  reason: collision with root package name */
    private static final int f6769h = 2;

    /* renamed from: i  reason: collision with root package name */
    private static final int f6770i = 3;

    /* renamed from: a  reason: collision with root package name */
    final ListUpdateCallback f6771a;

    /* renamed from: b  reason: collision with root package name */
    int f6772b = 0;

    /* renamed from: c  reason: collision with root package name */
    int f6773c = -1;

    /* renamed from: d  reason: collision with root package name */
    int f6774d = -1;

    /* renamed from: e  reason: collision with root package name */
    Object f6775e = null;

    public BatchingListUpdateCallback(@NonNull ListUpdateCallback listUpdateCallback) {
        this.f6771a = listUpdateCallback;
    }

    public void dispatchLastEvent() {
        int i2 = this.f6772b;
        if (i2 == 0) {
            return;
        }
        if (i2 == 1) {
            this.f6771a.onInserted(this.f6773c, this.f6774d);
        } else if (i2 == 2) {
            this.f6771a.onRemoved(this.f6773c, this.f6774d);
        } else if (i2 == 3) {
            this.f6771a.onChanged(this.f6773c, this.f6774d, this.f6775e);
        }
        this.f6775e = null;
        this.f6772b = 0;
    }

    @Override // androidx.recyclerview.widget.ListUpdateCallback
    public void onChanged(int i2, int i4, Object obj) {
        int i5;
        if (this.f6772b == 3) {
            int i6 = this.f6773c;
            int i7 = this.f6774d;
            if (i2 <= i6 + i7 && (i5 = i2 + i4) >= i6 && this.f6775e == obj) {
                this.f6773c = Math.min(i2, i6);
                this.f6774d = Math.max(i7 + i6, i5) - this.f6773c;
                return;
            }
        }
        dispatchLastEvent();
        this.f6773c = i2;
        this.f6774d = i4;
        this.f6775e = obj;
        this.f6772b = 3;
    }

    @Override // androidx.recyclerview.widget.ListUpdateCallback
    public void onInserted(int i2, int i4) {
        int i5;
        if (this.f6772b == 1 && i2 >= (i5 = this.f6773c)) {
            int i6 = this.f6774d;
            if (i2 <= i5 + i6) {
                this.f6774d = i6 + i4;
                this.f6773c = Math.min(i2, i5);
                return;
            }
        }
        dispatchLastEvent();
        this.f6773c = i2;
        this.f6774d = i4;
        this.f6772b = 1;
    }

    @Override // androidx.recyclerview.widget.ListUpdateCallback
    public void onMoved(int i2, int i4) {
        dispatchLastEvent();
        this.f6771a.onMoved(i2, i4);
    }

    @Override // androidx.recyclerview.widget.ListUpdateCallback
    public void onRemoved(int i2, int i4) {
        int i5;
        if (this.f6772b == 2 && (i5 = this.f6773c) >= i2 && i5 <= i2 + i4) {
            this.f6774d += i4;
            this.f6773c = i2;
            return;
        }
        dispatchLastEvent();
        this.f6773c = i2;
        this.f6774d = i4;
        this.f6772b = 2;
    }
}
