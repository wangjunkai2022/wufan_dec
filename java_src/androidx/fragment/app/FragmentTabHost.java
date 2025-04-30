package androidx.fragment.app;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.TypedArray;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TabHost;
import android.widget.TabWidget;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.util.ArrayList;
@Deprecated
/* loaded from: classes.dex */
public class FragmentTabHost extends TabHost implements TabHost.OnTabChangeListener {

    /* renamed from: a  reason: collision with root package name */
    private final ArrayList<TabInfo> f5989a;

    /* renamed from: b  reason: collision with root package name */
    private FrameLayout f5990b;

    /* renamed from: c  reason: collision with root package name */
    private Context f5991c;

    /* renamed from: d  reason: collision with root package name */
    private FragmentManager f5992d;

    /* renamed from: e  reason: collision with root package name */
    private int f5993e;

    /* renamed from: f  reason: collision with root package name */
    private TabHost.OnTabChangeListener f5994f;

    /* renamed from: g  reason: collision with root package name */
    private TabInfo f5995g;

    /* renamed from: h  reason: collision with root package name */
    private boolean f5996h;

    /* loaded from: classes.dex */
    static class DummyTabFactory implements TabHost.TabContentFactory {

        /* renamed from: a  reason: collision with root package name */
        private final Context f5997a;

        public DummyTabFactory(Context context) {
            this.f5997a = context;
        }

        @Override // android.widget.TabHost.TabContentFactory
        public View createTabContent(String str) {
            View view = new View(this.f5997a);
            view.setMinimumWidth(0);
            view.setMinimumHeight(0);
            return view;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static class SavedState extends View.BaseSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.Creator<SavedState>() { // from class: androidx.fragment.app.FragmentTabHost.SavedState.1
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
        String f5998a;

        SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        @NonNull
        public String toString() {
            return "FragmentTabHost.SavedState{" + Integer.toHexString(System.identityHashCode(this)) + " curTab=" + this.f5998a + "}";
        }

        @Override // android.view.View.BaseSavedState, android.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i2) {
            super.writeToParcel(parcel, i2);
            parcel.writeString(this.f5998a);
        }

        SavedState(Parcel parcel) {
            super(parcel);
            this.f5998a = parcel.readString();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static final class TabInfo {
        @NonNull

        /* renamed from: a  reason: collision with root package name */
        final String f5999a;
        @NonNull

        /* renamed from: b  reason: collision with root package name */
        final Class<?> f6000b;
        @Nullable

        /* renamed from: c  reason: collision with root package name */
        final Bundle f6001c;

        /* renamed from: d  reason: collision with root package name */
        Fragment f6002d;

        TabInfo(@NonNull String str, @NonNull Class<?> cls, @Nullable Bundle bundle) {
            this.f5999a = str;
            this.f6000b = cls;
            this.f6001c = bundle;
        }
    }

    @Deprecated
    public FragmentTabHost(@NonNull Context context) {
        super(context, null);
        this.f5989a = new ArrayList<>();
        e(context, null);
    }

    @Nullable
    private FragmentTransaction a(@Nullable String str, @Nullable FragmentTransaction fragmentTransaction) {
        Fragment fragment;
        TabInfo d4 = d(str);
        if (this.f5995g != d4) {
            if (fragmentTransaction == null) {
                fragmentTransaction = this.f5992d.beginTransaction();
            }
            TabInfo tabInfo = this.f5995g;
            if (tabInfo != null && (fragment = tabInfo.f6002d) != null) {
                fragmentTransaction.detach(fragment);
            }
            if (d4 != null) {
                Fragment fragment2 = d4.f6002d;
                if (fragment2 == null) {
                    Fragment instantiate = this.f5992d.getFragmentFactory().instantiate(this.f5991c.getClassLoader(), d4.f6000b.getName());
                    d4.f6002d = instantiate;
                    instantiate.setArguments(d4.f6001c);
                    fragmentTransaction.add(this.f5993e, d4.f6002d, d4.f5999a);
                } else {
                    fragmentTransaction.attach(fragment2);
                }
            }
            this.f5995g = d4;
        }
        return fragmentTransaction;
    }

    private void b() {
        if (this.f5990b == null) {
            FrameLayout frameLayout = (FrameLayout) findViewById(this.f5993e);
            this.f5990b = frameLayout;
            if (frameLayout != null) {
                return;
            }
            throw new IllegalStateException("No tab content FrameLayout found for id " + this.f5993e);
        }
    }

    private void c(Context context) {
        if (findViewById(16908307) == null) {
            LinearLayout linearLayout = new LinearLayout(context);
            linearLayout.setOrientation(1);
            addView(linearLayout, new FrameLayout.LayoutParams(-1, -1));
            TabWidget tabWidget = new TabWidget(context);
            tabWidget.setId(16908307);
            tabWidget.setOrientation(0);
            linearLayout.addView(tabWidget, new LinearLayout.LayoutParams(-1, -2, 0.0f));
            FrameLayout frameLayout = new FrameLayout(context);
            frameLayout.setId(16908305);
            linearLayout.addView(frameLayout, new LinearLayout.LayoutParams(0, 0, 0.0f));
            FrameLayout frameLayout2 = new FrameLayout(context);
            this.f5990b = frameLayout2;
            frameLayout2.setId(this.f5993e);
            linearLayout.addView(frameLayout2, new LinearLayout.LayoutParams(-1, 0, 1.0f));
        }
    }

    @Nullable
    private TabInfo d(String str) {
        int size = this.f5989a.size();
        for (int i2 = 0; i2 < size; i2++) {
            TabInfo tabInfo = this.f5989a.get(i2);
            if (tabInfo.f5999a.equals(str)) {
                return tabInfo;
            }
        }
        return null;
    }

    private void e(Context context, AttributeSet attributeSet) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, new int[]{16842995}, 0, 0);
        this.f5993e = obtainStyledAttributes.getResourceId(0, 0);
        obtainStyledAttributes.recycle();
        super.setOnTabChangedListener(this);
    }

