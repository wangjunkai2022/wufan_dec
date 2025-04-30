package com.join.mgps.adapter;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.TextView;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.common.utils.MyImageLoader;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.dto.FriendBean;
import java.util.ArrayList;
import java.util.List;
/* compiled from: FriendMsgLikeAdapter.java */
/* loaded from: classes3.dex */
public class n0 extends BaseAdapter {

    /* renamed from: a  reason: collision with root package name */
    List<FriendBean> f42984a = new ArrayList();

    /* renamed from: b  reason: collision with root package name */
    Context f42985b;

    /* renamed from: c  reason: collision with root package name */
    a f42986c;

    /* compiled from: FriendMsgLikeAdapter.java */
    /* loaded from: classes3.dex */
    public interface a {
        void k(FriendBean friendBean);
    }

    /* compiled from: FriendMsgLikeAdapter.java */
    /* loaded from: classes3.dex */
    class b {

        /* renamed from: a  reason: collision with root package name */
        public SimpleDraweeView f42987a;

        /* renamed from: b  reason: collision with root package name */
        public TextView f42988b;

        /* renamed from: c  reason: collision with root package name */
        public TextView f42989c;

        /* renamed from: d  reason: collision with root package name */
        public TextView f42990d;

        /* renamed from: e  reason: collision with root package name */
        public View f42991e;

        b() {
        }
    }

    public n0(Context context) {
        this.f42985b = context;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void e(FriendBean friendBean, View view) {
        a aVar = this.f42986c;
        if (aVar != null) {
            aVar.k(friendBean);
        }
    }

    @Override // android.widget.Adapter
    /* renamed from: b */
    public FriendBean getItem(int i2) {
        return this.f42984a.get(i2);
    }

    public List<FriendBean> c() {
        return this.f42984a;
    }

    public a d() {
        return this.f42986c;
    }

    public void f(List<FriendBean> list) {
        this.f42984a = list;
    }

    public void g(a aVar) {
        this.f42986c = aVar;
    }

    @Override // android.widget.Adapter
    public int getCount() {
        return this.f42984a.size();
    }

    @Override // android.widget.Adapter
    public long getItemId(int i2) {
        return i2;
    }

    @Override // android.widget.Adapter
    public View getView(int i2, View view, ViewGroup viewGroup) {
        View view2;
        b bVar;
        if (view == null) {
            bVar = new b();
            view2 = LayoutInflater.from(this.f42985b).inflate(R.layout.item_friend_like_record, viewGroup, false);
            bVar.f42987a = (SimpleDraweeView) view2.findViewById(R.id.avatar);
            bVar.f42988b = (TextView) view2.findViewById(R.id.name);
            bVar.f42989c = (TextView) view2.findViewById(R.id.msg);
            bVar.f42990d = (TextView) view2.findViewById(R.id.time);
            bVar.f42991e = view2.findViewById(R.id.likeDot);
            view2.setTag(bVar);
        } else {
            view2 = view;
            bVar = (b) view.getTag();
        }
        final FriendBean item = getItem(i2);
        MyImageLoader.w(bVar.f42987a, item.getAvatar());
        bVar.f42988b.setText(item.getNickName());
        bVar.f42989c.setText(item.getMessage());
        bVar.f42990d.setText(item.getTime());
        if (item.getReadFlag() == 1) {
            bVar.f42991e.setVisibility(8);
        } else {
            bVar.f42991e.setVisibility(0);
        }
        view2.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.adapter.m0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view3) {
                n0.this.e(item, view3);
            }
        });
        return view2;
    }
}
