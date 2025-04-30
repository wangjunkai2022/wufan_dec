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
/* compiled from: GameDetailAdapterV1.java */
/* loaded from: classes3.dex */
public class y0 extends BaseAdapter {

    /* renamed from: a  reason: collision with root package name */
    private Context f44539a;

    /* renamed from: b  reason: collision with root package name */
    private LayoutInflater f44540b;

    /* renamed from: c  reason: collision with root package name */
    private List<ImageInfo> f44541c;

    /* renamed from: d  reason: collision with root package name */
    private int f44542d;

    /* renamed from: e  reason: collision with root package name */
    com.join.android.app.component.video.c f44543e;

    /* renamed from: f  reason: collision with root package name */
    boolean f44544f;

    /* compiled from: GameDetailAdapterV1.java */
    /* loaded from: classes3.dex */
    class a implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f44545a;

        a(int i2) {
            this.f44545a = i2;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            y0.this.f44543e.y(this.f44545a);
        }
    }

    /* compiled from: GameDetailAdapterV1.java */
    /* loaded from: classes3.dex */
    private class b {

        /* renamed from: a  reason: collision with root package name */
        SimpleDraweeView f44547a;

        /* renamed from: b  reason: collision with root package name */
        SimpleDraweeView f44548b;

        /* renamed from: c  reason: collision with root package name */
        FrameLayout f44549c;

        /* renamed from: d  reason: collision with root package name */
        ImageView f44550d;

        /* renamed from: e  reason: collision with root package name */
        RelativeLayout f44551e;

        /* renamed from: f  reason: collision with root package name */
        SimpleDraweeView f44552f;

        private b() {
        }

        /* synthetic */ b(y0 y0Var, a aVar) {
            this();
        }
    }

    public y0(Context context) {
        this.f44541c = new ArrayList();
        this.f44544f = false;
        this.f44539a = context;
        this.f44540b = LayoutInflater.from(context);
    }

    @Override // android.widget.Adapter
    /* renamed from: a */
    public ImageInfo getItem(int i2) {
        return this.f44541c.get(i2);
    }

    public List<ImageInfo> b() {
        return this.f44541c;
    }

    public void c() {
        this.f44544f = true;
    }

    @Override // android.widget.Adapter
    public int getCount() {
        return this.f44541c.size();
    }

    @Override // android.widget.Adapter
    public long getItemId(int i2) {
        return i2;
    }

    @Override // android.widget.Adapter
    public View getView(int i2, View view, ViewGroup viewGroup) {
        b bVar;
        if (view == null) {
            view = this.f44540b.inflate(R.layout.game_detail_item_v1, (ViewGroup) null);
            bVar = new b(this, null);
            bVar.f44547a = (SimpleDraweeView) view.findViewById(R.id.imageViewVPic);
            bVar.f44548b = (SimpleDraweeView) view.findViewById(R.id.imageViewHPic);
            bVar.f44550d = (ImageView) view.findViewById(R.id.imageViewPlay);
            bVar.f44549c = (FrameLayout) view.findViewById(R.id.videoContner);
            bVar.f44551e = (RelativeLayout) view.findViewById(R.id.rl_video);
            bVar.f44552f = (SimpleDraweeView) view.findViewById(R.id.bannerView);
            view.setTag(bVar);
        } else {
            bVar = (b) view.getTag();
        }
        ImageInfo item = getItem(i2);
        bVar.f44552f.setTag(Integer.valueOf(i2));
        if (item.isVideo()) {
            bVar.f44547a.setVisibility(8);
            bVar.f44548b.setVisibility(8);
            bVar.f44550d.setVisibility(8);
            bVar.f44551e.setVisibility(0);
            String videoUrl = item.getVideoUrl();
            MyImageLoader.d(bVar.f44552f, R.drawable.banner_normal_icon, item.getUrl());
            c.k kVar = new c.k(i2, videoUrl, item.getUrl());
            com.join.android.app.component.video.c cVar = this.f44543e;
            if (cVar != null) {
                cVar.d(i2, kVar, false);
                bVar.f44549c.setOnClickListener(new a(i2));
            }
        } else {
            bVar.f44550d.setVisibility(8);
            bVar.f44551e.setVisibility(8);
            if (this.f44542d == 1) {
                bVar.f44547a.setVisibility(0);
                if (this.f44544f) {
                    RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) bVar.f44547a.getLayoutParams();
                    layoutParams.height = this.f44539a.getResources().getDimensionPixelOffset(R.dimen.wdp312);
                    layoutParams.width = this.f44539a.getResources().getDimensionPixelOffset(R.dimen.wdp180);
                    bVar.f44547a.setLayoutParams(layoutParams);
                    if (this.f44541c.get(i2).isGif()) {
                        MyImageLoader.n(bVar.f44547a, this.f44541c.get(i2).getUrl());
                    } else {
                        SimpleDraweeView simpleDraweeView = bVar.f44547a;
                        String url = this.f44541c.get(i2).getUrl();
                        Context context = this.f44539a;
                        MyImageLoader.j(simpleDraweeView, url, MyImageLoader.D(context, context.getResources().getDimensionPixelOffset(R.dimen.wdp3)));
                    }
                } else if (this.f44541c.get(i2).isGif()) {
                    MyImageLoader.n(bVar.f44547a, this.f44541c.get(i2).getUrl());
                } else {
                    SimpleDraweeView simpleDraweeView2 = bVar.f44547a;
                    String url2 = this.f44541c.get(i2).getUrl();
                    Context context2 = this.f44539a;
                    MyImageLoader.j(simpleDraweeView2, url2, MyImageLoader.D(context2, context2.getResources().getDimensionPixelOffset(R.dimen.wdp3)));
                }
                bVar.f44548b.setVisibility(8);
            } else {
                if (this.f44544f) {
                    RelativeLayout.LayoutParams layoutParams2 = (RelativeLayout.LayoutParams) bVar.f44548b.getLayoutParams();
                    layoutParams2.height = this.f44539a.getResources().getDimensionPixelOffset(R.dimen.wdp210);
                    layoutParams2.width = this.f44539a.getResources().getDimensionPixelOffset(R.dimen.wdp372);
                    bVar.f44548b.setLayoutParams(layoutParams2);
                    if (this.f44541c.get(i2).isGif()) {
                        MyImageLoader.n(bVar.f44548b, this.f44541c.get(i2).getUrl());
                    } else {
                        SimpleDraweeView simpleDraweeView3 = bVar.f44548b;
                        String url3 = this.f44541c.get(i2).getUrl();
                        Context context3 = this.f44539a;
                        MyImageLoader.j(simpleDraweeView3, url3, MyImageLoader.D(context3, context3.getResources().getDimensionPixelOffset(R.dimen.wdp12)));
                    }
                } else if (this.f44541c.get(i2).isGif()) {
                    MyImageLoader.n(bVar.f44548b, this.f44541c.get(i2).getUrl());
                } else {
                    SimpleDraweeView simpleDraweeView4 = bVar.f44548b;
                    String url4 = this.f44541c.get(i2).getUrl();
                    Context context4 = this.f44539a;
                    MyImageLoader.j(simpleDraweeView4, url4, MyImageLoader.D(context4, context4.getResources().getDimensionPixelOffset(R.dimen.wdp12)));
                }
                bVar.f44548b.setVisibility(0);
                bVar.f44547a.setVisibility(8);
            }
        }
        return view;
    }

    public y0(Context context, int i2, List<ImageInfo> list, com.join.android.app.component.video.c cVar) {
        this.f44541c = new ArrayList();
        this.f44544f = false;
        this.f44539a = context;
        this.f44540b = LayoutInflater.from(context);
        this.f44541c = list;
        this.f44542d = i2;
        this.f44543e = cVar;
    }
}
