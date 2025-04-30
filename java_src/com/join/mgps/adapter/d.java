package com.join.mgps.adapter;

import android.content.Context;
import android.graphics.drawable.ColorDrawable;
import android.os.Build;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.common.utils.MyImageLoader;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.SquareLayout;
import com.join.mgps.db.tables.HeadPortraitTable;
import java.util.List;
/* compiled from: ChooseAdapter.java */
/* loaded from: classes3.dex */
public class d extends BaseAdapter {

    /* renamed from: b  reason: collision with root package name */
    private Context f41510b;

    /* renamed from: c  reason: collision with root package name */
    private List<HeadPortraitTable> f41511c;

    /* renamed from: e  reason: collision with root package name */
    private String f41513e;

    /* renamed from: a  reason: collision with root package name */
    String f41509a = getClass().getSimpleName();

    /* renamed from: d  reason: collision with root package name */
    private int f41512d = 0;

    /* compiled from: ChooseAdapter.java */
    /* loaded from: classes3.dex */
    class a {

        /* renamed from: a  reason: collision with root package name */
        SimpleDraweeView f41514a;

        /* renamed from: b  reason: collision with root package name */
        ImageView f41515b;

        /* renamed from: c  reason: collision with root package name */
        SquareLayout f41516c;

        a() {
        }
    }

    public d(Context context, List<HeadPortraitTable> list, String str, boolean z3) {
        this.f41510b = context;
        this.f41511c = list;
        this.f41513e = str;
    }

    public int a() {
        return this.f41512d;
    }

    public void b(int i2) {
        if (i2 > 0) {
            this.f41512d = i2;
            notifyDataSetChanged();
        }
    }

    @Override // android.widget.Adapter
    public int getCount() {
        return this.f41511c.size();
    }

    @Override // android.widget.Adapter
    public Object getItem(int i2) {
        return null;
    }

    @Override // android.widget.Adapter
    public long getItemId(int i2) {
        return 0L;
    }

    @Override // android.widget.Adapter
    public View getView(int i2, View view, ViewGroup viewGroup) {
        View view2;
        a aVar;
        if (view == null) {
            aVar = new a();
            view2 = LayoutInflater.from(this.f41510b).inflate(R.layout.choose_grid_item, (ViewGroup) null);
            aVar.f41514a = (SimpleDraweeView) view2.findViewById(R.id.itemImage);
            aVar.f41516c = (SquareLayout) view2.findViewById(R.id.itemLayout);
            aVar.f41515b = (ImageView) view2.findViewById(R.id.itemImageChoice);
            view2.setTag(aVar);
        } else {
            view2 = view;
            aVar = (a) view.getTag();
        }
        if (i2 == 0) {
            aVar.f41516c.setBackgroundResource(this.f41511c.get(i2).getId());
        } else {
            MyImageLoader.h(aVar.f41514a, this.f41511c.get(i2).getHead_portrait_pic());
            if (com.join.mgps.Util.d2.i(this.f41513e) && com.join.mgps.Util.d2.i(this.f41511c.get(i2).getHead_portrait_pic())) {
                if (this.f41513e.equals(this.f41511c.get(i2).getHead_portrait_pic())) {
                    aVar.f41515b.setBackgroundResource(R.drawable.icon_checked);
                }
            } else if (Build.VERSION.SDK_INT >= 16) {
                aVar.f41515b.setBackground(new ColorDrawable(0));
            } else {
                aVar.f41515b.setBackgroundDrawable(new ColorDrawable(0));
            }
            int i4 = this.f41512d;
            if (i4 > 0) {
                if (i4 == i2) {
                    aVar.f41515b.setBackgroundResource(R.drawable.icon_checked);
                } else {
                    try {
                        if (Build.VERSION.SDK_INT >= 16) {
                            aVar.f41515b.setBackground(new ColorDrawable(0));
                        } else {
                            aVar.f41515b.setBackgroundDrawable(new ColorDrawable(0));
                        }
                    } catch (Exception unused) {
                    }
                }
            }
        }
        return view2;
    }
}
