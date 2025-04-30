package com.airsaid.pickerviewlibrary.widget;

import android.view.View;
import com.airsaid.pickerviewlibrary.R;
import com.airsaid.pickerviewlibrary.widget.wheelview.WheelView;
import java.util.ArrayList;
/* compiled from: WheelOptions.java */
/* loaded from: classes2.dex */
public class b<T> {

    /* renamed from: a  reason: collision with root package name */
    private View f9320a;

    /* renamed from: b  reason: collision with root package name */
    private WheelView f9321b;

    /* renamed from: c  reason: collision with root package name */
    private WheelView f9322c;

    /* renamed from: d  reason: collision with root package name */
    private WheelView f9323d;

    /* renamed from: e  reason: collision with root package name */
    private ArrayList<T> f9324e;

    /* renamed from: f  reason: collision with root package name */
    private ArrayList<ArrayList<T>> f9325f;

    /* renamed from: g  reason: collision with root package name */
    private ArrayList<ArrayList<ArrayList<T>>> f9326g;

    /* renamed from: h  reason: collision with root package name */
    private boolean f9327h = false;

    /* renamed from: i  reason: collision with root package name */
    private f.c f9328i;

    /* renamed from: j  reason: collision with root package name */
    private f.c f9329j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: WheelOptions.java */
    /* loaded from: classes2.dex */
    public class a implements f.c {
        a() {
        }

