package com.join.mgps.adapter;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.common.utils.MyImageLoader;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.dto.AppBeanMain;
import com.join.mgps.dto.RecomDatabean;
import java.util.ArrayList;
import java.util.List;
/* compiled from: MGpapaMainGalleryAdapter.java */
/* loaded from: classes3.dex */
public class t2 extends BaseAdapter {

    /* renamed from: a  reason: collision with root package name */
    private Context f44076a;

    /* renamed from: b  reason: collision with root package name */
    private List<RecomDatabean> f44077b;

    /* compiled from: MGpapaMainGalleryAdapter.java */
    /* loaded from: classes3.dex */
    class a implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ RecomDatabean f44078a;

        a(RecomDatabean recomDatabean) {
            this.f44078a = recomDatabean;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            List<AppBeanMain> sub = this.f44078a.getSub();
            if (sub == null || sub.size() <= 0) {
                return;
            }
            IntentUtil.getInstance().intentActivity(t2.this.f44076a, sub.get(0).getIntentDataBean());
        }
    }

    public t2(Context context, List<RecomDatabean> list) {
        this.f44076a = context;
        if (list == null) {
            this.f44077b = new ArrayList();
        } else {
            this.f44077b = list;
        }
    }

    public void b(List<RecomDatabean> list) {
        if (list == null) {
            this.f44077b = new ArrayList();
        } else {
            this.f44077b = list;
        }
        notifyDataSetChanged();
    }

    @Override // android.widget.Adapter
    public int getCount() {
        return this.f44077b.size() == 0 ? 0 : Integer.MAX_VALUE;
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
        if (view == null) {
            view = LayoutInflater.from(this.f44076a).inflate(R.layout.mgpapamain_gallery_item, viewGroup, false);
        }
        List<RecomDatabean> list = this.f44077b;
        RecomDatabean recomDatabean = list.get(i2 % list.size());
        SimpleDraweeView simpleDraweeView = (SimpleDraweeView) com.join.mgps.Util.o2.a(view, R.id.intersting_itemback);
        MyImageLoader.h(simpleDraweeView, recomDatabean.getMain().getPic_remote());
        simpleDraweeView.setOnClickListener(new a(recomDatabean));
        return view;
    }
}
