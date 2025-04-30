package com.join.mgps.adapter;

import android.content.Context;
import android.graphics.Color;
import android.graphics.PorterDuff;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.common.utils.MyImageLoader;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.dto.ImageInfo;
import java.util.ArrayList;
import java.util.List;
/* compiled from: GameDetailImagesAdapter.java */
/* loaded from: classes3.dex */
public class c1 extends BaseAdapter {

    /* renamed from: a  reason: collision with root package name */
    private Context f41488a;

    /* renamed from: b  reason: collision with root package name */
    private LayoutInflater f41489b;

    /* renamed from: c  reason: collision with root package name */
    private List<ImageInfo> f41490c;

    /* renamed from: d  reason: collision with root package name */
    private int f41491d;

    /* renamed from: e  reason: collision with root package name */
    private int f41492e;

    /* compiled from: GameDetailImagesAdapter.java */
    /* loaded from: classes3.dex */
    private class b {

        /* renamed from: a  reason: collision with root package name */
        SimpleDraweeView f41493a;

        /* renamed from: b  reason: collision with root package name */
        SimpleDraweeView f41494b;

        /* renamed from: c  reason: collision with root package name */
        SimpleDraweeView f41495c;

        /* renamed from: d  reason: collision with root package name */
        ImageView f41496d;

        /* renamed from: e  reason: collision with root package name */
        ImageView f41497e;

        private b() {
        }
    }

    public c1(Context context) {
        this.f41490c = new ArrayList();
        this.f41492e = -1;
        this.f41488a = context;
        this.f41489b = LayoutInflater.from(context);
    }

    @Override // android.widget.Adapter
    /* renamed from: a */
    public ImageInfo getItem(int i2) {
        return this.f41490c.get(i2);
    }

    public List<ImageInfo> b() {
        return this.f41490c;
    }

    public void c(int i2) {
        int i4 = this.f41492e;
        if (i4 == i2) {
            return;
        }
        if (i4 >= 0) {
            getItem(i4).setSelected(false);
        }
        this.f41492e = i2;
        getItem(i2).setSelected(true);
        notifyDataSetChanged();
    }

    @Override // android.widget.Adapter
    public int getCount() {
        return this.f41490c.size();
    }

    @Override // android.widget.Adapter
    public long getItemId(int i2) {
        return i2;
    }

    @Override // android.widget.Adapter
    public View getView(int i2, View view, ViewGroup viewGroup) {
        b bVar;
        if (view == null) {
            view = this.f41489b.inflate(R.layout.item_game_detail_images, (ViewGroup) null);
            bVar = new b();
            bVar.f41493a = (SimpleDraweeView) view.findViewById(R.id.imageViewVPic);
            bVar.f41494b = (SimpleDraweeView) view.findViewById(R.id.imageViewHPic);
            bVar.f41496d = (ImageView) view.findViewById(R.id.imageViewPlay);
            bVar.f41495c = (SimpleDraweeView) view.findViewById(R.id.image_blur);
            bVar.f41497e = (ImageView) view.findViewById(R.id.iv_border);
            view.setTag(bVar);
        } else {
            bVar = (b) view.getTag();
        }
        ImageInfo item = getItem(i2);
        if (item.isVideo()) {
            bVar.f41493a.setVisibility(8);
            bVar.f41494b.setVisibility(0);
            bVar.f41495c.setVisibility(8);
            if (item.isSelected()) {
                bVar.f41494b.clearColorFilter();
                bVar.f41497e.setVisibility(0);
            } else {
                bVar.f41494b.setColorFilter(Color.parseColor("#4D000000"), PorterDuff.Mode.SRC_ATOP);
                bVar.f41497e.setVisibility(8);
            }
            if (com.join.mgps.Util.d2.i(item.getVideoUrl())) {
                bVar.f41496d.setVisibility(0);
            } else {
                bVar.f41496d.setVisibility(8);
            }
            MyImageLoader.d(bVar.f41494b, R.drawable.banner_normal_icon, item.getUrl());
        } else {
            if (item.isSelected()) {
                if (this.f41491d == 1) {
                    bVar.f41493a.clearColorFilter();
                } else {
                    bVar.f41494b.clearColorFilter();
                }
                bVar.f41497e.setVisibility(0);
            } else {
                if (this.f41491d == 1) {
                    bVar.f41493a.setColorFilter(Color.parseColor("#4D000000"), PorterDuff.Mode.SRC_ATOP);
                } else {
                    bVar.f41494b.setColorFilter(Color.parseColor("#4D000000"), PorterDuff.Mode.SRC_ATOP);
                }
                bVar.f41497e.setVisibility(8);
            }
            bVar.f41496d.setVisibility(8);
            if (this.f41491d == 1) {
                bVar.f41495c.setVisibility(0);
                bVar.f41493a.setVisibility(0);
                MyImageLoader.K(bVar.f41495c, this.f41490c.get(i2).getUrl(), 6, 15);
                if (this.f41490c.get(i2).isGif()) {
                    MyImageLoader.n(bVar.f41493a, this.f41490c.get(i2).getUrl());
                } else {
                    SimpleDraweeView simpleDraweeView = bVar.f41493a;
                    String url = this.f41490c.get(i2).getUrl();
                    Context context = this.f41488a;
                    MyImageLoader.j(simpleDraweeView, url, MyImageLoader.D(context, context.getResources().getDimensionPixelOffset(R.dimen.wdp6)));
                }
                bVar.f41494b.setVisibility(8);
            } else {
                if (this.f41490c.get(i2).isGif()) {
                    MyImageLoader.n(bVar.f41494b, this.f41490c.get(i2).getUrl());
                } else {
                    SimpleDraweeView simpleDraweeView2 = bVar.f41494b;
                    String url2 = this.f41490c.get(i2).getUrl();
                    Context context2 = this.f41488a;
                    MyImageLoader.j(simpleDraweeView2, url2, MyImageLoader.D(context2, context2.getResources().getDimensionPixelOffset(R.dimen.wdp6)));
                }
                bVar.f41495c.setVisibility(8);
                bVar.f41494b.setVisibility(0);
                bVar.f41493a.setVisibility(8);
            }
        }
        return view;
    }

    public c1(Context context, int i2, List<ImageInfo> list) {
        this.f41490c = new ArrayList();
        this.f41492e = -1;
        this.f41488a = context;
        this.f41489b = LayoutInflater.from(context);
        this.f41490c = list;
        this.f41491d = i2;
    }
}