        @Override // f.c
        public void a(int i2) {
            int i4;
            if (b.this.f9325f != null) {
                i4 = b.this.f9322c.getCurrentItem();
                if (i4 >= ((ArrayList) b.this.f9325f.get(i2)).size() - 1) {
                    i4 = ((ArrayList) b.this.f9325f.get(i2)).size() - 1;
                }
                b.this.f9322c.setAdapter(new e.a((ArrayList) b.this.f9325f.get(i2)));
                b.this.f9322c.setCurrentItem(i4);
            } else {
                i4 = 0;
            }
            if (b.this.f9326g != null) {
                b.this.f9329j.a(i4);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: WheelOptions.java */
    /* renamed from: com.airsaid.pickerviewlibrary.widget.b$b  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    public class C0022b implements f.c {
        C0022b() {
        }

        @Override // f.c
        public void a(int i2) {
            if (b.this.f9326g != null) {
                int currentItem = b.this.f9321b.getCurrentItem();
                if (currentItem >= b.this.f9326g.size() - 1) {
                    currentItem = b.this.f9326g.size() - 1;
                }
                if (i2 >= ((ArrayList) b.this.f9325f.get(currentItem)).size() - 1) {
                    i2 = ((ArrayList) b.this.f9325f.get(currentItem)).size() - 1;
                }
                int currentItem2 = b.this.f9323d.getCurrentItem();
                if (currentItem2 >= ((ArrayList) ((ArrayList) b.this.f9326g.get(currentItem)).get(i2)).size() - 1) {
                    currentItem2 = ((ArrayList) ((ArrayList) b.this.f9326g.get(currentItem)).get(i2)).size() - 1;
                }
                b.this.f9323d.setAdapter(new e.a((ArrayList) ((ArrayList) b.this.f9326g.get(b.this.f9321b.getCurrentItem())).get(i2)));
                b.this.f9323d.setCurrentItem(currentItem2);
            }
        }
    }

    public b(View view) {
        this.f9320a = view;
        t(view);
    }

    private void i(int i2, int i4, int i5) {
        ArrayList<ArrayList<T>> arrayList = this.f9325f;
        if (arrayList != null) {
            this.f9322c.setAdapter(new e.a(arrayList.get(i2)));
            this.f9322c.setCurrentItem(i4);
        }
        ArrayList<ArrayList<ArrayList<T>>> arrayList2 = this.f9326g;
        if (arrayList2 != null) {
            this.f9323d.setAdapter(new e.a(arrayList2.get(i2).get(i4)));
            this.f9323d.setCurrentItem(i5);
        }
    }

    public int[] g() {
        return new int[]{this.f9321b.getCurrentItem(), this.f9322c.getCurrentItem(), this.f9323d.getCurrentItem()};
    }

    public View h() {
        return this.f9320a;
    }

    public void j(int i2, int i4, int i5) {
        if (this.f9327h) {
            i(i2, i4, i5);
        }
        this.f9321b.setCurrentItem(i2);
        this.f9322c.setCurrentItem(i4);
        this.f9323d.setCurrentItem(i5);
    }

    public void k(boolean z3) {
        this.f9321b.setCyclic(z3);
        this.f9322c.setCyclic(z3);
        this.f9323d.setCyclic(z3);
    }

    public void l(boolean z3, boolean z4, boolean z5) {
        this.f9321b.setCyclic(z3);
        this.f9322c.setCyclic(z4);
        this.f9323d.setCyclic(z5);
    }

    public void m(String str, String str2, String str3) {
        if (str != null) {
            this.f9321b.setLabel(str);
        }
        if (str2 != null) {
            this.f9322c.setLabel(str2);
        }
        if (str3 != null) {
            this.f9323d.setLabel(str3);
        }
    }

    public void n(boolean z3) {
        this.f9322c.setCyclic(z3);
    }

    public void o(boolean z3) {
        this.f9323d.setCyclic(z3);
    }

    public void p(ArrayList<T> arrayList) {
        q(arrayList, null, null, false);
    }

    public void q(ArrayList<T> arrayList, ArrayList<ArrayList<T>> arrayList2, ArrayList<ArrayList<ArrayList<T>>> arrayList3, boolean z3) {
        this.f9327h = z3;
        this.f9324e = arrayList;
        this.f9325f = arrayList2;
        this.f9326g = arrayList3;
        int i2 = arrayList3 == null ? 8 : 4;
        if (arrayList2 == null) {
            i2 = 12;
        }
        WheelView wheelView = (WheelView) this.f9320a.findViewById(R.id.options1);
        this.f9321b = wheelView;
        wheelView.setAdapter(new e.a(this.f9324e, i2));
        this.f9321b.setCurrentItem(0);
        WheelView wheelView2 = (WheelView) this.f9320a.findViewById(R.id.options2);
        this.f9322c = wheelView2;
        ArrayList<ArrayList<T>> arrayList4 = this.f9325f;
        if (arrayList4 != null) {
            wheelView2.setAdapter(new e.a(arrayList4.get(0)));
        }
        this.f9322c.setCurrentItem(this.f9321b.getCurrentItem());
        WheelView wheelView3 = (WheelView) this.f9320a.findViewById(R.id.options3);
        this.f9323d = wheelView3;
        ArrayList<ArrayList<ArrayList<T>>> arrayList5 = this.f9326g;
        if (arrayList5 != null) {
            wheelView3.setAdapter(new e.a(arrayList5.get(0).get(0)));
        }
        WheelView wheelView4 = this.f9323d;
        wheelView4.setCurrentItem(wheelView4.getCurrentItem());
        if (this.f9325f == null) {
            this.f9322c.setVisibility(8);
        }
        if (this.f9326g == null) {
            this.f9323d.setVisibility(8);
        }
        this.f9328i = new a();
        this.f9329j = new C0022b();
        if (arrayList2 != null && z3) {
            this.f9321b.setOnItemSelectedListener(this.f9328i);
        }
        if (arrayList3 == null || !z3) {
            return;
        }
        this.f9322c.setOnItemSelectedListener(this.f9329j);
    }

    public void r(ArrayList<T> arrayList, ArrayList<ArrayList<T>> arrayList2, boolean z3) {
        q(arrayList, arrayList2, null, z3);
    }

    public void s(float f4) {
        WheelView wheelView = this.f9321b;
        if (wheelView != null) {
            wheelView.setTextSize(f4);
        }
        WheelView wheelView2 = this.f9322c;
        if (wheelView2 != null) {
            wheelView2.setTextSize(f4);
        }
        WheelView wheelView3 = this.f9323d;
        if (wheelView3 != null) {
            wheelView3.setTextSize(f4);
        }
    }

    public void t(View view) {
        this.f9320a = view;
    }
}
