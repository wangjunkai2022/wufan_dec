package androidx.appcompat.widget;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.content.Context;
import android.content.res.Configuration;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.ViewPropertyAnimator;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.Interpolator;
import android.widget.AbsListView;
import android.widget.AdapterView;
import android.widget.BaseAdapter;
import android.widget.HorizontalScrollView;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.Spinner;
import android.widget.SpinnerAdapter;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.RestrictTo;
import androidx.appcompat.R;
import androidx.appcompat.app.ActionBar;
import androidx.appcompat.view.ActionBarPolicy;
import androidx.appcompat.widget.LinearLayoutCompat;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
/* loaded from: classes.dex */
public class ScrollingTabContainerView extends HorizontalScrollView implements AdapterView.OnItemSelectedListener {

    /* renamed from: l  reason: collision with root package name */
    private static final String f1297l = "ScrollingTabContainerView";

    /* renamed from: m  reason: collision with root package name */
    private static final Interpolator f1298m = new DecelerateInterpolator();

    /* renamed from: n  reason: collision with root package name */
    private static final int f1299n = 200;

    /* renamed from: a  reason: collision with root package name */
    Runnable f1300a;

    /* renamed from: b  reason: collision with root package name */
    private TabClickListener f1301b;

    /* renamed from: c  reason: collision with root package name */
    LinearLayoutCompat f1302c;

    /* renamed from: d  reason: collision with root package name */
    private Spinner f1303d;

    /* renamed from: e  reason: collision with root package name */
    private boolean f1304e;

    /* renamed from: f  reason: collision with root package name */
    int f1305f;

    /* renamed from: g  reason: collision with root package name */
    int f1306g;

    /* renamed from: h  reason: collision with root package name */
    private int f1307h;

    /* renamed from: i  reason: collision with root package name */
    private int f1308i;

    /* renamed from: j  reason: collision with root package name */
    protected ViewPropertyAnimator f1309j;

