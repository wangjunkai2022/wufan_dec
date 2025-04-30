package com.join.android.app.component.album.adapter;

import android.content.Context;
import android.graphics.ColorFilter;
import android.net.Uri;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import com.facebook.drawee.drawable.r;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.common.utils.MyImageLoader;
import com.join.android.app.component.album.lib.ImageLoader;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.SquareLayout;
import java.util.ArrayList;
import java.util.List;
import net.lingala.zip4j.util.e;
/* compiled from: MyIconAdapter.java */
/* loaded from: classes.dex */
public class d extends BaseAdapter {

    /* renamed from: d  reason: collision with root package name */
    public static final String f17428d = "camera";

    /* renamed from: a  reason: collision with root package name */
    private String f17429a;

    /* renamed from: b  reason: collision with root package name */
    private Context f17430b;

    /* renamed from: c  reason: collision with root package name */
    private List<String> f17431c;

    /* compiled from: MyIconAdapter.java */
    /* loaded from: classes.dex */
    public class a {

        /* renamed from: a  reason: collision with root package name */
        SimpleDraweeView f17432a;

        /* renamed from: b  reason: collision with root package name */
        SquareLayout f17433b;

        public a() {
        }
    }

    public d(Context context, List<String> list, String str) {
        this.f17430b = context;
        this.f17429a = str;
        this.f17431c = list;
    }

    private void a(List<String> list) {
        if (this.f17431c == null) {
            this.f17431c = new ArrayList();
        }
        this.f17431c.clear();
        this.f17431c.add("camera");
        this.f17431c.addAll(list);
    }

    public static ImageLoader b() {
        return ImageLoader.r(3, ImageLoader.Type.LIFO);
    }

    private void c(ImageView imageView, String str) {
        b().v(str, imageView);
    }

    public void d(String str) {
        this.f17429a = str;
    }

    @Override // android.widget.Adapter
    public int getCount() {
        List<String> list = this.f17431c;
        if (list == null) {
            return 0;
        }
        return list.size();
    }

    @Override // android.widget.Adapter
    public Object getItem(int i2) {
        return this.f17431c.get(i2);
    }

    @Override // android.widget.Adapter
    public long getItemId(int i2) {
        return i2;
    }

    @Override // android.widget.Adapter
    public View getView(int i2, View view, ViewGroup viewGroup) {
        a aVar;
        if (this.f17430b != null && getCount() != 0) {
            try {
                if (view != null) {
                    aVar = (a) view.getTag();
                } else {
                    aVar = new a();
                    View inflate = LayoutInflater.from(this.f17430b).inflate(R.layout.choose_icon_item, (ViewGroup) null);
                    aVar.f17432a = (SimpleDraweeView) inflate.findViewById(R.id.itemImage);
                    aVar.f17433b = (SquareLayout) inflate.findViewById(R.id.itemLayout);
                    try {
                        inflate.setTag(aVar);
                        view = inflate;
                    } catch (Exception e4) {
                        e = e4;
                        view = inflate;
                        e.printStackTrace();
                        return view;
                    }
                }
                aVar.f17432a.setImageResource(R.drawable.main_normal_icon);
                aVar.f17432a.setColorFilter((ColorFilter) null);
                String str = (String) getItem(i2);
                if (this.f17431c.get(i2).equals("camera")) {
                    SimpleDraweeView simpleDraweeView = aVar.f17432a;
                    simpleDraweeView.setImageURI(Uri.parse("res://" + this.f17430b.getPackageName() + e.F0 + R.drawable.camera_default));
                } else {
                    SimpleDraweeView simpleDraweeView2 = aVar.f17432a;
                    MyImageLoader.i(simpleDraweeView2, "file://" + str, r.c.f12144g);
                    aVar.f17432a.setVisibility(0);
                }
            } catch (Exception e5) {
                e = e5;
            }
        }
        return view;
    }

    @Override // android.widget.BaseAdapter
    public void notifyDataSetChanged() {
        super.notifyDataSetChanged();
    }
}
