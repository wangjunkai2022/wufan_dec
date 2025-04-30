package com.netease.nis.quicklogin.utils;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.Application;
import android.content.Context;
import android.content.DialogInterface;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import android.text.method.LinkMovementMethod;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import android.widget.Toast;
import com.netease.nis.basesdk.Logger;
import com.netease.nis.quicklogin.R;
import com.netease.nis.quicklogin.helper.UnifyUiConfig;
import com.netease.nis.quicklogin.listener.LoginListener;
import com.netease.nis.quicklogin.listener.QuickLoginTokenListener;
import com.netease.nis.quicklogin.ui.CmccLoginActivity;
import com.netease.nis.quicklogin.ui.ProtocolDetailActivity;
import com.netease.nis.quicklogin.ui.YDQuickLoginActivity;
import com.netease.nis.quicklogin.utils.g;
import com.netease.nis.quicklogin.view.FastClickButton;
import com.netease.nis.quicklogin.view.GifView;
import com.netease.nis.quicklogin.view.PlayerView;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
/* loaded from: classes4.dex */
public class LoginUiHelper {

    /* renamed from: a  reason: collision with root package name */
    private Application.ActivityLifecycleCallbacks f54275a;

    /* renamed from: b  reason: collision with root package name */
    private Context f54276b;

    /* renamed from: c  reason: collision with root package name */
    private UnifyUiConfig f54277c;

    /* renamed from: d  reason: collision with root package name */
    private h f54278d;

    /* renamed from: e  reason: collision with root package name */
    private WeakReference<CheckBox> f54279e;

    /* renamed from: f  reason: collision with root package name */
    private WeakReference<CheckBox> f54280f;

    /* renamed from: g  reason: collision with root package name */
    private WeakReference<ViewGroup> f54281g;

    /* renamed from: h  reason: collision with root package name */
    private WeakReference<RelativeLayout> f54282h;

    /* renamed from: i  reason: collision with root package name */
    private WeakReference<RelativeLayout> f54283i;

    /* renamed from: j  reason: collision with root package name */
    private WeakReference<RelativeLayout> f54284j;

    /* renamed from: k  reason: collision with root package name */
    private boolean f54285k = true;

    /* renamed from: l  reason: collision with root package name */
    private WeakReference<QuickLoginTokenListener> f54286l;

    /* renamed from: m  reason: collision with root package name */
    private WeakReference<Activity> f54287m;

    /* renamed from: n  reason: collision with root package name */
    private PlayerView f54288n;

    /* renamed from: o  reason: collision with root package name */
    private String f54289o;

    /* loaded from: classes4.dex */
    public interface CustomViewListener {
        void onClick(Context context, View view);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class a implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Activity f54290a;

