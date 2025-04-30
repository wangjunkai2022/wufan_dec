package com.join.mgps.activity.message;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Build;
import android.os.Handler;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.core.app.NotificationManagerCompat;
import androidx.fragment.app.Fragment;
import androidx.viewpager.widget.ViewPager;
import com.BaseFragmentActivity;
import com.MApplication;
import com.flyco.tablayout.SlidingTabLayout;
import com.flyco.tablayout.widget.MsgView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.IntentDateBean;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.Util.RequestBeanUtil;
import com.join.mgps.adapter.x;
import com.join.mgps.dialog.b;
import com.join.mgps.dto.AccountBean;
import com.join.mgps.dto.MessageRedPointBean;
import com.join.mgps.dto.PayCenterOrderRequest;
import com.join.mgps.event.n;
import com.join.mgps.pref.h;
import java.util.ArrayList;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Background;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EActivity;
import org.androidannotations.annotations.Extra;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
@EActivity(R.layout.activity_message_main)
/* loaded from: classes.dex */
public class MessageMainActivity extends BaseFragmentActivity {
    @ViewById

    /* renamed from: a  reason: collision with root package name */
    SlidingTabLayout f37694a;
    @ViewById

    /* renamed from: b  reason: collision with root package name */
    ImageView f37695b;
    @ViewById

    /* renamed from: c  reason: collision with root package name */
    ViewPager f37696c;

    /* renamed from: d  reason: collision with root package name */
    com.join.mgps.rpc.d f37697d;

    /* renamed from: e  reason: collision with root package name */
    private AccountBean f37698e;

    /* renamed from: f  reason: collision with root package name */
    Fragment f37699f;

    /* renamed from: g  reason: collision with root package name */
    e f37700g;

    /* renamed from: h  reason: collision with root package name */
    com.join.mgps.activity.message.a f37701h;

    /* renamed from: i  reason: collision with root package name */
    com.join.mgps.activity.message.c f37702i;
    @Extra

    /* renamed from: j  reason: collision with root package name */
    int f37703j = 0;
    @Extra

    /* renamed from: k  reason: collision with root package name */
    boolean f37704k = false;
    @Extra

    /* renamed from: l  reason: collision with root package name */
    boolean f37705l = false;
    @Extra

    /* renamed from: m  reason: collision with root package name */
    IntentDateBean f37706m;

    /* renamed from: n  reason: collision with root package name */
    Context f37707n;

