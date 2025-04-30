package com.join.mgps.adapter;

import android.content.Context;
import android.graphics.Color;
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
/* compiled from: FriendMsgRequestAdapter.java */
/* loaded from: classes3.dex */
public class r0 extends BaseAdapter {

    /* renamed from: a  reason: collision with root package name */
    List<FriendBean> f43470a = new ArrayList();

    /* renamed from: b  reason: collision with root package name */
    Context f43471b;

    /* renamed from: c  reason: collision with root package name */
    a f43472c;

    /* compiled from: FriendMsgRequestAdapter.java */
    /* loaded from: classes3.dex */
    public interface a {
        void k(FriendBean friendBean);

        void r(FriendBean friendBean);

        void w(FriendBean friendBean);
    }

    /* compiled from: FriendMsgRequestAdapter.java */
    /* loaded from: classes3.dex */
    class b {

        /* renamed from: a  reason: collision with root package name */
        public SimpleDraweeView f43473a;

        /* renamed from: b  reason: collision with root package name */
        public TextView f43474b;

        /* renamed from: c  reason: collision with root package name */
        public TextView f43475c;

        /* renamed from: d  reason: collision with root package name */
        public TextView f43476d;

        /* renamed from: e  reason: collision with root package name */
        public TextView f43477e;

        b() {
        }
    }

    public r0(Context context) {
        this.f43471b = context;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void g(FriendBean friendBean, View view) {
        a aVar = this.f43472c;
        if (aVar != null) {
            aVar.k(friendBean);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void h(FriendBean friendBean, View view) {
        a aVar = this.f43472c;
        if (aVar != null) {
            aVar.r(friendBean);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void i(FriendBean friendBean, View view) {
        a aVar = this.f43472c;
        if (aVar != null) {
            aVar.w(friendBean);
        }
    }

    @Override // android.widget.Adapter
    /* renamed from: d */
    public FriendBean getItem(int i2) {
        return this.f43470a.get(i2);
    }

    public List<FriendBean> e() {
        return this.f43470a;
    }

    public a f() {
        return this.f43472c;
    }

    @Override // android.widget.Adapter
    public int getCount() {
        return this.f43470a.size();
    }

    @Override // android.widget.Adapter
    public long getItemId(int i2) {
        return i2;
    }

    @Override // android.widget.Adapter
    public View getView(int i2, View view, ViewGroup viewGroup) {
        View view2;
        b bVar;
        String str;
        if (view == null) {
            bVar = new b();
            view2 = LayoutInflater.from(this.f43471b).inflate(R.layout.item_friend_add_req, viewGroup, false);
            bVar.f43473a = (SimpleDraweeView) view2.findViewById(R.id.avatar);
            bVar.f43474b = (TextView) view2.findViewById(R.id.name);
            bVar.f43475c = (TextView) view2.findViewById(R.id.msg);
            bVar.f43476d = (TextView) view2.findViewById(R.id.decline);
            bVar.f43477e = (TextView) view2.findViewById(R.id.accept);
            view2.setTag(bVar);
        } else {
            view2 = view;
            bVar = (b) view.getTag();
        }
        final FriendBean item = getItem(i2);
        MyImageLoader.w(bVar.f43473a, item.getAvatar());
        bVar.f43474b.setText(item.getNickName());
        bVar.f43475c.setText(item.getRequestIfo());
        if (item.getStatus() == 0) {
            view2.setBackgroundResource(R.drawable.shape_friend_req_bg);
            bVar.f43476d.setVisibility(0);
            bVar.f43477e.setBackgroundResource(R.drawable.shape_friend_accept);
            bVar.f43477e.setTextColor(Color.parseColor("#ffffff"));
        } else {
            view2.setBackgroundColor(Color.parseColor("#FF1E2025"));
            bVar.f43476d.setVisibility(4);
            bVar.f43477e.setBackgroundColor(this.f43471b.getResources().getColor(R.color.transparent));
            bVar.f43477e.setTextColor(Color.parseColor("#FFB5CBD5"));
        }
        if (item.getStatus() == 0) {
            str = "接受";
        } else if (item.getStatus() == 1) {
            str = "已接受";
        } else if (item.getStatus() == 2) {
            str = "已拒绝";
        } else {
            str = item.getStatus() == 3 ? "已过期" : "";
        }
        bVar.f43477e.setText(str);
        bVar.f43473a.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.adapter.o0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view3) {
                r0.this.g(item, view3);
            }
        });
        bVar.f43476d.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.adapter.q0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view3) {
                r0.this.h(item, view3);
            }
        });
        if (item.getStatus() == 0) {
            bVar.f43477e.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.adapter.p0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view3) {
                    r0.this.i(item, view3);
                }
            });
        } else {
            bVar.f43477e.setOnClickListener(null);
        }
        return view2;
    }

    public void j(List<FriendBean> list) {
        this.f43470a = list;
    }

    public void k(a aVar) {
        this.f43472c = aVar;
    }
}
