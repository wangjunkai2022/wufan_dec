package com.join.mgps.adapter;

import android.bluetooth.BluetoothAdapter;
import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.view.View;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.IntentDateBean;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.activity.DownloadSettingActivity_;
import com.join.mgps.activity.HandShankNoActivity_;
import com.join.mgps.activity.HandShankOverActivity_;
import com.join.mgps.activity.HandShankYesActivity_;
import com.join.mgps.activity.MGSettingActivity_;
import com.join.mgps.activity.MYAccountDetialActivity_;
import com.join.mgps.activity.PAPayCenterActivity_;
import com.join.mgps.activity.VoucherCodesBoxActivity_;
import com.join.mgps.db.tables.HandShankTable;
import com.join.mgps.dto.AccountBean;
import java.util.List;
/* compiled from: ManageAdapter.java */
/* loaded from: classes3.dex */
public class v2 extends BaseAdapter {

    /* renamed from: b  reason: collision with root package name */
    private Context f44357b;

    /* renamed from: c  reason: collision with root package name */
    private AccountBean f44358c;

    /* renamed from: d  reason: collision with root package name */
    private long f44359d;

    /* renamed from: a  reason: collision with root package name */
    String f44356a = getClass().getSimpleName();

    /* renamed from: e  reason: collision with root package name */
    private String[] f44360e = {"存号箱", "下载设置", "建议与反馈", "更多", "饭票中心"};

    /* renamed from: f  reason: collision with root package name */
    private int[] f44361f = {R.drawable.save_code_icon, R.drawable.settingicon_blue, R.drawable.suggest_icon, R.drawable.more_icon, R.drawable.save_code_icon};

    /* renamed from: g  reason: collision with root package name */
    private boolean f44362g = false;

    /* compiled from: ManageAdapter.java */
    /* loaded from: classes3.dex */
    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            MYAccountDetialActivity_.r1(v2.this.f44357b).a(v2.this.f44358c).start();
            com.papa.sim.statistic.pref.b.j(v2.this.f44357b).z(false);
        }
    }

    /* compiled from: ManageAdapter.java */
    /* loaded from: classes3.dex */
    class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            IntentUtil.getInstance().goLogin(v2.this.f44357b);
        }
    }

    /* compiled from: ManageAdapter.java */
    /* loaded from: classes3.dex */
    class c implements View.OnClickListener {
        c() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (Build.VERSION.SDK_INT < 15) {
                com.join.mgps.Util.i2.a(v2.this.f44357b).b("你的手机暂不支持");
            } else if (BluetoothAdapter.getDefaultAdapter() == null) {
                v2.this.f44357b.startActivity(new Intent(v2.this.f44357b, HandShankOverActivity_.class));
            } else {
                List<HandShankTable> o3 = n1.x.p().o();
                if (o3 == null || o3.size() == 0) {
                    v2.this.f44357b.startActivity(new Intent(v2.this.f44357b, HandShankNoActivity_.class));
                } else {
                    v2.this.f44357b.startActivity(new Intent(v2.this.f44357b, HandShankYesActivity_.class));
                }
            }
        }
    }

    /* compiled from: ManageAdapter.java */
    /* loaded from: classes3.dex */
    class d implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f44366a;

        d(int i2) {
            this.f44366a = i2;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            int i2 = this.f44366a;
            if (i2 == 1) {
                if (IntentUtil.getInstance().goLogin(v2.this.f44357b)) {
                    return;
                }
                VoucherCodesBoxActivity_.G0(v2.this.f44357b).a(v2.this.f44358c.getUid()).b(0).start();
            } else if (i2 == 3) {
                DownloadSettingActivity_.Z0(v2.this.f44357b).start();
            } else if (i2 != 4) {
                if (i2 == 5) {
                    MGSettingActivity_.O0(v2.this.f44357b).start();
                } else if (i2 != 6) {
                    return;
                }
                PAPayCenterActivity_.S0(v2.this.f44357b).start();
            } else {
                IntentDateBean intentDateBean = new IntentDateBean();
                intentDateBean.setLink_type(4);
                intentDateBean.setLink_type_val("http://bbs.5fun.com/forum.php?mod=viewthread&tid=56");
                IntentUtil.getInstance().intentActivity(v2.this.f44357b, intentDateBean);
            }
        }
    }

    /* compiled from: ManageAdapter.java */
    /* loaded from: classes3.dex */
    class e {

        /* renamed from: a  reason: collision with root package name */
        RelativeLayout f44368a;

        e() {
        }
    }

    /* compiled from: ManageAdapter.java */
    /* loaded from: classes3.dex */
    class f {

        /* renamed from: a  reason: collision with root package name */
        RelativeLayout f44370a;

        /* renamed from: b  reason: collision with root package name */
        ImageView f44371b;

        /* renamed from: c  reason: collision with root package name */
        ImageView f44372c;

        /* renamed from: d  reason: collision with root package name */
        TextView f44373d;

        /* renamed from: e  reason: collision with root package name */
        TextView f44374e;

        f() {
        }
    }

    /* compiled from: ManageAdapter.java */
    /* loaded from: classes3.dex */
    class g {

        /* renamed from: a  reason: collision with root package name */
        LinearLayout f44376a;

        /* renamed from: b  reason: collision with root package name */
        LinearLayout f44377b;

        /* renamed from: c  reason: collision with root package name */
        SimpleDraweeView f44378c;

        /* renamed from: d  reason: collision with root package name */
        ImageView f44379d;

        /* renamed from: e  reason: collision with root package name */
        ImageView f44380e;

        /* renamed from: f  reason: collision with root package name */
        TextView f44381f;

        /* renamed from: g  reason: collision with root package name */
        TextView f44382g;

        /* renamed from: h  reason: collision with root package name */
        TextView f44383h;

        /* renamed from: i  reason: collision with root package name */
        TextView f44384i;

        g() {
        }
    }

    public v2(Context context) {
        this.f44357b = context;
    }

    public AccountBean c() {
        return this.f44358c;
    }

    public void d(AccountBean accountBean) {
        this.f44358c = accountBean;
        notifyDataSetChanged();
    }

    public void e(boolean z3) {
        this.f44362g = z3;
        notifyDataSetChanged();
    }

    @Override // android.widget.Adapter
    public int getCount() {
        return this.f44360e.length + 2;
    }

    @Override // android.widget.Adapter
    public Object getItem(int i2) {
        return null;
    }

    @Override // android.widget.Adapter
    public long getItemId(int i2) {
        return 0L;
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public int getItemViewType(int i2) {
        if (i2 == 0) {
            return 0;
        }
        return i2 == 2 ? 1 : 2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0127  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x016e  */
    @Override // android.widget.Adapter
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public android.view.View getView(int r8, android.view.View r9, android.view.ViewGroup r10) {
        /*
            Method dump skipped, instructions count: 556
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.join.mgps.adapter.v2.getView(int, android.view.View, android.view.ViewGroup):android.view.View");
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public int getViewTypeCount() {
        return 3;
    }
}
