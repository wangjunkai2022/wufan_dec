package com.join.mgps.adapter;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.TextView;
import com.facebook.drawee.drawable.r;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.common.utils.MyImageLoader;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.activity.screenshot.ScreenshotGamedetialBean;
import java.util.ArrayList;
import java.util.List;
/* compiled from: GameDetailImageAdapter.java */
/* loaded from: classes3.dex */
public class a1 extends BaseAdapter {

    /* renamed from: a  reason: collision with root package name */
    private Context f41231a;

    /* renamed from: b  reason: collision with root package name */
    private LayoutInflater f41232b;

    /* renamed from: c  reason: collision with root package name */
    private List<ScreenshotGamedetialBean> f41233c;

    /* compiled from: GameDetailImageAdapter.java */
    /* loaded from: classes3.dex */
    private class b {

        /* renamed from: a  reason: collision with root package name */
        SimpleDraweeView f41234a;

        /* renamed from: b  reason: collision with root package name */
        TextView f41235b;

        /* renamed from: c  reason: collision with root package name */
        TextView f41236c;

        private b() {
        }
    }

    public a1(Context context) {
        this.f41233c = new ArrayList();
        this.f41231a = context;
        this.f41232b = LayoutInflater.from(context);
    }

    public List<ScreenshotGamedetialBean> a() {
        return this.f41233c;
    }

    @Override // android.widget.Adapter
    public int getCount() {
        return this.f41233c.size();
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
            view = this.f41232b.inflate(R.layout.game_detail_screenshot_item, (ViewGroup) null);
            bVar = new b();
            bVar.f41235b = (TextView) view.findViewById(R.id.number);
            bVar.f41234a = (SimpleDraweeView) view.findViewById(R.id.imageViewHPic);
            bVar.f41236c = (TextView) view.findViewById(R.id.title);
            view.setTag(bVar);
        } else {
            bVar = (b) view.getTag();
        }
        ScreenshotGamedetialBean screenshotGamedetialBean = this.f41233c.get(i2);
        bVar.f41236c.setText(screenshotGamedetialBean.getTitle());
        TextView textView = bVar.f41235b;
        textView.setText(screenshotGamedetialBean.getCount() + "");
        MyImageLoader.e(bVar.f41234a, R.drawable.rect_normal_icon, screenshotGamedetialBean.getPic(), r.c.f12144g);
        return view;
    }

    public a1(Context context, List<ScreenshotGamedetialBean> list) {
        this.f41233c = new ArrayList();
        this.f41231a = context;
        this.f41232b = LayoutInflater.from(context);
        this.f41233c = list;
    }
}
