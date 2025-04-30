package com.join.mgps.adapter;

import android.content.Context;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.recyclerview.widget.RecyclerView;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.common.utils.MyImageLoader;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.dto.FriendBean;
import java.util.ArrayList;
import java.util.List;
/* compiled from: FriendAddAdapter.java */
/* loaded from: classes3.dex */
public class z extends RecyclerView.Adapter {

    /* renamed from: a  reason: collision with root package name */
    private Context f44604a;

    /* renamed from: b  reason: collision with root package name */
    private List<FriendBean> f44605b = new ArrayList();

    /* renamed from: c  reason: collision with root package name */
    a f44606c;

    /* compiled from: FriendAddAdapter.java */
    /* loaded from: classes3.dex */
    public interface a {
        void G(FriendBean friendBean);
    }

    /* compiled from: FriendAddAdapter.java */
    /* loaded from: classes3.dex */
    class b extends RecyclerView.ViewHolder {

        /* renamed from: a  reason: collision with root package name */
        public TextView f44607a;

        /* renamed from: b  reason: collision with root package name */
        public TextView f44608b;

        /* renamed from: c  reason: collision with root package name */
        public TextView f44609c;

        /* renamed from: d  reason: collision with root package name */
        public SimpleDraweeView f44610d;

        public b(@NonNull View view) {
            super(view);
            this.f44607a = (TextView) view.findViewById(R.id.name);
            this.f44608b = (TextView) view.findViewById(R.id.desc);
            this.f44609c = (TextView) view.findViewById(R.id.button);
            this.f44610d = (SimpleDraweeView) view.findViewById(R.id.avatar);
        }
    }

    public z(Context context) {
        this.f44604a = context;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void d(FriendBean friendBean, View view) {
        a aVar = this.f44606c;
        if (aVar != null) {
            aVar.G(friendBean);
        }
    }

    public List<FriendBean> b() {
        return this.f44605b;
    }

    public a c() {
        return this.f44606c;
    }

    public void e(List<FriendBean> list) {
        this.f44605b = list;
    }

    public void f(a aVar) {
        this.f44606c = aVar;
    }

    public Context getContext() {
        return this.f44604a;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.f44605b.size();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(@NonNull RecyclerView.ViewHolder viewHolder, int i2) {
        if (viewHolder instanceof b) {
            b bVar = (b) viewHolder;
            final FriendBean friendBean = this.f44605b.get(i2);
            bVar.f44607a.setText(friendBean.getNickName());
            bVar.f44608b.setText(friendBean.getAccount());
            MyImageLoader.h(bVar.f44610d, friendBean.getAvatar());
            if (TextUtils.isEmpty(friendBean.getFriendRequestType())) {
                return;
            }
            if (friendBean.getFriendRequestType().equals("ACCEPT")) {
                bVar.f44609c.setText("已添加");
                bVar.f44609c.setSelected(true);
                bVar.f44609c.setOnClickListener(null);
            } else if (!friendBean.getFriendRequestType().equals("REJECT") && !friendBean.getFriendRequestType().equals("INIT")) {
                bVar.f44609c.setText("加好友");
                bVar.f44609c.setSelected(false);
                bVar.f44609c.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.adapter.y
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        z.this.d(friendBean, view);
                    }
                });
            } else {
                bVar.f44609c.setText("已发送");
                bVar.f44609c.setSelected(true);
                bVar.f44609c.setOnClickListener(null);
            }
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    @NonNull
    public RecyclerView.ViewHolder onCreateViewHolder(@NonNull ViewGroup viewGroup, int i2) {
        return new b(LayoutInflater.from(this.f44604a).inflate(R.layout.item_friend_add, viewGroup, false));
    }

    public void setContext(Context context) {
        this.f44604a = context;
    }
}