    /* renamed from: k  reason: collision with root package name */
    protected final VisibilityAnimListener f1310k;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public class TabAdapter extends BaseAdapter {
        TabAdapter() {
        }

        @Override // android.widget.Adapter
        public int getCount() {
            return ScrollingTabContainerView.this.f1302c.getChildCount();
        }

        @Override // android.widget.Adapter
        public Object getItem(int i2) {
            return ((TabView) ScrollingTabContainerView.this.f1302c.getChildAt(i2)).getTab();
        }

        @Override // android.widget.Adapter
        public long getItemId(int i2) {
            return i2;
        }

        @Override // android.widget.Adapter
        public View getView(int i2, View view, ViewGroup viewGroup) {
            if (view == null) {
                return ScrollingTabContainerView.this.c((ActionBar.Tab) getItem(i2), true);
            }
            ((TabView) view).bindTab((ActionBar.Tab) getItem(i2));
            return view;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public class TabClickListener implements View.OnClickListener {
        TabClickListener() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            ((TabView) view).getTab().select();
            int childCount = ScrollingTabContainerView.this.f1302c.getChildCount();
            for (int i2 = 0; i2 < childCount; i2++) {
                View childAt = ScrollingTabContainerView.this.f1302c.getChildAt(i2);
                childAt.setSelected(childAt == view);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public class TabView extends LinearLayout {

        /* renamed from: g  reason: collision with root package name */
        private static final String f1315g = "androidx.appcompat.app.ActionBar$Tab";

        /* renamed from: a  reason: collision with root package name */
        private final int[] f1316a;

        /* renamed from: b  reason: collision with root package name */
        private ActionBar.Tab f1317b;

        /* renamed from: c  reason: collision with root package name */
        private TextView f1318c;

        /* renamed from: d  reason: collision with root package name */
        private ImageView f1319d;

        /* renamed from: e  reason: collision with root package name */
        private View f1320e;

        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public TabView(android.content.Context r6, androidx.appcompat.app.ActionBar.Tab r7, boolean r8) {
            /*
                r4 = this;
                androidx.appcompat.widget.ScrollingTabContainerView.this = r5
                int r5 = androidx.appcompat.R.attr.actionBarTabStyle
                r0 = 0
                r4.<init>(r6, r0, r5)
                r1 = 1
                int[] r1 = new int[r1]
                r2 = 16842964(0x10100d4, float:2.3694152E-38)
                r3 = 0
                r1[r3] = r2
                r4.f1316a = r1
                r4.f1317b = r7
                androidx.appcompat.widget.TintTypedArray r5 = androidx.appcompat.widget.TintTypedArray.obtainStyledAttributes(r6, r0, r1, r5, r3)
                boolean r6 = r5.hasValue(r3)
                if (r6 == 0) goto L26
                android.graphics.drawable.Drawable r6 = r5.getDrawable(r3)
                r4.setBackgroundDrawable(r6)
            L26:
                r5.recycle()
                if (r8 == 0) goto L31
                r5 = 8388627(0x800013, float:1.175497E-38)
                r4.setGravity(r5)
            L31:
                r4.update()
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.ScrollingTabContainerView.TabView.<init>(androidx.appcompat.widget.ScrollingTabContainerView, android.content.Context, androidx.appcompat.app.ActionBar$Tab, boolean):void");
        }

        public void bindTab(ActionBar.Tab tab) {
            this.f1317b = tab;
            update();
        }

        public ActionBar.Tab getTab() {
            return this.f1317b;
        }

        @Override // android.view.View
        public void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
            super.onInitializeAccessibilityEvent(accessibilityEvent);
            accessibilityEvent.setClassName(f1315g);
        }

        @Override // android.view.View
        public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
            super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
            accessibilityNodeInfo.setClassName(f1315g);
        }

        @Override // android.widget.LinearLayout, android.view.View
        public void onMeasure(int i2, int i4) {
            super.onMeasure(i2, i4);
            if (ScrollingTabContainerView.this.f1305f > 0) {
                int measuredWidth = getMeasuredWidth();
                int i5 = ScrollingTabContainerView.this.f1305f;
                if (measuredWidth > i5) {
                    super.onMeasure(View.MeasureSpec.makeMeasureSpec(i5, 1073741824), i4);
                }
            }
        }

        @Override // android.view.View
        public void setSelected(boolean z3) {
            boolean z4 = isSelected() != z3;
            super.setSelected(z3);
            if (z4 && z3) {
                sendAccessibilityEvent(4);
            }
        }

        public void update() {
            ActionBar.Tab tab = this.f1317b;
            View customView = tab.getCustomView();
            if (customView != null) {
                ViewParent parent = customView.getParent();
                if (parent != this) {
                    if (parent != null) {
                        ((ViewGroup) parent).removeView(customView);
                    }
                    addView(customView);
                }
                this.f1320e = customView;
                TextView textView = this.f1318c;
                if (textView != null) {
                    textView.setVisibility(8);
                }
                ImageView imageView = this.f1319d;
                if (imageView != null) {
                    imageView.setVisibility(8);
                    this.f1319d.setImageDrawable(null);
                    return;
                }
                return;
            }
            View view = this.f1320e;
            if (view != null) {
                removeView(view);
                this.f1320e = null;
            }
            Drawable icon = tab.getIcon();
            CharSequence text = tab.getText();
            if (icon != null) {
                if (this.f1319d == null) {
                    AppCompatImageView appCompatImageView = new AppCompatImageView(getContext());
                    LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -2);
                    layoutParams.gravity = 16;
                    appCompatImageView.setLayoutParams(layoutParams);
                    addView(appCompatImageView, 0);
                    this.f1319d = appCompatImageView;
                }
                this.f1319d.setImageDrawable(icon);
                this.f1319d.setVisibility(0);
            } else {
                ImageView imageView2 = this.f1319d;
                if (imageView2 != null) {
                    imageView2.setVisibility(8);
                    this.f1319d.setImageDrawable(null);
                }
            }
            boolean z3 = !TextUtils.isEmpty(text);
            if (z3) {
                if (this.f1318c == null) {
                    AppCompatTextView appCompatTextView = new AppCompatTextView(getContext(), null, R.attr.actionBarTabTextStyle);
                    appCompatTextView.setEllipsize(TextUtils.TruncateAt.END);
                    LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-2, -2);
                    layoutParams2.gravity = 16;
                    appCompatTextView.setLayoutParams(layoutParams2);
                    addView(appCompatTextView);
                    this.f1318c = appCompatTextView;
                }
                this.f1318c.setText(text);
                this.f1318c.setVisibility(0);
            } else {
                TextView textView2 = this.f1318c;
                if (textView2 != null) {
                    textView2.setVisibility(8);
                    this.f1318c.setText((CharSequence) null);
                }
            }
            ImageView imageView3 = this.f1319d;
            if (imageView3 != null) {
                imageView3.setContentDescription(tab.getContentDescription());
            }
            TooltipCompat.setTooltipText(this, z3 ? null : tab.getContentDescription());
        }
    }

    /* loaded from: classes.dex */
    protected class VisibilityAnimListener extends AnimatorListenerAdapter {

        /* renamed from: a  reason: collision with root package name */
        private boolean f1322a = false;

        /* renamed from: b  reason: collision with root package name */
        private int f1323b;

        protected VisibilityAnimListener() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
            this.f1322a = true;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            if (this.f1322a) {
                return;
            }
            ScrollingTabContainerView scrollingTabContainerView = ScrollingTabContainerView.this;
            scrollingTabContainerView.f1309j = null;
            scrollingTabContainerView.setVisibility(this.f1323b);
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            ScrollingTabContainerView.this.setVisibility(0);
            this.f1322a = false;
        }

        public VisibilityAnimListener withFinalVisibility(ViewPropertyAnimator viewPropertyAnimator, int i2) {
            this.f1323b = i2;
            ScrollingTabContainerView.this.f1309j = viewPropertyAnimator;
            return this;
        }
    }

    public ScrollingTabContainerView(@NonNull Context context) {
        super(context);
        this.f1310k = new VisibilityAnimListener();
        setHorizontalScrollBarEnabled(false);
        ActionBarPolicy actionBarPolicy = ActionBarPolicy.get(context);
        setContentHeight(actionBarPolicy.getTabContainerHeight());
        this.f1306g = actionBarPolicy.getStackedTabMaxWidth();
        LinearLayoutCompat b4 = b();
        this.f1302c = b4;
        addView(b4, new ViewGroup.LayoutParams(-2, -1));
    }

    private Spinner a() {
        AppCompatSpinner appCompatSpinner = new AppCompatSpinner(getContext(), null, R.attr.actionDropDownStyle);
        appCompatSpinner.setLayoutParams(new LinearLayoutCompat.LayoutParams(-2, -1));
        appCompatSpinner.setOnItemSelectedListener(this);
        return appCompatSpinner;
    }

    private LinearLayoutCompat b() {
        LinearLayoutCompat linearLayoutCompat = new LinearLayoutCompat(getContext(), null, R.attr.actionBarTabBarStyle);
        linearLayoutCompat.setMeasureWithLargestChildEnabled(true);
        linearLayoutCompat.setGravity(17);
        linearLayoutCompat.setLayoutParams(new LinearLayoutCompat.LayoutParams(-2, -1));
        return linearLayoutCompat;
    }

    private boolean d() {
        Spinner spinner = this.f1303d;
        return spinner != null && spinner.getParent() == this;
    }

    private void e() {
        if (d()) {
            return;
        }
        if (this.f1303d == null) {
            this.f1303d = a();
        }
        removeView(this.f1302c);
        addView(this.f1303d, new ViewGroup.LayoutParams(-2, -1));
        if (this.f1303d.getAdapter() == null) {
            this.f1303d.setAdapter((SpinnerAdapter) new TabAdapter());
        }
        Runnable runnable = this.f1300a;
        if (runnable != null) {
            removeCallbacks(runnable);
            this.f1300a = null;
        }
        this.f1303d.setSelection(this.f1308i);
    }

    private boolean f() {
        if (d()) {
            removeView(this.f1303d);
            addView(this.f1302c, new ViewGroup.LayoutParams(-2, -1));
            setTabSelected(this.f1303d.getSelectedItemPosition());
            return false;
        }
        return false;
    }

    public void addTab(ActionBar.Tab tab, boolean z3) {
        TabView c4 = c(tab, false);
        this.f1302c.addView(c4, new LinearLayoutCompat.LayoutParams(0, -1, 1.0f));
        Spinner spinner = this.f1303d;
        if (spinner != null) {
            ((TabAdapter) spinner.getAdapter()).notifyDataSetChanged();
        }
        if (z3) {
            c4.setSelected(true);
        }
        if (this.f1304e) {
            requestLayout();
        }
    }

    public void animateToTab(int i2) {
        final View childAt = this.f1302c.getChildAt(i2);
        Runnable runnable = this.f1300a;
        if (runnable != null) {
            removeCallbacks(runnable);
        }
        Runnable runnable2 = new Runnable() { // from class: androidx.appcompat.widget.ScrollingTabContainerView.1
            @Override // java.lang.Runnable
            public void run() {
                ScrollingTabContainerView.this.smoothScrollTo(childAt.getLeft() - ((ScrollingTabContainerView.this.getWidth() - childAt.getWidth()) / 2), 0);
                ScrollingTabContainerView.this.f1300a = null;
            }
        };
        this.f1300a = runnable2;
        post(runnable2);
    }

    public void animateToVisibility(int i2) {
        ViewPropertyAnimator viewPropertyAnimator = this.f1309j;
        if (viewPropertyAnimator != null) {
            viewPropertyAnimator.cancel();
        }
        if (i2 == 0) {
            if (getVisibility() != 0) {
                setAlpha(0.0f);
            }
            ViewPropertyAnimator alpha = animate().alpha(1.0f);
            alpha.setDuration(200L);
            alpha.setInterpolator(f1298m);
            alpha.setListener(this.f1310k.withFinalVisibility(alpha, i2));
            alpha.start();
            return;
        }
        ViewPropertyAnimator alpha2 = animate().alpha(0.0f);
        alpha2.setDuration(200L);
        alpha2.setInterpolator(f1298m);
        alpha2.setListener(this.f1310k.withFinalVisibility(alpha2, i2));
        alpha2.start();
    }

    TabView c(ActionBar.Tab tab, boolean z3) {
        TabView tabView = new TabView(getContext(), tab, z3);
        if (z3) {
            tabView.setBackgroundDrawable(null);
            tabView.setLayoutParams(new AbsListView.LayoutParams(-1, this.f1307h));
        } else {
            tabView.setFocusable(true);
            if (this.f1301b == null) {
                this.f1301b = new TabClickListener();
            }
            tabView.setOnClickListener(this.f1301b);
        }
        return tabView;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        Runnable runnable = this.f1300a;
        if (runnable != null) {
            post(runnable);
        }
    }

    @Override // android.view.View
    protected void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        ActionBarPolicy actionBarPolicy = ActionBarPolicy.get(getContext());
        setContentHeight(actionBarPolicy.getTabContainerHeight());
        this.f1306g = actionBarPolicy.getStackedTabMaxWidth();
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        Runnable runnable = this.f1300a;
        if (runnable != null) {
            removeCallbacks(runnable);
        }
    }

    @Override // android.widget.AdapterView.OnItemSelectedListener
    public void onItemSelected(AdapterView<?> adapterView, View view, int i2, long j4) {
        ((TabView) view).getTab().select();
    }

    @Override // android.widget.HorizontalScrollView, android.widget.FrameLayout, android.view.View
    public void onMeasure(int i2, int i4) {
        int mode = View.MeasureSpec.getMode(i2);
        boolean z3 = true;
        boolean z4 = mode == 1073741824;
        setFillViewport(z4);
        int childCount = this.f1302c.getChildCount();
        if (childCount > 1 && (mode == 1073741824 || mode == Integer.MIN_VALUE)) {
            if (childCount > 2) {
                this.f1305f = (int) (View.MeasureSpec.getSize(i2) * 0.4f);
            } else {
                this.f1305f = View.MeasureSpec.getSize(i2) / 2;
            }
            this.f1305f = Math.min(this.f1305f, this.f1306g);
        } else {
            this.f1305f = -1;
        }
        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(this.f1307h, 1073741824);
        if ((z4 || !this.f1304e) ? false : false) {
            this.f1302c.measure(0, makeMeasureSpec);
            if (this.f1302c.getMeasuredWidth() > View.MeasureSpec.getSize(i2)) {
                e();
            } else {
                f();
            }
        } else {
            f();
        }
        int measuredWidth = getMeasuredWidth();
        super.onMeasure(i2, makeMeasureSpec);
        int measuredWidth2 = getMeasuredWidth();
        if (!z4 || measuredWidth == measuredWidth2) {
            return;
        }
        setTabSelected(this.f1308i);
    }

    @Override // android.widget.AdapterView.OnItemSelectedListener
    public void onNothingSelected(AdapterView<?> adapterView) {
    }

    public void removeAllTabs() {
        this.f1302c.removeAllViews();
        Spinner spinner = this.f1303d;
        if (spinner != null) {
            ((TabAdapter) spinner.getAdapter()).notifyDataSetChanged();
        }
        if (this.f1304e) {
            requestLayout();
        }
    }

    public void removeTabAt(int i2) {
        this.f1302c.removeViewAt(i2);
        Spinner spinner = this.f1303d;
        if (spinner != null) {
            ((TabAdapter) spinner.getAdapter()).notifyDataSetChanged();
        }
        if (this.f1304e) {
            requestLayout();
        }
    }

    public void setAllowCollapse(boolean z3) {
        this.f1304e = z3;
    }

    public void setContentHeight(int i2) {
        this.f1307h = i2;
        requestLayout();
    }

    public void setTabSelected(int i2) {
        this.f1308i = i2;
        int childCount = this.f1302c.getChildCount();
        int i4 = 0;
        while (i4 < childCount) {
            View childAt = this.f1302c.getChildAt(i4);
            boolean z3 = i4 == i2;
            childAt.setSelected(z3);
            if (z3) {
                animateToTab(i2);
            }
            i4++;
        }
        Spinner spinner = this.f1303d;
        if (spinner == null || i2 < 0) {
            return;
        }
        spinner.setSelection(i2);
    }

    public void updateTab(int i2) {
        ((TabView) this.f1302c.getChildAt(i2)).update();
        Spinner spinner = this.f1303d;
        if (spinner != null) {
            ((TabAdapter) spinner.getAdapter()).notifyDataSetChanged();
        }
        if (this.f1304e) {
            requestLayout();
        }
    }

    public void addTab(ActionBar.Tab tab, int i2, boolean z3) {
        TabView c4 = c(tab, false);
        this.f1302c.addView(c4, i2, new LinearLayoutCompat.LayoutParams(0, -1, 1.0f));
        Spinner spinner = this.f1303d;
        if (spinner != null) {
            ((TabAdapter) spinner.getAdapter()).notifyDataSetChanged();
        }
        if (z3) {
            c4.setSelected(true);
        }
        if (this.f1304e) {
            requestLayout();
        }
    }
}
