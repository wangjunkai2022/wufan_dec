package com.join.mgps.adapter;

import android.content.Context;
import android.content.Intent;
import android.text.SpannableStringBuilder;
import android.text.style.LeadingMarginSpan;
import android.view.View;
import android.widget.BaseAdapter;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.mgps.Util.IntentDateBean;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.activity.NowWufunFragment;
import com.join.mgps.customview.DownloadViewBig;
import com.join.mgps.customview.DownloadViewNormal;
import com.join.mgps.dto.TodayWufunBroadcast;
import com.join.mgps.dto.TodayWufunEverday;
import com.join.mgps.dto.TodayWufunTodayNew;
import com.join.mgps.dto.TodayWufunTopic;
import java.util.List;
/* compiled from: NowWufunAdapter.java */
/* loaded from: classes3.dex */
public class q3 extends BaseAdapter {

    /* renamed from: a  reason: collision with root package name */
    List<NowWufunFragment.c> f43361a;

    /* renamed from: b  reason: collision with root package name */
    private Context f43362b;

    /* compiled from: NowWufunAdapter.java */
    /* loaded from: classes3.dex */
    class a implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ TodayWufunEverday f43363a;

        a(TodayWufunEverday todayWufunEverday) {
            this.f43363a = todayWufunEverday;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            IntentUtil.getInstance().goGameDetialActivity(q3.this.f43362b, this.f43363a.getGame_id(), this.f43363a.getTpl_type(), this.f43363a.getSp_tpl_two_position(), 0);
        }
    }

    /* compiled from: NowWufunAdapter.java */
    /* loaded from: classes3.dex */
    class b implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ TodayWufunBroadcast f43365a;

        b(TodayWufunBroadcast todayWufunBroadcast) {
            this.f43365a = todayWufunBroadcast;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            IntentDateBean intentDateBean = new IntentDateBean();
            intentDateBean.setLink_type(6);
            intentDateBean.setLink_type_val(this.f43365a.getId());
            IntentUtil.getInstance().intentActivity(q3.this.f43362b, intentDateBean);
        }
    }

    /* compiled from: NowWufunAdapter.java */
    /* loaded from: classes3.dex */
    class c implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ TodayWufunTodayNew f43367a;

        c(TodayWufunTodayNew todayWufunTodayNew) {
            this.f43367a = todayWufunTodayNew;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            IntentUtil.getInstance().goGameDetialActivity(q3.this.f43362b, this.f43367a.getGame_id(), this.f43367a.getTpl_type(), this.f43367a.getSp_tpl_two_position(), 0);
        }
    }

    /* compiled from: NowWufunAdapter.java */
    /* loaded from: classes3.dex */
    class d implements View.OnClickListener {
        d() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            q3.this.f43362b.sendBroadcast(new Intent("com.intent.nowwufun.everdaytab"));
        }
    }

    /* compiled from: NowWufunAdapter.java */
    /* loaded from: classes3.dex */
    class e implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ TodayWufunTopic f43370a;

        e(TodayWufunTopic todayWufunTopic) {
            this.f43370a = todayWufunTopic;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            IntentDateBean intentDateBean = new IntentDateBean();
            intentDateBean.setLink_type(6);
            intentDateBean.setLink_type_val(this.f43370a.getId());
            IntentUtil.getInstance().intentActivity(q3.this.f43362b, intentDateBean);
        }
    }

    /* compiled from: NowWufunAdapter.java */
    /* loaded from: classes3.dex */
    class f implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ TodayWufunTopic f43372a;

        f(TodayWufunTopic todayWufunTopic) {
            this.f43372a = todayWufunTopic;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            IntentDateBean intentDateBean = new IntentDateBean();
            intentDateBean.setLink_type(6);
            intentDateBean.setLink_type_val(this.f43372a.getId());
            IntentUtil.getInstance().intentActivity(q3.this.f43362b, intentDateBean);
        }
    }

    /* compiled from: NowWufunAdapter.java */
    /* loaded from: classes3.dex */
    static /* synthetic */ class g {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f43374a;

        static {
            int[] iArr = new int[NowWufunFragment.ItemType.values().length];
            f43374a = iArr;
            try {
                iArr[NowWufunFragment.ItemType.DATETITLE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f43374a[NowWufunFragment.ItemType.FIND.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f43374a[NowWufunFragment.ItemType.BROADCAST.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f43374a[NowWufunFragment.ItemType.TODAYNEWTITLE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f43374a[NowWufunFragment.ItemType.TODAYNEWITEM.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f43374a[NowWufunFragment.ItemType.TODAYNEWBOTTOM.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f43374a[NowWufunFragment.ItemType.TOPIC.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f43374a[NowWufunFragment.ItemType.TOPIC2.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
        }
    }

    /* compiled from: NowWufunAdapter.java */
    /* loaded from: classes3.dex */
    class h {

        /* renamed from: a  reason: collision with root package name */
        private TextView f43375a;

        /* renamed from: b  reason: collision with root package name */
        private TextView f43376b;

        h() {
        }
    }

    /* compiled from: NowWufunAdapter.java */
    /* loaded from: classes3.dex */
    class i {

        /* renamed from: a  reason: collision with root package name */
        private TextView f43378a;

        i() {
        }
    }

    /* compiled from: NowWufunAdapter.java */
    /* loaded from: classes3.dex */
    class j {

        /* renamed from: a  reason: collision with root package name */
        private TextView f43380a;

        j() {
        }
    }

    /* compiled from: NowWufunAdapter.java */
    /* loaded from: classes3.dex */
    public class k {

        /* renamed from: a  reason: collision with root package name */
        private SimpleDraweeView f43382a;

        /* renamed from: b  reason: collision with root package name */
        private SimpleDraweeView f43383b;

        /* renamed from: c  reason: collision with root package name */
        private TextView f43384c;

        /* renamed from: d  reason: collision with root package name */
        private TextView f43385d;

        /* renamed from: e  reason: collision with root package name */
        private TextView f43386e;

        /* renamed from: f  reason: collision with root package name */
        public DownloadViewBig f43387f;

        /* renamed from: g  reason: collision with root package name */
        private DownloadViewNormal f43388g;

        /* renamed from: h  reason: collision with root package name */
        private LinearLayout f43389h;

        /* renamed from: i  reason: collision with root package name */
        private LinearLayout f43390i;

        public k() {
        }
    }

    /* compiled from: NowWufunAdapter.java */
    /* loaded from: classes3.dex */
    public class l {

        /* renamed from: a  reason: collision with root package name */
        private SimpleDraweeView f43392a;

        /* renamed from: b  reason: collision with root package name */
        private TextView f43393b;

        /* renamed from: c  reason: collision with root package name */
        private LinearLayout f43394c;

        /* renamed from: d  reason: collision with root package name */
        public TextView f43395d;

        /* renamed from: e  reason: collision with root package name */
        public TextView f43396e;

        /* renamed from: f  reason: collision with root package name */
        private DownloadViewNormal f43397f;

        /* renamed from: g  reason: collision with root package name */
        public ProgressBar f43398g;

        /* renamed from: h  reason: collision with root package name */
        public ProgressBar f43399h;

        /* renamed from: i  reason: collision with root package name */
        private LinearLayout f43400i;

        /* renamed from: j  reason: collision with root package name */
        public LinearLayout f43401j;

        public l() {
        }
    }

    /* compiled from: NowWufunAdapter.java */
    /* loaded from: classes3.dex */
    class m {

        /* renamed from: a  reason: collision with root package name */
        private SimpleDraweeView f43403a;

        /* renamed from: b  reason: collision with root package name */
        private SimpleDraweeView f43404b;

        /* renamed from: c  reason: collision with root package name */
        private TextView f43405c;

        /* renamed from: d  reason: collision with root package name */
        private TextView f43406d;

        /* renamed from: e  reason: collision with root package name */
        private TextView f43407e;

        /* renamed from: f  reason: collision with root package name */
        private TextView f43408f;

        /* renamed from: g  reason: collision with root package name */
        private LinearLayout f43409g;

        m() {
        }
    }

    /* compiled from: NowWufunAdapter.java */
    /* loaded from: classes3.dex */
    class n {

        /* renamed from: a  reason: collision with root package name */
        private SimpleDraweeView f43411a;

        /* renamed from: b  reason: collision with root package name */
        private SimpleDraweeView f43412b;

        /* renamed from: c  reason: collision with root package name */
        private TextView f43413c;

        /* renamed from: d  reason: collision with root package name */
        private TextView f43414d;

        /* renamed from: e  reason: collision with root package name */
        private TextView f43415e;

        /* renamed from: f  reason: collision with root package name */
        private TextView f43416f;

        /* renamed from: g  reason: collision with root package name */
        private LinearLayout f43417g;

        n() {
        }
    }

    public q3(Context context, List<NowWufunFragment.c> list) {
        this.f43361a = list;
        this.f43362b = context;
    }

    private NowWufunFragment.ItemType b(int i2) {
        return this.f43361a.get(i2).f34454a;
    }

    private void c(TextView textView, String str, int i2) {
        if (textView == null || com.join.mgps.Util.d2.h(str)) {
            return;
        }
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(str);
        spannableStringBuilder.setSpan(new LeadingMarginSpan.Standard(i2 + ((int) (com.join.android.app.common.utils.j.n(this.f43362b).g() * 5.0f)), 0), 0, str.length(), 33);
        textView.setText(spannableStringBuilder);
    }

    @Override // android.widget.Adapter
    public int getCount() {
        return this.f43361a.size();
    }

    @Override // android.widget.Adapter
    public Object getItem(int i2) {
        return this.f43361a.get(i2);
    }

    @Override // android.widget.Adapter
    public long getItemId(int i2) {
        return 0L;
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public int getItemViewType(int i2) {
        return this.f43361a.get(i2).f34454a.getType();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0298  */
    @Override // android.widget.Adapter
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public android.view.View getView(int r17, android.view.View r18, android.view.ViewGroup r19) {
        /*
            Method dump skipped, instructions count: 1764
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.join.mgps.adapter.q3.getView(int, android.view.View, android.view.ViewGroup):android.view.View");
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public int getViewTypeCount() {
        return 9;
    }
}
