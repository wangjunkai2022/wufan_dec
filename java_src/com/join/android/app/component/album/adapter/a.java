package com.join.android.app.component.album.adapter;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.TextView;
import com.join.android.app.component.album.lib.ImageLoader;
import com.join.android.app.mgsim.wufun.R;
import java.util.ArrayList;
import java.util.List;
/* compiled from: AlbumAdapter.java */
/* loaded from: classes.dex */
public class a extends BaseAdapter {

    /* renamed from: a  reason: collision with root package name */
    private Context f17411a;

    /* renamed from: b  reason: collision with root package name */
    private List<com.join.android.app.component.album.lib.a> f17412b;

    /* renamed from: c  reason: collision with root package name */
    ImageLoader f17413c;

    /* compiled from: AlbumAdapter.java */
    /* renamed from: com.join.android.app.component.album.adapter.a$a  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public class C0136a {

        /* renamed from: a  reason: collision with root package name */
        ImageView f17414a;

        /* renamed from: b  reason: collision with root package name */
        TextView f17415b;

        /* renamed from: c  reason: collision with root package name */
        TextView f17416c;

        public C0136a() {
        }
    }

    public a(Context context, List<com.join.android.app.component.album.lib.a> list) {
        ArrayList arrayList = new ArrayList();
        this.f17412b = arrayList;
        this.f17411a = context;
        arrayList.clear();
        this.f17412b.addAll(list);
        this.f17413c = new ImageLoader(1, ImageLoader.Type.LIFO);
    }

    public static ImageLoader a() {
        return ImageLoader.r(3, ImageLoader.Type.LIFO);
    }

    private void b(ImageView imageView, String str) {
        this.f17413c.v(str, imageView);
    }

    public void c(List<com.join.android.app.component.album.lib.a> list) {
        this.f17412b.clear();
        this.f17412b.addAll(list);
    }

    @Override // android.widget.Adapter
    public int getCount() {
        List<com.join.android.app.component.album.lib.a> list = this.f17412b;
        if (list == null) {
            return 0;
        }
        return list.size();
    }

    @Override // android.widget.Adapter
    public Object getItem(int i2) {
        return this.f17412b.get(i2);
    }

    @Override // android.widget.Adapter
    public long getItemId(int i2) {
        return i2;
    }

    @Override // android.widget.Adapter
    public View getView(int i2, View view, ViewGroup viewGroup) {
        C0136a c0136a;
        if (this.f17411a != null && getCount() != 0) {
            try {
                if (view != null) {
                    c0136a = (C0136a) view.getTag();
                } else {
                    c0136a = new C0136a();
                    view = LayoutInflater.from(this.f17411a).inflate(R.layout.album_item, (ViewGroup) null);
                    c0136a.f17414a = (ImageView) view.findViewById(R.id.album_cover);
                    c0136a.f17415b = (TextView) view.findViewById(R.id.album_name);
                    c0136a.f17416c = (TextView) view.findViewById(R.id.album_count);
                    view.setTag(c0136a);
                }
                com.join.android.app.component.album.lib.a aVar = this.f17412b.get(i2);
                b(c0136a.f17414a, aVar.e());
                c0136a.f17415b.setText(aVar.f());
                TextView textView = c0136a.f17416c;
                textView.setText("(" + aVar.c() + ")");
            } catch (Exception e4) {
                e4.printStackTrace();
            }
        }
        return view;
    }
}
