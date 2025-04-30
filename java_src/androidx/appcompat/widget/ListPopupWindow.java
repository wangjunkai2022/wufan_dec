package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.database.DataSetObserver;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Handler;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.AbsListView;
import android.widget.AdapterView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.PopupWindow;
import androidx.annotation.AttrRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.annotation.StyleRes;
import androidx.appcompat.R;
import androidx.appcompat.view.menu.ShowableListMenu;
import androidx.core.view.ViewCompat;
import androidx.core.widget.PopupWindowCompat;
import java.lang.reflect.Method;
/* loaded from: classes.dex */
public class ListPopupWindow implements ShowableListMenu {
    private static final String G = "ListPopupWindow";
    private static final boolean H = false;
    static final int I = 250;
    public static final int INPUT_METHOD_FROM_FOCUSABLE = 0;
    public static final int INPUT_METHOD_NEEDED = 1;
    public static final int INPUT_METHOD_NOT_NEEDED = 2;
    private static Method J = null;
    private static Method K = null;
    public static final int MATCH_PARENT = -1;
    public static final int POSITION_PROMPT_ABOVE = 0;
    public static final int POSITION_PROMPT_BELOW = 1;
    public static final int WRAP_CONTENT = -2;

    /* renamed from: n0  reason: collision with root package name */
    private static Method f1222n0;
    private Runnable A;
    final Handler B;
    private final Rect C;
    private Rect D;
    private boolean E;
    PopupWindow F;

    /* renamed from: a  reason: collision with root package name */
    private Context f1223a;

    /* renamed from: b  reason: collision with root package name */
    private ListAdapter f1224b;

    /* renamed from: c  reason: collision with root package name */
    DropDownListView f1225c;

    /* renamed from: d  reason: collision with root package name */
    private int f1226d;

    /* renamed from: e  reason: collision with root package name */
    private int f1227e;

    /* renamed from: f  reason: collision with root package name */
    private int f1228f;

    /* renamed from: g  reason: collision with root package name */
    private int f1229g;

    /* renamed from: h  reason: collision with root package name */
    private int f1230h;

    /* renamed from: i  reason: collision with root package name */
    private boolean f1231i;

    /* renamed from: j  reason: collision with root package name */
    private boolean f1232j;

    /* renamed from: k  reason: collision with root package name */
    private boolean f1233k;

    /* renamed from: l  reason: collision with root package name */
    private int f1234l;

    /* renamed from: m  reason: collision with root package name */
    private boolean f1235m;

    /* renamed from: n  reason: collision with root package name */
    private boolean f1236n;

    /* renamed from: o  reason: collision with root package name */
    int f1237o;

    /* renamed from: p  reason: collision with root package name */
    private View f1238p;

    /* renamed from: q  reason: collision with root package name */
    private int f1239q;

    /* renamed from: r  reason: collision with root package name */
    private DataSetObserver f1240r;

    /* renamed from: s  reason: collision with root package name */
    private View f1241s;

    /* renamed from: t  reason: collision with root package name */
    private Drawable f1242t;

    /* renamed from: u  reason: collision with root package name */
    private AdapterView.OnItemClickListener f1243u;

    /* renamed from: v  reason: collision with root package name */
    private AdapterView.OnItemSelectedListener f1244v;

    /* renamed from: w  reason: collision with root package name */
    final ResizePopupRunnable f1245w;

    /* renamed from: x  reason: collision with root package name */
    private final PopupTouchInterceptor f1246x;

    /* renamed from: y  reason: collision with root package name */
    private final PopupScrollListener f1247y;

