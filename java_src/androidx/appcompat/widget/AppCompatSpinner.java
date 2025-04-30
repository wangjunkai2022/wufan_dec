package androidx.appcompat.widget;

import android.content.Context;
import android.content.DialogInterface;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.database.DataSetObserver;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.view.inspector.InspectionCompanion;
import android.view.inspector.PropertyMapper;
import android.view.inspector.PropertyReader;
import android.widget.AdapterView;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.PopupWindow;
import android.widget.Spinner;
import android.widget.SpinnerAdapter;
import androidx.annotation.DrawableRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.annotation.VisibleForTesting;
import androidx.appcompat.R;
import androidx.appcompat.app.AlertDialog;
import androidx.appcompat.content.res.AppCompatResources;
import androidx.core.view.TintableBackgroundView;
import androidx.core.view.ViewCompat;
/* loaded from: classes.dex */
public class AppCompatSpinner extends Spinner implements TintableBackgroundView {

    /* renamed from: i  reason: collision with root package name */
    private static final int[] f1040i = {16843505};

    /* renamed from: j  reason: collision with root package name */
    private static final int f1041j = 15;

    /* renamed from: k  reason: collision with root package name */
    private static final String f1042k = "AppCompatSpinner";

    /* renamed from: l  reason: collision with root package name */
    private static final int f1043l = 0;

    /* renamed from: m  reason: collision with root package name */
    private static final int f1044m = 1;

    /* renamed from: n  reason: collision with root package name */
    private static final int f1045n = -1;

    /* renamed from: a  reason: collision with root package name */
    private final AppCompatBackgroundHelper f1046a;

    /* renamed from: b  reason: collision with root package name */
    private final Context f1047b;

    /* renamed from: c  reason: collision with root package name */
    private ForwardingListener f1048c;

    /* renamed from: d  reason: collision with root package name */
    private SpinnerAdapter f1049d;

    /* renamed from: e  reason: collision with root package name */
    private final boolean f1050e;

    /* renamed from: f  reason: collision with root package name */
    private SpinnerPopup f1051f;

    /* renamed from: g  reason: collision with root package name */
    int f1052g;

    /* renamed from: h  reason: collision with root package name */
    final Rect f1053h;

    @VisibleForTesting
    /* loaded from: classes.dex */
    class DialogPopup implements SpinnerPopup, DialogInterface.OnClickListener {
        @VisibleForTesting

        /* renamed from: a  reason: collision with root package name */
        AlertDialog f1057a;

        /* renamed from: b  reason: collision with root package name */
        private ListAdapter f1058b;

        /* renamed from: c  reason: collision with root package name */
        private CharSequence f1059c;

        DialogPopup() {
        }

        @Override // androidx.appcompat.widget.AppCompatSpinner.SpinnerPopup
        public void dismiss() {
            AlertDialog alertDialog = this.f1057a;
            if (alertDialog != null) {
                alertDialog.dismiss();
                this.f1057a = null;
            }
        }

        @Override // androidx.appcompat.widget.AppCompatSpinner.SpinnerPopup
        public Drawable getBackground() {
            return null;
        }

        @Override // androidx.appcompat.widget.AppCompatSpinner.SpinnerPopup
        public CharSequence getHintText() {
            return this.f1059c;
        }

        @Override // androidx.appcompat.widget.AppCompatSpinner.SpinnerPopup
        public int getHorizontalOffset() {
            return 0;
        }

        @Override // androidx.appcompat.widget.AppCompatSpinner.SpinnerPopup
        public int getHorizontalOriginalOffset() {
            return 0;
        }

        @Override // androidx.appcompat.widget.AppCompatSpinner.SpinnerPopup
        public int getVerticalOffset() {
            return 0;
        }

        @Override // androidx.appcompat.widget.AppCompatSpinner.SpinnerPopup
        public boolean isShowing() {
            AlertDialog alertDialog = this.f1057a;
            if (alertDialog != null) {
                return alertDialog.isShowing();
            }
            return false;
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i2) {
            AppCompatSpinner.this.setSelection(i2);
            if (AppCompatSpinner.this.getOnItemClickListener() != null) {
                AppCompatSpinner.this.performItemClick(null, i2, this.f1058b.getItemId(i2));
            }
            dismiss();
        }

        @Override // androidx.appcompat.widget.AppCompatSpinner.SpinnerPopup
        public void setAdapter(ListAdapter listAdapter) {
            this.f1058b = listAdapter;
        }

        @Override // androidx.appcompat.widget.AppCompatSpinner.SpinnerPopup
        public void setBackgroundDrawable(Drawable drawable) {
        }

