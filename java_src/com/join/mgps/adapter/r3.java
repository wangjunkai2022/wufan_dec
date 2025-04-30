package com.join.mgps.adapter;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.facebook.drawee.view.SimpleDraweeView;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.common.utils.MyImageLoader;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.dto.CollectionBeanSub;
import java.util.List;
/* compiled from: PaPaGameInfoAdapter.java */
/* loaded from: classes3.dex */
public class r3 extends BaseAdapter {

    /* renamed from: a  reason: collision with root package name */
    private List<Object> f43850a;

    /* compiled from: PaPaGameInfoAdapter.java */
    /* loaded from: classes3.dex */
    static class a {

        /* renamed from: a  reason: collision with root package name */
        SimpleDraweeView f43851a;

        /* renamed from: b  reason: collision with root package name */
        TextView f43852b;

        /* renamed from: c  reason: collision with root package name */
        LinearLayout f43853c;

        /* renamed from: d  reason: collision with root package name */
        TextView f43854d;

        a() {
        }
    }

    public r3(List<Object> list) {
        this.f43850a = list;
    }

    @Override // android.widget.Adapter
    public int getCount() {
        return this.f43850a.size();
    }

    @Override // android.widget.Adapter
    public Object getItem(int i2) {
        return this.f43850a.get(i2);
    }

    @Override // android.widget.Adapter
    public long getItemId(int i2) {
        return i2;
    }

    @Override // android.widget.Adapter
    public View getView(int i2, View view, ViewGroup viewGroup) {
        a aVar;
        if (view == null) {
            view = LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.item_papa_gameinfo, (ViewGroup) null);
            aVar = new a();
            aVar.f43851a = (SimpleDraweeView) view.findViewById(R.id.icon);
            aVar.f43854d = (TextView) view.findViewById(R.id.appDesc);
            aVar.f43853c = (LinearLayout) view.findViewById(R.id.tipsLayout);
            aVar.f43852b = (TextView) view.findViewById(R.id.appName);
            view.setTag(aVar);
        } else {
            aVar = (a) view.getTag();
        }
        Object obj = this.f43850a.get(i2);
        if (obj instanceof DownloadTask) {
            DownloadTask downloadTask = (DownloadTask) obj;
            MyImageLoader.h(aVar.f43851a, downloadTask.getPortraitURL());
            Double.parseDouble(downloadTask.getShowSize());
            UtilsMy.C(downloadTask.getScore(), downloadTask.getDown_count(), downloadTask.getShowSize(), downloadTask.getSp_tag_info(), downloadTask.getTipBeans(), aVar.f43853c, viewGroup.getContext());
            aVar.f43852b.setText(downloadTask.getShowName());
            aVar.f43854d.setText(downloadTask.getDescribe());
        } else if (obj instanceof CollectionBeanSub) {
            CollectionBeanSub collectionBeanSub = (CollectionBeanSub) obj;
            MyImageLoader.h(aVar.f43851a, collectionBeanSub.getIco_remote());
            Double.parseDouble(collectionBeanSub.getSize());
            UtilsMy.C(collectionBeanSub.getScore(), collectionBeanSub.getDown_count(), collectionBeanSub.getSize(), collectionBeanSub.getSp_tag_info(), collectionBeanSub.getTag_info(), aVar.f43853c, viewGroup.getContext());
            aVar.f43852b.setText(collectionBeanSub.getGame_name());
            aVar.f43854d.setText(collectionBeanSub.getInfo());
        }
        return view;
    }
}
