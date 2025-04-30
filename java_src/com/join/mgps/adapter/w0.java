package com.join.mgps.adapter;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.common.utils.MyImageLoader;
import com.join.android.app.mgsim.wufun.R;
import java.util.ArrayList;
import java.util.List;
/* compiled from: GameDetailAdapter.java */
/* loaded from: classes3.dex */
public class w0 extends BaseAdapter {

    /* renamed from: a  reason: collision with root package name */
    private Context f44428a;

    /* renamed from: b  reason: collision with root package name */
    private LayoutInflater f44429b;

    /* renamed from: c  reason: collision with root package name */
    private List<String> f44430c;

    /* renamed from: d  reason: collision with root package name */
    private boolean f44431d;

    /* renamed from: e  reason: collision with root package name */
    private int f44432e;

    /* renamed from: f  reason: collision with root package name */
    boolean f44433f;

    /* compiled from: GameDetailAdapter.java */
    /* loaded from: classes3.dex */
    private class b {

        /* renamed from: a  reason: collision with root package name */
        SimpleDraweeView f44434a;

        /* renamed from: b  reason: collision with root package name */
        SimpleDraweeView f44435b;

        /* renamed from: c  reason: collision with root package name */
        ImageView f44436c;

        private b() {
        }
    }

    public w0(Context context) {
        this.f44430c = new ArrayList();
        this.f44433f = false;
        this.f44428a = context;
        this.f44429b = LayoutInflater.from(context);
    }

    public List<String> a() {
        return this.f44430c;
    }

    public void b() {
        this.f44433f = true;
    }

    @Override // android.widget.Adapter
    public int getCount() {
        return this.f44430c.size();
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
        b bVar;
        if (view == null) {
            view = this.f44429b.inflate(R.layout.game_detail_item, (ViewGroup) null);
            bVar = new b();
            bVar.f44434a = (SimpleDraweeView) view.findViewById(R.id.imageViewVPic);
            bVar.f44435b = (SimpleDraweeView) view.findViewById(R.id.imageViewHPic);
            bVar.f44436c = (ImageView) view.findViewById(R.id.imageViewPlay);
            view.setTag(bVar);
        } else {
            bVar = (b) view.getTag();
        }
        if (this.f44432e == 1) {
            bVar.f44434a.setVisibility(0);
            if (this.f44433f) {
                RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) bVar.f44434a.getLayoutParams();
                layoutParams.height = this.f44428a.getResources().getDimensionPixelOffset(R.dimen.wdp370);
                layoutParams.width = this.f44428a.getResources().getDimensionPixelOffset(R.dimen.wdp200);
                bVar.f44434a.setLayoutParams(layoutParams);
                if (this.f44430c.get(i2).endsWith(".gif")) {
                    MyImageLoader.n(bVar.f44434a, this.f44430c.get(i2));
                } else {
                    Context context = this.f44428a;
                    MyImageLoader.j(bVar.f44434a, this.f44430c.get(i2), MyImageLoader.D(context, context.getResources().getDimensionPixelOffset(R.dimen.wdp3)));
                }
            } else if (this.f44430c.get(i2).endsWith(".gif")) {
                MyImageLoader.n(bVar.f44434a, this.f44430c.get(i2));
            } else {
                Context context2 = this.f44428a;
                MyImageLoader.j(bVar.f44434a, this.f44430c.get(i2), MyImageLoader.D(context2, context2.getResources().getDimensionPixelOffset(R.dimen.wdp3)));
            }
            bVar.f44435b.setVisibility(8);
        } else {
            if (this.f44433f) {
                RelativeLayout.LayoutParams layoutParams2 = (RelativeLayout.LayoutParams) bVar.f44435b.getLayoutParams();
                layoutParams2.height = this.f44428a.getResources().getDimensionPixelOffset(R.dimen.wdp370);
                layoutParams2.width = this.f44428a.getResources().getDimensionPixelOffset(R.dimen.wdp642);
                bVar.f44435b.setLayoutParams(layoutParams2);
                if (this.f44430c.get(i2).endsWith(".gif")) {
                    MyImageLoader.n(bVar.f44435b, this.f44430c.get(i2));
                } else {
                    Context context3 = this.f44428a;
                    MyImageLoader.j(bVar.f44435b, this.f44430c.get(i2), MyImageLoader.D(context3, context3.getResources().getDimensionPixelOffset(R.dimen.wdp12)));
                }
            } else if (this.f44430c.get(i2).endsWith(".gif")) {
                MyImageLoader.n(bVar.f44435b, this.f44430c.get(i2));
            } else {
                Context context4 = this.f44428a;
                MyImageLoader.j(bVar.f44435b, this.f44430c.get(i2), MyImageLoader.D(context4, context4.getResources().getDimensionPixelOffset(R.dimen.wdp12)));
            }
            bVar.f44435b.setVisibility(0);
            bVar.f44434a.setVisibility(8);
        }
        if (i2 == 0 && this.f44431d) {
            bVar.f44436c.setVisibility(0);
        } else {
            bVar.f44436c.setVisibility(8);
        }
        return view;
    }

    public w0(Context context, int i2, List<String> list, boolean z3) {
        this.f44430c = new ArrayList();
        this.f44433f = false;
        this.f44428a = context;
        this.f44429b = LayoutInflater.from(context);
        this.f44430c = list;
        this.f44432e = i2;
        this.f44431d = z3;
    }
}