    @Deprecated
    public void addTab(@NonNull TabHost.TabSpec tabSpec, @NonNull Class<?> cls, @Nullable Bundle bundle) {
        tabSpec.setContent(new DummyTabFactory(this.f5991c));
        String tag = tabSpec.getTag();
        TabInfo tabInfo = new TabInfo(tag, cls, bundle);
        if (this.f5996h) {
            Fragment findFragmentByTag = this.f5992d.findFragmentByTag(tag);
            tabInfo.f6002d = findFragmentByTag;
            if (findFragmentByTag != null && !findFragmentByTag.isDetached()) {
                FragmentTransaction beginTransaction = this.f5992d.beginTransaction();
                beginTransaction.detach(tabInfo.f6002d);
                beginTransaction.commit();
            }
        }
        this.f5989a.add(tabInfo);
        addTab(tabSpec);
    }

    @Override // android.view.ViewGroup, android.view.View
    @Deprecated
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        String currentTabTag = getCurrentTabTag();
        int size = this.f5989a.size();
        FragmentTransaction fragmentTransaction = null;
        for (int i2 = 0; i2 < size; i2++) {
            TabInfo tabInfo = this.f5989a.get(i2);
            Fragment findFragmentByTag = this.f5992d.findFragmentByTag(tabInfo.f5999a);
            tabInfo.f6002d = findFragmentByTag;
            if (findFragmentByTag != null && !findFragmentByTag.isDetached()) {
                if (tabInfo.f5999a.equals(currentTabTag)) {
                    this.f5995g = tabInfo;
                } else {
                    if (fragmentTransaction == null) {
                        fragmentTransaction = this.f5992d.beginTransaction();
                    }
                    fragmentTransaction.detach(tabInfo.f6002d);
                }
            }
        }
        this.f5996h = true;
        FragmentTransaction a4 = a(currentTabTag, fragmentTransaction);
        if (a4 != null) {
            a4.commit();
            this.f5992d.executePendingTransactions();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    @Deprecated
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.f5996h = false;
    }

    @Override // android.view.View
    @Deprecated
    protected void onRestoreInstanceState(@SuppressLint({"UnknownNullness"}) Parcelable parcelable) {
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        setCurrentTabByTag(savedState.f5998a);
    }

    @Override // android.view.View
    @NonNull
    @Deprecated
    protected Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        savedState.f5998a = getCurrentTabTag();
        return savedState;
    }

    @Override // android.widget.TabHost.OnTabChangeListener
    @Deprecated
    public void onTabChanged(@Nullable String str) {
        FragmentTransaction a4;
        if (this.f5996h && (a4 = a(str, null)) != null) {
            a4.commit();
        }
        TabHost.OnTabChangeListener onTabChangeListener = this.f5994f;
        if (onTabChangeListener != null) {
            onTabChangeListener.onTabChanged(str);
        }
    }

    @Override // android.widget.TabHost
    @Deprecated
    public void setOnTabChangedListener(@Nullable TabHost.OnTabChangeListener onTabChangeListener) {
        this.f5994f = onTabChangeListener;
    }

    @Override // android.widget.TabHost
    @Deprecated
    public void setup() {
        throw new IllegalStateException("Must call setup() that takes a Context and FragmentManager");
    }

    @Deprecated
    public void setup(@NonNull Context context, @NonNull FragmentManager fragmentManager) {
        c(context);
        super.setup();
        this.f5991c = context;
        this.f5992d = fragmentManager;
        b();
    }

    @Deprecated
    public FragmentTabHost(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f5989a = new ArrayList<>();
        e(context, attributeSet);
    }

    @Deprecated
    public void setup(@NonNull Context context, @NonNull FragmentManager fragmentManager, int i2) {
        c(context);
        super.setup();
        this.f5991c = context;
        this.f5992d = fragmentManager;
        this.f5993e = i2;
        b();
        this.f5990b.setId(i2);
        if (getId() == -1) {
            setId(16908306);
        }
    }
}
