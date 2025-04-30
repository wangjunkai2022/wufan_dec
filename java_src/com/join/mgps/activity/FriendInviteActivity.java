package com.join.mgps.activity;

import android.content.Intent;
import android.os.CountDownTimer;
import android.widget.TextView;
import androidx.annotation.Nullable;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.common.utils.MyImageLoader;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.dialog.DownloadHighSpeedingDialog_;
import com.join.mgps.dto.AccountBean;
import com.join.mgps.dto.FriendInviteBean;
import com.papa.sim.statistic.Event;
import com.papa.sim.statistic.Ext;
import java.util.HashMap;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Background;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EActivity;
import org.androidannotations.annotations.Extra;
import org.androidannotations.annotations.ViewById;
import org.greenrobot.eventbus.Subscribe;
@EActivity(R.layout.activity_friend_invite)
/* loaded from: classes.dex */
public class FriendInviteActivity extends FriendActivity {
    @ViewById

    /* renamed from: o0  reason: collision with root package name */
    SimpleDraweeView f30902o0;
    @ViewById

    /* renamed from: p0  reason: collision with root package name */
    TextView f30903p0;
    @ViewById

    /* renamed from: q0  reason: collision with root package name */
    TextView f30904q0;
    @ViewById(R.id.gameName)

    /* renamed from: r0  reason: collision with root package name */
    TextView f30905r0;
    @Extra

    /* renamed from: s0  reason: collision with root package name */
    FriendInviteBean f30906s0;

    /* renamed from: t0  reason: collision with root package name */
    com.join.mgps.rpc.i f30907t0;

    /* renamed from: u0  reason: collision with root package name */
    CountDownTimer f30908u0 = new a(16000, 1000);

    /* loaded from: classes3.dex */
    class a extends CountDownTimer {
        a(long j4, long j5) {
            super(j4, j5);
        }

        @Override // android.os.CountDownTimer
        public void onFinish() {
            Ext ext = new Ext();
            ext.setFrom("0");
            AccountBean accountData = AccountUtil_.getInstance_(FriendInviteActivity.this).getAccountData();
            if (accountData != null) {
                ext.setUid(accountData.getUid());
            }
            if (FriendInviteActivity.this.f30906s0 != null) {
                ext.setGameId(FriendInviteActivity.this.f30906s0.getGameId() + "");
                ext.setPosition(FriendInviteActivity.this.f30906s0.getSource() != 1 ? "1" : "0");
            }
            com.papa.sim.statistic.p.l(FriendInviteActivity.this).K1(Event.OverdueInvitation, ext);
            FriendInviteActivity.this.f30904q0.setText("拒绝");
            com.wufan.friend.chat.c.u().P();
            FriendInviteActivity.this.finish();
        }

