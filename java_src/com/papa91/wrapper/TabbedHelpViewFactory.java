package com.papa91.wrapper;

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
/* loaded from: classes4.dex */
public abstract class TabbedHelpViewFactory {

    /* loaded from: classes4.dex */
    private static class TabsConnectorBase extends TabHost {
        private final WebView wv;

        public TabsConnectorBase(Context context, String[][] strArr) {
            super(context);
            WebView webView = new WebView(context);
            this.wv = webView;
            webView.getSettings().setNeedInitialFocus(false);
            TabHost.TabContentFactory tabContentFactory = new TabHost.TabContentFactory() { // from class: com.papa91.wrapper.TabbedHelpViewFactory.TabsConnectorBase.1
                @Override // android.widget.TabHost.TabContentFactory
                public View createTabContent(String str) {
                    return TabsConnectorBase.this.wv;
                }
            };
            TabHost.OnTabChangeListener onTabChangeListener = new TabHost.OnTabChangeListener() { // from class: com.papa91.wrapper.TabbedHelpViewFactory.TabsConnectorBase.2
                @Override // android.widget.TabHost.OnTabChangeListener
                public void onTabChanged(String str) {
                    TabsConnectorBase.this.wv.loadUrl(str);
                }
            };
            LinearLayout linearLayout = new LinearLayout(context);
            linearLayout.setOrientation(1);
            TabWidget tabWidget = new TabWidget(context);
            tabWidget.setId(16908307);
            linearLayout.addView(tabWidget, new LinearLayout.LayoutParams(-1, -2));
            FrameLayout frameLayout = new FrameLayout(context);
            frameLayout.setId(16908305);
            linearLayout.addView(frameLayout, new LinearLayout.LayoutParams(-1, -1));
            addView(linearLayout);
            setOnTabChangedListener(onTabChangeListener);
            setup();
            for (String[] strArr2 : strArr) {
                addTab(newTabSpec(strArr2[0]).setIndicator(strArr2[1]).setContent(tabContentFactory));
            }
        }
    }

    @TargetApi(11)
    /* loaded from: classes4.dex */
    private static class TabsConnectorHoneycomb extends WebView {
        private ActionBar ab;

        public TabsConnectorHoneycomb(Activity activity, String[][] strArr) {
            super(activity);
            getSettings().setNeedInitialFocus(false);
            new ActionBar.TabListener() { // from class: com.papa91.wrapper.TabbedHelpViewFactory.TabsConnectorHoneycomb.1
                @Override // android.app.ActionBar.TabListener
                public void onTabReselected(ActionBar.Tab tab, FragmentTransaction fragmentTransaction) {
                }

                @Override // android.app.ActionBar.TabListener
                public void onTabSelected(ActionBar.Tab tab, FragmentTransaction fragmentTransaction) {
                    TabsConnectorHoneycomb.this.loadUrl((String) tab.getTag());
                }

                @Override // android.app.ActionBar.TabListener
                public void onTabUnselected(ActionBar.Tab tab, FragmentTransaction fragmentTransaction) {
                }
            };
        }
    }

    public static View newTabbedHelpView(Activity activity, String[][] strArr) {
        if (Wrapper.SDK_INT < 11) {
            return new TabsConnectorBase(activity, strArr);
        }
        return new TabsConnectorHoneycomb(activity, strArr);
    }
}