        @Override // androidx.appcompat.widget.AppCompatSpinner.SpinnerPopup
        public void setHorizontalOffset(int i2) {
        }

        @Override // androidx.appcompat.widget.AppCompatSpinner.SpinnerPopup
        public void setHorizontalOriginalOffset(int i2) {
        }

        @Override // androidx.appcompat.widget.AppCompatSpinner.SpinnerPopup
        public void setPromptText(CharSequence charSequence) {
            this.f1059c = charSequence;
        }

        @Override // androidx.appcompat.widget.AppCompatSpinner.SpinnerPopup
        public void setVerticalOffset(int i2) {
        }

        @Override // androidx.appcompat.widget.AppCompatSpinner.SpinnerPopup
        public void show(int i2, int i4) {
            if (this.f1058b == null) {
                return;
            }
            AlertDialog.Builder builder = new AlertDialog.Builder(AppCompatSpinner.this.getPopupContext());
            CharSequence charSequence = this.f1059c;
            if (charSequence != null) {
                builder.setTitle(charSequence);
            }
            AlertDialog create = builder.setSingleChoiceItems(this.f1058b, AppCompatSpinner.this.getSelectedItemPosition(), this).create();
            this.f1057a = create;
            ListView listView = create.getListView();
            if (Build.VERSION.SDK_INT >= 17) {
                listView.setTextDirection(i2);
                listView.setTextAlignment(i4);
            }
            this.f1057a.show();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class DropDownAdapter implements ListAdapter, SpinnerAdapter {

        /* renamed from: a  reason: collision with root package name */
        private SpinnerAdapter f1061a;

        /* renamed from: b  reason: collision with root package name */
        private ListAdapter f1062b;

        public DropDownAdapter(@Nullable SpinnerAdapter spinnerAdapter, @Nullable Resources.Theme theme) {
            this.f1061a = spinnerAdapter;
            if (spinnerAdapter instanceof ListAdapter) {
                this.f1062b = (ListAdapter) spinnerAdapter;
            }
            if (theme != null) {
                if (Build.VERSION.SDK_INT >= 23 && (spinnerAdapter instanceof android.widget.ThemedSpinnerAdapter)) {
                    android.widget.ThemedSpinnerAdapter themedSpinnerAdapter = (android.widget.ThemedSpinnerAdapter) spinnerAdapter;
                    if (themedSpinnerAdapter.getDropDownViewTheme() != theme) {
                        themedSpinnerAdapter.setDropDownViewTheme(theme);
                    }
                } else if (spinnerAdapter instanceof ThemedSpinnerAdapter) {
                    ThemedSpinnerAdapter themedSpinnerAdapter2 = (ThemedSpinnerAdapter) spinnerAdapter;
                    if (themedSpinnerAdapter2.getDropDownViewTheme() == null) {
                        themedSpinnerAdapter2.setDropDownViewTheme(theme);
                    }
                }
            }
        }

        @Override // android.widget.ListAdapter
        public boolean areAllItemsEnabled() {
            ListAdapter listAdapter = this.f1062b;
            if (listAdapter != null) {
                return listAdapter.areAllItemsEnabled();
            }
            return true;
        }

        @Override // android.widget.Adapter
        public int getCount() {
            SpinnerAdapter spinnerAdapter = this.f1061a;
            if (spinnerAdapter == null) {
                return 0;
            }
            return spinnerAdapter.getCount();
        }

        @Override // android.widget.SpinnerAdapter
        public View getDropDownView(int i2, View view, ViewGroup viewGroup) {
            SpinnerAdapter spinnerAdapter = this.f1061a;
            if (spinnerAdapter == null) {
                return null;
            }
            return spinnerAdapter.getDropDownView(i2, view, viewGroup);
        }

        @Override // android.widget.Adapter
        public Object getItem(int i2) {
            SpinnerAdapter spinnerAdapter = this.f1061a;
            if (spinnerAdapter == null) {
                return null;
            }
            return spinnerAdapter.getItem(i2);
        }

        @Override // android.widget.Adapter
        public long getItemId(int i2) {
            SpinnerAdapter spinnerAdapter = this.f1061a;
            if (spinnerAdapter == null) {
                return -1L;
            }
            return spinnerAdapter.getItemId(i2);
        }

        @Override // android.widget.Adapter
        public int getItemViewType(int i2) {
            return 0;
        }

        @Override // android.widget.Adapter
        public View getView(int i2, View view, ViewGroup viewGroup) {
            return getDropDownView(i2, view, viewGroup);
        }

        @Override // android.widget.Adapter
        public int getViewTypeCount() {
            return 1;
        }

        @Override // android.widget.Adapter
        public boolean hasStableIds() {
            SpinnerAdapter spinnerAdapter = this.f1061a;
            return spinnerAdapter != null && spinnerAdapter.hasStableIds();
        }

        @Override // android.widget.Adapter
        public boolean isEmpty() {
            return getCount() == 0;
        }

        @Override // android.widget.ListAdapter
        public boolean isEnabled(int i2) {
            ListAdapter listAdapter = this.f1062b;
            if (listAdapter != null) {
                return listAdapter.isEnabled(i2);
            }
            return true;
        }

        @Override // android.widget.Adapter
        public void registerDataSetObserver(DataSetObserver dataSetObserver) {
            SpinnerAdapter spinnerAdapter = this.f1061a;
            if (spinnerAdapter != null) {
                spinnerAdapter.registerDataSetObserver(dataSetObserver);
            }
        }

        @Override // android.widget.Adapter
        public void unregisterDataSetObserver(DataSetObserver dataSetObserver) {
            SpinnerAdapter spinnerAdapter = this.f1061a;
            if (spinnerAdapter != null) {
                spinnerAdapter.unregisterDataSetObserver(dataSetObserver);
            }
        }
    }

    @VisibleForTesting
    /* loaded from: classes.dex */
    class DropdownPopup extends ListPopupWindow implements SpinnerPopup {

        /* renamed from: o0  reason: collision with root package name */
        private CharSequence f1063o0;

        /* renamed from: p0  reason: collision with root package name */
        ListAdapter f1064p0;

        /* renamed from: q0  reason: collision with root package name */
        private final Rect f1065q0;

        /* renamed from: r0  reason: collision with root package name */
        private int f1066r0;

        public DropdownPopup(Context context, AttributeSet attributeSet, int i2) {
            super(context, attributeSet, i2);
            this.f1065q0 = new Rect();
            setAnchorView(AppCompatSpinner.this);
            setModal(true);
            setPromptPosition(0);
            setOnItemClickListener(new AdapterView.OnItemClickListener() { // from class: androidx.appcompat.widget.AppCompatSpinner.DropdownPopup.1
                @Override // android.widget.AdapterView.OnItemClickListener
                public void onItemClick(AdapterView<?> adapterView, View view, int i4, long j4) {
                    AppCompatSpinner.this.setSelection(i4);
                    if (AppCompatSpinner.this.getOnItemClickListener() != null) {
                        DropdownPopup dropdownPopup = DropdownPopup.this;
                        AppCompatSpinner.this.performItemClick(view, i4, dropdownPopup.f1064p0.getItemId(i4));
                    }
                    DropdownPopup.this.dismiss();
                }
            });
        }

        @Override // androidx.appcompat.widget.AppCompatSpinner.SpinnerPopup
        public CharSequence getHintText() {
            return this.f1063o0;
        }

        @Override // androidx.appcompat.widget.AppCompatSpinner.SpinnerPopup
        public int getHorizontalOriginalOffset() {
            return this.f1066r0;
        }

        void i() {
            int horizontalOriginalOffset;
            Drawable background = getBackground();
            int i2 = 0;
            if (background != null) {
                background.getPadding(AppCompatSpinner.this.f1053h);
                i2 = ViewUtils.isLayoutRtl(AppCompatSpinner.this) ? AppCompatSpinner.this.f1053h.right : -AppCompatSpinner.this.f1053h.left;
            } else {
                Rect rect = AppCompatSpinner.this.f1053h;
                rect.right = 0;
                rect.left = 0;
            }
            int paddingLeft = AppCompatSpinner.this.getPaddingLeft();
            int paddingRight = AppCompatSpinner.this.getPaddingRight();
            int width = AppCompatSpinner.this.getWidth();
            AppCompatSpinner appCompatSpinner = AppCompatSpinner.this;
            int i4 = appCompatSpinner.f1052g;
            if (i4 == -2) {
                int a4 = appCompatSpinner.a((SpinnerAdapter) this.f1064p0, getBackground());
                int i5 = AppCompatSpinner.this.getContext().getResources().getDisplayMetrics().widthPixels;
                Rect rect2 = AppCompatSpinner.this.f1053h;
                int i6 = (i5 - rect2.left) - rect2.right;
                if (a4 > i6) {
                    a4 = i6;
                }
                setContentWidth(Math.max(a4, (width - paddingLeft) - paddingRight));
            } else if (i4 == -1) {
                setContentWidth((width - paddingLeft) - paddingRight);
            } else {
                setContentWidth(i4);
            }
            if (ViewUtils.isLayoutRtl(AppCompatSpinner.this)) {
                horizontalOriginalOffset = i2 + (((width - paddingRight) - getWidth()) - getHorizontalOriginalOffset());
            } else {
                horizontalOriginalOffset = i2 + paddingLeft + getHorizontalOriginalOffset();
            }
            setHorizontalOffset(horizontalOriginalOffset);
        }

        boolean j(View view) {
            return ViewCompat.isAttachedToWindow(view) && view.getGlobalVisibleRect(this.f1065q0);
        }

        @Override // androidx.appcompat.widget.ListPopupWindow, androidx.appcompat.widget.AppCompatSpinner.SpinnerPopup
        public void setAdapter(ListAdapter listAdapter) {
            super.setAdapter(listAdapter);
            this.f1064p0 = listAdapter;
        }

        @Override // androidx.appcompat.widget.AppCompatSpinner.SpinnerPopup
        public void setHorizontalOriginalOffset(int i2) {
            this.f1066r0 = i2;
        }

        @Override // androidx.appcompat.widget.AppCompatSpinner.SpinnerPopup
        public void setPromptText(CharSequence charSequence) {
            this.f1063o0 = charSequence;
        }

        @Override // androidx.appcompat.widget.AppCompatSpinner.SpinnerPopup
        public void show(int i2, int i4) {
            ViewTreeObserver viewTreeObserver;
            boolean isShowing = isShowing();
            i();
            setInputMethodMode(2);
            super.show();
            ListView listView = getListView();
            listView.setChoiceMode(1);
            if (Build.VERSION.SDK_INT >= 17) {
                listView.setTextDirection(i2);
                listView.setTextAlignment(i4);
            }
            setSelection(AppCompatSpinner.this.getSelectedItemPosition());
            if (isShowing || (viewTreeObserver = AppCompatSpinner.this.getViewTreeObserver()) == null) {
                return;
            }
            final ViewTreeObserver.OnGlobalLayoutListener onGlobalLayoutListener = new ViewTreeObserver.OnGlobalLayoutListener() { // from class: androidx.appcompat.widget.AppCompatSpinner.DropdownPopup.2
                @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
                public void onGlobalLayout() {
                    DropdownPopup dropdownPopup = DropdownPopup.this;
                    if (!dropdownPopup.j(AppCompatSpinner.this)) {
                        DropdownPopup.this.dismiss();
                        return;
                    }
                    DropdownPopup.this.i();
                    DropdownPopup.super.show();
                }
            };
            viewTreeObserver.addOnGlobalLayoutListener(onGlobalLayoutListener);
            setOnDismissListener(new PopupWindow.OnDismissListener() { // from class: androidx.appcompat.widget.AppCompatSpinner.DropdownPopup.3
                @Override // android.widget.PopupWindow.OnDismissListener
                public void onDismiss() {
                    ViewTreeObserver viewTreeObserver2 = AppCompatSpinner.this.getViewTreeObserver();
                    if (viewTreeObserver2 != null) {
                        viewTreeObserver2.removeGlobalOnLayoutListener(onGlobalLayoutListener);
                    }
                }
            });
        }
    }

    @RequiresApi(29)
    @RestrictTo({RestrictTo.Scope.LIBRARY})
    /* loaded from: classes.dex */
    public final class InspectionCompanion implements android.view.inspector.InspectionCompanion<AppCompatSpinner> {

        /* renamed from: a  reason: collision with root package name */
        private boolean f1073a = false;

        /* renamed from: b  reason: collision with root package name */
        private int f1074b;

        /* renamed from: c  reason: collision with root package name */
        private int f1075c;

        @Override // android.view.inspector.InspectionCompanion
        public void mapProperties(@NonNull PropertyMapper propertyMapper) {
            this.f1074b = propertyMapper.mapObject("backgroundTint", R.attr.backgroundTint);
            this.f1075c = propertyMapper.mapObject("backgroundTintMode", R.attr.backgroundTintMode);
            this.f1073a = true;
        }

        @Override // android.view.inspector.InspectionCompanion
        public void readProperties(@NonNull AppCompatSpinner appCompatSpinner, @NonNull PropertyReader propertyReader) {
            if (this.f1073a) {
                propertyReader.readObject(this.f1074b, appCompatSpinner.getBackgroundTintList());
                propertyReader.readObject(this.f1075c, appCompatSpinner.getBackgroundTintMode());
                return;
            }
            throw new InspectionCompanion.UninitializedPropertyMapException();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static class SavedState extends View.BaseSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.Creator<SavedState>() { // from class: androidx.appcompat.widget.AppCompatSpinner.SavedState.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public SavedState[] newArray(int i2) {
                return new SavedState[i2];
            }
        };

        /* renamed from: a  reason: collision with root package name */
        boolean f1076a;

        SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        @Override // android.view.View.BaseSavedState, android.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i2) {
            super.writeToParcel(parcel, i2);
            parcel.writeByte(this.f1076a ? (byte) 1 : (byte) 0);
        }

        SavedState(Parcel parcel) {
            super(parcel);
            this.f1076a = parcel.readByte() != 0;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @VisibleForTesting
    /* loaded from: classes.dex */
    public interface SpinnerPopup {
        void dismiss();

        Drawable getBackground();

        CharSequence getHintText();

        int getHorizontalOffset();

        int getHorizontalOriginalOffset();

        int getVerticalOffset();

        boolean isShowing();

        void setAdapter(ListAdapter listAdapter);

        void setBackgroundDrawable(Drawable drawable);

        void setHorizontalOffset(int i2);

        void setHorizontalOriginalOffset(int i2);

        void setPromptText(CharSequence charSequence);

        void setVerticalOffset(int i2);

        void show(int i2, int i4);
    }

    public AppCompatSpinner(@NonNull Context context) {
        this(context, (AttributeSet) null);
    }

    int a(SpinnerAdapter spinnerAdapter, Drawable drawable) {
        int i2 = 0;
        if (spinnerAdapter == null) {
            return 0;
        }
        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(getMeasuredWidth(), 0);
        int makeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(getMeasuredHeight(), 0);
        int max = Math.max(0, getSelectedItemPosition());
        int min = Math.min(spinnerAdapter.getCount(), max + 15);
        View view = null;
        int i4 = 0;
        for (int max2 = Math.max(0, max - (15 - (min - max))); max2 < min; max2++) {
            int itemViewType = spinnerAdapter.getItemViewType(max2);
            if (itemViewType != i2) {
                view = null;
                i2 = itemViewType;
            }
            view = spinnerAdapter.getView(max2, view, this);
            if (view.getLayoutParams() == null) {
                view.setLayoutParams(new ViewGroup.LayoutParams(-2, -2));
            }
            view.measure(makeMeasureSpec, makeMeasureSpec2);
            i4 = Math.max(i4, view.getMeasuredWidth());
        }
        if (drawable != null) {
            drawable.getPadding(this.f1053h);
            Rect rect = this.f1053h;
            return i4 + rect.left + rect.right;
        }
        return i4;
    }

    void b() {
        if (Build.VERSION.SDK_INT >= 17) {
            this.f1051f.show(getTextDirection(), getTextAlignment());
        } else {
            this.f1051f.show(-1, -1);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void drawableStateChanged() {
        super.drawableStateChanged();
        AppCompatBackgroundHelper appCompatBackgroundHelper = this.f1046a;
        if (appCompatBackgroundHelper != null) {
            appCompatBackgroundHelper.b();
        }
    }

    @Override // android.widget.Spinner
    public int getDropDownHorizontalOffset() {
        SpinnerPopup spinnerPopup = this.f1051f;
        if (spinnerPopup != null) {
            return spinnerPopup.getHorizontalOffset();
        }
        if (Build.VERSION.SDK_INT >= 16) {
            return super.getDropDownHorizontalOffset();
        }
        return 0;
    }

    @Override // android.widget.Spinner
    public int getDropDownVerticalOffset() {
        SpinnerPopup spinnerPopup = this.f1051f;
        if (spinnerPopup != null) {
            return spinnerPopup.getVerticalOffset();
        }
        if (Build.VERSION.SDK_INT >= 16) {
            return super.getDropDownVerticalOffset();
        }
        return 0;
    }

    @Override // android.widget.Spinner
    public int getDropDownWidth() {
        if (this.f1051f != null) {
            return this.f1052g;
        }
        if (Build.VERSION.SDK_INT >= 16) {
            return super.getDropDownWidth();
        }
        return 0;
    }

    @VisibleForTesting
    final SpinnerPopup getInternalPopup() {
        return this.f1051f;
    }

    @Override // android.widget.Spinner
    public Drawable getPopupBackground() {
        SpinnerPopup spinnerPopup = this.f1051f;
        if (spinnerPopup != null) {
            return spinnerPopup.getBackground();
        }
        if (Build.VERSION.SDK_INT >= 16) {
            return super.getPopupBackground();
        }
        return null;
    }

    @Override // android.widget.Spinner
    public Context getPopupContext() {
        return this.f1047b;
    }

    @Override // android.widget.Spinner
    public CharSequence getPrompt() {
        SpinnerPopup spinnerPopup = this.f1051f;
        return spinnerPopup != null ? spinnerPopup.getHintText() : super.getPrompt();
    }

    @Override // androidx.core.view.TintableBackgroundView
    @Nullable
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public ColorStateList getSupportBackgroundTintList() {
        AppCompatBackgroundHelper appCompatBackgroundHelper = this.f1046a;
        if (appCompatBackgroundHelper != null) {
            return appCompatBackgroundHelper.c();
        }
        return null;
    }

    @Override // androidx.core.view.TintableBackgroundView
    @Nullable
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public PorterDuff.Mode getSupportBackgroundTintMode() {
        AppCompatBackgroundHelper appCompatBackgroundHelper = this.f1046a;
        if (appCompatBackgroundHelper != null) {
            return appCompatBackgroundHelper.d();
        }
        return null;
    }

    @Override // android.widget.Spinner, android.widget.AdapterView, android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        SpinnerPopup spinnerPopup = this.f1051f;
        if (spinnerPopup == null || !spinnerPopup.isShowing()) {
            return;
        }
        this.f1051f.dismiss();
    }

    @Override // android.widget.Spinner, android.widget.AbsSpinner, android.view.View
    protected void onMeasure(int i2, int i4) {
        super.onMeasure(i2, i4);
        if (this.f1051f == null || View.MeasureSpec.getMode(i2) != Integer.MIN_VALUE) {
            return;
        }
        setMeasuredDimension(Math.min(Math.max(getMeasuredWidth(), a(getAdapter(), getBackground())), View.MeasureSpec.getSize(i2)), getMeasuredHeight());
    }

    @Override // android.widget.Spinner, android.widget.AbsSpinner, android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        ViewTreeObserver viewTreeObserver;
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        if (!savedState.f1076a || (viewTreeObserver = getViewTreeObserver()) == null) {
            return;
        }
        viewTreeObserver.addOnGlobalLayoutListener(new ViewTreeObserver.OnGlobalLayoutListener() { // from class: androidx.appcompat.widget.AppCompatSpinner.2
            @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
            public void onGlobalLayout() {
                if (!AppCompatSpinner.this.getInternalPopup().isShowing()) {
                    AppCompatSpinner.this.b();
                }
                ViewTreeObserver viewTreeObserver2 = AppCompatSpinner.this.getViewTreeObserver();
                if (viewTreeObserver2 != null) {
                    if (Build.VERSION.SDK_INT >= 16) {
                        viewTreeObserver2.removeOnGlobalLayoutListener(this);
                    } else {
                        viewTreeObserver2.removeGlobalOnLayoutListener(this);
                    }
                }
            }
        });
    }

    @Override // android.widget.Spinner, android.widget.AbsSpinner, android.view.View
    public Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        SpinnerPopup spinnerPopup = this.f1051f;
        savedState.f1076a = spinnerPopup != null && spinnerPopup.isShowing();
        return savedState;
    }

    @Override // android.widget.Spinner, android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        ForwardingListener forwardingListener = this.f1048c;
        if (forwardingListener == null || !forwardingListener.onTouch(this, motionEvent)) {
            return super.onTouchEvent(motionEvent);
        }
        return true;
    }

