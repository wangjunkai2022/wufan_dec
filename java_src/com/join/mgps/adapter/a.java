package com.join.mgps.adapter;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import androidx.viewpager.widget.PagerAdapter;
import com.facebook.drawee.drawable.r;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.common.utils.MyImageLoader;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.dto.BannerImage;
import java.util.ArrayList;
/* compiled from: BannerImageAdapter2.java */
/* loaded from: classes3.dex */
public class a extends PagerAdapter {

    /* renamed from: a  reason: collision with root package name */
    private String f41221a = getClass().getSimpleName();

    /* renamed from: b  reason: collision with root package name */
    private Context f41222b;

    /* renamed from: c  reason: collision with root package name */
    private ArrayList<BannerImage> f41223c;

    /* renamed from: d  reason: collision with root package name */
    int f41224d;

    public a(Context context, ArrayList<BannerImage> arrayList) {
        ArrayList<BannerImage> arrayList2 = new ArrayList<>();
        this.f41223c = arrayList2;
        this.f41222b = context;
        arrayList2.clear();
        this.f41223c.addAll(arrayList);
    }

    public void b(ArrayList<BannerImage> arrayList) {
        ArrayList<BannerImage> arrayList2 = this.f41223c;
        if (arrayList2 == null) {
            this.f41223c = new ArrayList<>();
        } else {
            arrayList2.clear();
        }
        this.f41223c.addAll(arrayList);
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public void destroyItem(ViewGroup viewGroup, int i2, Object obj) {
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public int getCount() {
        return this.f41223c.size();
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public int getItemPosition(Object obj) {
        return -2;
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public Object instantiateItem(ViewGroup viewGroup, int i2) {
        ArrayList<BannerImage> arrayList = this.f41223c;
        if (arrayList != null && arrayList.size() != 0) {
            BannerImage bannerImage = this.f41223c.get(i2);
            SimpleDraweeView imageView = bannerImage.getImageView();
            try {
                ViewGroup viewGroup2 = (ViewGroup) imageView.getParent();
                if (viewGroup2 != null) {
                    viewGroup2.removeView(imageView);
                }
                imageView = bannerImage.getImageView();
                MyImageLoader.e(imageView, R.drawable.banner_normal_icon, bannerImage.getUrl(), r.c.f12144g);
                viewGroup.addView(imageView);
                return imageView;
            } catch (Exception e4) {
                e4.printStackTrace();
                return imageView;
            }
        }
        SimpleDraweeView simpleDraweeView = new SimpleDraweeView(this.f41222b);
        MyImageLoader.h(simpleDraweeView, "http://xxx.com");
        return simpleDraweeView;
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public boolean isViewFromObject(View view, Object obj) {
        return view == obj;
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public void notifyDataSetChanged() {
        super.notifyDataSetChanged();
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public void startUpdate(ViewGroup viewGroup) {
        super.startUpdate(viewGroup);
    }
}
