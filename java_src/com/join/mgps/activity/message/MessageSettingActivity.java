package com.join.mgps.activity.message;

import android.content.Context;
import android.widget.ImageView;
import com.BaseFragmentActivity;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.i2;
import com.join.mgps.dto.AccountResultMainBean;
import com.join.mgps.dto.JPushJoinDeviceResult;
import com.join.mgps.pref.h;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Background;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EActivity;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;
import org.springframework.util.LinkedMultiValueMap;
@EActivity(R.layout.activity_message_setting)
/* loaded from: classes3.dex */
public class MessageSettingActivity extends BaseFragmentActivity {
    @ViewById

    /* renamed from: a  reason: collision with root package name */
    ImageView f37725a;
    @ViewById

    /* renamed from: b  reason: collision with root package name */
    ImageView f37726b;
    @ViewById

    /* renamed from: c  reason: collision with root package name */
    ImageView f37727c;

    /* renamed from: d  reason: collision with root package name */
    private Context f37728d;

    /* renamed from: e  reason: collision with root package name */
    private com.join.mgps.rpc.b f37729e;

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void D0() {
        if (h.n(this.f37728d).q()) {
            this.f37725a.setImageResource(R.drawable.ic_notif_open);
            if (h.n(this.f37728d).r()) {
                this.f37727c.setImageResource(R.drawable.ic_notif_open);
            } else {
                this.f37727c.setImageResource(R.drawable.ic_notif_closed);
            }
            if (h.n(this.f37728d).s()) {
                this.f37726b.setImageResource(R.drawable.ic_notif_open);
                return;
            } else {
                this.f37726b.setImageResource(R.drawable.ic_notif_closed);
                return;
            }
        }
        this.f37725a.setImageResource(R.drawable.ic_notif_closed);
        this.f37726b.setImageResource(R.drawable.ic_notif_closed);
        this.f37727c.setImageResource(R.drawable.ic_notif_closed);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void E0(AccountResultMainBean<JPushJoinDeviceResult> accountResultMainBean) {
        if (accountResultMainBean != null && accountResultMainBean.getError() == 0 && accountResultMainBean.getData().isResult()) {
            if (accountResultMainBean.getData().getOpenPush() != 1) {
                h.n(this.f37728d).e0(false);
            } else {
                h.n(this.f37728d).e0(true);
            }
            if (accountResultMainBean.getData().getOpenPraise() == 1) {
                h.n(this.f37728d).f0(true);
            } else {
                h.n(this.f37728d).f0(false);
            }
            if (accountResultMainBean.getData().getOpenReply() == 1) {
                h.n(this.f37728d).g0(true);
            } else {
                h.n(this.f37728d).g0(false);
            }
        }
        D0();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void F0() {
        if (com.join.android.app.common.utils.f.j(this.f37728d)) {
            LinkedMultiValueMap linkedMultiValueMap = new LinkedMultiValueMap();
            linkedMultiValueMap.add("uid", AccountUtil_.getInstance_(this.f37728d).getUid() + "");
            linkedMultiValueMap.add("token", AccountUtil_.getInstance_(this.f37728d).getToken());
            E0(this.f37729e.I(linkedMultiValueMap));
            return;
        }
        D0();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void G0() {
        J0(3);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void H0() {
        J0(1);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void I0() {
        J0(2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void J0(int i2) {
        if (com.join.android.app.common.utils.f.j(this.f37728d)) {
            LinkedMultiValueMap linkedMultiValueMap = new LinkedMultiValueMap();
            linkedMultiValueMap.add("uid", AccountUtil_.getInstance_(this.f37728d).getUid() + "");
            linkedMultiValueMap.add("token", AccountUtil_.getInstance_(this.f37728d).getToken());
            boolean q3 = h.n(this.f37728d).q();
            boolean s3 = h.n(this.f37728d).s();
            boolean r3 = h.n(this.f37728d).r();
            linkedMultiValueMap.add("openPush", (q3 ? 1 : 0) + "");
            linkedMultiValueMap.add("openReply", (s3 ? 1 : 0) + "");
            linkedMultiValueMap.add("openPraise", (r3 ? 1 : 0) + "");
            if (i2 == 1) {
                if (q3) {
                    linkedMultiValueMap.add("openPush", "0");
                    linkedMultiValueMap.add("openReply", "0");
                    linkedMultiValueMap.add("openPraise", "0");
                } else {
                    linkedMultiValueMap.add("openPush", "1");
                    linkedMultiValueMap.add("openReply", "0");
                    linkedMultiValueMap.add("openPraise", "0");
                }
            } else if (i2 == 2) {
                if (!q3) {
                    linkedMultiValueMap.add("openPraise", "0");
                }
                if (s3) {
                    linkedMultiValueMap.add("openReply", "0");
                } else {
                    linkedMultiValueMap.add("openPush", "1");
                    linkedMultiValueMap.add("openReply", "1");
                }
            } else if (i2 == 3) {
                if (!q3) {
                    linkedMultiValueMap.add("openReply", "0");
                }
                if (r3) {
                    linkedMultiValueMap.add("openPraise", "0");
                } else {
                    linkedMultiValueMap.add("openPush", "1");
                    linkedMultiValueMap.add("openPraise", "1");
                }
            }
            K0(this.f37729e.m(linkedMultiValueMap), i2);
            return;
        }
        D0();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void K0(AccountResultMainBean<JPushJoinDeviceResult> accountResultMainBean, int i2) {
        if (accountResultMainBean != null && accountResultMainBean.getError() == 0 && accountResultMainBean.getData().isResult()) {
            boolean q3 = h.n(this.f37728d).q();
            boolean s3 = h.n(this.f37728d).s();
            boolean r3 = h.n(this.f37728d).r();
            if (i2 == 1) {
                if (q3) {
                    h.n(this.f37728d).e0(false);
                    h.n(this.f37728d).f0(false);
                    h.n(this.f37728d).g0(false);
                } else {
                    h.n(this.f37728d).e0(true);
                }
            } else if (i2 == 2) {
                if (s3) {
                    h.n(this.f37728d).g0(false);
                } else {
                    h.n(this.f37728d).e0(true);
                    h.n(this.f37728d).g0(true);
                }
            } else if (i2 == 3) {
                if (r3) {
                    h.n(this.f37728d).f0(false);
                } else {
                    h.n(this.f37728d).e0(true);
                    h.n(this.f37728d).f0(true);
                }
            }
            F0();
            return;
        }
        i2.a(this.f37728d).b("设置失败！");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @AfterViews
    public void afterview() {
        this.f37728d = this;
        this.f37729e = com.join.mgps.rpc.impl.a.b0();
        F0();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void back() {
        finish();
    }
}