    @Override // android.widget.Spinner, android.view.View
    public boolean performClick() {
        SpinnerPopup spinnerPopup = this.f1051f;
        if (spinnerPopup != null) {
            if (spinnerPopup.isShowing()) {
                return true;
            }
            b();
            return true;
        }
        return super.performClick();
    }

    @Override // android.view.View
    public void setBackgroundDrawable(@Nullable Drawable drawable) {
        super.setBackgroundDrawable(drawable);
        AppCompatBackgroundHelper appCompatBackgroundHelper = this.f1046a;
        if (appCompatBackgroundHelper != null) {
            appCompatBackgroundHelper.f(drawable);
        }
    }

    @Override // android.view.View
    public void setBackgroundResource(@DrawableRes int i2) {
        super.setBackgroundResource(i2);
        AppCompatBackgroundHelper appCompatBackgroundHelper = this.f1046a;
        if (appCompatBackgroundHelper != null) {
            appCompatBackgroundHelper.g(i2);
        }
    }

    @Override // android.widget.Spinner
    public void setDropDownHorizontalOffset(int i2) {
        SpinnerPopup spinnerPopup = this.f1051f;
        if (spinnerPopup != null) {
            spinnerPopup.setHorizontalOriginalOffset(i2);
            this.f1051f.setHorizontalOffset(i2);
        } else if (Build.VERSION.SDK_INT >= 16) {
            super.setDropDownHorizontalOffset(i2);
        }
    }

