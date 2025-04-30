package androidx.appcompat.widget;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.database.DataSetObserver;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.AdapterView;
import android.widget.BaseAdapter;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.PopupWindow;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.appcompat.R;
import androidx.appcompat.view.menu.ShowableListMenu;
import androidx.appcompat.widget.ActivityChooserModel;
import androidx.core.view.ActionProvider;
import androidx.core.view.ViewCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
/* loaded from: classes.dex */
public class ActivityChooserView extends ViewGroup implements ActivityChooserModel.ActivityChooserModelClient {

    /* renamed from: a  reason: collision with root package name */
    final ActivityChooserViewAdapter f876a;

    /* renamed from: b  reason: collision with root package name */
    private final Callbacks f877b;

    /* renamed from: c  reason: collision with root package name */
    private final View f878c;

    /* renamed from: d  reason: collision with root package name */
    private final Drawable f879d;

    /* renamed from: e  reason: collision with root package name */
    final FrameLayout f880e;

    /* renamed from: f  reason: collision with root package name */
    private final ImageView f881f;

    /* renamed from: g  reason: collision with root package name */
    final FrameLayout f882g;

    /* renamed from: h  reason: collision with root package name */
    private final ImageView f883h;

    /* renamed from: i  reason: collision with root package name */
    private final int f884i;

    /* renamed from: j  reason: collision with root package name */
    ActionProvider f885j;

    /* renamed from: k  reason: collision with root package name */
    final DataSetObserver f886k;

    /* renamed from: l  reason: collision with root package name */
    private final ViewTreeObserver.OnGlobalLayoutListener f887l;

    /* renamed from: m  reason: collision with root package name */
    private ListPopupWindow f888m;

    /* renamed from: n  reason: collision with root package name */
    PopupWindow.OnDismissListener f889n;

    /* renamed from: o  reason: collision with root package name */
    boolean f890o;

    /* renamed from: p  reason: collision with root package name */
    int f891p;

    /* renamed from: q  reason: collision with root package name */
    private boolean f892q;

