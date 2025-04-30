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
import java.util.ArrayList;
import java.util.List;
import net.lingala.zip4j.util.e;
/* compiled from: MyAlbumAdapter.java */
/* loaded from: classes.dex */
public class c extends BaseAdapter {

    /* renamed from: e  reason: collision with root package name */
    public static final String f17420e = "camera";

    /* renamed from: a  reason: collision with root package name */
    private List<String> f17421a;

    /* renamed from: b  reason: collision with root package name */
    private String f17422b;

    /* renamed from: c  reason: collision with root package name */
    private Context f17423c;

    /* renamed from: d  reason: collision with root package name */
    private List<String> f17424d;

    /* compiled from: MyAlbumAdapter.java */
    /* loaded from: classes.dex */
    public class a {

        /* renamed from: a  reason: collision with root package name */
        SimpleDraweeView f17425a;

        /* renamed from: b  reason: collision with root package name */
        ImageView f17426b;

        public a() {
        }
    }

    public c(Context context, List<String> list, String str, List<String> list2) {
        this.f17423c = context;
        this.f17422b = str;
        this.f17421a = list2;
        this.f17424d = list;
    }

    private void a(List<String> list) {
        if (this.f17424d == null) {
            this.f17424d = new ArrayList();
        }
        this.f17424d.clear();
        this.f17424d.add("camera");
        this.f17424d.addAll(list);
    }

    private void b(ImageView imageView, ImageView imageView2, String str) {
        List<String> list = this.f17421a;
        if (list == null || list.size() == 0) {
            return;
        }
        for (int i2 = 0; i2 < this.f17421a.size(); i2++) {
            if (this.f17421a.get(i2).equals(str)) {
                imageView2.setImageResource(R.drawable.pic_select_selected);
            }
        }
    }

    public static ImageLoader c() {
        return ImageLoader.r(3, ImageLoader.Type.LIFO);
    }

    private void d(ImageView imageView, String str) {
        c().v(str, imageView);
    }

    public void e(String str) {
        this.f17422b = str;
    }

    @Override // android.widget.Adapter
    public int getCount() {
        List<String> list = this.f17424d;
        if (list == null) {
            return 0;
        }
        return list.size();
    }

    @Override // android.widget.Adapter
    public Object getItem(int i2) {
        return this.f17424d.get(i2);
    }

    @Override // android.widget.Adapter
    public long getItemId(int i2) {
        return i2;
    }

    @Override // android.widget.Adapter
    public View getView(int i2, View view, ViewGroup viewGroup) {
        a aVar;
        if (this.f17423c != null && getCount() != 0) {
            try {
                if (view != null) {
                    aVar = (a) view.getTag();
                } else {
                    aVar = new a();
                    View inflate = LayoutInflater.from(this.f17423c).inflate(R.layout.my_album_item, (ViewGroup) null);
                    aVar.f17425a = (SimpleDraweeView) inflate.findViewById(R.id.image);
                    aVar.f17426b = (ImageView) inflate.findViewById(R.id.image_flag);
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
                aVar.f17425a.setImageResource(R.drawable.main_normal_icon);
                aVar.f17425a.setColorFilter((ColorFilter) null);
                aVar.f17426b.setImageResource(R.drawable.pic_select_normal);
                String str = (String) getItem(i2);
                if (this.f17424d.get(i2).equals("camera")) {
                    SimpleDraweeView simpleDraweeView = aVar.f17425a;
                    simpleDraweeView.setImageURI(Uri.parse("res://" + this.f17423c.getPackageName() + e.F0 + R.drawable.camera_default));
                    aVar.f17426b.setVisibility(8);
                } else {
                    SimpleDraweeView simpleDraweeView2 = aVar.f17425a;
                    MyImageLoader.i(simpleDraweeView2, "file://" + str, r.c.f12144g);
                    aVar.f17426b.setVisibility(0);
                    b(aVar.f17425a, aVar.f17426b, str);
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