    @Override // android.widget.Spinner
    public void setDropDownVerticalOffset(int i2) {
        SpinnerPopup spinnerPopup = this.f1051f;
        if (spinnerPopup != null) {
            spinnerPopup.setVerticalOffset(i2);
        } else if (Build.VERSION.SDK_INT >= 16) {
            super.setDropDownVerticalOffset(i2);
        }
    }

    @Override // android.widget.Spinner
    public void setDropDownWidth(int i2) {
        if (this.f1051f != null) {
            this.f1052g = i2;
        } else if (Build.VERSION.SDK_INT >= 16) {
            super.setDropDownWidth(i2);
        }
    }

    @Override // android.widget.Spinner
    public void setPopupBackgroundDrawable(Drawable drawable) {
        SpinnerPopup spinnerPopup = this.f1051f;
        if (spinnerPopup != null) {
            spinnerPopup.setBackgroundDrawable(drawable);
        } else if (Build.VERSION.SDK_INT >= 16) {
            super.setPopupBackgroundDrawable(drawable);
        }
    }

    @Override // android.widget.Spinner
    public void setPopupBackgroundResource(@DrawableRes int i2) {
        setPopupBackgroundDrawable(AppCompatResources.getDrawable(getPopupContext(), i2));
    }

    @Override // android.widget.Spinner
    public void setPrompt(CharSequence charSequence) {
        SpinnerPopup spinnerPopup = this.f1051f;
        if (spinnerPopup != null) {
            spinnerPopup.setPromptText(charSequence);
        } else {
            super.setPrompt(charSequence);
        }
    }

