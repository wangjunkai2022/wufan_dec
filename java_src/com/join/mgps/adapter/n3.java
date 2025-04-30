package com.join.mgps.adapter;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.facebook.drawee.view.SimpleDraweeView;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.common.utils.MyImageLoader;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.activity.MyGameEditActivity;
import java.util.HashMap;
import java.util.List;
/* compiled from: MyGameEditAdapter.java */
/* loaded from: classes3.dex */
public class n3 extends BaseAdapter {

    /* renamed from: a  reason: collision with root package name */
    private List<DownloadTask> f43006a;

    /* renamed from: b  reason: collision with root package name */
    private Context f43007b;

    /* renamed from: c  reason: collision with root package name */
    public HashMap<Integer, Boolean> f43008c = new HashMap<>();

    /* compiled from: MyGameEditAdapter.java */
    /* loaded from: classes3.dex */
    class a implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f43009a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ b f43010b;

        a(int i2, b bVar) {
            this.f43009a = i2;
            this.f43010b = bVar;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (n3.this.f43008c.get(Integer.valueOf(this.f43009a)).booleanValue()) {
                n3.this.f43008c.put(Integer.valueOf(this.f43009a), Boolean.FALSE);
                this.f43010b.f43012a.setSelected(false);
            } else {
                n3.this.f43008c.put(Integer.valueOf(this.f43009a), Boolean.TRUE);
                this.f43010b.f43012a.setSelected(true);
            }
            if (n3.this.f43007b instanceof MyGameEditActivity) {
                ((MyGameEditActivity) n3.this.f43007b).R0(n3.this.f43008c);
            }
        }
    }

    /* compiled from: MyGameEditAdapter.java */
    /* loaded from: classes3.dex */
    class b {

        /* renamed from: a  reason: collision with root package name */
        public ImageView f43012a;

        /* renamed from: b  reason: collision with root package name */
        public SimpleDraweeView f43013b;

        /* renamed from: c  reason: collision with root package name */
        public TextView f43014c;

        /* renamed from: d  reason: collision with root package name */
        public TextView f43015d;

        /* renamed from: e  reason: collision with root package name */
        public LinearLayout f43016e;

        public b(View view) {
            this.f43013b = (SimpleDraweeView) view.findViewById(R.id.img);
            this.f43012a = (ImageView) view.findViewById(R.id.isSelector);
            this.f43014c = (TextView) view.findViewById(R.id.name);
            this.f43015d = (TextView) view.findViewById(R.id.appInfo);
            this.f43016e = (LinearLayout) view.findViewById(R.id.status);
        }
    }

    public n3(Context context, List<DownloadTask> list) {
        this.f43007b = context;
        this.f43006a = list;
        b();
    }

    private void b() {
        this.f43008c = new HashMap<>();
        for (int i2 = 0; i2 < this.f43006a.size(); i2++) {
            this.f43008c.put(Integer.valueOf(i2), Boolean.FALSE);
        }
    }

    @Override // android.widget.Adapter
    public int getCount() {
        return this.f43006a.size();
    }

    @Override // android.widget.Adapter
    public Object getItem(int i2) {
        return this.f43006a.get(i2);
    }

    @Override // android.widget.Adapter
    public long getItemId(int i2) {
        return i2;
    }

    @Override // android.widget.Adapter
    public View getView(int i2, View view, ViewGroup viewGroup) {
        b bVar;
        if (view == null) {
            view = LayoutInflater.from(this.f43007b).inflate(R.layout.layout_mygame_edit_item, (ViewGroup) null);
            bVar = new b(view);
            view.setTag(bVar);
        } else {
            bVar = (b) view.getTag();
        }
        DownloadTask downloadTask = this.f43006a.get(i2);
        MyImageLoader.h(bVar.f43013b, downloadTask.getPortraitURL());
        Double.parseDouble(downloadTask.getShowSize());
        if (downloadTask.getExt1() != null && downloadTask.getExt1().equals("h5")) {
            bVar.f43016e.setVisibility(8);
        } else {
            UtilsMy.C(downloadTask.getScore(), downloadTask.getDown_count(), downloadTask.getShowSize(), downloadTask.getSp_tag_info(), downloadTask.getTipBeans(), bVar.f43016e, this.f43007b);
        }
        bVar.f43014c.setText(downloadTask.getShowName());
        bVar.f43015d.setText(downloadTask.getDescribe());
        bVar.f43012a.setSelected(this.f43008c.get(Integer.valueOf(i2)).booleanValue());
        view.setOnClickListener(new a(i2, bVar));
        return view;
    }
}