    /* renamed from: z  reason: collision with root package name */
    private final ListSelectorHider f1248z;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public class ListSelectorHider implements Runnable {
        ListSelectorHider() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ListPopupWindow.this.clearListSelection();
        }
    }

    /* loaded from: classes.dex */
    private class PopupDataSetObserver extends DataSetObserver {
        PopupDataSetObserver() {
        }

        @Override // android.database.DataSetObserver
        public void onChanged() {
            if (ListPopupWindow.this.isShowing()) {
                ListPopupWindow.this.show();
            }
        }

        @Override // android.database.DataSetObserver
        public void onInvalidated() {
            ListPopupWindow.this.dismiss();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public class PopupScrollListener implements AbsListView.OnScrollListener {
        PopupScrollListener() {
        }

        @Override // android.widget.AbsListView.OnScrollListener
        public void onScroll(AbsListView absListView, int i2, int i4, int i5) {
        }

        @Override // android.widget.AbsListView.OnScrollListener
        public void onScrollStateChanged(AbsListView absListView, int i2) {
            if (i2 != 1 || ListPopupWindow.this.isInputMethodNotNeeded() || ListPopupWindow.this.F.getContentView() == null) {
                return;
            }
            ListPopupWindow listPopupWindow = ListPopupWindow.this;
            listPopupWindow.B.removeCallbacks(listPopupWindow.f1245w);
            ListPopupWindow.this.f1245w.run();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public class PopupTouchInterceptor implements View.OnTouchListener {
        PopupTouchInterceptor() {
        }

        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View view, MotionEvent motionEvent) {
            PopupWindow popupWindow;
            int action = motionEvent.getAction();
            int x3 = (int) motionEvent.getX();
            int y3 = (int) motionEvent.getY();
            if (action == 0 && (popupWindow = ListPopupWindow.this.F) != null && popupWindow.isShowing() && x3 >= 0 && x3 < ListPopupWindow.this.F.getWidth() && y3 >= 0 && y3 < ListPopupWindow.this.F.getHeight()) {
                ListPopupWindow listPopupWindow = ListPopupWindow.this;
                listPopupWindow.B.postDelayed(listPopupWindow.f1245w, 250L);
                return false;
            } else if (action == 1) {
                ListPopupWindow listPopupWindow2 = ListPopupWindow.this;
                listPopupWindow2.B.removeCallbacks(listPopupWindow2.f1245w);
                return false;
            } else {
                return false;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public class ResizePopupRunnable implements Runnable {
        ResizePopupRunnable() {
        }

        @Override // java.lang.Runnable
        public void run() {
            DropDownListView dropDownListView = ListPopupWindow.this.f1225c;
            if (dropDownListView == null || !ViewCompat.isAttachedToWindow(dropDownListView) || ListPopupWindow.this.f1225c.getCount() <= ListPopupWindow.this.f1225c.getChildCount()) {
                return;
            }
            int childCount = ListPopupWindow.this.f1225c.getChildCount();
            ListPopupWindow listPopupWindow = ListPopupWindow.this;
            if (childCount <= listPopupWindow.f1237o) {
                listPopupWindow.F.setInputMethodMode(2);
                ListPopupWindow.this.show();
            }
        }
    }

    static {
        if (Build.VERSION.SDK_INT <= 28) {
            try {
                J = PopupWindow.class.getDeclaredMethod("setClipToScreenEnabled", Boolean.TYPE);
            } catch (NoSuchMethodException unused) {
            }
            try {
                f1222n0 = PopupWindow.class.getDeclaredMethod("setEpicenterBounds", Rect.class);
            } catch (NoSuchMethodException unused2) {
            }
        }
        if (Build.VERSION.SDK_INT <= 23) {
            try {
                K = PopupWindow.class.getDeclaredMethod("getMaxAvailableHeight", View.class, Integer.TYPE, Boolean.TYPE);
            } catch (NoSuchMethodException unused3) {
            }
        }
    }

    public ListPopupWindow(@NonNull Context context) {
        this(context, null, R.attr.listPopupWindowStyle);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private int a() {
        int i2;
        int i4;
        int makeMeasureSpec;
        int i5;
        if (this.f1225c == null) {
            Context context = this.f1223a;
            this.A = new Runnable() { // from class: androidx.appcompat.widget.ListPopupWindow.2
                @Override // java.lang.Runnable
                public void run() {
                    View anchorView = ListPopupWindow.this.getAnchorView();
                    if (anchorView == null || anchorView.getWindowToken() == null) {
                        return;
                    }
                    ListPopupWindow.this.show();
                }
            };
            DropDownListView b4 = b(context, !this.E);
            this.f1225c = b4;
            Drawable drawable = this.f1242t;
            if (drawable != null) {
                b4.setSelector(drawable);
            }
            this.f1225c.setAdapter(this.f1224b);
            this.f1225c.setOnItemClickListener(this.f1243u);
            this.f1225c.setFocusable(true);
            this.f1225c.setFocusableInTouchMode(true);
            this.f1225c.setOnItemSelectedListener(new AdapterView.OnItemSelectedListener() { // from class: androidx.appcompat.widget.ListPopupWindow.3
                @Override // android.widget.AdapterView.OnItemSelectedListener
                public void onItemSelected(AdapterView<?> adapterView, View view, int i6, long j4) {
                    DropDownListView dropDownListView;
                    if (i6 == -1 || (dropDownListView = ListPopupWindow.this.f1225c) == null) {
                        return;
                    }
                    dropDownListView.setListSelectionHidden(false);
                }

                @Override // android.widget.AdapterView.OnItemSelectedListener
                public void onNothingSelected(AdapterView<?> adapterView) {
                }
            });
            this.f1225c.setOnScrollListener(this.f1247y);
            AdapterView.OnItemSelectedListener onItemSelectedListener = this.f1244v;
            if (onItemSelectedListener != null) {
                this.f1225c.setOnItemSelectedListener(onItemSelectedListener);
            }
            DropDownListView dropDownListView = this.f1225c;
            View view = this.f1238p;
            if (view != null) {
                LinearLayout linearLayout = new LinearLayout(context);
                linearLayout.setOrientation(1);
                LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, 0, 1.0f);
                int i6 = this.f1239q;
                if (i6 == 0) {
                    linearLayout.addView(view);
                    linearLayout.addView(dropDownListView, layoutParams);
                } else if (i6 != 1) {
                    StringBuilder sb = new StringBuilder();
                    sb.append("Invalid hint position ");
                    sb.append(this.f1239q);
                } else {
                    linearLayout.addView(dropDownListView, layoutParams);
                    linearLayout.addView(view);
                }
                int i7 = this.f1227e;
                if (i7 >= 0) {
                    i5 = Integer.MIN_VALUE;
                } else {
                    i7 = 0;
                    i5 = 0;
                }
                view.measure(View.MeasureSpec.makeMeasureSpec(i7, i5), 0);
                LinearLayout.LayoutParams layoutParams2 = (LinearLayout.LayoutParams) view.getLayoutParams();
                i2 = view.getMeasuredHeight() + layoutParams2.topMargin + layoutParams2.bottomMargin;
                dropDownListView = linearLayout;
            } else {
                i2 = 0;
            }
            this.F.setContentView(dropDownListView);
        } else {
            ViewGroup viewGroup = (ViewGroup) this.F.getContentView();
            View view2 = this.f1238p;
            if (view2 != null) {
                LinearLayout.LayoutParams layoutParams3 = (LinearLayout.LayoutParams) view2.getLayoutParams();
                i2 = view2.getMeasuredHeight() + layoutParams3.topMargin + layoutParams3.bottomMargin;
            } else {
                i2 = 0;
            }
        }
        Drawable background = this.F.getBackground();
        if (background != null) {
            background.getPadding(this.C);
            Rect rect = this.C;
            int i8 = rect.top;
            i4 = rect.bottom + i8;
            if (!this.f1231i) {
                this.f1229g = -i8;
            }
        } else {
            this.C.setEmpty();
            i4 = 0;
        }
        int c4 = c(getAnchorView(), this.f1229g, this.F.getInputMethodMode() == 2);
        if (this.f1235m || this.f1226d == -1) {
            return c4 + i4;
        }
        int i9 = this.f1227e;
        if (i9 == -2) {
            int i10 = this.f1223a.getResources().getDisplayMetrics().widthPixels;
            Rect rect2 = this.C;
            makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(i10 - (rect2.left + rect2.right), Integer.MIN_VALUE);
        } else if (i9 != -1) {
            makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(i9, 1073741824);
        } else {
            int i11 = this.f1223a.getResources().getDisplayMetrics().widthPixels;
            Rect rect3 = this.C;
            makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(i11 - (rect3.left + rect3.right), 1073741824);
        }
        int measureHeightOfChildrenCompat = this.f1225c.measureHeightOfChildrenCompat(makeMeasureSpec, 0, -1, c4 - i2, -1);
        if (measureHeightOfChildrenCompat > 0) {
            i2 += i4 + this.f1225c.getPaddingTop() + this.f1225c.getPaddingBottom();
        }
        return measureHeightOfChildrenCompat + i2;
    }

    private int c(View view, int i2, boolean z3) {
        if (Build.VERSION.SDK_INT <= 23) {
            Method method = K;
            if (method != null) {
                try {
                    return ((Integer) method.invoke(this.F, view, Integer.valueOf(i2), Boolean.valueOf(z3))).intValue();
                } catch (Exception unused) {
                }
            }
            return this.F.getMaxAvailableHeight(view, i2);
        }
        return this.F.getMaxAvailableHeight(view, i2, z3);
    }

    private static boolean d(int i2) {
        return i2 == 66 || i2 == 23;
    }

    private void e() {
        View view = this.f1238p;
        if (view != null) {
            ViewParent parent = view.getParent();
            if (parent instanceof ViewGroup) {
                ((ViewGroup) parent).removeView(this.f1238p);
            }
        }
    }

    private void g(boolean z3) {
        if (Build.VERSION.SDK_INT <= 28) {
            Method method = J;
            if (method != null) {
                try {
                    method.invoke(this.F, Boolean.valueOf(z3));
                    return;
                } catch (Exception unused) {
                    return;
                }
            }
            return;
        }
        this.F.setIsClippedToScreen(z3);
    }

    @NonNull
    DropDownListView b(Context context, boolean z3) {
        return new DropDownListView(context, z3);
    }

    public void clearListSelection() {
        DropDownListView dropDownListView = this.f1225c;
        if (dropDownListView != null) {
            dropDownListView.setListSelectionHidden(true);
            dropDownListView.requestLayout();
        }
    }

    public View.OnTouchListener createDragToOpenListener(View view) {
        return new ForwardingListener(view) { // from class: androidx.appcompat.widget.ListPopupWindow.1
            @Override // androidx.appcompat.widget.ForwardingListener
            public ListPopupWindow getPopup() {
                return ListPopupWindow.this;
            }
        };
    }

    @Override // androidx.appcompat.view.menu.ShowableListMenu
    public void dismiss() {
        this.F.dismiss();
        e();
        this.F.setContentView(null);
        this.f1225c = null;
        this.B.removeCallbacks(this.f1245w);
    }

    void f(int i2) {
        this.f1237o = i2;
    }

    @Nullable
    public View getAnchorView() {
        return this.f1241s;
    }

    @StyleRes
    public int getAnimationStyle() {
        return this.F.getAnimationStyle();
    }

    @Nullable
    public Drawable getBackground() {
        return this.F.getBackground();
    }

    @Nullable
    public Rect getEpicenterBounds() {
        if (this.D != null) {
            return new Rect(this.D);
        }
        return null;
    }

    public int getHeight() {
        return this.f1226d;
    }

    public int getHorizontalOffset() {
        return this.f1228f;
    }

    public int getInputMethodMode() {
        return this.F.getInputMethodMode();
    }

    @Override // androidx.appcompat.view.menu.ShowableListMenu
    @Nullable
    public ListView getListView() {
        return this.f1225c;
    }

    public int getPromptPosition() {
        return this.f1239q;
    }

    @Nullable
    public Object getSelectedItem() {
        if (isShowing()) {
            return this.f1225c.getSelectedItem();
        }
        return null;
    }

    public long getSelectedItemId() {
        if (isShowing()) {
            return this.f1225c.getSelectedItemId();
        }
        return Long.MIN_VALUE;
    }

    public int getSelectedItemPosition() {
        if (isShowing()) {
            return this.f1225c.getSelectedItemPosition();
        }
        return -1;
    }

    @Nullable
    public View getSelectedView() {
        if (isShowing()) {
            return this.f1225c.getSelectedView();
        }
        return null;
    }

    public int getSoftInputMode() {
        return this.F.getSoftInputMode();
    }

    public int getVerticalOffset() {
        if (this.f1231i) {
            return this.f1229g;
        }
        return 0;
    }

    public int getWidth() {
        return this.f1227e;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public boolean isDropDownAlwaysVisible() {
        return this.f1235m;
    }

    public boolean isInputMethodNotNeeded() {
        return this.F.getInputMethodMode() == 2;
    }

    public boolean isModal() {
        return this.E;
    }

    @Override // androidx.appcompat.view.menu.ShowableListMenu
    public boolean isShowing() {
        return this.F.isShowing();
    }

    public boolean onKeyDown(int i2, @NonNull KeyEvent keyEvent) {
        int lookForSelectablePosition;
        if (isShowing() && i2 != 62 && (this.f1225c.getSelectedItemPosition() >= 0 || !d(i2))) {
            int selectedItemPosition = this.f1225c.getSelectedItemPosition();
            boolean z3 = !this.F.isAboveAnchor();
            ListAdapter listAdapter = this.f1224b;
            int i4 = Integer.MAX_VALUE;
            int i5 = Integer.MIN_VALUE;
            if (listAdapter != null) {
                boolean areAllItemsEnabled = listAdapter.areAllItemsEnabled();
                int lookForSelectablePosition2 = areAllItemsEnabled ? 0 : this.f1225c.lookForSelectablePosition(0, true);
                if (areAllItemsEnabled) {
                    lookForSelectablePosition = listAdapter.getCount() - 1;
                } else {
                    lookForSelectablePosition = this.f1225c.lookForSelectablePosition(listAdapter.getCount() - 1, false);
                }
                i4 = lookForSelectablePosition2;
                i5 = lookForSelectablePosition;
            }
            if ((z3 && i2 == 19 && selectedItemPosition <= i4) || (!z3 && i2 == 20 && selectedItemPosition >= i5)) {
                clearListSelection();
                this.F.setInputMethodMode(1);
                show();
                return true;
            }
            this.f1225c.setListSelectionHidden(false);
            if (this.f1225c.onKeyDown(i2, keyEvent)) {
                this.F.setInputMethodMode(2);
                this.f1225c.requestFocusFromTouch();
                show();
                if (i2 == 19 || i2 == 20 || i2 == 23 || i2 == 66) {
                    return true;
                }
            } else if (z3 && i2 == 20) {
                if (selectedItemPosition == i5) {
                    return true;
                }
            } else if (!z3 && i2 == 19 && selectedItemPosition == i4) {
                return true;
            }
        }
        return false;
    }

    public boolean onKeyPreIme(int i2, @NonNull KeyEvent keyEvent) {
        if (i2 == 4 && isShowing()) {
            View view = this.f1241s;
            if (keyEvent.getAction() == 0 && keyEvent.getRepeatCount() == 0) {
                KeyEvent.DispatcherState keyDispatcherState = view.getKeyDispatcherState();
                if (keyDispatcherState != null) {
                    keyDispatcherState.startTracking(keyEvent, this);
                }
                return true;
            } else if (keyEvent.getAction() == 1) {
                KeyEvent.DispatcherState keyDispatcherState2 = view.getKeyDispatcherState();
                if (keyDispatcherState2 != null) {
                    keyDispatcherState2.handleUpEvent(keyEvent);
                }
                if (!keyEvent.isTracking() || keyEvent.isCanceled()) {
                    return false;
                }
                dismiss();
                return true;
            } else {
                return false;
            }
        }
        return false;
    }

    public boolean onKeyUp(int i2, @NonNull KeyEvent keyEvent) {
        if (!isShowing() || this.f1225c.getSelectedItemPosition() < 0) {
            return false;
        }
        boolean onKeyUp = this.f1225c.onKeyUp(i2, keyEvent);
        if (onKeyUp && d(i2)) {
            dismiss();
        }
        return onKeyUp;
    }

    public boolean performItemClick(int i2) {
        if (isShowing()) {
            if (this.f1243u != null) {
                DropDownListView dropDownListView = this.f1225c;
                this.f1243u.onItemClick(dropDownListView, dropDownListView.getChildAt(i2 - dropDownListView.getFirstVisiblePosition()), i2, dropDownListView.getAdapter().getItemId(i2));
                return true;
            }
            return true;
        }
        return false;
    }

    public void postShow() {
        this.B.post(this.A);
    }

    public void setAdapter(@Nullable ListAdapter listAdapter) {
        DataSetObserver dataSetObserver = this.f1240r;
        if (dataSetObserver == null) {
            this.f1240r = new PopupDataSetObserver();
        } else {
            ListAdapter listAdapter2 = this.f1224b;
            if (listAdapter2 != null) {
                listAdapter2.unregisterDataSetObserver(dataSetObserver);
            }
        }
        this.f1224b = listAdapter;
        if (listAdapter != null) {
            listAdapter.registerDataSetObserver(this.f1240r);
        }
        DropDownListView dropDownListView = this.f1225c;
        if (dropDownListView != null) {
            dropDownListView.setAdapter(this.f1224b);
        }
    }

    public void setAnchorView(@Nullable View view) {
        this.f1241s = view;
    }

    public void setAnimationStyle(@StyleRes int i2) {
        this.F.setAnimationStyle(i2);
    }

    public void setBackgroundDrawable(@Nullable Drawable drawable) {
        this.F.setBackgroundDrawable(drawable);
    }

    public void setContentWidth(int i2) {
        Drawable background = this.F.getBackground();
        if (background != null) {
            background.getPadding(this.C);
            Rect rect = this.C;
            this.f1227e = rect.left + rect.right + i2;
            return;
        }
        setWidth(i2);
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public void setDropDownAlwaysVisible(boolean z3) {
        this.f1235m = z3;
    }

    public void setDropDownGravity(int i2) {
        this.f1234l = i2;
    }

    public void setEpicenterBounds(@Nullable Rect rect) {
        this.D = rect != null ? new Rect(rect) : null;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public void setForceIgnoreOutsideTouch(boolean z3) {
        this.f1236n = z3;
    }

    public void setHeight(int i2) {
        if (i2 < 0 && -2 != i2 && -1 != i2) {
            throw new IllegalArgumentException("Invalid height. Must be a positive value, MATCH_PARENT, or WRAP_CONTENT.");
        }
        this.f1226d = i2;
    }

    public void setHorizontalOffset(int i2) {
        this.f1228f = i2;
    }

    public void setInputMethodMode(int i2) {
        this.F.setInputMethodMode(i2);
    }

    public void setListSelector(Drawable drawable) {
        this.f1242t = drawable;
    }

    public void setModal(boolean z3) {
        this.E = z3;
        this.F.setFocusable(z3);
    }

    public void setOnDismissListener(@Nullable PopupWindow.OnDismissListener onDismissListener) {
        this.F.setOnDismissListener(onDismissListener);
    }

    public void setOnItemClickListener(@Nullable AdapterView.OnItemClickListener onItemClickListener) {
        this.f1243u = onItemClickListener;
    }

    public void setOnItemSelectedListener(@Nullable AdapterView.OnItemSelectedListener onItemSelectedListener) {
        this.f1244v = onItemSelectedListener;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public void setOverlapAnchor(boolean z3) {
        this.f1233k = true;
        this.f1232j = z3;
    }

    public void setPromptPosition(int i2) {
        this.f1239q = i2;
    }

    public void setPromptView(@Nullable View view) {
        boolean isShowing = isShowing();
        if (isShowing) {
            e();
        }
        this.f1238p = view;
        if (isShowing) {
            show();
        }
    }

    public void setSelection(int i2) {
        DropDownListView dropDownListView = this.f1225c;
        if (!isShowing() || dropDownListView == null) {
            return;
        }
        dropDownListView.setListSelectionHidden(false);
        dropDownListView.setSelection(i2);
        if (dropDownListView.getChoiceMode() != 0) {
            dropDownListView.setItemChecked(i2, true);
        }
    }

    public void setSoftInputMode(int i2) {
        this.F.setSoftInputMode(i2);
    }

    public void setVerticalOffset(int i2) {
        this.f1229g = i2;
        this.f1231i = true;
    }

    public void setWidth(int i2) {
        this.f1227e = i2;
    }

    public void setWindowLayoutType(int i2) {
        this.f1230h = i2;
    }

    @Override // androidx.appcompat.view.menu.ShowableListMenu
    public void show() {
        int a4 = a();
        boolean isInputMethodNotNeeded = isInputMethodNotNeeded();
        PopupWindowCompat.setWindowLayoutType(this.F, this.f1230h);
        boolean z3 = true;
        if (this.F.isShowing()) {
            if (ViewCompat.isAttachedToWindow(getAnchorView())) {
                int i2 = this.f1227e;
                if (i2 == -1) {
                    i2 = -1;
                } else if (i2 == -2) {
                    i2 = getAnchorView().getWidth();
                }
                int i4 = this.f1226d;
                if (i4 == -1) {
                    if (!isInputMethodNotNeeded) {
                        a4 = -1;
                    }
                    if (isInputMethodNotNeeded) {
                        this.F.setWidth(this.f1227e == -1 ? -1 : 0);
                        this.F.setHeight(0);
                    } else {
                        this.F.setWidth(this.f1227e == -1 ? -1 : 0);
                        this.F.setHeight(-1);
                    }
                } else if (i4 != -2) {
                    a4 = i4;
                }
                this.F.setOutsideTouchable((this.f1236n || this.f1235m) ? false : false);
                this.F.update(getAnchorView(), this.f1228f, this.f1229g, i2 < 0 ? -1 : i2, a4 < 0 ? -1 : a4);
                return;
            }
            return;
        }
        int i5 = this.f1227e;
        if (i5 == -1) {
            i5 = -1;
        } else if (i5 == -2) {
            i5 = getAnchorView().getWidth();
        }
        int i6 = this.f1226d;
        if (i6 == -1) {
            a4 = -1;
        } else if (i6 != -2) {
            a4 = i6;
        }
        this.F.setWidth(i5);
        this.F.setHeight(a4);
        g(true);
        this.F.setOutsideTouchable((this.f1236n || this.f1235m) ? false : true);
        this.F.setTouchInterceptor(this.f1246x);
        if (this.f1233k) {
            PopupWindowCompat.setOverlapAnchor(this.F, this.f1232j);
        }
        if (Build.VERSION.SDK_INT <= 28) {
            Method method = f1222n0;
            if (method != null) {
                try {
                    method.invoke(this.F, this.D);
                } catch (Exception unused) {
                }
            }
        } else {
            this.F.setEpicenterBounds(this.D);
        }
        PopupWindowCompat.showAsDropDown(this.F, getAnchorView(), this.f1228f, this.f1229g, this.f1234l);
        this.f1225c.setSelection(-1);
        if (!this.E || this.f1225c.isInTouchMode()) {
            clearListSelection();
        }
        if (this.E) {
            return;
        }
        this.B.post(this.f1248z);
    }

    public ListPopupWindow(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.listPopupWindowStyle);
    }

    public ListPopupWindow(@NonNull Context context, @Nullable AttributeSet attributeSet, @AttrRes int i2) {
        this(context, attributeSet, i2, 0);
    }

    public ListPopupWindow(@NonNull Context context, @Nullable AttributeSet attributeSet, @AttrRes int i2, @StyleRes int i4) {
        this.f1226d = -2;
        this.f1227e = -2;
        this.f1230h = 1002;
        this.f1234l = 0;
        this.f1235m = false;
        this.f1236n = false;
        this.f1237o = Integer.MAX_VALUE;
        this.f1239q = 0;
        this.f1245w = new ResizePopupRunnable();
        this.f1246x = new PopupTouchInterceptor();
        this.f1247y = new PopupScrollListener();
        this.f1248z = new ListSelectorHider();
        this.C = new Rect();
        this.f1223a = context;
        this.B = new Handler(context.getMainLooper());
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.ListPopupWindow, i2, i4);
        this.f1228f = obtainStyledAttributes.getDimensionPixelOffset(R.styleable.ListPopupWindow_android_dropDownHorizontalOffset, 0);
        int dimensionPixelOffset = obtainStyledAttributes.getDimensionPixelOffset(R.styleable.ListPopupWindow_android_dropDownVerticalOffset, 0);
        this.f1229g = dimensionPixelOffset;
        if (dimensionPixelOffset != 0) {
            this.f1231i = true;
        }
        obtainStyledAttributes.recycle();
        AppCompatPopupWindow appCompatPopupWindow = new AppCompatPopupWindow(context, attributeSet, i2, i4);
        this.F = appCompatPopupWindow;
        appCompatPopupWindow.setInputMethodMode(1);
    }
}