    @Override // androidx.core.view.TintableBackgroundView
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public void setSupportBackgroundTintList(@Nullable ColorStateList colorStateList) {
        AppCompatBackgroundHelper appCompatBackgroundHelper = this.f1046a;
        if (appCompatBackgroundHelper != null) {
            appCompatBackgroundHelper.i(colorStateList);
        }
    }

    @Override // androidx.core.view.TintableBackgroundView
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public void setSupportBackgroundTintMode(@Nullable PorterDuff.Mode mode) {
        AppCompatBackgroundHelper appCompatBackgroundHelper = this.f1046a;
        if (appCompatBackgroundHelper != null) {
            appCompatBackgroundHelper.j(mode);
        }
    }

    public AppCompatSpinner(@NonNull Context context, int i2) {
        this(context, null, R.attr.spinnerStyle, i2);
    }

    @Override // android.widget.AdapterView
    public void setAdapter(SpinnerAdapter spinnerAdapter) {
        if (!this.f1050e) {
            this.f1049d = spinnerAdapter;
            return;
        }
        super.setAdapter(spinnerAdapter);
        if (this.f1051f != null) {
            Context context = this.f1047b;
            if (context == null) {
                context = getContext();
            }
            this.f1051f.setAdapter(new DropDownAdapter(spinnerAdapter, context.getTheme()));
        }
    }