        a(Activity activity) {
            this.f54290a = activity;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            LoginUiHelper.this.a(3, 0);
            this.f54290a.finish();
            if (com.netease.nis.quicklogin.utils.a.a(LoginUiHelper.this.f54286l)) {
                try {
                    ((QuickLoginTokenListener) LoginUiHelper.this.f54286l.get()).onCancelGetToken();
                } catch (Exception e4) {
                    Logger.e(e4.getMessage());
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class b implements CompoundButton.OnCheckedChangeListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Activity f54292a;

        b(Activity activity) {
            this.f54292a = activity;
        }

        @Override // android.widget.CompoundButton.OnCheckedChangeListener
        public void onCheckedChanged(CompoundButton compoundButton, boolean z3) {
            if (z3) {
                com.netease.nis.quicklogin.utils.d.a(this.f54292a, "97cf3773301f48ca974131655f05bdfa");
                LoginUiHelper.this.a(2, 1);
                if (LoginUiHelper.this.f54277c.getCheckedImageDrawable() != null) {
                    ((CheckBox) LoginUiHelper.this.f54279e.get()).setBackground(LoginUiHelper.this.f54277c.getCheckedImageDrawable());
                    return;
                } else if (TextUtils.isEmpty(LoginUiHelper.this.f54277c.getCheckedImageName())) {
                    return;
                } else {
                    ((CheckBox) LoginUiHelper.this.f54279e.get()).setBackgroundResource(LoginUiHelper.this.f54278d.c(LoginUiHelper.this.f54277c.getCheckedImageName()));
                    return;
                }
            }
            LoginUiHelper.this.a(2, 0);
            if (LoginUiHelper.this.f54277c.getUnCheckedImageNameDrawable() != null) {
                ((CheckBox) LoginUiHelper.this.f54279e.get()).setBackground(LoginUiHelper.this.f54277c.getUnCheckedImageNameDrawable());
            } else if (TextUtils.isEmpty(LoginUiHelper.this.f54277c.getUnCheckedImageName())) {
            } else {
                ((CheckBox) LoginUiHelper.this.f54279e.get()).setBackgroundResource(LoginUiHelper.this.f54278d.c(LoginUiHelper.this.f54277c.getUnCheckedImageName()));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class c implements View.OnClickListener {
        c() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            LoginUiHelper.this.a(1, 0);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class d implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ FastClickButton f54295a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ ViewGroup f54296b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ Activity f54297c;

        /* loaded from: classes4.dex */
        class a implements DialogInterface.OnClickListener {
            a(d dVar) {
            }

            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i2) {
                if (dialogInterface != null) {
                    dialogInterface.dismiss();
                }
            }
        }

        /* loaded from: classes4.dex */
        class b implements DialogInterface.OnClickListener {
            b() {
            }

            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i2) {
                ((CheckBox) LoginUiHelper.this.f54279e.get()).setChecked(true);
                if (dialogInterface != null) {
                    dialogInterface.dismiss();
                }
                if (LoginUiHelper.this.f54277c.getPrivacyDialogAuto()) {
                    d.this.f54295a.performClick();
                }
            }
        }

        d(FastClickButton fastClickButton, ViewGroup viewGroup, Activity activity) {
            this.f54295a = fastClickButton;
            this.f54296b = viewGroup;
            this.f54297c = activity;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            CharSequence privacyDialogText;
            if (!com.netease.nis.quicklogin.utils.a.a(LoginUiHelper.this.f54279e) || !((CheckBox) LoginUiHelper.this.f54279e.get()).isChecked()) {
                if (com.netease.nis.quicklogin.utils.a.a(LoginUiHelper.this.f54281g)) {
                    ((ViewGroup) LoginUiHelper.this.f54281g.get()).setVisibility(8);
                }
                this.f54295a.a(false);
                LoginUiHelper.this.a(4, 0);
                LoginListener loginListener = LoginUiHelper.this.f54277c.getLoginListener();
                LinearLayout linearLayout = (LinearLayout) this.f54297c.findViewById(R.id.yd_ll_protocol);
                TextView textView = linearLayout != null ? (TextView) linearLayout.findViewById(R.id.yd_tv_privacy) : null;
                if (textView == null) {
                    Toast.makeText(LoginUiHelper.this.f54276b, R.string.yd_privacy_agree, 1).show();
                    return;
                }
                if (loginListener != null) {
                    try {
                        if (loginListener.onDisagreePrivacy(textView, this.f54295a)) {
                            return;
                        }
                    } catch (Exception e4) {
                        e4.printStackTrace();
                        return;
                    }
                }
                AlertDialog.Builder builder = new AlertDialog.Builder(this.f54297c);
                if (!TextUtils.isEmpty(LoginUiHelper.this.f54277c.getPrivacyDialogText())) {
                    privacyDialogText = LoginUiHelper.this.f54277c.getPrivacyDialogText();
                } else {
                    privacyDialogText = com.netease.nis.quicklogin.utils.a.a(0, LoginUiHelper.this.f54277c, "请您仔细阅读", "，点击“确定”，表示您已经阅读并同意以上协议");
                }
                AlertDialog create = builder.setMessage(privacyDialogText).setPositiveButton("确认", new b()).setNegativeButton("取消", new a(this)).create();
                if (!this.f54297c.isFinishing()) {
                    create.show();
                }
                ((TextView) create.findViewById(16908299)).setMovementMethod(LinkMovementMethod.getInstance());
                ((TextView) create.findViewById(16908299)).setTextSize(2, LoginUiHelper.this.f54277c.getPrivacyDialogTextSize() != 0.0f ? LoginUiHelper.this.f54277c.getPrivacyDialogTextSize() : 13.0f);
                return;
            }
            if (LoginUiHelper.this.f54277c.getLoadingVisible() && com.netease.nis.quicklogin.utils.a.a(LoginUiHelper.this.f54281g)) {
                ((ViewGroup) LoginUiHelper.this.f54281g.get()).setVisibility(0);
            }
            LoginUiHelper.this.a(4, 1);
            this.f54295a.a(true);
            this.f54296b.performClick();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class e implements Application.ActivityLifecycleCallbacks {
        e() {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityCreated(Activity activity, Bundle bundle) {
            LoginUiHelper.this.a(activity, "onActivityCreated");
            try {
                if (LoginUiHelper.this.b(activity) && LoginUiHelper.this.f54277c != null && LoginUiHelper.this.f54277c.getActivityLifecycleCallbacks() != null) {
                    LoginUiHelper.this.f54277c.getActivityLifecycleCallbacks().onCreate(activity);
                }
                if (activity instanceof CmccLoginActivity) {
                    ((CmccLoginActivity) activity).a(LoginUiHelper.this.f54277c);
                }
                if (activity instanceof YDQuickLoginActivity) {
                    ((YDQuickLoginActivity) activity).a(LoginUiHelper.this.f54277c);
                }
            } catch (Exception e4) {
                e4.printStackTrace();
            }
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityDestroyed(Activity activity) {
            try {
                if (LoginUiHelper.this.b(activity)) {
                    LoginUiHelper.this.f54285k = true;
                    if (LoginUiHelper.this.f54277c != null && LoginUiHelper.this.f54277c.getActivityLifecycleCallbacks() != null) {
                        LoginUiHelper.this.f54277c.getActivityLifecycleCallbacks().onDestroy(activity);
                    }
                    if (com.netease.nis.quicklogin.utils.a.a(LoginUiHelper.this.f54282h)) {
                        ((RelativeLayout) LoginUiHelper.this.f54282h.get()).removeAllViews();
                    }
                    if (com.netease.nis.quicklogin.utils.a.a(LoginUiHelper.this.f54283i)) {
                        ((RelativeLayout) LoginUiHelper.this.f54283i.get()).removeAllViews();
                    }
                    if (com.netease.nis.quicklogin.utils.a.a(LoginUiHelper.this.f54284j)) {
                        ((RelativeLayout) LoginUiHelper.this.f54284j.get()).removeAllViews();
                    }
                    if (LoginUiHelper.this.f54288n != null) {
                        LoginUiHelper.this.f54288n.suspend();
                        LoginUiHelper.this.f54288n.setOnErrorListener(null);
                        LoginUiHelper.this.f54288n.setOnPreparedListener(null);
                        LoginUiHelper.this.f54288n.setOnCompletionListener(null);
                        LoginUiHelper.this.f54288n = null;
                    }
                }
            } catch (Exception e4) {
                e4.printStackTrace();
            }
            LoginUiHelper.this.a(activity, "onActivityDestroyed");
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityPaused(Activity activity) {
            LoginUiHelper.this.a(activity, "onActivityPaused");
            try {
                if (LoginUiHelper.this.b(activity) && LoginUiHelper.this.f54277c != null && LoginUiHelper.this.f54277c.getActivityLifecycleCallbacks() != null) {
                    LoginUiHelper.this.f54277c.getActivityLifecycleCallbacks().onPause(activity);
                }
                if (LoginUiHelper.this.f54288n == null || !LoginUiHelper.this.f54288n.isPlaying()) {
                    return;
                }
                LoginUiHelper.this.f54288n.pause();
            } catch (Exception e4) {
                e4.printStackTrace();
            }
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityResumed(Activity activity) {
            LoginUiHelper.this.a(activity, "onActivityResumed");
            Logger.d("onePass [timeEnd]" + System.currentTimeMillis());
            try {
                if (LoginUiHelper.this.f54285k && LoginUiHelper.this.b(activity)) {
                    LoginUiHelper.this.f54287m = new WeakReference(activity);
                }
                if (LoginUiHelper.this.f54277c != null) {
                    if (LoginUiHelper.this.b(activity)) {
                        if (LoginUiHelper.this.f54277c.getActivityLifecycleCallbacks() != null) {
                            LoginUiHelper.this.f54277c.getActivityLifecycleCallbacks().onResume(activity);
                        }
                        if (LoginUiHelper.this.f54285k) {
                            if (LoginUiHelper.this.f54277c.isDialogMode()) {
                                i.a((Activity) LoginUiHelper.this.f54287m.get(), LoginUiHelper.this.f54277c.getDialogWidth(), LoginUiHelper.this.f54277c.getDialogHeight(), LoginUiHelper.this.f54277c.getDialogX(), LoginUiHelper.this.f54277c.getDialogY(), LoginUiHelper.this.f54277c.isBottomDialog());
                            } else {
                                LoginUiHelper.this.d(activity);
                            }
                            if (!LoginUiHelper.this.n(activity)) {
                                return;
                            }
                            LoginUiHelper.this.c(activity);
                            LoginUiHelper.this.l(activity);
                            if (activity instanceof CmccLoginActivity) {
                                LoginUiHelper.this.m(activity);
                            }
                            if (activity instanceof YDQuickLoginActivity) {
                                LoginUiHelper.this.e(activity);
                                ((YDQuickLoginActivity) activity).a(LoginUiHelper.this.f54277c.getLoginListener());
                                LoginUiHelper.this.a(activity, ((YDQuickLoginActivity) activity).f54266m);
                            }
                            if (LoginUiHelper.this.f54277c.getBackgroundShadow() != null) {
                                LoginUiHelper loginUiHelper = LoginUiHelper.this;
                                loginUiHelper.a((Activity) loginUiHelper.f54287m.get(), LoginUiHelper.this.f54277c.getBackgroundShadow());
                            }
                            LoginUiHelper loginUiHelper2 = LoginUiHelper.this;
                            loginUiHelper2.a((Activity) loginUiHelper2.f54287m.get());
                            LoginUiHelper.this.f54285k = false;
                        }
                        if (LoginUiHelper.this.f54288n != null) {
                            LoginUiHelper.this.f54288n.start();
                        }
                    }
                    if (activity instanceof ProtocolDetailActivity) {
                        if (LoginUiHelper.this.f54277c.isProtocolDialogMode()) {
                            i.a(activity, LoginUiHelper.this.f54277c.getDialogWidth(), LoginUiHelper.this.f54277c.getDialogHeight(), LoginUiHelper.this.f54277c.getDialogX(), LoginUiHelper.this.f54277c.getDialogY(), LoginUiHelper.this.f54277c.isBottomDialog());
                        }
                        if (!TextUtils.isEmpty(LoginUiHelper.this.f54277c.getProtocolBackgroundImage())) {
                            activity.findViewById(R.id.yd_ll_root_detail).setBackgroundResource(LoginUiHelper.this.f54278d.c(LoginUiHelper.this.f54277c.getProtocolBackgroundImage()));
                        }
                        LoginUiHelper.this.l(activity);
                        LoginUiHelper.this.k(activity);
                    }
                }
            } catch (Exception e4) {
                e4.printStackTrace();
            }
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityStarted(Activity activity) {
            LoginUiHelper.this.a(activity, "onActivityStarted");
            try {
                if (!LoginUiHelper.this.b(activity) || LoginUiHelper.this.f54277c == null || LoginUiHelper.this.f54277c.getActivityLifecycleCallbacks() == null) {
                    return;
                }
                LoginUiHelper.this.f54277c.getActivityLifecycleCallbacks().onStart(activity);
            } catch (Exception e4) {
                e4.printStackTrace();
            }
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityStopped(Activity activity) {
            LoginUiHelper.this.a(activity, "onActivityStopped");
            try {
                if (!LoginUiHelper.this.b(activity) || LoginUiHelper.this.f54277c == null || LoginUiHelper.this.f54277c.getActivityLifecycleCallbacks() == null) {
                    return;
                }
                LoginUiHelper.this.f54277c.getActivityLifecycleCallbacks().onStop(activity);
            } catch (Exception e4) {
                e4.printStackTrace();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class f implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ g f54301a;

        f(LoginUiHelper loginUiHelper, g gVar) {
            this.f54301a = gVar;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            CustomViewListener customViewListener = this.f54301a.f54304c;
            if (customViewListener != null) {
                try {
                    customViewListener.onClick(view.getContext(), this.f54301a.f54302a);
                } catch (Exception e4) {
                    e4.printStackTrace();
                }
            }
        }
    }

    /* loaded from: classes4.dex */
    public static class g {

        /* renamed from: a  reason: collision with root package name */
        public View f54302a;

        /* renamed from: b  reason: collision with root package name */
        public int f54303b;

        /* renamed from: c  reason: collision with root package name */
        public CustomViewListener f54304c;
    }

    public LoginUiHelper(Context context) {
        if (context != null) {
            Context applicationContext = context.getApplicationContext();
            this.f54276b = applicationContext;
            this.f54278d = h.a(applicationContext);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void m(Activity activity) {
        ViewGroup viewGroup = (ViewGroup) ((ViewGroup) activity.getWindow().getDecorView().findViewById(16908290)).getChildAt(0);
        j(activity);
        h(activity);
        f(activity);
        for (View view : i.a(viewGroup)) {
            if (view instanceof TextView) {
                String charSequence = ((TextView) view).getText().toString();
                if (!TextUtils.isEmpty(charSequence) && charSequence.contains("****")) {
                    int id = view.getId();
                    int i2 = R.id.yd_et_number;
                    if (id != i2 && activity.findViewById(i2) != null) {
                        ((EditText) activity.findViewById(i2)).setText(charSequence);
                        if (view.getParent() != null) {
                            ((ViewGroup) view.getParent()).setVisibility(8);
                        }
                    }
                }
            }
            if ((view instanceof CheckBox) && view.getId() != R.id.yd_cb_privacy) {
                CheckBox checkBox = (CheckBox) view;
                ViewGroup viewGroup2 = (ViewGroup) checkBox.getParent().getParent();
                if (viewGroup2 != null) {
                    viewGroup2.setVisibility(8);
                }
                this.f54280f = new WeakReference<>(checkBox);
            }
        }
        i(activity);
        ViewGroup viewGroup3 = (viewGroup.getChildCount() < 3 || !(viewGroup.getChildAt(2) instanceof ViewGroup)) ? null : (ViewGroup) viewGroup.getChildAt(2);
        if ((viewGroup3 instanceof RelativeLayout) && viewGroup3.getChildCount() == 1) {
            viewGroup3.setVisibility(8);
            g(activity);
            int i4 = R.id.yd_btn_oauth;
            if (activity.findViewById(i4) != null) {
                FastClickButton fastClickButton = (FastClickButton) activity.findViewById(i4);
                fastClickButton.setOnClickListener(new d(fastClickButton, viewGroup3, activity));
            }
        }
        a(activity, 0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean n(Activity activity) {
        ViewGroup viewGroup;
        if (activity instanceof CmccLoginActivity) {
            RelativeLayout relativeLayout = (RelativeLayout) activity.findViewById(R.id.yd_rl_root);
            if (relativeLayout == null) {
                if (com.netease.nis.quicklogin.utils.a.a(this.f54286l)) {
                    this.f54286l.get().onGetMobileNumberError(this.f54289o, "移动接口添加易盾布局文件失败");
                }
                com.netease.nis.quicklogin.utils.g.c().a(g.c.MONITOR_SDK_INTERNAL, com.netease.nis.quicklogin.b.b.OTHER.ordinal(), this.f54289o, 2, 0, 0, "移动接口添加易盾布局文件失败", System.currentTimeMillis());
                com.netease.nis.quicklogin.utils.g.c().d();
                activity.finish();
                return false;
            }
            UnifyUiConfig unifyUiConfig = this.f54277c;
            if (unifyUiConfig != null && unifyUiConfig.getLoadingView() != null) {
                viewGroup = this.f54277c.getLoadingView();
                viewGroup.bringToFront();
                relativeLayout.addView(viewGroup);
                viewGroup.setVisibility(8);
            } else {
                viewGroup = (ViewGroup) activity.findViewById(R.id.yd_rl_loading);
            }
            this.f54282h = new WeakReference<>(relativeLayout);
            this.f54281g = new WeakReference<>(viewGroup);
            return true;
        }
        return true;
    }

    private void j(Activity activity) {
        RelativeLayout relativeLayout = (RelativeLayout) activity.findViewById(R.id.yd_rl_navigation);
        if (relativeLayout != null) {
            if (this.f54277c.getNavBackgroundColor() != 0) {
                relativeLayout.setBackgroundColor(this.f54277c.getNavBackgroundColor());
            }
            if (this.f54277c.isHideNav()) {
                relativeLayout.setVisibility(4);
            }
            RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) relativeLayout.getLayoutParams();
            layoutParams.height = i.a(this.f54276b, this.f54277c.getNavHeight());
            relativeLayout.setLayoutParams(layoutParams);
        }
        ImageView imageView = (ImageView) activity.findViewById(R.id.yd_iv_navigation);
        if (imageView != null) {
            if (this.f54277c.isHideBackIcon()) {
                imageView.setVisibility(4);
            }
            if (this.f54277c.getNavBackIconDrawable() != null) {
                imageView.setImageDrawable(this.f54277c.getNavBackIconDrawable());
            } else if (!TextUtils.isEmpty(this.f54277c.getNavBackIcon())) {
                imageView.setImageResource(this.f54278d.c(this.f54277c.getNavBackIcon()));
            }
            RelativeLayout.LayoutParams layoutParams2 = (RelativeLayout.LayoutParams) imageView.getLayoutParams();
            layoutParams2.width = i.a(this.f54276b, this.f54277c.getNavBackIconWidth());
            layoutParams2.height = i.a(this.f54276b, this.f54277c.getNavBackIconHeight());
            if (this.f54277c.getNavBackIconGravity() == 0 && this.f54277c.isDialogMode()) {
                layoutParams2.addRule(11);
            } else {
                layoutParams2.addRule(this.f54277c.getNavBackIconGravity() != 5 ? 9 : 11);
            }
            if (this.f54277c.getNavBackIconMargin() != 0) {
                layoutParams2.setMargins(this.f54277c.getNavBackIconMargin(), this.f54277c.getNavBackIconMargin(), this.f54277c.getNavBackIconMargin(), this.f54277c.getNavBackIconMargin());
            }
            imageView.setLayoutParams(layoutParams2);
            imageView.setOnClickListener(new a(activity));
        }
        TextView textView = (TextView) activity.findViewById(R.id.yd_tv_navigation);
        if (textView != null) {
            if (!TextUtils.isEmpty(this.f54277c.getNavTitle())) {
                textView.setText(this.f54277c.getNavTitle());
            }
            if (this.f54277c.getNavTitleColor() != 0) {
                textView.setTextColor(this.f54277c.getNavTitleColor());
            }
            if (this.f54277c.getNavTitleSize() != 0) {
                textView.setTextSize(this.f54277c.getNavTitleSize());
            } else if (this.f54277c.getNavTitleDpSize() != 0) {
                textView.setTextSize(1, this.f54277c.getNavTitleDpSize());
            }
            if (this.f54277c.isNavTitleBold()) {
                textView.setTypeface(Typeface.defaultFromStyle(1));
            }
            if (this.f54277c.getNavTitleDrawable() != null) {
                textView.setCompoundDrawables(this.f54277c.getNavTitleDrawable(), null, null, null);
                if (this.f54277c.getNavTitleDrawablePadding() != 0) {
                    textView.setCompoundDrawablePadding(this.f54277c.getNavTitleDrawablePadding());
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void k(Activity activity) {
        RelativeLayout relativeLayout = (RelativeLayout) activity.findViewById(R.id.yd_rl_navigation);
        if (relativeLayout != null) {
            if (this.f54277c.getProtocolNavColor() != 0) {
                relativeLayout.setBackgroundColor(this.f54277c.getProtocolNavColor());
            }
            if (this.f54277c.getProtocolNavHeight() != 0) {
                LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) relativeLayout.getLayoutParams();
                layoutParams.height = i.a(this.f54276b, this.f54277c.getProtocolNavHeight());
                relativeLayout.setLayoutParams(layoutParams);
            }
        }
        TextView textView = (TextView) activity.findViewById(R.id.yd_tv_navigation);
        if (textView != null) {
            if (this.f54277c.getProtocolNavTitleSize() != 0) {
                textView.setTextSize(this.f54277c.getProtocolNavTitleSize());
            } else if (this.f54277c.getProtocolNavTitleDpSize() != 0) {
                textView.setTextSize(1, this.f54277c.getProtocolNavTitleDpSize());
            }
            if (this.f54277c.getProtocolNavTitleColor() != 0) {
                textView.setTextColor(this.f54277c.getProtocolNavTitleColor());
            }
        }
        ImageView imageView = (ImageView) activity.findViewById(R.id.yd_iv_navigation);
        if (imageView != null) {
            if (this.f54277c.getProtocolNavBackIconDrawable() != null) {
                imageView.setImageDrawable(this.f54277c.getProtocolNavBackIconDrawable());
            } else if (!TextUtils.isEmpty(this.f54277c.getProtocolNavBackIcon())) {
                imageView.setImageDrawable(this.f54278d.b(this.f54277c.getProtocolNavBackIcon()));
            }
            ViewGroup.LayoutParams layoutParams2 = imageView.getLayoutParams();
            if (this.f54277c.getProtocolNavBackIconWidth() != 0) {
                layoutParams2.width = i.a(this.f54276b, this.f54277c.getProtocolNavBackIconWidth());
            }
            if (this.f54277c.getProtocolNavBackIconHeight() != 0) {
                layoutParams2.height = i.a(this.f54276b, this.f54277c.getProtocolNavBackIconHeight());
            }
            imageView.setLayoutParams(layoutParams2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void l(Activity activity) {
        i.a(activity, this.f54277c.getStatusBarColor());
        i.a(activity, this.f54277c.isStatusBarDarkColor());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(Activity activity) {
        String backgroundImage = this.f54277c.getBackgroundImage();
        Drawable backgroundImageDrawable = this.f54277c.getBackgroundImageDrawable();
        String backgroundGif = this.f54277c.getBackgroundGif();
        Drawable backgroundGifDrawable = this.f54277c.getBackgroundGifDrawable();
        if ((!TextUtils.isEmpty(backgroundImage) || backgroundImageDrawable != null) && TextUtils.isEmpty(backgroundGif) && backgroundGifDrawable == null) {
            View findViewById = activity.findViewById(R.id.yd_rl_root);
            if (activity instanceof CmccLoginActivity) {
                findViewById.setBackgroundColor(0);
                findViewById = (View) findViewById.getParent();
            }
            if (backgroundImageDrawable != null) {
                findViewById.setBackground(backgroundImageDrawable);
            } else {
                findViewById.setBackgroundResource(this.f54278d.c(backgroundImage));
            }
        }
        String backgroundVideo = this.f54277c.getBackgroundVideo();
        String backgroundVideoImage = this.f54277c.getBackgroundVideoImage();
        Drawable backgroundVideoImageDrawable = this.f54277c.getBackgroundVideoImageDrawable();
        if (TextUtils.isEmpty(backgroundGif) && backgroundGifDrawable == null) {
            if (TextUtils.isEmpty(backgroundVideo)) {
                return;
            }
            if (TextUtils.isEmpty(backgroundVideoImage) && backgroundVideoImageDrawable == null) {
                return;
            }
            RelativeLayout relativeLayout = (RelativeLayout) activity.findViewById(R.id.yd_rl_root);
            relativeLayout.setFitsSystemWindows(false);
            PlayerView playerView = new PlayerView(this.f54276b);
            this.f54288n = playerView;
            playerView.setVideoURI(Uri.parse(backgroundVideo));
            if (this.f54277c.getBackgroundVideoImageDrawable() != null) {
                this.f54288n.setLoadingImageResId(backgroundVideoImageDrawable);
            } else {
                this.f54288n.setLoadingImageResId(this.f54278d.c(backgroundVideoImage));
            }
            this.f54288n.setLayoutParams(new RelativeLayout.LayoutParams(-1, -1));
            this.f54288n.e();
            relativeLayout.addView(this.f54288n, 0);
            this.f54282h = new WeakReference<>(relativeLayout);
            return;
        }
        RelativeLayout relativeLayout2 = (RelativeLayout) activity.findViewById(R.id.yd_rl_root);
        relativeLayout2.setFitsSystemWindows(false);
        GifView gifView = new GifView(this.f54276b);
        if (backgroundGifDrawable != null) {
            gifView.setGifDrawable(backgroundGifDrawable);
        } else {
            gifView.setGifResId(this.f54278d.c(backgroundGif));
        }
        gifView.setLayoutParams(new RelativeLayout.LayoutParams(-1, -1));
        relativeLayout2.addView(gifView, 0);
        this.f54282h = new WeakReference<>(relativeLayout2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d(Activity activity) {
        if (Build.VERSION.SDK_INT == 26) {
            if (this.f54277c.isLandscape()) {
                activity.setRequestedOrientation(3);
            }
        } else if (this.f54277c.isLandscape()) {
            activity.setRequestedOrientation(0);
        } else {
            activity.setRequestedOrientation(1);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void e(Activity activity) {
        if (TextUtils.isEmpty(this.f54277c.getActivityEnterAnimation()) && TextUtils.isEmpty(this.f54277c.getActivityExitAnimation())) {
            return;
        }
        activity.overridePendingTransition(!TextUtils.isEmpty(this.f54277c.getActivityEnterAnimation()) ? this.f54278d.a(this.f54277c.getActivityEnterAnimation()) : 0, TextUtils.isEmpty(this.f54277c.getActivityExitAnimation()) ? 0 : this.f54278d.a(this.f54277c.getActivityExitAnimation()));
    }

    private void f(Activity activity) {
        TextView textView = (TextView) activity.findViewById(R.id.yd_tv_brand);
        if (textView != null) {
            if (this.f54277c.getSloganSize() != 0) {
                textView.setTextSize(this.f54277c.getSloganSize());
            } else if (this.f54277c.getSloganDpSize() != 0) {
                textView.setTextSize(1, this.f54277c.getSloganDpSize());
            }
            if (this.f54277c.getSloganColor() != 0) {
                textView.setTextColor(this.f54277c.getSloganColor());
            }
            if (this.f54277c.getSloganTopYOffset() != 0) {
                i.d(textView, this.f54277c.getSloganTopYOffset());
            }
            if (this.f54277c.getSloganBottomYOffset() != 0) {
                i.a(textView, this.f54277c.getSloganBottomYOffset());
            }
            if (this.f54277c.getSloganXOffset() != 0) {
                i.e(textView, this.f54277c.getSloganXOffset());
            } else {
                i.b(textView);
            }
        }
    }

    private void g(Activity activity) {
        FastClickButton fastClickButton = (FastClickButton) activity.findViewById(R.id.yd_btn_oauth);
        if (fastClickButton != null) {
            Context applicationContext = activity.getApplicationContext();
            fastClickButton.setAllCaps(false);
            if (this.f54277c.getLoginBtnWidth() != 0) {
                fastClickButton.getLayoutParams().width = i.a(applicationContext, this.f54277c.getLoginBtnWidth());
            }
            if (this.f54277c.getLoginBtnHeight() != 0) {
                fastClickButton.getLayoutParams().height = i.a(applicationContext, this.f54277c.getLoginBtnHeight());
            }
            if (!TextUtils.isEmpty(this.f54277c.getLoginBtnText())) {
                fastClickButton.setText(this.f54277c.getLoginBtnText());
            }
            if (this.f54277c.getLoginBtnTextColor() != 0) {
                fastClickButton.setTextColor(this.f54277c.getLoginBtnTextColor());
            }
            if (this.f54277c.getLoginBtnTextSize() != 0) {
                fastClickButton.setTextSize(this.f54277c.getLoginBtnTextSize());
            } else if (this.f54277c.getLoginBtnTextDpSize() != 0) {
                fastClickButton.setTextSize(1, this.f54277c.getLoginBtnTextDpSize());
            }
            if (this.f54277c.getLoginBtnTopYOffset() != 0) {
                i.d(fastClickButton, this.f54277c.getLoginBtnTopYOffset());
            }
            if (this.f54277c.getLoginBtnBottomYOffset() != 0) {
                i.a(fastClickButton, this.f54277c.getLoginBtnBottomYOffset());
            }
            if (this.f54277c.getLoginBtnXOffset() != 0) {
                i.e(fastClickButton, this.f54277c.getLoginBtnXOffset());
            } else {
                i.b(fastClickButton);
            }
            if (this.f54277c.getLoginBtnBackgroundDrawable() != null) {
                fastClickButton.setBackground(this.f54277c.getLoginBtnBackgroundDrawable());
            } else if (TextUtils.isEmpty(this.f54277c.getLoginBtnBackgroundRes())) {
            } else {
                fastClickButton.setBackground(h.a(applicationContext).b(this.f54277c.getLoginBtnBackgroundRes()));
            }
        }
    }

    private void h(Activity activity) {
        RelativeLayout.LayoutParams layoutParams;
        ImageView imageView = (ImageView) activity.findViewById(R.id.yd_iv_logo);
        if (imageView != null) {
            int logoWidth = this.f54277c.getLogoWidth();
            int logoHeight = this.f54277c.getLogoHeight();
            if (logoWidth != 0 || logoHeight != 0) {
                if (logoWidth == 0) {
                    layoutParams = new RelativeLayout.LayoutParams(i.a(this.f54276b, 70.0f), i.a(this.f54276b, logoHeight));
                } else if (logoHeight == 0) {
                    layoutParams = new RelativeLayout.LayoutParams(i.a(this.f54276b, logoWidth), i.a(this.f54276b, 70.0f));
                } else {
                    layoutParams = new RelativeLayout.LayoutParams(i.a(this.f54276b, logoWidth), i.a(this.f54276b, logoHeight));
                }
                imageView.setLayoutParams(layoutParams);
            }
            if (this.f54277c.getLogoTopYOffset() != 0) {
                i.d(imageView, this.f54277c.getLogoTopYOffset());
            }
            if (this.f54277c.getLogoBottomYOffset() != 0) {
                i.a(imageView, this.f54277c.getLogoBottomYOffset());
            }
            if (this.f54277c.getLogoXOffset() != 0) {
                i.e(imageView, this.f54277c.getLogoXOffset());
            } else {
                i.b(imageView);
            }
            if (this.f54277c.getLogoIconDrawable() != null) {
                imageView.setImageDrawable(this.f54277c.getLogoIconDrawable());
            } else if (!TextUtils.isEmpty(this.f54277c.getLogoIconName())) {
                imageView.setImageResource(this.f54278d.c(this.f54277c.getLogoIconName()));
            }
            if (this.f54277c.isHideLogo()) {
                imageView.setVisibility(4);
            }
        }
    }

    private void i(Activity activity) {
        EditText editText = (EditText) activity.findViewById(R.id.yd_et_number);
        if (editText != null) {
            if (this.f54277c.getMaskNumberSize() != 0) {
                editText.setTextSize(this.f54277c.getMaskNumberSize());
            } else if (this.f54277c.getMaskNumberDpSize() != 0) {
                editText.setTextSize(1, this.f54277c.getMaskNumberDpSize());
            }
            if (this.f54277c.getMaskNumberColor() != 0) {
                editText.setTextColor(this.f54277c.getMaskNumberColor());
            }
            if (this.f54277c.getMaskNumberTypeface() != null) {
                editText.setTypeface(this.f54277c.getMaskNumberTypeface());
            }
            if (this.f54277c.getMaskNumberTopYOffset() != 0) {
                i.d(editText, this.f54277c.getMaskNumberTopYOffset());
            }
            if (this.f54277c.getMaskNumberBottomYOffset() != 0) {
                i.a(editText, this.f54277c.getMaskNumberBottomYOffset());
            }
            if (!TextUtils.isEmpty(this.f54277c.getMaskNumberBackgroundRes())) {
                editText.setBackground(h.a(activity).b(this.f54277c.getMaskNumberBackgroundRes()));
            }
            if (this.f54277c.getMaskNumberXOffset() != 0) {
                i.e(editText, this.f54277c.getMaskNumberXOffset());
            } else {
                i.b(editText);
            }
            if (this.f54277c.getMaskNumberListener() != null) {
                try {
                    this.f54277c.getMaskNumberListener().onGetMaskNumber(editText, editText.getText().toString());
                } catch (Exception e4) {
                    e4.printStackTrace();
                }
            }
        }
    }

    public void b() {
        if (com.netease.nis.quicklogin.utils.a.a(this.f54287m)) {
            this.f54287m.get().finish();
        }
    }

    public void b(boolean z3) {
        if (com.netease.nis.quicklogin.utils.a.a(this.f54279e)) {
            this.f54279e.get().setChecked(z3);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean b(Activity activity) {
        return (activity instanceof CmccLoginActivity) || (activity instanceof YDQuickLoginActivity);
    }

    public void a(UnifyUiConfig unifyUiConfig, String str) {
        this.f54277c = unifyUiConfig;
        this.f54289o = str;
        Application.ActivityLifecycleCallbacks activityLifecycleCallbacks = this.f54275a;
        if (activityLifecycleCallbacks == null) {
            a();
        } else {
            ((Application) this.f54276b).unregisterActivityLifecycleCallbacks(activityLifecycleCallbacks);
        }
        ((Application) this.f54276b).registerActivityLifecycleCallbacks(this.f54275a);
    }

    public void a(QuickLoginTokenListener quickLoginTokenListener) {
        this.f54286l = new WeakReference<>(quickLoginTokenListener);
    }

    public void a(boolean z3) {
        if (com.netease.nis.quicklogin.utils.a.a(this.f54281g)) {
            this.f54281g.get().setVisibility(z3 ? 0 : 8);
        }
    }

    public void a(int i2, View view) {
        if (i2 == 1) {
            WeakReference<RelativeLayout> weakReference = this.f54283i;
            if (weakReference != null) {
                weakReference.get().removeView(view);
            }
        } else if (i2 == 0) {
            WeakReference<RelativeLayout> weakReference2 = this.f54284j;
            if (weakReference2 != null) {
                weakReference2.get().removeView(view);
            }
        } else {
            WeakReference<RelativeLayout> weakReference3 = this.f54282h;
            if (weakReference3 != null) {
                weakReference3.get().removeView(view);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(Activity activity, boolean z3) {
        j(activity);
        h(activity);
        i(activity);
        f(activity);
        g(activity);
        if (z3) {
            a(activity, 1);
        } else {
            a(activity, 2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(int i2, int i4) {
        try {
            UnifyUiConfig unifyUiConfig = this.f54277c;
            if (unifyUiConfig == null || unifyUiConfig.getClickEventListener() == null) {
                return;
            }
            this.f54277c.getClickEventListener().onClick(i2, i4);
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    private void a(Activity activity, int i2) {
        LinearLayout linearLayout = (LinearLayout) activity.findViewById(R.id.yd_ll_protocol);
        if (linearLayout != null) {
            CheckBox checkBox = (CheckBox) linearLayout.findViewById(R.id.yd_cb_privacy);
            this.f54279e = new WeakReference<>(checkBox);
            RelativeLayout relativeLayout = (RelativeLayout) linearLayout.findViewById(R.id.yd_rl_privacy);
            if (this.f54277c.isHidePrivacyCheckBox()) {
                if (relativeLayout != null) {
                    relativeLayout.setVisibility(8);
                }
            } else if (this.f54277c.getCheckBoxGravity() != 0) {
                LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) relativeLayout.getLayoutParams();
                layoutParams.gravity = this.f54277c.getCheckBoxGravity();
                relativeLayout.setLayoutParams(layoutParams);
            }
            if (this.f54277c.getPrivacyCheckBoxWidth() != 0) {
                checkBox.getLayoutParams().width = i.a(activity, this.f54277c.getPrivacyCheckBoxWidth());
            }
            if (this.f54277c.getPrivacyCheckBoxHeight() != 0) {
                checkBox.getLayoutParams().height = i.a(activity, this.f54277c.getPrivacyCheckBoxHeight());
            }
            if (com.netease.nis.quicklogin.utils.a.a(this.f54280f)) {
                this.f54280f.get().setChecked(true);
            }
            if (com.netease.nis.quicklogin.utils.a.a(this.f54279e)) {
                if (this.f54277c.isPrivacyState()) {
                    this.f54279e.get().setChecked(true);
                    com.netease.nis.quicklogin.utils.d.a(activity, "97cf3773301f48ca974131655f05bdfa");
                    if (this.f54277c.getCheckedImageDrawable() != null) {
                        this.f54279e.get().setBackground(this.f54277c.getCheckedImageDrawable());
                    } else if (!TextUtils.isEmpty(this.f54277c.getCheckedImageName())) {
                        this.f54279e.get().setBackgroundResource(this.f54278d.c(this.f54277c.getCheckedImageName()));
                    }
                } else {
                    this.f54279e.get().setChecked(false);
                    if (this.f54277c.getUnCheckedImageNameDrawable() != null) {
                        this.f54279e.get().setBackground(this.f54277c.getUnCheckedImageNameDrawable());
                    } else if (!TextUtils.isEmpty(this.f54277c.getUnCheckedImageName())) {
                        this.f54279e.get().setBackgroundResource(this.f54278d.c(this.f54277c.getUnCheckedImageName()));
                    }
                }
                this.f54279e.get().setOnCheckedChangeListener(new b(activity));
            }
            TextView textView = (TextView) linearLayout.findViewById(R.id.yd_tv_privacy);
            if (textView != null) {
                textView.setOnClickListener(new c());
                if (this.f54277c.getPrivacyLineSpacingAdd() != 0.0f) {
                    textView.setLineSpacing(i.a(this.f54276b, this.f54277c.getPrivacyLineSpacingAdd()), this.f54277c.getPrivacyLineSpacingMul() > 0.0f ? this.f54277c.getPrivacyLineSpacingMul() : 1.0f);
                }
                com.netease.nis.quicklogin.utils.a.a(i2, this.f54277c, textView);
                if (this.f54277c.getPrivacySize() != 0) {
                    textView.setTextSize(this.f54277c.getPrivacySize());
                } else if (this.f54277c.getPrivacyDpSize() != 0) {
                    textView.setTextSize(1, this.f54277c.getPrivacyDpSize());
                }
                if (this.f54277c.getPrivacyTextMarginLeft() != 0) {
                    i.b(textView, this.f54277c.getPrivacyTextMarginLeft());
                }
                if (this.f54277c.getPrivacyTopYOffset() != 0 && this.f54277c.getPrivacyBottomYOffset() == 0) {
                    i.d(linearLayout, this.f54277c.getPrivacyTopYOffset() + i.b(this.f54276b));
                }
                if (this.f54277c.getPrivacyBottomYOffset() != 0) {
                    i.a(linearLayout, this.f54277c.getPrivacyBottomYOffset());
                }
                if (this.f54277c.getPrivacyMarginLeft() != 0) {
                    i.e(linearLayout, this.f54277c.getPrivacyMarginLeft());
                } else {
                    i.c(linearLayout);
                }
                if (this.f54277c.getPrivacyMarginRight() != 0) {
                    i.c(textView, this.f54277c.getPrivacyMarginRight());
                }
                if (this.f54277c.isPrivacyTextGravityCenter()) {
                    textView.setGravity(17);
                }
                if (this.f54277c.getPrivacyTextLayoutGravity() != 0) {
                    LinearLayout.LayoutParams layoutParams2 = (LinearLayout.LayoutParams) textView.getLayoutParams();
                    layoutParams2.gravity = this.f54277c.getPrivacyTextLayoutGravity();
                    textView.setLayoutParams(layoutParams2);
                }
            }
        }
    }

    private void a() {
        this.f54275a = new e();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(Activity activity, View view) {
        RelativeLayout relativeLayout = (RelativeLayout) activity.findViewById(R.id.yd_rl_root);
        if (relativeLayout == null || this.f54288n == null) {
            return;
        }
        relativeLayout.addView(view, 1);
        this.f54282h = new WeakReference<>(relativeLayout);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(Activity activity) {
        ArrayList<g> customViewHolders = this.f54277c.getCustomViewHolders();
        if (customViewHolders == null) {
            return;
        }
        Iterator<g> it2 = customViewHolders.iterator();
        while (it2.hasNext()) {
            g next = it2.next();
            if (next.f54302a != null) {
                a(activity, next);
            }
        }
    }

    private void a(Activity activity, g gVar) {
        if (gVar.f54302a.getParent() == null) {
            int i2 = gVar.f54303b;
            if (i2 == 1) {
                RelativeLayout relativeLayout = (RelativeLayout) activity.findViewById(R.id.yd_rl_navigation);
                relativeLayout.addView(gVar.f54302a);
                this.f54283i = new WeakReference<>(relativeLayout);
            } else if (i2 == 0) {
                RelativeLayout relativeLayout2 = (RelativeLayout) activity.findViewById(R.id.yd_rl_body);
                relativeLayout2.addView(gVar.f54302a);
                this.f54284j = new WeakReference<>(relativeLayout2);
            } else if (i2 == 2) {
                RelativeLayout relativeLayout3 = (RelativeLayout) activity.findViewById(R.id.yd_rl_root);
                relativeLayout3.addView(gVar.f54302a);
                this.f54282h = new WeakReference<>(relativeLayout3);
            }
        }
        View view = gVar.f54302a;
        if (view != null) {
            view.setOnClickListener(new f(this, gVar));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(Activity activity, String str) {
        if ((activity instanceof CmccLoginActivity) || (activity instanceof YDQuickLoginActivity) || (activity instanceof ProtocolDetailActivity)) {
            if (!"onActivityResumed".equals(str) && !"onActivityDestroyed".equals(str)) {
                Logger.d("[ActivityLifecycle] " + str + " ---> " + activity.getLocalClassName());
                return;
            }
            Logger.d("[ActivityLifecycle] " + str + " ---> " + activity.getLocalClassName() + " isNotSetLoginUi=" + this.f54285k);
        }
    }
}
