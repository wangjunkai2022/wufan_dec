package com.join.mgps.customview;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
/* loaded from: classes3.dex */
public class PaPaLinearLayoutManager extends LinearLayoutManager {

    /* renamed from: b  reason: collision with root package name */
    private static final String f45906b = "PaPaLinearLayoutManager";

    /* renamed from: a  reason: collision with root package name */
    private int[] f45907a;

    public PaPaLinearLayoutManager(Context context) {
        super(context);
        this.f45907a = new int[2];
    }

    private void a(RecyclerView.Recycler recycler, int i2, int i4, int i5, int[] iArr) {
        try {
            View viewForPosition = recycler.getViewForPosition(i2);
            if (viewForPosition != null) {
                RecyclerView.LayoutParams layoutParams = (RecyclerView.LayoutParams) viewForPosition.getLayoutParams();
                viewForPosition.measure(ViewGroup.getChildMeasureSpec(i4, getPaddingLeft() + getPaddingRight(), ((ViewGroup.MarginLayoutParams) layoutParams).width), ViewGroup.getChildMeasureSpec(i5, getPaddingTop() + getPaddingBottom(), ((ViewGroup.MarginLayoutParams) layoutParams).height));
                iArr[0] = viewForPosition.getMeasuredWidth() + ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin + ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin;
                iArr[1] = viewForPosition.getMeasuredHeight() + ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin + ((ViewGroup.MarginLayoutParams) layoutParams).topMargin;
                recycler.recycleView(viewForPosition);
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void onMeasure(RecyclerView.Recycler recycler, RecyclerView.State state, int i2, int i4) {
        int mode = View.MeasureSpec.getMode(i2);
        int mode2 = View.MeasureSpec.getMode(i4);
        int size = View.MeasureSpec.getSize(i2);
        int size2 = View.MeasureSpec.getSize(i4);
        int i5 = 0;
        int i6 = 0;
        for (int i7 = 0; i7 < getItemCount(); i7++) {
            a(recycler, i7, View.MeasureSpec.makeMeasureSpec(size, mode), View.MeasureSpec.makeMeasureSpec(size2, mode2), this.f45907a);
            if (getOrientation() == 0) {
                int[] iArr = this.f45907a;
                i6 += iArr[0];
                if (i7 == 0) {
                    i5 = iArr[1];
                }
            } else {
                int[] iArr2 = this.f45907a;
                i5 += iArr2[1];
                if (i7 == 0) {
                    i6 = iArr2[0];
                }
            }
        }
        if (mode != 1073741824) {
            size = i6;
        }
        if (mode2 != 1073741824) {
            size2 = i5;
        }
        setMeasuredDimension(size, size2);
    }

    public PaPaLinearLayoutManager(Context context, int i2, boolean z3) {
        super(context, i2, z3);
        this.f45907a = new int[2];
    }
}
