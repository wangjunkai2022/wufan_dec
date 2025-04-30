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
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.dto.GameMainV4DataBean;
import java.util.ArrayList;
import java.util.List;
/* compiled from: MemberFunAdapter1.java */
/* loaded from: classes3.dex */
public class y2 extends BaseAdapter {

    /* renamed from: a  reason: collision with root package name */
    private List<GameMainV4DataBean.MemberFunBean> f44575a = new ArrayList();

    /* renamed from: b  reason: collision with root package name */
    private Context f44576b;

    /* renamed from: c  reason: collision with root package name */
    private String f44577c;

    /* compiled from: MemberFunAdapter1.java */
    /* loaded from: classes3.dex */
    public class a {

        /* renamed from: a  reason: collision with root package name */
        TextView f44578a;

        /* renamed from: b  reason: collision with root package name */
        SimpleDraweeView f44579b;

        public a() {
        }
    }

    public y2(Context context, String str) {
        this.f44577c = str;
        this.f44576b = context;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void c(GameMainV4DataBean.MemberFunBean memberFunBean, View view) {
        String str;
        if (com.join.mgps.Util.d2.h(memberFunBean.getUrl())) {
            return;
        }
        String url = memberFunBean.getUrl();
        if (url.contains("?")) {
            str = url + "&game_id=" + this.f44577c;
        } else {
            str = url + "?game_id=" + this.f44577c;
        }
        IntentUtil.getInstance().goShareWebActivity(this.f44576b, str);
    }

    @Override // android.widget.Adapter
    /* renamed from: b */
    public GameMainV4DataBean.MemberFunBean getItem(int i2) {
        List<GameMainV4DataBean.MemberFunBean> list = this.f44575a;
        if (list != null) {
            return list.get(i2);
        }
        return null;
    }

    public void d(List<GameMainV4DataBean.MemberFunBean> list) {
        this.f44575a = list;
        notifyDataSetChanged();
    }

    @Override // android.widget.Adapter
    public int getCount() {
        List<GameMainV4DataBean.MemberFunBean> list = this.f44575a;
        if (list != null) {
            return list.size();
        }
        return 0;
    }

    @Override // android.widget.Adapter
    public long getItemId(int i2) {
        return i2;
    }

    @Override // android.widget.Adapter
    public View getView(int i2, View view, ViewGroup viewGroup) {
        View view2;
        a aVar;
        if (view == null) {
            aVar = new a();
            view2 = LayoutInflater.from(this.f44576b).inflate(R.layout.item_vip_fun1, viewGroup, false);
            aVar.f44578a = (TextView) view2.findViewById(R.id.name);
            aVar.f44579b = (SimpleDraweeView) view2.findViewById(R.id.ic);
            view2.setTag(aVar);
        } else {
            view2 = view;
            aVar = (a) view.getTag();
        }
        if (getItem(i2) == null) {
            view2.setOnClickListener(null);
            return view2;
        }
        final GameMainV4DataBean.MemberFunBean item = getItem(i2);
        aVar.f44578a.setText(item.getTitle());
        MyImageLoader.h(aVar.f44579b, item.getPic());
        view2.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.adapter.x2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view3) {
                y2.this.c(item, view3);
            }
        });
        return view2;
    }
}
