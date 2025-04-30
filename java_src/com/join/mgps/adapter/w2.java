package com.join.mgps.adapter;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.dto.GameMainV3DataBean;
import java.util.ArrayList;
import java.util.List;
/* compiled from: MemberFunAdapter.java */
/* loaded from: classes3.dex */
public class w2 extends RecyclerView.Adapter<RecyclerView.ViewHolder> {

    /* renamed from: a  reason: collision with root package name */
    private List<GameMainV3DataBean.MemberFunBean> f44445a = new ArrayList();

    /* renamed from: b  reason: collision with root package name */
    private Context f44446b;

    /* renamed from: c  reason: collision with root package name */
    private LayoutInflater f44447c;

    /* renamed from: d  reason: collision with root package name */
    private String f44448d;

    /* compiled from: MemberFunAdapter.java */
    /* loaded from: classes3.dex */
    class a implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ GameMainV3DataBean.MemberFunBean f44449a;

        a(GameMainV3DataBean.MemberFunBean memberFunBean) {
            this.f44449a = memberFunBean;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            String str;
            if (com.join.mgps.Util.d2.h(this.f44449a.getUrl())) {
                return;
            }
            String url = this.f44449a.getUrl();
            if (url.contains("?")) {
                str = url + "&game_id=" + w2.this.f44448d;
            } else {
                str = url + "?game_id=" + w2.this.f44448d;
            }
            IntentUtil.getInstance().goShareWebActivity(w2.this.f44446b, str);
        }
    }

    /* compiled from: MemberFunAdapter.java */
    /* loaded from: classes3.dex */
    public class b extends RecyclerView.ViewHolder {

        /* renamed from: a  reason: collision with root package name */
        LinearLayout f44451a;

        /* renamed from: b  reason: collision with root package name */
        SimpleDraweeView f44452b;

        /* renamed from: c  reason: collision with root package name */
        TextView f44453c;

        public b(View view) {
            super(view);
            this.f44451a = (LinearLayout) view.findViewById(R.id.itemMemberFunRootLl);
            this.f44452b = (SimpleDraweeView) view.findViewById(R.id.itemMemberFunIv);
            this.f44453c = (TextView) view.findViewById(R.id.itemMemberFunTx);
        }
    }

    public w2(Context context, String str) {
        this.f44448d = str;
        this.f44446b = context;
        this.f44447c = LayoutInflater.from(this.f44446b);
    }

    public void c(List<GameMainV3DataBean.MemberFunBean> list) {
        this.f44445a = list;
        notifyDataSetChanged();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.f44445a.size();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i2) {
        GameMainV3DataBean.MemberFunBean memberFunBean = this.f44445a.get(i2);
        if (viewHolder instanceof b) {
            b bVar = (b) viewHolder;
            String pic = memberFunBean.getPic();
            if (!com.join.mgps.Util.d2.h(pic)) {
                bVar.f44452b.setImageURI(pic);
            }
            bVar.f44453c.setText(memberFunBean.getTitle());
            bVar.f44451a.setOnClickListener(new a(memberFunBean));
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i2) {
        return new b(this.f44447c.inflate(R.layout.item_member_fun_view, viewGroup, false));
    }
}
