package com.join.mgps.adapter;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.common.utils.MyImageLoader;
import com.join.android.app.component.video.c;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.dto.ImageInfo;
import java.util.ArrayList;
import java.util.List;
/* compiled from: GameDetailSimilarGameAdapterV1.java */
/* loaded from: classes3.dex */
public class e1 extends BaseAdapter {

    /* renamed from: a  reason: collision with root package name */
    private Context f41545a;

    /* renamed from: b  reason: collision with root package name */
    private LayoutInflater f41546b;

    /* renamed from: c  reason: collision with root package name */
    private List<ImageInfo> f41547c;

    /* renamed from: d  reason: collision with root package name */
    private int f41548d;

    /* renamed from: e  reason: collision with root package name */
    boolean f41549e;

    /* compiled from: GameDetailSimilarGameAdapterV1.java */
    /* loaded from: classes3.dex */
    private class b {

        /* renamed from: a  reason: collision with root package name */
        SimpleDraweeView f41550a;

        /* renamed from: b  reason: collision with root package name */
        SimpleDraweeView f41551b;

        /* renamed from: c  reason: collision with root package name */
        FrameLayout f41552c;

        /* renamed from: d  reason: collision with root package name */
        ImageView f41553d;

        /* renamed from: e  reason: collision with root package name */
        RelativeLayout f41554e;

        /* renamed from: f  reason: collision with root package name */
        SimpleDraweeView f41555f;

        private b() {
        }
    }

    public e1(Context context) {
        this.f41547c = new ArrayList();
        this.f41549e = false;
        this.f41545a = context;
        this.f41546b = LayoutInflater.from(context);
    }

    @Override // android.widget.Adapter
    /* renamed from: a */
    public ImageInfo getItem(int i2) {
        return this.f41547c.get(i2);
    }

    public List<ImageInfo> b() {
        return this.f41547c;
    }

    public void c() {
        this.f41549e = true;
    }

    @Override // android.widget.Adapter
    public int getCount() {
        return this.f41547c.size();
    }

    @Override // android.widget.Adapter
    public long getItemId(int i2) {
        return i2;
    }

    @Override // android.widget.Adapter
    public View getView(int i2, View view, ViewGroup viewGroup) {
        b bVar;
        if (view == null) {
            view = this.f41546b.inflate(R.layout.game_detail_similar_game_item_v1, (ViewGroup) null);
            bVar = new b();
            bVar.f41550a = (SimpleDraweeView) view.findViewById(R.id.imageViewVPic);
            bVar.f41551b = (SimpleDraweeView) view.findViewById(R.id.imageViewHPic);
            bVar.f41553d = (ImageView) view.findViewById(R.id.imageViewPlay);
            bVar.f41552c = (FrameLayout) view.findViewById(R.id.videoContner);
            bVar.f41554e = (RelativeLayout) view.findViewById(R.id.rl_video);
            bVar.f41555f = (SimpleDraweeView) view.findViewById(R.id.bannerView);
            view.setTag(bVar);
        } else {
            bVar = (b) view.getTag();
        }
        ImageInfo item = getItem(i2);
        bVar.f41555f.setTag(Integer.valueOf(i2));
        if (item.isVideo()) {
            bVar.f41550a.setVisibility(8);
            bVar.f41551b.setVisibility(8);
            bVar.f41553d.setVisibility(8);
            bVar.f41554e.setVisibility(0);
            String videoUrl = item.getVideoUrl();
            MyImageLoader.d(bVar.f41555f, R.drawable.banner_normal_icon, item.getUrl());
            new c.k(i2, videoUrl, item.getUrl());
        } else {
            bVar.f41553d.setVisibility(8);
            bVar.f41554e.setVisibility(8);
            if (this.f41548d == 1) {
                bVar.f41550a.setVisibility(0);
                if (this.f41549e) {
                    RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) bVar.f41550a.getLayoutParams();
                    layoutParams.height = this.f41545a.getResources().getDimensionPixelOffset(R.dimen.wdp370);
                    layoutParams.width = this.f41545a.getResources().getDimensionPixelOffset(R.dimen.wdp200);
                    bVar.f41550a.setLayoutParams(layoutParams);
                    if (this.f41547c.get(i2).isGif()) {
                        MyImageLoader.n(bVar.f41550a, this.f41547c.get(i2).getUrl());
                    } else {
                        SimpleDraweeView simpleDraweeView = bVar.f41550a;
                        String url = this.f41547c.get(i2).getUrl();
                        Context context = this.f41545a;
                        MyImageLoader.j(simpleDraweeView, url, MyImageLoader.D(context, context.getResources().getDimensionPixelOffset(R.dimen.wdp3)));
                    }
                } else if (this.f41547c.get(i2).isGif()) {
                    MyImageLoader.n(bVar.f41550a, this.f41547c.get(i2).getUrl());
                } else {
                    SimpleDraweeView simpleDraweeView2 = bVar.f41550a;
                    String url2 = this.f41547c.get(i2).getUrl();
                    Context context2 = this.f41545a;
                    MyImageLoader.j(simpleDraweeView2, url2, MyImageLoader.D(context2, context2.getResources().getDimensionPixelOffset(R.dimen.wdp3)));
                }
                bVar.f41551b.setVisibility(8);
            } else {
                if (this.f41549e) {
                    RelativeLayout.LayoutParams layoutParams2 = (RelativeLayout.LayoutParams) bVar.f41551b.getLayoutParams();
                    layoutParams2.height = this.f41545a.getResources().getDimensionPixelOffset(R.dimen.wdp370);
                    layoutParams2.width = this.f41545a.getResources().getDimensionPixelOffset(R.dimen.wdp642);
                    bVar.f41551b.setLayoutParams(layoutParams2);
                    if (this.f41547c.get(i2).isGif()) {
                        MyImageLoader.n(bVar.f41551b, this.f41547c.get(i2).getUrl());
                    } else {
                        SimpleDraweeView simpleDraweeView3 = bVar.f41551b;
                        String url3 = this.f41547c.get(i2).getUrl();
                        Context context3 = this.f41545a;
                        MyImageLoader.j(simpleDraweeView3, url3, MyImageLoader.D(context3, context3.getResources().getDimensionPixelOffset(R.dimen.wdp12)));
                    }
                } else if (this.f41547c.get(i2).isGif()) {
                    MyImageLoader.n(bVar.f41551b, this.f41547c.get(i2).getUrl());
                } else {
                    SimpleDraweeView simpleDraweeView4 = bVar.f41551b;
                    String url4 = this.f41547c.get(i2).getUrl();
                    Context context4 = this.f41545a;
                    MyImageLoader.j(simpleDraweeView4, url4, MyImageLoader.D(context4, context4.getResources().getDimensionPixelOffset(R.dimen.wdp2)));
                }
                bVar.f41551b.setVisibility(0);
                bVar.f41550a.setVisibility(8);
            }
        }
        return view;
    }

    public e1(Context context, int i2, List<ImageInfo> list) {
        this.f41547c = new ArrayList();
        this.f41549e = false;
        this.f41545a = context;
        this.f41546b = LayoutInflater.from(context);
        this.f41547c = list;
        this.f41548d = i2;
    }
}
