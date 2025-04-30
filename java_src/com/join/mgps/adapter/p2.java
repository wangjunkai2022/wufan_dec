package com.join.mgps.adapter;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AbsListView;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import com.join.android.app.mgsim.wufun.R;
import java.util.Vector;
/* compiled from: ImageAdapter.java */
/* loaded from: classes3.dex */
public class p2 extends BaseAdapter {

    /* renamed from: a  reason: collision with root package name */
    private Context f43229a;

    /* renamed from: b  reason: collision with root package name */
    private Vector<Integer> f43230b = new Vector<>();

    /* renamed from: c  reason: collision with root package name */
    private Vector<Boolean> f43231c = new Vector<>();

    /* renamed from: d  reason: collision with root package name */
    private int f43232d = -1;

    /* renamed from: e  reason: collision with root package name */
    private boolean f43233e;

    public p2(Context context, boolean z3) {
        this.f43229a = context;
        this.f43233e = z3;
        Vector<Integer> vector = this.f43230b;
        Integer valueOf = Integer.valueOf((int) R.drawable.sfc);
        vector.add(valueOf);
        this.f43230b.add(Integer.valueOf((int) R.drawable.fc));
        this.f43230b.add(Integer.valueOf((int) R.drawable.gba));
        this.f43230b.add(valueOf);
        this.f43230b.add(Integer.valueOf((int) R.drawable.f17847android));
        for (int i2 = 0; i2 < 5; i2++) {
            this.f43231c.add(Boolean.FALSE);
        }
    }

    private LayerDrawable b(int i2, boolean z3) {
        Bitmap decodeResource;
        Bitmap bitmap = ((BitmapDrawable) this.f43229a.getResources().getDrawable(i2)).getBitmap();
        if (z3) {
            decodeResource = BitmapFactory.decodeResource(this.f43229a.getResources(), R.drawable.classify_checked);
        } else {
            decodeResource = BitmapFactory.decodeResource(this.f43229a.getResources(), R.drawable.classify_uncheck);
        }
        LayerDrawable layerDrawable = new LayerDrawable(new Drawable[]{new BitmapDrawable(bitmap), new BitmapDrawable(decodeResource)});
        layerDrawable.setLayerInset(0, 0, 0, 0, 0);
        layerDrawable.setLayerInset(1, 0, -5, 60, 45);
        return layerDrawable;
    }

    public void a(int i2) {
        if (this.f43233e) {
            Vector<Boolean> vector = this.f43231c;
            vector.setElementAt(Boolean.valueOf(true ^ vector.elementAt(i2).booleanValue()), i2);
        } else {
            int i4 = this.f43232d;
            if (i4 != -1) {
                this.f43231c.setElementAt(Boolean.FALSE, i4);
            }
            Vector<Boolean> vector2 = this.f43231c;
            vector2.setElementAt(Boolean.valueOf(true ^ vector2.elementAt(i2).booleanValue()), i2);
            this.f43232d = i2;
        }
        notifyDataSetChanged();
    }

    @Override // android.widget.Adapter
    public int getCount() {
        return this.f43230b.size();
    }

    @Override // android.widget.Adapter
    public Object getItem(int i2) {
        return Integer.valueOf(i2);
    }

    @Override // android.widget.Adapter
    public long getItemId(int i2) {
        return i2;
    }

    @Override // android.widget.Adapter
    public View getView(int i2, View view, ViewGroup viewGroup) {
        ImageView imageView;
        if (view == null) {
            imageView = new ImageView(this.f43229a);
            imageView.setLayoutParams(new AbsListView.LayoutParams(150, 150));
            imageView.setScaleType(ImageView.ScaleType.FIT_CENTER);
        } else {
            imageView = (ImageView) view;
        }
        imageView.setImageDrawable(b(this.f43230b.elementAt(i2).intValue(), this.f43231c.elementAt(i2).booleanValue()));
        return imageView;
    }
}