    /* renamed from: r  reason: collision with root package name */
    private int f893r;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public class ActivityChooserViewAdapter extends BaseAdapter {
        public static final int MAX_ACTIVITY_COUNT_DEFAULT = 4;
        public static final int MAX_ACTIVITY_COUNT_UNLIMITED = Integer.MAX_VALUE;

        /* renamed from: g  reason: collision with root package name */
        private static final int f899g = 0;

        /* renamed from: h  reason: collision with root package name */
        private static final int f900h = 1;

        /* renamed from: i  reason: collision with root package name */
        private static final int f901i = 3;

        /* renamed from: a  reason: collision with root package name */
        private ActivityChooserModel f902a;

        /* renamed from: b  reason: collision with root package name */
        private int f903b = 4;

        /* renamed from: c  reason: collision with root package name */
        private boolean f904c;

        /* renamed from: d  reason: collision with root package name */
        private boolean f905d;

        /* renamed from: e  reason: collision with root package name */
        private boolean f906e;

        ActivityChooserViewAdapter() {
        }

        public int getActivityCount() {
            return this.f902a.getActivityCount();
        }

        @Override // android.widget.Adapter
        public int getCount() {
            int activityCount = this.f902a.getActivityCount();
            if (!this.f904c && this.f902a.getDefaultActivity() != null) {
                activityCount--;
            }
            int min = Math.min(activityCount, this.f903b);
            return this.f906e ? min + 1 : min;
        }

        public ActivityChooserModel getDataModel() {
            return this.f902a;
        }

        public ResolveInfo getDefaultActivity() {
            return this.f902a.getDefaultActivity();
        }

        public int getHistorySize() {
            return this.f902a.getHistorySize();
        }

        @Override // android.widget.Adapter
        public Object getItem(int i2) {
            int itemViewType = getItemViewType(i2);
            if (itemViewType != 0) {
                if (itemViewType == 1) {
                    return null;
                }
                throw new IllegalArgumentException();
            }
            if (!this.f904c && this.f902a.getDefaultActivity() != null) {
                i2++;
            }
            return this.f902a.getActivity(i2);
        }

        @Override // android.widget.Adapter
        public long getItemId(int i2) {
            return i2;
        }

        @Override // android.widget.BaseAdapter, android.widget.Adapter
        public int getItemViewType(int i2) {
            return (this.f906e && i2 == getCount() - 1) ? 1 : 0;
        }

        public boolean getShowDefaultActivity() {
            return this.f904c;
        }

        @Override // android.widget.Adapter
        public View getView(int i2, View view, ViewGroup viewGroup) {
            int itemViewType = getItemViewType(i2);
            if (itemViewType != 0) {
                if (itemViewType == 1) {
                    if (view == null || view.getId() != 1) {
                        View inflate = LayoutInflater.from(ActivityChooserView.this.getContext()).inflate(R.layout.abc_activity_chooser_view_list_item, viewGroup, false);
                        inflate.setId(1);
                        ((TextView) inflate.findViewById(R.id.title)).setText(ActivityChooserView.this.getContext().getString(R.string.abc_activity_chooser_view_see_all));
                        return inflate;
                    }
                    return view;
                }
                throw new IllegalArgumentException();
            }
            if (view == null || view.getId() != R.id.list_item) {
                view = LayoutInflater.from(ActivityChooserView.this.getContext()).inflate(R.layout.abc_activity_chooser_view_list_item, viewGroup, false);
            }
            PackageManager packageManager = ActivityChooserView.this.getContext().getPackageManager();
            ResolveInfo resolveInfo = (ResolveInfo) getItem(i2);
            ((ImageView) view.findViewById(R.id.icon)).setImageDrawable(resolveInfo.loadIcon(packageManager));
            ((TextView) view.findViewById(R.id.title)).setText(resolveInfo.loadLabel(packageManager));
            if (this.f904c && i2 == 0 && this.f905d) {
                view.setActivated(true);
            } else {
                view.setActivated(false);
            }
            return view;
        }

        @Override // android.widget.BaseAdapter, android.widget.Adapter
        public int getViewTypeCount() {
            return 3;
        }

        public int measureContentWidth() {
            int i2 = this.f903b;
            this.f903b = Integer.MAX_VALUE;
            int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(0, 0);
            int makeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(0, 0);
            int count = getCount();
            View view = null;
            int i4 = 0;
            for (int i5 = 0; i5 < count; i5++) {
                view = getView(i5, view, null);
                view.measure(makeMeasureSpec, makeMeasureSpec2);
                i4 = Math.max(i4, view.getMeasuredWidth());
            }
            this.f903b = i2;
            return i4;
        }

        public void setDataModel(ActivityChooserModel activityChooserModel) {
            ActivityChooserModel dataModel = ActivityChooserView.this.f876a.getDataModel();
            if (dataModel != null && ActivityChooserView.this.isShown()) {
                dataModel.unregisterObserver(ActivityChooserView.this.f886k);
            }
            this.f902a = activityChooserModel;
            if (activityChooserModel != null && ActivityChooserView.this.isShown()) {
                activityChooserModel.registerObserver(ActivityChooserView.this.f886k);
            }
            notifyDataSetChanged();
        }

        public void setMaxActivityCount(int i2) {
            if (this.f903b != i2) {
                this.f903b = i2;
                notifyDataSetChanged();
            }
        }

        public void setShowDefaultActivity(boolean z3, boolean z4) {
            if (this.f904c == z3 && this.f905d == z4) {
                return;
            }
            this.f904c = z3;
            this.f905d = z4;
            notifyDataSetChanged();
        }

        public void setShowFooterView(boolean z3) {
            if (this.f906e != z3) {
                this.f906e = z3;
                notifyDataSetChanged();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public class Callbacks implements AdapterView.OnItemClickListener, View.OnClickListener, View.OnLongClickListener, PopupWindow.OnDismissListener {
        Callbacks() {
        }

        private void a() {
            PopupWindow.OnDismissListener onDismissListener = ActivityChooserView.this.f889n;
            if (onDismissListener != null) {
                onDismissListener.onDismiss();
            }
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            ActivityChooserView activityChooserView = ActivityChooserView.this;
            if (view == activityChooserView.f882g) {
                activityChooserView.dismissPopup();
                Intent chooseActivity = ActivityChooserView.this.f876a.getDataModel().chooseActivity(ActivityChooserView.this.f876a.getDataModel().getActivityIndex(ActivityChooserView.this.f876a.getDefaultActivity()));
                if (chooseActivity != null) {
                    chooseActivity.addFlags(524288);
                    ActivityChooserView.this.getContext().startActivity(chooseActivity);
                }
            } else if (view == activityChooserView.f880e) {
                activityChooserView.f890o = false;
                activityChooserView.a(activityChooserView.f891p);
            } else {
                throw new IllegalArgumentException();
            }
        }

        @Override // android.widget.PopupWindow.OnDismissListener
        public void onDismiss() {
            a();
            ActionProvider actionProvider = ActivityChooserView.this.f885j;
            if (actionProvider != null) {
                actionProvider.subUiVisibilityChanged(false);
            }
        }

        @Override // android.widget.AdapterView.OnItemClickListener
        public void onItemClick(AdapterView<?> adapterView, View view, int i2, long j4) {
            int itemViewType = ((ActivityChooserViewAdapter) adapterView.getAdapter()).getItemViewType(i2);
            if (itemViewType != 0) {
                if (itemViewType == 1) {
                    ActivityChooserView.this.a(Integer.MAX_VALUE);
                    return;
                }
                throw new IllegalArgumentException();
            }
            ActivityChooserView.this.dismissPopup();
            ActivityChooserView activityChooserView = ActivityChooserView.this;
            if (activityChooserView.f890o) {
                if (i2 > 0) {
                    activityChooserView.f876a.getDataModel().setDefaultActivity(i2);
                    return;
                }
                return;
            }
            if (!activityChooserView.f876a.getShowDefaultActivity()) {
                i2++;
            }
            Intent chooseActivity = ActivityChooserView.this.f876a.getDataModel().chooseActivity(i2);
            if (chooseActivity != null) {
                chooseActivity.addFlags(524288);
                ActivityChooserView.this.getContext().startActivity(chooseActivity);
            }
        }

        @Override // android.view.View.OnLongClickListener
        public boolean onLongClick(View view) {
            ActivityChooserView activityChooserView = ActivityChooserView.this;
            if (view == activityChooserView.f882g) {
                if (activityChooserView.f876a.getCount() > 0) {
                    ActivityChooserView activityChooserView2 = ActivityChooserView.this;
                    activityChooserView2.f890o = true;
                    activityChooserView2.a(activityChooserView2.f891p);
                }
                return true;
            }
            throw new IllegalArgumentException();
        }
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    /* loaded from: classes.dex */
    public static class InnerLayout extends LinearLayout {

        /* renamed from: a  reason: collision with root package name */
        private static final int[] f909a = {16842964};

        public InnerLayout(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            TintTypedArray obtainStyledAttributes = TintTypedArray.obtainStyledAttributes(context, attributeSet, f909a);
            setBackgroundDrawable(obtainStyledAttributes.getDrawable(0));
            obtainStyledAttributes.recycle();
        }
    }

    public ActivityChooserView(@NonNull Context context) {
        this(context, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v15 */
    /* JADX WARN: Type inference failed for: r0v6 */
    /* JADX WARN: Type inference failed for: r0v7, types: [int, boolean] */
    void a(int i2) {
        if (this.f876a.getDataModel() != null) {
            getViewTreeObserver().addOnGlobalLayoutListener(this.f887l);
            ?? r02 = this.f882g.getVisibility() == 0 ? 1 : 0;
            int activityCount = this.f876a.getActivityCount();
            if (i2 != Integer.MAX_VALUE && activityCount > i2 + r02) {
                this.f876a.setShowFooterView(true);
                this.f876a.setMaxActivityCount(i2 - 1);
            } else {
                this.f876a.setShowFooterView(false);
                this.f876a.setMaxActivityCount(i2);
            }
            ListPopupWindow listPopupWindow = getListPopupWindow();
            if (listPopupWindow.isShowing()) {
                return;
            }
            if (!this.f890o && r02 != 0) {
                this.f876a.setShowDefaultActivity(false, false);
            } else {
                this.f876a.setShowDefaultActivity(true, r02);
            }
            listPopupWindow.setContentWidth(Math.min(this.f876a.measureContentWidth(), this.f884i));
            listPopupWindow.show();
            ActionProvider actionProvider = this.f885j;
            if (actionProvider != null) {
                actionProvider.subUiVisibilityChanged(true);
            }
            listPopupWindow.getListView().setContentDescription(getContext().getString(R.string.abc_activitychooserview_choose_application));
            listPopupWindow.getListView().setSelector(new ColorDrawable(0));
            return;
        }
        throw new IllegalStateException("No data model. Did you call #setDataModel?");
    }

    void b() {
        if (this.f876a.getCount() > 0) {
            this.f880e.setEnabled(true);
        } else {
            this.f880e.setEnabled(false);
        }
        int activityCount = this.f876a.getActivityCount();
        int historySize = this.f876a.getHistorySize();
        if (activityCount != 1 && (activityCount <= 1 || historySize <= 0)) {
            this.f882g.setVisibility(8);
        } else {
            this.f882g.setVisibility(0);
            ResolveInfo defaultActivity = this.f876a.getDefaultActivity();
            PackageManager packageManager = getContext().getPackageManager();
            this.f883h.setImageDrawable(defaultActivity.loadIcon(packageManager));
            if (this.f893r != 0) {
                this.f882g.setContentDescription(getContext().getString(this.f893r, defaultActivity.loadLabel(packageManager)));
            }
        }
        if (this.f882g.getVisibility() == 0) {
            this.f878c.setBackgroundDrawable(this.f879d);
        } else {
            this.f878c.setBackgroundDrawable(null);
        }
    }

    public boolean dismissPopup() {
        if (isShowingPopup()) {
            getListPopupWindow().dismiss();
            ViewTreeObserver viewTreeObserver = getViewTreeObserver();
            if (viewTreeObserver.isAlive()) {
                viewTreeObserver.removeGlobalOnLayoutListener(this.f887l);
                return true;
            }
            return true;
        }
        return true;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public ActivityChooserModel getDataModel() {
        return this.f876a.getDataModel();
    }

    ListPopupWindow getListPopupWindow() {
        if (this.f888m == null) {
            ListPopupWindow listPopupWindow = new ListPopupWindow(getContext());
            this.f888m = listPopupWindow;
            listPopupWindow.setAdapter(this.f876a);
            this.f888m.setAnchorView(this);
            this.f888m.setModal(true);
            this.f888m.setOnItemClickListener(this.f877b);
            this.f888m.setOnDismissListener(this.f877b);
        }
        return this.f888m;
    }

    public boolean isShowingPopup() {
        return getListPopupWindow().isShowing();
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        ActivityChooserModel dataModel = this.f876a.getDataModel();
        if (dataModel != null) {
            dataModel.registerObserver(this.f886k);
        }
        this.f892q = true;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        ActivityChooserModel dataModel = this.f876a.getDataModel();
        if (dataModel != null) {
            dataModel.unregisterObserver(this.f886k);
        }
        ViewTreeObserver viewTreeObserver = getViewTreeObserver();
        if (viewTreeObserver.isAlive()) {
            viewTreeObserver.removeGlobalOnLayoutListener(this.f887l);
        }
        if (isShowingPopup()) {
            dismissPopup();
        }
        this.f892q = false;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z3, int i2, int i4, int i5, int i6) {
        this.f878c.layout(0, 0, i5 - i2, i6 - i4);
        if (isShowingPopup()) {
            return;
        }
        dismissPopup();
    }

    @Override // android.view.View
    protected void onMeasure(int i2, int i4) {
        View view = this.f878c;
        if (this.f882g.getVisibility() != 0) {
            i4 = View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(i4), 1073741824);
        }
        measureChild(view, i2, i4);
        setMeasuredDimension(view.getMeasuredWidth(), view.getMeasuredHeight());
    }

    @Override // androidx.appcompat.widget.ActivityChooserModel.ActivityChooserModelClient
    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public void setActivityChooserModel(ActivityChooserModel activityChooserModel) {
        this.f876a.setDataModel(activityChooserModel);
        if (isShowingPopup()) {
            dismissPopup();
            showPopup();
        }
    }

    public void setDefaultActionButtonContentDescription(int i2) {
        this.f893r = i2;
    }

    public void setExpandActivityOverflowButtonContentDescription(int i2) {
        this.f881f.setContentDescription(getContext().getString(i2));
    }

    public void setExpandActivityOverflowButtonDrawable(Drawable drawable) {
        this.f881f.setImageDrawable(drawable);
    }

    public void setInitialActivityCount(int i2) {
        this.f891p = i2;
    }

    public void setOnDismissListener(PopupWindow.OnDismissListener onDismissListener) {
        this.f889n = onDismissListener;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public void setProvider(ActionProvider actionProvider) {
        this.f885j = actionProvider;
    }

    public boolean showPopup() {
        if (isShowingPopup() || !this.f892q) {
            return false;
        }
        this.f890o = false;
        a(this.f891p);
        return true;
    }

    public ActivityChooserView(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public ActivityChooserView(@NonNull Context context, @Nullable AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.f886k = new DataSetObserver() { // from class: androidx.appcompat.widget.ActivityChooserView.1
            @Override // android.database.DataSetObserver
            public void onChanged() {
                super.onChanged();
                ActivityChooserView.this.f876a.notifyDataSetChanged();
            }

            @Override // android.database.DataSetObserver
            public void onInvalidated() {
                super.onInvalidated();
                ActivityChooserView.this.f876a.notifyDataSetInvalidated();
            }
        };
        this.f887l = new ViewTreeObserver.OnGlobalLayoutListener() { // from class: androidx.appcompat.widget.ActivityChooserView.2
            @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
            public void onGlobalLayout() {
                if (ActivityChooserView.this.isShowingPopup()) {
                    if (!ActivityChooserView.this.isShown()) {
                        ActivityChooserView.this.getListPopupWindow().dismiss();
                        return;
                    }
                    ActivityChooserView.this.getListPopupWindow().show();
                    ActionProvider actionProvider = ActivityChooserView.this.f885j;
                    if (actionProvider != null) {
                        actionProvider.subUiVisibilityChanged(true);
                    }
                }
            }
        };
        this.f891p = 4;
        int[] iArr = R.styleable.ActivityChooserView;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, iArr, i2, 0);
        ViewCompat.saveAttributeDataForStyleable(this, context, iArr, attributeSet, obtainStyledAttributes, i2, 0);
        this.f891p = obtainStyledAttributes.getInt(R.styleable.ActivityChooserView_initialActivityCount, 4);
        Drawable drawable = obtainStyledAttributes.getDrawable(R.styleable.ActivityChooserView_expandActivityOverflowButtonDrawable);
        obtainStyledAttributes.recycle();
        LayoutInflater.from(getContext()).inflate(R.layout.abc_activity_chooser_view, (ViewGroup) this, true);
        Callbacks callbacks = new Callbacks();
        this.f877b = callbacks;
        View findViewById = findViewById(R.id.activity_chooser_view_content);
        this.f878c = findViewById;
        this.f879d = findViewById.getBackground();
        FrameLayout frameLayout = (FrameLayout) findViewById(R.id.default_activity_button);
        this.f882g = frameLayout;
        frameLayout.setOnClickListener(callbacks);
        frameLayout.setOnLongClickListener(callbacks);
        int i4 = R.id.image;
        this.f883h = (ImageView) frameLayout.findViewById(i4);
        FrameLayout frameLayout2 = (FrameLayout) findViewById(R.id.expand_activities_button);
        frameLayout2.setOnClickListener(callbacks);
        frameLayout2.setAccessibilityDelegate(new View.AccessibilityDelegate() { // from class: androidx.appcompat.widget.ActivityChooserView.3
            @Override // android.view.View.AccessibilityDelegate
            public void onInitializeAccessibilityNodeInfo(View view, AccessibilityNodeInfo accessibilityNodeInfo) {
                super.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfo);
                AccessibilityNodeInfoCompat.wrap(accessibilityNodeInfo).setCanOpenPopup(true);
            }
        });
        frameLayout2.setOnTouchListener(new ForwardingListener(frameLayout2) { // from class: androidx.appcompat.widget.ActivityChooserView.4
            @Override // androidx.appcompat.widget.ForwardingListener
            public ShowableListMenu getPopup() {
                return ActivityChooserView.this.getListPopupWindow();
            }

            @Override // androidx.appcompat.widget.ForwardingListener
            protected boolean onForwardingStarted() {
                ActivityChooserView.this.showPopup();
                return true;
            }

            @Override // androidx.appcompat.widget.ForwardingListener
            protected boolean onForwardingStopped() {
                ActivityChooserView.this.dismissPopup();
                return true;
            }
        });
        this.f880e = frameLayout2;
        ImageView imageView = (ImageView) frameLayout2.findViewById(i4);
        this.f881f = imageView;
        imageView.setImageDrawable(drawable);
        ActivityChooserViewAdapter activityChooserViewAdapter = new ActivityChooserViewAdapter();
        this.f876a = activityChooserViewAdapter;
        activityChooserViewAdapter.registerDataSetObserver(new DataSetObserver() { // from class: androidx.appcompat.widget.ActivityChooserView.5
            @Override // android.database.DataSetObserver
            public void onChanged() {
                super.onChanged();
                ActivityChooserView.this.b();
            }
        });
        Resources resources = context.getResources();
        this.f884i = Math.max(resources.getDisplayMetrics().widthPixels / 2, resources.getDimensionPixelSize(R.dimen.abc_config_prefDialogWidth));
    }
}
