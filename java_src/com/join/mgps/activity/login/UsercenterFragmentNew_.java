package com.join.mgps.activity.login;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.GridView;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.core.widget.NestedScrollView;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.CustomerDownloadView;
import com.join.mgps.pref.PrefDef_;
import g3.a;
import i3.b;
import i3.c;
import java.util.HashMap;
import java.util.Map;
import org.androidannotations.api.a;
import org.androidannotations.api.builder.d;
/* loaded from: classes3.dex */
public final class UsercenterFragmentNew_ extends UsercenterFragmentNew implements a, i3.a, b {
    private View contentView_;
    private final c onViewChangedNotifier_ = new c();
    private final Map<Class<?>, Object> beans_ = new HashMap();
    private final IntentFilter intentFilter1_ = new IntentFilter();
    private final BroadcastReceiver updateInfoReceiver_ = new BroadcastReceiver() { // from class: com.join.mgps.activity.login.UsercenterFragmentNew_.1
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            UsercenterFragmentNew_.this.updateInfo(context);
        }
    };
    private final IntentFilter intentFilter2_ = new IntentFilter();
    private final BroadcastReceiver loginOutReceiver_ = new BroadcastReceiver() { // from class: com.join.mgps.activity.login.UsercenterFragmentNew_.2
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            UsercenterFragmentNew_.this.loginOut(context);
        }
    };

    /* loaded from: classes3.dex */
    public static class FragmentBuilder_ extends d<FragmentBuilder_, UsercenterFragmentNew> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // org.androidannotations.api.builder.d
        public UsercenterFragmentNew build() {
            UsercenterFragmentNew_ usercenterFragmentNew_ = new UsercenterFragmentNew_();
            usercenterFragmentNew_.setArguments(this.args);
            return usercenterFragmentNew_;
        }
    }

    public static FragmentBuilder_ builder() {
        return new FragmentBuilder_();
    }

    private void init_(Bundle bundle) {
        this.prefDef = new PrefDef_(getActivity());
        c.b(this);
        this.intentFilter1_.addAction(f1.a.B);
        this.intentFilter2_.addAction(f1.a.f65498r);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.login.UsercenterFragmentNew
    public void changeMgState(final String str, final int i2) {
        org.androidannotations.api.a.l(new a.c("", 0L, "") { // from class: com.join.mgps.activity.login.UsercenterFragmentNew_.17
            @Override // org.androidannotations.api.a.c
            public void execute() {
                try {
                    UsercenterFragmentNew_.super.changeMgState(str, i2);
                } catch (Throwable th) {
                    Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
                }
            }
        });
    }

    @Override // g3.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.beans_.get(cls);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.login.UsercenterFragmentNew
    public void getDownloadTaskInfo() {
        org.androidannotations.api.a.l(new a.c("", 0L, "") { // from class: com.join.mgps.activity.login.UsercenterFragmentNew_.21
            @Override // org.androidannotations.api.a.c
            public void execute() {
                try {
                    UsercenterFragmentNew_.super.getDownloadTaskInfo();
                } catch (Throwable th) {
                    Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.login.UsercenterFragmentNew
    public void getUserInfo() {
        org.androidannotations.api.a.l(new a.c("", 0L, "") { // from class: com.join.mgps.activity.login.UsercenterFragmentNew_.19
            @Override // org.androidannotations.api.a.c
            public void execute() {
                try {
                    UsercenterFragmentNew_.super.getUserInfo();
                } catch (Throwable th) {
                    Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.login.UsercenterFragmentNew
    public void hideRedPoint() {
        org.androidannotations.api.b.e("", new Runnable() { // from class: com.join.mgps.activity.login.UsercenterFragmentNew_.12
            @Override // java.lang.Runnable
            public void run() {
                UsercenterFragmentNew_.super.hideRedPoint();
            }
        }, 0L);
    }

    @Override // i3.a
    public <T extends View> T internalFindViewById(int i2) {
        View view = this.contentView_;
        if (view == null) {
            return null;
        }
        return (T) view.findViewById(i2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.login.UsercenterFragmentNew
    public void loadViewConfigsFromLocal() {
        org.androidannotations.api.b.e("", new Runnable() { // from class: com.join.mgps.activity.login.UsercenterFragmentNew_.11
            @Override // java.lang.Runnable
            public void run() {
                UsercenterFragmentNew_.super.loadViewConfigsFromLocal();
            }
        }, 0L);
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        c c4 = c.c(this.onViewChangedNotifier_);
        init_(bundle);
        super.onCreate(bundle);
        getActivity().registerReceiver(this.updateInfoReceiver_, this.intentFilter1_);
        getActivity().registerReceiver(this.loginOutReceiver_, this.intentFilter2_);
        c.c(c4);
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View onCreateView = super.onCreateView(layoutInflater, viewGroup, bundle);
        this.contentView_ = onCreateView;
        if (onCreateView == null) {
            this.contentView_ = layoutInflater.inflate(R.layout.fragment_usercenter_new, viewGroup, false);
        }
        return this.contentView_;
    }

    @Override // com.join.mgps.activity.login.UsercenterFragmentNew, androidx.fragment.app.Fragment
    public void onDestroy() {
        getActivity().unregisterReceiver(this.updateInfoReceiver_);
        getActivity().unregisterReceiver(this.loginOutReceiver_);
        super.onDestroy();
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        this.contentView_ = null;
        this.iv_user_avatar = null;
        this.iv_arrow = null;
        this.tv_user_nickname = null;
        this.iv_user_vip = null;
        this.tv_user_rank = null;
        this.tv_user_account = null;
        this.tv_user_coppers = null;
        this.ll_copperTitle = null;
        this.onekeyTitle = null;
        this.svipTitle = null;
        this.onekeyMessage = null;
        this.tv_user_member = null;
        this.tv_user_svip = null;
        this.ll_userinfo = null;
        this.ll_svip = null;
        this.ll_members = null;
        this.ll_membersNew = null;
        this.vipProgress = null;
        this.vipTime = null;
        this.vipModText = null;
        this.vipModIcon = null;
        this.vipModLayout = null;
        this.fingerText = null;
        this.fingerIcon = null;
        this.fingerLayout = null;
        this.onkeyText = null;
        this.onkeyIcon = null;
        this.onkeyLayout = null;
        this.everdayGiftText = null;
        this.everdayGiftIcon = null;
        this.everdayGiftLayout = null;
        this.mGridView = null;
        this.mGridView2 = null;
        this.mGridView3 = null;
        this.scroolView = null;
        this.userLayout = null;
        this.titleLayout = null;
        this.modNotVipView = null;
        this.iv_user_avatar2 = null;
        this.statubar = null;
        this.downloadView2 = null;
        this.downloadView1 = null;
        this.detail = null;
        this.f37627test = null;
    }

    @Override // i3.b
    public void onViewChanged(i3.a aVar) {
        this.iv_user_avatar = (SimpleDraweeView) aVar.internalFindViewById(R.id.iv_user_avatar);
        this.iv_arrow = (ImageView) aVar.internalFindViewById(R.id.iv_arrow);
        this.tv_user_nickname = (TextView) aVar.internalFindViewById(R.id.tv_user_nickname);
        this.iv_user_vip = (ImageView) aVar.internalFindViewById(R.id.iv_user_vip);
        this.tv_user_rank = (TextView) aVar.internalFindViewById(R.id.tv_user_rank);
        this.tv_user_account = (TextView) aVar.internalFindViewById(R.id.tv_user_account);
        this.tv_user_coppers = (TextView) aVar.internalFindViewById(R.id.tv_user_coppers);
        this.ll_copperTitle = (TextView) aVar.internalFindViewById(R.id.ll_copperTitle);
        this.onekeyTitle = (TextView) aVar.internalFindViewById(R.id.onekeyTitle);
        this.svipTitle = (TextView) aVar.internalFindViewById(R.id.svipTitle);
        this.onekeyMessage = (TextView) aVar.internalFindViewById(R.id.onekeyMessage);
        this.tv_user_member = (TextView) aVar.internalFindViewById(R.id.tv_user_member);
        this.tv_user_svip = (TextView) aVar.internalFindViewById(R.id.tv_user_svip);
        this.ll_userinfo = (LinearLayout) aVar.internalFindViewById(R.id.ll_userinfo);
        this.ll_svip = (LinearLayout) aVar.internalFindViewById(R.id.ll_svip);
        this.ll_members = (LinearLayout) aVar.internalFindViewById(R.id.ll_members);
        this.ll_membersNew = aVar.internalFindViewById(R.id.ll_membersNew);
        this.vipProgress = (ProgressBar) aVar.internalFindViewById(R.id.vipProgress);
        this.vipTime = (TextView) aVar.internalFindViewById(R.id.vipTime);
        this.vipModText = (TextView) aVar.internalFindViewById(R.id.vipModText);
        this.vipModIcon = (SimpleDraweeView) aVar.internalFindViewById(R.id.vipModIcon);
        this.vipModLayout = (LinearLayout) aVar.internalFindViewById(R.id.vipModLayout);
        this.fingerText = (TextView) aVar.internalFindViewById(R.id.fingerText);
        this.fingerIcon = (SimpleDraweeView) aVar.internalFindViewById(R.id.fingerIcon);
        this.fingerLayout = (LinearLayout) aVar.internalFindViewById(R.id.fingerLayout);
        this.onkeyText = (TextView) aVar.internalFindViewById(R.id.onkeyText);
        this.onkeyIcon = (SimpleDraweeView) aVar.internalFindViewById(R.id.onkeyIcon);
        this.onkeyLayout = (LinearLayout) aVar.internalFindViewById(R.id.onkeyLayout);
        this.everdayGiftText = (TextView) aVar.internalFindViewById(R.id.everdayGiftText);
        this.everdayGiftIcon = (SimpleDraweeView) aVar.internalFindViewById(R.id.everdayGiftIcon);
        this.everdayGiftLayout = (LinearLayout) aVar.internalFindViewById(R.id.everdayGiftLayout);
        this.mGridView = (GridView) aVar.internalFindViewById(R.id.mGridView);
        this.mGridView2 = (GridView) aVar.internalFindViewById(R.id.mGridView2);
        this.mGridView3 = (GridView) aVar.internalFindViewById(R.id.mGridView3);
        this.scroolView = (NestedScrollView) aVar.internalFindViewById(R.id.scroolView);
        this.userLayout = aVar.internalFindViewById(R.id.userLayout);
        this.titleLayout = aVar.internalFindViewById(R.id.titleLayout);
        this.modNotVipView = aVar.internalFindViewById(R.id.modNotVipView);
        this.iv_user_avatar2 = (SimpleDraweeView) aVar.internalFindViewById(R.id.iv_user_avatar2);
        this.statubar = aVar.internalFindViewById(R.id.statubar);
        this.downloadView2 = (CustomerDownloadView) aVar.internalFindViewById(R.id.downloadView2);
        this.downloadView1 = (CustomerDownloadView) aVar.internalFindViewById(R.id.downloadView1);
        this.detail = (TextView) aVar.internalFindViewById(R.id.detail);
        this.f37627test = aVar.internalFindViewById(R.id.f17874test);
        View internalFindViewById = aVar.internalFindViewById(R.id.onekey);
        View internalFindViewById2 = aVar.internalFindViewById(R.id.ll_copper);
        if (internalFindViewById != null) {
            internalFindViewById.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.activity.login.UsercenterFragmentNew_.3
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    UsercenterFragmentNew_.this.onekey();
                }
            });
        }
        View view = this.f37627test;
        if (view != null) {
            view.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.activity.login.UsercenterFragmentNew_.4
                @Override // android.view.View.OnClickListener
                public void onClick(View view2) {
                    UsercenterFragmentNew_.this.test();
                }
            });
        }
        if (internalFindViewById2 != null) {
            internalFindViewById2.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.activity.login.UsercenterFragmentNew_.5
                @Override // android.view.View.OnClickListener
                public void onClick(View view2) {
                    UsercenterFragmentNew_.this.ll_copper();
                }
            });
        }
        TextView textView = this.detail;
        if (textView != null) {
            textView.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.activity.login.UsercenterFragmentNew_.6
                @Override // android.view.View.OnClickListener
                public void onClick(View view2) {
                    UsercenterFragmentNew_.this.detail();
                }
            });
        }
        CustomerDownloadView customerDownloadView = this.downloadView1;
        if (customerDownloadView != null) {
            customerDownloadView.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.activity.login.UsercenterFragmentNew_.7
                @Override // android.view.View.OnClickListener
                public void onClick(View view2) {
                    UsercenterFragmentNew_.this.downloadView1();
                }
            });
        }
        CustomerDownloadView customerDownloadView2 = this.downloadView2;
        if (customerDownloadView2 != null) {
            customerDownloadView2.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.activity.login.UsercenterFragmentNew_.8
                @Override // android.view.View.OnClickListener
                public void onClick(View view2) {
                    UsercenterFragmentNew_.this.downloadView2();
                }
            });
        }
        afterViews();
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        this.onViewChangedNotifier_.a(this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.login.UsercenterFragmentNew
    public void pullMyProfileInfo() {
        org.androidannotations.api.a.l(new a.c("", 0L, "") { // from class: com.join.mgps.activity.login.UsercenterFragmentNew_.20
            @Override // org.androidannotations.api.a.c
            public void execute() {
                try {
                    UsercenterFragmentNew_.super.pullMyProfileInfo();
                } catch (Throwable th) {
                    Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
                }
            }
        });
    }

    @Override // g3.a
    public <T> void putBean(Class<T> cls, T t3) {
        this.beans_.put(cls, t3);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.login.UsercenterFragmentNew
    public void refreshViews() {
        org.androidannotations.api.b.e("", new Runnable() { // from class: com.join.mgps.activity.login.UsercenterFragmentNew_.9
            @Override // java.lang.Runnable
            public void run() {
                UsercenterFragmentNew_.super.refreshViews();
            }
        }, 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.login.UsercenterFragmentNew
    public void showNotifUi() {
        org.androidannotations.api.b.e("", new Runnable() { // from class: com.join.mgps.activity.login.UsercenterFragmentNew_.10
            @Override // java.lang.Runnable
            public void run() {
                UsercenterFragmentNew_.super.showNotifUi();
            }
        }, 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.login.UsercenterFragmentNew
    public void showToast(final String str) {
        org.androidannotations.api.b.e("", new Runnable() { // from class: com.join.mgps.activity.login.UsercenterFragmentNew_.14
            @Override // java.lang.Runnable
            public void run() {
                UsercenterFragmentNew_.super.showToast(str);
            }
        }, 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.login.UsercenterFragmentNew
    public void tokenFailure() {
        org.androidannotations.api.b.e("", new Runnable() { // from class: com.join.mgps.activity.login.UsercenterFragmentNew_.13
            @Override // java.lang.Runnable
            public void run() {
                UsercenterFragmentNew_.super.tokenFailure();
            }
        }, 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.login.UsercenterFragmentNew
    public void touristLogin() {
        org.androidannotations.api.a.l(new a.c("", 0L, "") { // from class: com.join.mgps.activity.login.UsercenterFragmentNew_.18
            @Override // org.androidannotations.api.a.c
            public void execute() {
                try {
                    UsercenterFragmentNew_.super.touristLogin();
                } catch (Throwable th) {
                    Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.login.UsercenterFragmentNew
    public void updateAdapterByNewMsgCount(final int i2) {
        org.androidannotations.api.b.e("", new Runnable() { // from class: com.join.mgps.activity.login.UsercenterFragmentNew_.15
            @Override // java.lang.Runnable
            public void run() {
                UsercenterFragmentNew_.super.updateAdapterByNewMsgCount(i2);
            }
        }, 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.login.UsercenterFragmentNew
    public void updateDownloadView() {
        org.androidannotations.api.b.e("", new Runnable() { // from class: com.join.mgps.activity.login.UsercenterFragmentNew_.16
            @Override // java.lang.Runnable
            public void run() {
                UsercenterFragmentNew_.super.updateDownloadView();
            }
        }, 0L);
    }
}
