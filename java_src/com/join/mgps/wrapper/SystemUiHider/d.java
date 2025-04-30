package com.join.mgps.wrapper.SystemUiHider;

import android.annotation.TargetApi;
import android.app.ActionBar;
import android.app.Activity;
import android.app.FragmentTransaction;
import android.content.Context;
import android.view.View;
import android.webkit.WebView;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TabHost;
import android.widget.TabWidget;
/* compiled from: TabbedHelpViewFactory.java */
/* loaded from: classes4.dex */
public abstract class d {

    /* compiled from: TabbedHelpViewFactory.java */
    /* loaded from: classes4.dex */
    private static class a extends TabHost {

        /* renamed from: a  reason: collision with root package name */
        private final WebView f52417a;

        /* compiled from: TabbedHelpViewFactory.java */
        /* renamed from: com.join.mgps.wrapper.SystemUiHider.d$a$a  reason: collision with other inner class name */
        /* loaded from: classes4.dex */
        class C0234a implements TabHost.TabContentFactory {
            C0234a() {
            }

            @Override // android.widget.TabHost.TabContentFactory
            public View createTabContent(String str) {
                return a.this.f52417a;
            }
        }

        /* compiled from: TabbedHelpViewFactory.java */
        /* loaded from: classes4.dex */
        class b implements TabHost.OnTabChangeListener {
            b() {
            }

            @Override // android.widget.TabHost.OnTabChangeListener
            public void onTabChanged(String str) {
                a.this.f52417a.loadUrl(str);
            }
        }

        public a(Context context, String[][] strArr) {
            super(context);
            WebView webView = new WebView(context);
            this.f52417a = webView;
            webView.getSettings().setNeedInitialFocus(false);
            TabHost.TabContentFactory c0234a = new C0234a();
            TabHost.OnTabChangeListener bVar = new b();
            LinearLayout linearLayout = new LinearLayout(context);
            linearLayout.setOrientation(1);
            TabWidget tabWidget = new TabWidget(context);
            tabWidget.setId(16908307);
            linearLayout.addView(tabWidget, new LinearLayout.LayoutParams(-1, -2));
            FrameLayout frameLayout = new FrameLayout(context);
            frameLayout.setId(16908305);
            linearLayout.addView(frameLayout, new LinearLayout.LayoutParams(-1, -1));
            addView(linearLayout);
            setOnTabChangedListener(bVar);
            setup();
            for (String[] strArr2 : strArr) {
                addTab(newTabSpec(strArr2[0]).setIndicator(strArr2[1]).setContent(c0234a));
            }
        }
    }

    /* compiled from: TabbedHelpViewFactory.java */
    @TargetApi(11)
    /* loaded from: classes4.dex */
    private static class b extends WebView {

        /* renamed from: a  reason: collision with root package name */
        private ActionBar f52420a;

        /* compiled from: TabbedHelpViewFactory.java */
        /* loaded from: classes4.dex */
        class a implements ActionBar.TabListener {
            a() {
            }

            @Override // android.app.ActionBar.TabListener
            public void onTabReselected(ActionBar.Tab tab, FragmentTransaction fragmentTransaction) {
            }

            @Override // android.app.ActionBar.TabListener
            public void onTabSelected(ActionBar.Tab tab, FragmentTransaction fragmentTransaction) {
                b.this.loadUrl((String) tab.getTag());
            }

            @Override // android.app.ActionBar.TabListener
            public void onTabUnselected(ActionBar.Tab tab, FragmentTransaction fragmentTransaction) {
            }
        }

        public b(Activity activity, String[][] strArr) {
            super(activity);
            getSettings().setNeedInitialFocus(false);
            new a();
        }
    }

    public static View a(Activity activity, String[][] strArr) {
        if (com.join.mgps.wrapper.a.f52423b < 11) {
            return new a(activity, strArr);
        }
        return new b(activity, strArr);
    }
}
