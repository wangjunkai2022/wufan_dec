package it.sephiroth.android.library.widget;

import android.widget.ExpandableListView;
import java.util.ArrayList;
/* compiled from: ExpandableHListPosition.java */
/* loaded from: classes5.dex */
class a {

    /* renamed from: e  reason: collision with root package name */
    private static final int f70624e = 5;

    /* renamed from: f  reason: collision with root package name */
    private static ArrayList<a> f70625f = new ArrayList<>(5);

    /* renamed from: g  reason: collision with root package name */
    public static final int f70626g = 1;

    /* renamed from: h  reason: collision with root package name */
    public static final int f70627h = 2;

    /* renamed from: a  reason: collision with root package name */
    public int f70628a;

    /* renamed from: b  reason: collision with root package name */
    public int f70629b;

    /* renamed from: c  reason: collision with root package name */
    int f70630c;

    /* renamed from: d  reason: collision with root package name */
    public int f70631d;

    private a() {
    }

    private static a b() {
        synchronized (f70625f) {
            if (f70625f.size() > 0) {
                a remove = f70625f.remove(0);
                remove.h();
                return remove;
            }
            return new a();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static a c(int i2, int i4, int i5, int i6) {
        a b4 = b();
        b4.f70631d = i2;
        b4.f70628a = i4;
        b4.f70629b = i5;
        b4.f70630c = i6;
        return b4;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static a d(int i2, int i4) {
        return c(1, i2, i4, 0);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static a e(int i2) {
        return c(2, i2, 0, 0);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static a f(long j4) {
        if (j4 == 4294967295L) {
            return null;
        }
        a b4 = b();
        b4.f70628a = ExpandableListView.getPackedPositionGroup(j4);
        if (ExpandableListView.getPackedPositionType(j4) == 1) {
            b4.f70631d = 1;
            b4.f70629b = ExpandableListView.getPackedPositionChild(j4);
        } else {
            b4.f70631d = 2;
        }
        return b4;
    }

    private void h() {
        this.f70628a = 0;
        this.f70629b = 0;
        this.f70630c = 0;
        this.f70631d = 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public long a() {
        return this.f70631d == 1 ? ExpandableListView.getPackedPositionForChild(this.f70628a, this.f70629b) : ExpandableListView.getPackedPositionForGroup(this.f70628a);
    }

    public void g() {
        synchronized (f70625f) {
            if (f70625f.size() < 5) {
                f70625f.add(this);
            }
        }
    }
}
