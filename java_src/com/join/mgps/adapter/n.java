package com.join.mgps.adapter;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.TextView;
import com.facebook.drawee.generic.RoundingParams;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.common.utils.MyImageLoader;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.dto.DiscoveryMainDataBean;
import java.util.List;
/* compiled from: DiscoveryBottomAdapter.java */
/* loaded from: classes3.dex */
public class n extends BaseAdapter {

    /* renamed from: a  reason: collision with root package name */
    private Context f42976a;

    /* renamed from: b  reason: collision with root package name */
    private List<DiscoveryMainDataBean.ForumListBean> f42977b;

    /* renamed from: c  reason: collision with root package name */
    private RoundingParams f42978c;

    /* compiled from: DiscoveryBottomAdapter.java */
    /* loaded from: classes3.dex */
    class a {

        /* renamed from: a  reason: collision with root package name */
        private SimpleDraweeView f42979a;

        /* renamed from: b  reason: collision with root package name */
        private TextView f42980b;

        /* renamed from: c  reason: collision with root package name */
        private TextView f42981c;

        /* renamed from: d  reason: collision with root package name */
        private ImageView f42982d;

        a() {
        }
    }

    public n(Context context, List<DiscoveryMainDataBean.ForumListBean> list) {
        this.f42976a = context;
        this.f42977b = list;
        this.f42978c = MyImageLoader.D(context, context.getResources().getDimension(R.dimen.recom_item_magintop));
    }

    @Override // android.widget.Adapter
    /* renamed from: a */
    public DiscoveryMainDataBean.ForumListBean getItem(int i2) {
        return this.f42977b.get(i2);
    }

    public void b(List<DiscoveryMainDataBean.ForumListBean> list) {
        this.f42977b = list;
        notifyDataSetChanged();
    }

    @Override // android.widget.Adapter
    public int getCount() {
        return this.f42977b.size();
    }

    @Override // android.widget.Adapter
    public long getItemId(int i2) {
        return i2;
    }

    @Override // android.widget.Adapter
    public View getView(int i2, View view, ViewGroup viewGroup) {
        View view2;
        a aVar;
        DiscoveryMainDataBean.ForumListBean forumListBean = this.f42977b.get(i2);
        if (view == null) {
            aVar = new a();
            view2 = LayoutInflater.from(this.f42976a).inflate(R.layout.item_discovery_bottom_view, (ViewGroup) null);
            aVar.f42979a = (SimpleDraweeView) view2.findViewById(R.id.ItemIcon);
            aVar.f42980b = (TextView) view2.findViewById(R.id.ItemName);
            aVar.f42981c = (TextView) view2.findViewById(R.id.ItemNum);
            aVar.f42982d = (ImageView) view2.findViewById(R.id.ItemMy);
            view2.setTag(aVar);
        } else {
            view2 = view;
            aVar = (a) view.getTag();
        }
        MyImageLoader.j(aVar.f42979a, forumListBean.getIcon_src(), this.f42978c);
        aVar.f42980b.setText(forumListBean.getName());
        TextView textView = aVar.f42981c;
        textView.setText("今日:" + forumListBean.getToday_posts());
        if (forumListBean.isIs_follow()) {
            aVar.f42982d.setVisibility(0);
        } else {
            aVar.f42982d.setVisibility(8);
        }
        return view2;
    }
}
