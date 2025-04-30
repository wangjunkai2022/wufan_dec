package com.join.mgps.adapter;

import android.content.Context;
import android.os.Handler;
import android.os.Message;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.Button;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.dto.GiftPackageDataInfoBean;
import java.util.ArrayList;
import java.util.List;
/* compiled from: GamDetialGiftMoreAdapter.java */
/* loaded from: classes3.dex */
public class s0 extends BaseAdapter {

    /* renamed from: a  reason: collision with root package name */
    private Context f43871a;

    /* renamed from: b  reason: collision with root package name */
    private List<GiftPackageDataInfoBean> f43872b;

    /* renamed from: c  reason: collision with root package name */
    private Handler f43873c;

    /* compiled from: GamDetialGiftMoreAdapter.java */
    /* loaded from: classes3.dex */
    class a implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ GiftPackageDataInfoBean f43874a;

        a(GiftPackageDataInfoBean giftPackageDataInfoBean) {
            this.f43874a = giftPackageDataInfoBean;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (this.f43874a.getGift_package_status() == 1 && !TextUtils.isEmpty(this.f43874a.getGift_package_code())) {
                Message message = new Message();
                message.what = 2;
                message.obj = this.f43874a;
                s0.this.f43873c.sendMessage(message);
                return;
            }
            Message message2 = new Message();
            message2.what = 3;
            message2.obj = this.f43874a;
            s0.this.f43873c.sendMessage(message2);
        }
    }

    /* compiled from: GamDetialGiftMoreAdapter.java */
    /* loaded from: classes3.dex */
    class b {

        /* renamed from: a  reason: collision with root package name */
        TextView f43876a;

        /* renamed from: b  reason: collision with root package name */
        TextView f43877b;

        /* renamed from: c  reason: collision with root package name */
        TextView f43878c;

        /* renamed from: d  reason: collision with root package name */
        Button f43879d;

        /* renamed from: e  reason: collision with root package name */
        ProgressBar f43880e;

        b() {
        }
    }

    public s0(Context context, Handler handler) {
        this.f43873c = handler;
        this.f43871a = context;
    }

    public List<GiftPackageDataInfoBean> b() {
        if (this.f43872b == null) {
            this.f43872b = new ArrayList();
        }
        return this.f43872b;
    }

    @Override // android.widget.Adapter
    public int getCount() {
        return this.f43872b.size();
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
        b bVar;
        if (view == null) {
            view = LayoutInflater.from(this.f43871a).inflate(R.layout.gamedetial_more_gift_item_layout, (ViewGroup) null);
            bVar = new b();
            bVar.f43878c = (TextView) view.findViewById(R.id.content);
            bVar.f43877b = (TextView) view.findViewById(R.id.percent);
            bVar.f43876a = (TextView) view.findViewById(R.id.title);
            bVar.f43879d = (Button) view.findViewById(R.id.getGift);
            bVar.f43880e = (ProgressBar) view.findViewById(R.id.progress);
            view.setTag(bVar);
        } else {
            bVar = (b) view.getTag();
        }
        GiftPackageDataInfoBean giftPackageDataInfoBean = this.f43872b.get(i2);
        bVar.f43878c.setText(giftPackageDataInfoBean.getGift_package_content());
        int gift_package_surplus = (giftPackageDataInfoBean.getGift_package_surplus() == 0 || giftPackageDataInfoBean.getGift_package_count() == 0) ? 0 : (giftPackageDataInfoBean.getGift_package_surplus() * 100) / giftPackageDataInfoBean.getGift_package_count();
        if (giftPackageDataInfoBean.getGift_package_status() == 1 && !TextUtils.isEmpty(giftPackageDataInfoBean.getGift_package_code())) {
            bVar.f43879d.setText("查看");
        } else {
            bVar.f43879d.setText("领取");
        }
        TextView textView = bVar.f43877b;
        textView.setText("剩余" + gift_package_surplus + "%");
        bVar.f43880e.setProgress(100 - gift_package_surplus);
        TextView textView2 = bVar.f43878c;
        textView2.setText("礼包内容：" + giftPackageDataInfoBean.getGift_package_content());
        bVar.f43876a.setText(giftPackageDataInfoBean.getGift_package_title());
        bVar.f43879d.setOnClickListener(new a(giftPackageDataInfoBean));
        return view;
    }
}