        @Override // android.os.CountDownTimer
        public void onTick(long j4) {
            TextView textView = FriendInviteActivity.this.f30904q0;
            textView.setText("拒绝(" + (j4 / 1000) + "s)");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void A1() {
        com.wufan.friend.chat.c.u().P();
        Ext ext = new Ext();
        ext.setPosition(this.f30906s0.getSource() == 1 ? "0" : "1");
        ext.setFrom("0");
        AccountBean accountData = AccountUtil_.getInstance_(this).getAccountData();
        if (accountData != null) {
            ext.setUid(accountData.getUid());
        }
        ext.setGameId(this.f30906s0.getGameId() + "");
        com.papa.sim.statistic.p.l(this).K1(Event.RefuseInvitation, ext);
        finish();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void B1() {
        try {
            com.wufan.friend.chat.c.u().P();
            if (com.ta.utdid2.android.utils.f.f(this)) {
                HashMap hashMap = new HashMap();
                hashMap.put("uid", AccountUtil_.getInstance_(this).getUid());
                hashMap.put("token", AccountUtil_.getInstance_(this).getToken());
                hashMap.put("friendId", Integer.valueOf(this.f30906s0.getFromAccountId()));
                this.f30907t0.j(hashMap);
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    void C1(int i2) {
        Intent intent = new Intent();
        intent.setAction("com.emu.ad.result");
        intent.putExtra(DownloadHighSpeedingDialog_.a.f47372b, 100);
        intent.putExtra("exit", i2);
        sendBroadcast(intent);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @AfterViews
    public void afterViews() {
        if (!org.greenrobot.eventbus.c.f().m(this)) {
            org.greenrobot.eventbus.c.f().t(this);
        }
        FriendInviteBean friendInviteBean = this.f30906s0;
        if (friendInviteBean == null) {
            finish();
            return;
        }
        MyImageLoader.h(this.f30902o0, friendInviteBean.getAvatar());
        this.f30903p0.setText(this.f30906s0.getFromNickname());
        this.f30905r0.setText(this.f30906s0.getGameName());
        this.f30907t0 = com.join.mgps.rpc.impl.g.p();
        com.join.mgps.Util.z1.o(this, -1, true);
        if (getResources().getConfiguration().orientation == 2) {
            setSystemUiHide(true);
        }
        Ext ext = new Ext();
        ext.setPosition(this.f30906s0.getSource() == 1 ? "0" : "1");
        ext.setFrom("0");
        AccountBean accountData = AccountUtil_.getInstance_(this).getAccountData();
        if (accountData != null) {
            ext.setUid(accountData.getUid());
        }
        ext.setGameId(this.f30906s0.getGameId() + "");
        com.papa.sim.statistic.p.l(this).K1(Event.ReceiveInvitation, ext);
        this.f30908u0.start();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.join.mgps.activity.FriendActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void onActivityResult(int i2, int i4, @Nullable Intent intent) {
        super.onActivityResult(i2, i4, intent);
        if (i2 == 10001 && i4 == -1) {
            com.wufan.friend.chat.c.u().O();
            C1(2);
        }
    }

    @Override // com.join.mgps.activity.FriendActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        super.onBackPressed();
        com.wufan.friend.chat.c.u().P();
        Ext ext = new Ext();
        ext.setPosition(this.f30906s0.getSource() == 1 ? "0" : "1");
        ext.setFrom("0");
        AccountBean accountData = AccountUtil_.getInstance_(this).getAccountData();
        if (accountData != null) {
            ext.setUid(accountData.getUid());
        }
        ext.setGameId(this.f30906s0.getGameId() + "");
        com.papa.sim.statistic.p.l(this).K1(Event.RefuseInvitation, ext);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.join.mgps.activity.FriendActivity, com.BaseActivity, com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        CountDownTimer countDownTimer = this.f30908u0;
        if (countDownTimer != null) {
            countDownTimer.cancel();
        }
        if (org.greenrobot.eventbus.c.f().m(this)) {
            org.greenrobot.eventbus.c.f().y(this);
        }
    }

    @Subscribe
    public void onFriendEvent(com.join.mgps.event.m mVar) {
        if (mVar != null) {
            if (mVar.a() == 3) {
                finish();
            } else if (mVar.a() == 8) {
                A1();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void y1() {
        Ext ext = new Ext();
        ext.setPosition(this.f30906s0.getSource() == 1 ? "0" : "1");
        ext.setFrom("0");
        AccountBean accountData = AccountUtil_.getInstance_(this).getAccountData();
        if (accountData != null) {
            ext.setUid(accountData.getUid());
        }
        ext.setGameId(this.f30906s0.getGameId() + "");
        com.papa.sim.statistic.p.l(this).K1(Event.SuccessInvitation, ext);
        String str = "" + this.f30906s0.getGameId();
        if (!checkGameIsInstall(str)) {
            startDownloadActivity(str, 10001);
            return;
        }
        com.wufan.friend.chat.c.u().O();
        C1(2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void z1() {
        B1();
        com.wufan.friend.chat.c.u().P();
        Ext ext = new Ext();
        ext.setPosition(this.f30906s0.getSource() == 1 ? "0" : "1");
        ext.setFrom("0");
        AccountBean accountData = AccountUtil_.getInstance_(this).getAccountData();
        if (accountData != null) {
            ext.setUid(accountData.getUid());
        }
        ext.setGameId(this.f30906s0.getGameId() + "");
        com.papa.sim.statistic.p.l(this).K1(Event.RefuseInvitation, ext);
        finish();
    }
}