    /* renamed from: o  reason: collision with root package name */
    private String f37708o;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            MessageMainActivity messageMainActivity = MessageMainActivity.this;
            messageMainActivity.f37694a.k(messageMainActivity.f37703j);
            int i2 = MessageMainActivity.this.f37703j;
            if (i2 == 1) {
                MApplication.D.setCommunity_surplus_number(0);
                MessageMainActivity messageMainActivity2 = MessageMainActivity.this;
                if (messageMainActivity2.f37704k) {
                    messageMainActivity2.f37701h.c0();
                }
            } else if (i2 == 2) {
                MApplication.D.setReplay_surplus_number(0);
                MessageMainActivity messageMainActivity3 = MessageMainActivity.this;
                if (messageMainActivity3.f37704k) {
                    messageMainActivity3.f37702i.e0();
                }
            } else if (i2 == 0) {
                MApplication.D.setNotice_surplus_number(0);
                if (MessageMainActivity.this.f37706m != null) {
                    IntentUtil intentUtil = IntentUtil.getInstance();
                    MessageMainActivity messageMainActivity4 = MessageMainActivity.this;
                    intentUtil.intentActivity(messageMainActivity4.f37707n, messageMainActivity4.f37706m);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class b implements ViewPager.OnPageChangeListener {
        b() {
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageScrollStateChanged(int i2) {
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageScrolled(int i2, float f4, int i4) {
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageSelected(int i2) {
            MessageMainActivity.this.f37694a.k(i2);
            if (i2 == 0) {
                MessageMainActivity messageMainActivity = MessageMainActivity.this;
                messageMainActivity.f37699f = messageMainActivity.f37700g;
            } else if (i2 == 1) {
                MessageRedPointBean.MessagesBean.DataBean dataBean = MApplication.D;
                if (dataBean != null) {
                    dataBean.setCommunity_surplus_number(0);
                }
                MessageMainActivity messageMainActivity2 = MessageMainActivity.this;
                messageMainActivity2.f37699f = messageMainActivity2.f37701h;
            } else if (i2 == 2) {
                MessageRedPointBean.MessagesBean.DataBean dataBean2 = MApplication.D;
                if (dataBean2 != null) {
                    dataBean2.setReplay_surplus_number(0);
                }
                MessageMainActivity messageMainActivity3 = MessageMainActivity.this;
                messageMainActivity3.f37699f = messageMainActivity3.f37702i;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class c implements b.c {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ com.join.mgps.dialog.b f37711a;

        c(com.join.mgps.dialog.b bVar) {
            this.f37711a = bVar;
        }

        @Override // com.join.mgps.dialog.b.c
        public void ClickCancleButn(com.join.mgps.dialog.b bVar) {
            if (this.f37711a.c()) {
                h.n(MessageMainActivity.this.f37707n).h0(false);
            }
            this.f37711a.dismiss();
        }

        @Override // com.join.mgps.dialog.b.c
        public void ClickOKButn(com.join.mgps.dialog.b bVar) {
            if (this.f37711a.c()) {
                h.n(MessageMainActivity.this.f37707n).h0(false);
            }
            Intent intent = new Intent();
            intent.addFlags(268435456);
            int i2 = Build.VERSION.SDK_INT;
            if (i2 >= 9) {
                intent.setAction("android.settings.APPLICATION_DETAILS_SETTINGS");
                intent.setData(Uri.fromParts("package", "com.join.android.app.mgsim.wufun", null));
            } else if (i2 <= 8) {
                intent.setAction("android.intent.action.VIEW");
                intent.setClassName("com.android.settings", "com.android.settings.InstalledAppDetails");
                intent.putExtra("com.android.settings.ApplicationPkgName", "com.join.android.app.mgsim.wufun");
            }
            MessageMainActivity.this.startActivity(intent);
            this.f37711a.dismiss();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void D0() {
        MessageRedPointBean.MessagesBean.DataBean dataBean = MApplication.D;
        if (dataBean != null) {
            if (dataBean.getNotice_surplus_number() > 0) {
                this.f37694a.q(0, 0);
            }
            if (MApplication.D.getCommunity_surplus_number() > 0 || MApplication.D.getCommunity_praise_surplus_number() > 0) {
                this.f37694a.q(1, 0);
            }
            if (MApplication.D.getReplay_surplus_number() > 0 || MApplication.D.getPraise_surplus_number() > 0) {
                this.f37694a.q(2, 0);
            }
        }
        if (this.f37708o.equals("1")) {
            this.f37700g.f37951m = true;
            if (this.f37696c.getCurrentItem() == 0) {
                this.f37694a.k(0);
                MApplication.D.setNotice_surplus_number(0);
                e eVar = this.f37700g;
                eVar.f37948j = 1;
                eVar.Q();
            }
        } else if (this.f37708o.equals(PayCenterOrderRequest.PAY_TYPE_RECHARGE)) {
            this.f37701h.f37765t = true;
            if (this.f37696c.getCurrentItem() == 1) {
                this.f37694a.k(1);
                MApplication.D.setCommunity_surplus_number(0);
                com.join.mgps.activity.message.a aVar = this.f37701h;
                aVar.f37756k = 1;
                aVar.P();
            }
        } else if (this.f37708o.equals("3")) {
            this.f37702i.f37860s = true;
            if (this.f37696c.getCurrentItem() == 2) {
                this.f37694a.k(2);
                MApplication.D.setReplay_surplus_number(0);
                com.join.mgps.activity.message.c cVar = this.f37702i;
                cVar.f37853l = 1;
                cVar.Q();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void E0() {
        MessageSettingActivity_.Q0(this.f37707n).start();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @AfterViews
    public void afterview() {
        this.f37707n = this;
        org.greenrobot.eventbus.c.f().t(this.f37707n);
        this.f37697d = com.join.mgps.rpc.impl.c.P1();
        this.f37698e = AccountUtil_.getInstance_(this).getAccountData();
        x xVar = new x(getSupportFragmentManager());
        ArrayList arrayList = new ArrayList();
        this.f37700g = new f();
        this.f37701h = new com.join.mgps.activity.message.b();
        this.f37702i = new d();
        x.a aVar = new x.a("通知", this.f37700g);
        x.a aVar2 = new x.a("社区", this.f37701h);
        x.a aVar3 = new x.a("点评", this.f37702i);
        arrayList.add(aVar);
        arrayList.add(aVar2);
        arrayList.add(aVar3);
        xVar.d(arrayList);
        this.f37696c.setAdapter(xVar);
        this.f37696c.setOffscreenPageLimit(3);
        this.f37694a.setViewPager(this.f37696c);
        MessageRedPointBean.MessagesBean.DataBean dataBean = MApplication.D;
        if (dataBean != null) {
            if (dataBean.getNotice_surplus_number() > 0) {
                this.f37694a.q(0, 0);
            }
            if (MApplication.D.getCommunity_surplus_number() > 0 || MApplication.D.getCommunity_praise_surplus_number() > 0) {
                this.f37694a.q(1, 0);
            }
            if (MApplication.D.getReplay_surplus_number() > 0 || MApplication.D.getPraise_surplus_number() > 0) {
                this.f37694a.q(2, 0);
            }
            if (!this.f37705l) {
                if (MApplication.D.getNotice_surplus_number() > 0) {
                    this.f37696c.setCurrentItem(0);
                    MApplication.D.setNotice_surplus_number(0);
                    this.f37694a.k(0);
                } else if (MApplication.D.getCommunity_surplus_number() <= 0 && MApplication.D.getCommunity_praise_surplus_number() <= 0) {
                    if (MApplication.D.getReplay_surplus_number() > 0 || MApplication.D.getPraise_surplus_number() > 0) {
                        this.f37696c.setCurrentItem(2);
                        MApplication.D.setReplay_surplus_number(0);
                        this.f37694a.k(2);
                    }
                } else {
                    this.f37696c.setCurrentItem(1);
                    MApplication.D.setCommunity_surplus_number(0);
                    this.f37694a.k(1);
                }
            }
        }
        MsgView i2 = this.f37694a.i(2);
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) i2.getLayoutParams();
        marginLayoutParams.height = 10;
        marginLayoutParams.width = 10;
        i2.setLayoutParams(marginLayoutParams);
        MsgView i4 = this.f37694a.i(1);
        ViewGroup.MarginLayoutParams marginLayoutParams2 = (ViewGroup.MarginLayoutParams) i4.getLayoutParams();
        marginLayoutParams2.height = 10;
        marginLayoutParams2.width = 10;
        i4.setLayoutParams(marginLayoutParams2);
        MsgView i5 = this.f37694a.i(0);
        ViewGroup.MarginLayoutParams marginLayoutParams3 = (ViewGroup.MarginLayoutParams) i5.getLayoutParams();
        marginLayoutParams3.height = 10;
        marginLayoutParams3.width = 10;
        i5.setLayoutParams(marginLayoutParams3);
        if (this.f37705l) {
            this.f37696c.setCurrentItem(this.f37703j);
            new Handler().postDelayed(new a(), 500L);
        }
        this.f37696c.addOnPageChangeListener(new b());
        if (!h.n(this.f37707n).t() || NotificationManagerCompat.from(this.f37707n).areNotificationsEnabled()) {
            return;
        }
        com.join.mgps.dialog.b bVar = new com.join.mgps.dialog.b(this.f37707n, R.style.HKDialogLoading);
        bVar.k("请开启通知权限");
        bVar.g("第一时间收到重要消息及互动回复。");
        bVar.d("取消");
        bVar.j("去开启");
        bVar.f(0);
        bVar.i(new c(bVar));
        bVar.show();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void back() {
        finish();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void getData() {
        com.join.android.app.common.utils.f.j(this.f37707n);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void getRedPointData() {
        AccountBean accountData;
        if (!com.join.android.app.common.utils.f.j(this.f37707n) || (accountData = AccountUtil_.getInstance_(this.f37707n).getAccountData()) == null || accountData.getUid() == 0 || AccountUtil_.getInstance_(this.f37707n).isTourist()) {
            return;
        }
        try {
            MessageRedPointBean H1 = this.f37697d.H1(RequestBeanUtil.getInstance(this.f37707n).getGRedPointNum(accountData.getUid()));
            if (H1 == null || H1.getMessages() == null || H1.getMessages().getData() == null) {
                return;
            }
            MessageRedPointBean.MessagesBean.DataBean data = H1.getMessages().getData();
            MApplication.D = data;
            int community_praise_surplus_number = data.getCommunity_praise_surplus_number() + MApplication.D.getCommunity_surplus_number() + MApplication.D.getNotice_surplus_number() + MApplication.D.getPraise_surplus_number() + MApplication.D.getReplay_surplus_number();
            MApplication.H = community_praise_surplus_number;
            if (community_praise_surplus_number > 0) {
                D0();
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        org.greenrobot.eventbus.c.f().y(this.f37707n);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMainThread(n nVar) {
        this.f37708o = nVar.f48194a;
        getRedPointData();
    }
}
