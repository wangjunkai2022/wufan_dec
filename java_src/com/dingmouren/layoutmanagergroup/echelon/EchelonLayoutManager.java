package com.dingmouren.layoutmanagergroup.echelon;

import android.content.Context;
import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;
import x.a;
/* loaded from: classes2.dex */
public class EchelonLayoutManager extends RecyclerView.LayoutManager {

    /* renamed from: g  reason: collision with root package name */
    private static final String f11191g = "EchelonLayoutManager";

    /* renamed from: a  reason: collision with root package name */
    private Context f11192a;

    /* renamed from: b  reason: collision with root package name */
    private int f11193b;

    /* renamed from: c  reason: collision with root package name */
    private int f11194c;

    /* renamed from: d  reason: collision with root package name */
    private int f11195d;

    /* renamed from: e  reason: collision with root package name */
    private int f11196e = Integer.MAX_VALUE;

    /* renamed from: f  reason: collision with root package name */
    private float f11197f = 0.9f;

    public EchelonLayoutManager(Context context) {
        this.f11192a = context;
        int a4 = (int) (a() * 0.87f);
        this.f11193b = a4;
        this.f11194c = (int) (a4 * 1.46f);
    }

    private void c(RecyclerView.Recycler recycler) {
        int i2;
        float f4;
        EchelonLayoutManager echelonLayoutManager;
        int i4;
        EchelonLayoutManager echelonLayoutManager2 = this;
        if (getItemCount() == 0) {
            return;
        }
        int floor = (int) Math.floor(echelonLayoutManager2.f11196e / echelonLayoutManager2.f11194c);
        int b4 = b();
        int i5 = echelonLayoutManager2.f11194c;
        int i6 = b4 - i5;
        int i7 = echelonLayoutManager2.f11196e % i5;
        float f5 = i7 * 1.0f;
        float f6 = f5 / i5;
        ArrayList arrayList = new ArrayList();
        int i8 = floor - 1;
        int i9 = i8;
        int i10 = 1;
        while (true) {
            if (i9 < 0) {
                i2 = i7;
                f4 = f5;
                echelonLayoutManager = echelonLayoutManager2;
                i4 = i8;
                break;
            }
            double b5 = (b() - echelonLayoutManager2.f11194c) / 2;
            int i11 = i9;
            double pow = Math.pow(0.8d, i10);
            Double.isNaN(b5);
            double d4 = b5 * pow;
            double d5 = i6;
            double d6 = f6;
            Double.isNaN(d6);
            Double.isNaN(d5);
            int i12 = (int) (d5 - (d6 * d4));
            echelonLayoutManager = this;
            i4 = i8;
            i2 = i7;
            f4 = f5;
            double d7 = i10 - 1;
            double pow2 = Math.pow(echelonLayoutManager.f11197f, d7);
            double d8 = 1.0f - ((1.0f - echelonLayoutManager.f11197f) * f6);
            Double.isNaN(d8);
            a aVar = new a(i12, (float) (pow2 * d8), f6, (i12 * 1.0f) / b());
            arrayList.add(0, aVar);
            Double.isNaN(d5);
            int i13 = (int) (d5 - d4);
            if (i13 <= 0) {
                double d9 = i13;
                Double.isNaN(d9);
                aVar.i((int) (d9 + d4));
                aVar.g(0.0f);
                aVar.f(aVar.d() / b());
                aVar.h((float) Math.pow(echelonLayoutManager.f11197f, d7));
                break;
            }
            i10++;
            echelonLayoutManager2 = echelonLayoutManager;
            i8 = i4;
            f5 = f4;
            i9 = i11 - 1;
            i6 = i13;
            i7 = i2;
        }
        if (floor < echelonLayoutManager.f11195d) {
            int b6 = b() - i2;
            arrayList.add(new a(b6, 1.0f, f4 / echelonLayoutManager.f11194c, (b6 * 1.0f) / b()).e());
        } else {
            floor = i4;
        }
        int size = arrayList.size();
        int i14 = floor - (size - 1);
        for (int childCount = getChildCount() - 1; childCount >= 0; childCount--) {
            View childAt = echelonLayoutManager.getChildAt(childCount);
            int position = echelonLayoutManager.getPosition(childAt);
            if (position > floor || position < i14) {
                echelonLayoutManager.removeAndRecycleView(childAt, recycler);
            }
        }
        detachAndScrapAttachedViews(recycler);
        for (int i15 = 0; i15 < size; i15++) {
            View viewForPosition = recycler.getViewForPosition(i14 + i15);
            a aVar2 = (a) arrayList.get(i15);
            echelonLayoutManager.addView(viewForPosition);
            echelonLayoutManager.d(viewForPosition);
            int a4 = (a() - echelonLayoutManager.f11193b) / 2;
            layoutDecoratedWithMargins(viewForPosition, a4, aVar2.d(), a4 + echelonLayoutManager.f11193b, aVar2.d() + echelonLayoutManager.f11194c);
            viewForPosition.setPivotX(viewForPosition.getWidth() / 2);
            viewForPosition.setPivotY(0.0f);
            viewForPosition.setScaleX(aVar2.c());
            viewForPosition.setScaleY(aVar2.c());
        }
    }

    private void d(View view) {
        view.measure(View.MeasureSpec.makeMeasureSpec(this.f11193b, 1073741824), View.MeasureSpec.makeMeasureSpec(this.f11194c, 1073741824));
    }

    public int a() {
        return (getWidth() - getPaddingLeft()) - getPaddingRight();
    }

    public int b() {
        return (getHeight() - getPaddingTop()) - getPaddingBottom();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public boolean canScrollVertically() {
        return true;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public RecyclerView.LayoutParams generateDefaultLayoutParams() {
        return new RecyclerView.LayoutParams(-2, -2);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void onLayoutChildren(RecyclerView.Recycler recycler, RecyclerView.State state) {
        if (state.getItemCount() == 0 || state.isPreLayout()) {
            return;
        }
        removeAndRecycleAllViews(recycler);
        int a4 = (int) (a() * 0.87f);
        this.f11193b = a4;
        this.f11194c = (int) (a4 * 1.46f);
        this.f11195d = getItemCount();
        this.f11196e = Math.min(Math.max(this.f11194c, this.f11196e), this.f11195d * this.f11194c);
        c(recycler);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public int scrollVerticallyBy(int i2, RecyclerView.Recycler recycler, RecyclerView.State state) {
        int i4 = this.f11196e;
        int i5 = i4 + i2;
        this.f11196e = Math.min(Math.max(this.f11194c, i4 + i2), this.f11195d * this.f11194c);
        c(recycler);
        return (this.f11196e - i5) + i2;
    }
}