    public AppCompatSpinner(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.spinnerStyle);
    }

    public AppCompatSpinner(@NonNull Context context, @Nullable AttributeSet attributeSet, int i2) {
        this(context, attributeSet, i2, -1);
    }

    public AppCompatSpinner(@NonNull Context context, @Nullable AttributeSet attributeSet, int i2, int i4) {
        this(context, attributeSet, i2, i4, null);
    }

    /* JADX WARN: Code restructure failed: missing block: B:23:0x005e, code lost:
        if (r10 == null) goto L6;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public AppCompatSpinner(@androidx.annotation.NonNull android.content.Context r6, @androidx.annotation.Nullable android.util.AttributeSet r7, int r8, int r9, android.content.res.Resources.Theme r10) {
        /*
            r5 = this;
            r5.<init>(r6, r7, r8)
            android.graphics.Rect r0 = new android.graphics.Rect
            r0.<init>()
            r5.f1053h = r0
            android.content.Context r0 = r5.getContext()
            androidx.appcompat.widget.ThemeUtils.checkAppCompatTheme(r5, r0)
            int[] r0 = androidx.appcompat.R.styleable.Spinner
            r1 = 0
            androidx.appcompat.widget.TintTypedArray r0 = androidx.appcompat.widget.TintTypedArray.obtainStyledAttributes(r6, r7, r0, r8, r1)
            androidx.appcompat.widget.AppCompatBackgroundHelper r2 = new androidx.appcompat.widget.AppCompatBackgroundHelper
            r2.<init>(r5)
            r5.f1046a = r2
            if (r10 == 0) goto L29
            androidx.appcompat.view.ContextThemeWrapper r2 = new androidx.appcompat.view.ContextThemeWrapper
            r2.<init>(r6, r10)
            r5.f1047b = r2
            goto L3b
        L29:
            int r10 = androidx.appcompat.R.styleable.Spinner_popupTheme
            int r10 = r0.getResourceId(r10, r1)
            if (r10 == 0) goto L39
            androidx.appcompat.view.ContextThemeWrapper r2 = new androidx.appcompat.view.ContextThemeWrapper
            r2.<init>(r6, r10)
            r5.f1047b = r2
            goto L3b
        L39:
            r5.f1047b = r6
        L3b:
            r10 = -1
            r2 = 0
            if (r9 != r10) goto L61
            int[] r10 = androidx.appcompat.widget.AppCompatSpinner.f1040i     // Catch: java.lang.Throwable -> L56 java.lang.Exception -> L5d
            android.content.res.TypedArray r10 = r6.obtainStyledAttributes(r7, r10, r8, r1)     // Catch: java.lang.Throwable -> L56 java.lang.Exception -> L5d
            boolean r3 = r10.hasValue(r1)     // Catch: java.lang.Throwable -> L53 java.lang.Exception -> L5e
            if (r3 == 0) goto L4f
            int r9 = r10.getInt(r1, r1)     // Catch: java.lang.Throwable -> L53 java.lang.Exception -> L5e
        L4f:
            r10.recycle()
            goto L61
        L53:
            r6 = move-exception
            r2 = r10
            goto L57
        L56:
            r6 = move-exception
        L57:
            if (r2 == 0) goto L5c
            r2.recycle()
        L5c:
            throw r6
        L5d:
            r10 = r2
        L5e:
            if (r10 == 0) goto L61
            goto L4f
        L61:
            r10 = 1
            if (r9 == 0) goto L9e
            if (r9 == r10) goto L67
            goto Lae
        L67:
            androidx.appcompat.widget.AppCompatSpinner$DropdownPopup r9 = new androidx.appcompat.widget.AppCompatSpinner$DropdownPopup
            android.content.Context r3 = r5.f1047b
            r9.<init>(r3, r7, r8)
            android.content.Context r3 = r5.f1047b
            int[] r4 = androidx.appcompat.R.styleable.Spinner
            androidx.appcompat.widget.TintTypedArray r1 = androidx.appcompat.widget.TintTypedArray.obtainStyledAttributes(r3, r7, r4, r8, r1)
            int r3 = androidx.appcompat.R.styleable.Spinner_android_dropDownWidth
            r4 = -2
            int r3 = r1.getLayoutDimension(r3, r4)
            r5.f1052g = r3
            int r3 = androidx.appcompat.R.styleable.Spinner_android_popupBackground
            android.graphics.drawable.Drawable r3 = r1.getDrawable(r3)
            r9.setBackgroundDrawable(r3)
            int r3 = androidx.appcompat.R.styleable.Spinner_android_prompt
            java.lang.String r3 = r0.getString(r3)
            r9.setPromptText(r3)
            r1.recycle()
            r5.f1051f = r9
            androidx.appcompat.widget.AppCompatSpinner$1 r1 = new androidx.appcompat.widget.AppCompatSpinner$1
            r1.<init>(r5)
            r5.f1048c = r1
            goto Lae
        L9e:
            androidx.appcompat.widget.AppCompatSpinner$DialogPopup r9 = new androidx.appcompat.widget.AppCompatSpinner$DialogPopup
            r9.<init>()
            r5.f1051f = r9
            int r1 = androidx.appcompat.R.styleable.Spinner_android_prompt
            java.lang.String r1 = r0.getString(r1)
            r9.setPromptText(r1)
        Lae:
            int r9 = androidx.appcompat.R.styleable.Spinner_android_entries
            java.lang.CharSequence[] r9 = r0.getTextArray(r9)
            if (r9 == 0) goto Lc6
            android.widget.ArrayAdapter r1 = new android.widget.ArrayAdapter
            r3 = 17367048(0x1090008, float:2.5162948E-38)
            r1.<init>(r6, r3, r9)
            int r6 = androidx.appcompat.R.layout.support_simple_spinner_dropdown_item
            r1.setDropDownViewResource(r6)
            r5.setAdapter(r1)
        Lc6:
            r0.recycle()
            r5.f1050e = r10
            android.widget.SpinnerAdapter r6 = r5.f1049d
            if (r6 == 0) goto Ld4
            r5.setAdapter(r6)
            r5.f1049d = r2
        Ld4:
            androidx.appcompat.widget.AppCompatBackgroundHelper r6 = r5.f1046a
            r6.e(r7, r8)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.AppCompatSpinner.<init>(android.content.Context, android.util.AttributeSet, int, int, android.content.res.Resources$Theme):void");
    }
}
