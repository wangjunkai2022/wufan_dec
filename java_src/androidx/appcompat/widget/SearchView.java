package androidx.appcompat.widget;

import android.annotation.SuppressLint;
import android.app.PendingIntent;
import android.app.SearchableInfo;
import android.content.ActivityNotFoundException;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.database.Cursor;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.Editable;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.text.style.ImageSpan;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.TouchDelegate;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.view.inputmethod.InputMethodManager;
import android.view.inspector.InspectionCompanion;
import android.view.inspector.PropertyMapper;
import android.view.inspector.PropertyReader;
import android.widget.AdapterView;
import android.widget.AutoCompleteTextView;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.appcompat.R;
import androidx.appcompat.view.CollapsibleActionView;
import androidx.core.view.ViewCompat;
import androidx.cursoradapter.widget.CursorAdapter;
import androidx.customview.view.AbsSavedState;
import java.lang.reflect.Method;
import java.util.WeakHashMap;
import net.lingala.zip4j.util.e;
/* loaded from: classes.dex */
public class SearchView extends LinearLayoutCompat implements CollapsibleActionView {
    static final boolean V0 = false;
    static final String W0 = "SearchView";
    private static final String X0 = "nm";
    static final PreQAutoCompleteTextViewReflector Y0;
    final ImageView A;
    private boolean A0;
    final ImageView B;
    private CharSequence B0;
    final ImageView C;
    private boolean C0;
    private final View D;
    private boolean D0;
    private UpdatableTouchDelegate E;
    private int E0;
    private Rect F;
    private boolean F0;
    private Rect G;
    private CharSequence G0;
    private int[] H;
    private CharSequence H0;
    private int[] I;
    private boolean I0;
    private final ImageView J;
    private int J0;
    private final Drawable K;
    SearchableInfo K0;
    private Bundle L0;
    private final Runnable M0;
    private Runnable N0;
    private final WeakHashMap<String, Drawable.ConstantState> O0;
    private final View.OnClickListener P0;
    View.OnKeyListener Q0;
    private final TextView.OnEditorActionListener R0;
    private final AdapterView.OnItemClickListener S0;
    private final AdapterView.OnItemSelectedListener T0;
    private TextWatcher U0;

    /* renamed from: n0  reason: collision with root package name */
    private final int f1325n0;

    /* renamed from: o0  reason: collision with root package name */
    private final int f1326o0;

    /* renamed from: p0  reason: collision with root package name */
    private final Intent f1327p0;

    /* renamed from: q0  reason: collision with root package name */
    private final Intent f1328q0;

    /* renamed from: r0  reason: collision with root package name */
    private final CharSequence f1329r0;

    /* renamed from: s0  reason: collision with root package name */
    private OnQueryTextListener f1330s0;

    /* renamed from: t0  reason: collision with root package name */
    private OnCloseListener f1331t0;

    /* renamed from: u0  reason: collision with root package name */
    View.OnFocusChangeListener f1332u0;

    /* renamed from: v  reason: collision with root package name */
    final SearchAutoComplete f1333v;

    /* renamed from: v0  reason: collision with root package name */
    private OnSuggestionListener f1334v0;

    /* renamed from: w  reason: collision with root package name */
    private final View f1335w;

    /* renamed from: w0  reason: collision with root package name */
    private View.OnClickListener f1336w0;

    /* renamed from: x  reason: collision with root package name */
    private final View f1337x;

    /* renamed from: x0  reason: collision with root package name */
    private boolean f1338x0;

    /* renamed from: y  reason: collision with root package name */
    private final View f1339y;

    /* renamed from: y0  reason: collision with root package name */
    private boolean f1340y0;

    /* renamed from: z  reason: collision with root package name */
    final ImageView f1341z;

    /* renamed from: z0  reason: collision with root package name */
    CursorAdapter f1342z0;

    @RequiresApi(29)
    @RestrictTo({RestrictTo.Scope.LIBRARY})
    /* loaded from: classes.dex */
    public final class InspectionCompanion implements android.view.inspector.InspectionCompanion<SearchView> {

        /* renamed from: a  reason: collision with root package name */
        private boolean f1353a = false;

        /* renamed from: b  reason: collision with root package name */
        private int f1354b;

        /* renamed from: c  reason: collision with root package name */
        private int f1355c;

        /* renamed from: d  reason: collision with root package name */
        private int f1356d;

        /* renamed from: e  reason: collision with root package name */
        private int f1357e;

        @Override // android.view.inspector.InspectionCompanion
        public void mapProperties(@NonNull PropertyMapper propertyMapper) {
            this.f1354b = propertyMapper.mapInt("imeOptions", 16843364);
            this.f1355c = propertyMapper.mapInt("maxWidth", 16843039);
            this.f1356d = propertyMapper.mapBoolean("iconifiedByDefault", R.attr.iconifiedByDefault);
            this.f1357e = propertyMapper.mapObject("queryHint", R.attr.queryHint);
            this.f1353a = true;
        }

        @Override // android.view.inspector.InspectionCompanion
        public void readProperties(@NonNull SearchView searchView, @NonNull PropertyReader propertyReader) {
            if (this.f1353a) {
                propertyReader.readInt(this.f1354b, searchView.getImeOptions());
                propertyReader.readInt(this.f1355c, searchView.getMaxWidth());
                propertyReader.readBoolean(this.f1356d, searchView.isIconfiedByDefault());
                propertyReader.readObject(this.f1357e, searchView.getQueryHint());
                return;
            }
            throw new InspectionCompanion.UninitializedPropertyMapException();
        }
    }

    /* loaded from: classes.dex */
    public interface OnCloseListener {
        boolean onClose();
    }

    /* loaded from: classes.dex */
    public interface OnQueryTextListener {
        boolean onQueryTextChange(String str);

        boolean onQueryTextSubmit(String str);
    }

    /* loaded from: classes.dex */
    public interface OnSuggestionListener {
        boolean onSuggestionClick(int i2);

        boolean onSuggestionSelect(int i2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class PreQAutoCompleteTextViewReflector {

        /* renamed from: a  reason: collision with root package name */
        private Method f1358a;

        /* renamed from: b  reason: collision with root package name */
        private Method f1359b;

        /* renamed from: c  reason: collision with root package name */
        private Method f1360c;

        @SuppressLint({"DiscouragedPrivateApi", "SoonBlockedPrivateApi"})
        PreQAutoCompleteTextViewReflector() {
            this.f1358a = null;
            this.f1359b = null;
            this.f1360c = null;
            d();
            try {
                Method declaredMethod = AutoCompleteTextView.class.getDeclaredMethod("doBeforeTextChanged", new Class[0]);
                this.f1358a = declaredMethod;
                declaredMethod.setAccessible(true);
            } catch (NoSuchMethodException unused) {
            }
            try {
                Method declaredMethod2 = AutoCompleteTextView.class.getDeclaredMethod("doAfterTextChanged", new Class[0]);
                this.f1359b = declaredMethod2;
                declaredMethod2.setAccessible(true);
            } catch (NoSuchMethodException unused2) {
            }
            try {
                Method method = AutoCompleteTextView.class.getMethod("ensureImeVisible", Boolean.TYPE);
                this.f1360c = method;
                method.setAccessible(true);
            } catch (NoSuchMethodException unused3) {
            }
        }

        private static void d() {
            if (Build.VERSION.SDK_INT >= 29) {
                throw new UnsupportedClassVersionError("This function can only be used for API Level < 29.");
            }
        }

        void a(AutoCompleteTextView autoCompleteTextView) {
            d();
            Method method = this.f1359b;
            if (method != null) {
                try {
                    method.invoke(autoCompleteTextView, new Object[0]);
                } catch (Exception unused) {
                }
            }
        }

        void b(AutoCompleteTextView autoCompleteTextView) {
            d();
            Method method = this.f1358a;
            if (method != null) {
                try {
                    method.invoke(autoCompleteTextView, new Object[0]);
                } catch (Exception unused) {
                }
            }
        }

        void c(AutoCompleteTextView autoCompleteTextView) {
            d();
            Method method = this.f1360c;
            if (method != null) {
                try {
                    method.invoke(autoCompleteTextView, Boolean.TRUE);
                } catch (Exception unused) {
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static class SavedState extends AbsSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.ClassLoaderCreator<SavedState>() { // from class: androidx.appcompat.widget.SearchView.SavedState.1
            @Override // android.os.Parcelable.Creator
            public SavedState[] newArray(int i2) {
                return new SavedState[i2];
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.ClassLoaderCreator
            public SavedState createFromParcel(Parcel parcel, ClassLoader classLoader) {
                return new SavedState(parcel, classLoader);
            }

            @Override // android.os.Parcelable.Creator
            public SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel, null);
            }
        };

        /* renamed from: a  reason: collision with root package name */
        boolean f1361a;

        SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        public String toString() {
            return "SearchView.SavedState{" + Integer.toHexString(System.identityHashCode(this)) + " isIconified=" + this.f1361a + "}";
        }

        @Override // androidx.customview.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i2) {
            super.writeToParcel(parcel, i2);
            parcel.writeValue(Boolean.valueOf(this.f1361a));
        }

        public SavedState(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            this.f1361a = ((Boolean) parcel.readValue(null)).booleanValue();
        }
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    /* loaded from: classes.dex */
    public static class SearchAutoComplete extends AppCompatAutoCompleteTextView {

        /* renamed from: e  reason: collision with root package name */
        private int f1362e;

        /* renamed from: f  reason: collision with root package name */
        private SearchView f1363f;

        /* renamed from: g  reason: collision with root package name */
        private boolean f1364g;

        /* renamed from: h  reason: collision with root package name */
        final Runnable f1365h;

        public SearchAutoComplete(Context context) {
            this(context, null);
        }

        private int getSearchViewTextMinWidthDp() {
            Configuration configuration = getResources().getConfiguration();
            int i2 = configuration.screenWidthDp;
            int i4 = configuration.screenHeightDp;
            if (i2 < 960 || i4 < 720 || configuration.orientation != 2) {
                if (i2 < 600) {
                    return (i2 < 640 || i4 < 480) ? 160 : 192;
                }
                return 192;
            }
            return 256;
        }

        void b() {
            if (Build.VERSION.SDK_INT >= 29) {
                setInputMethodMode(1);
                if (enoughToFilter()) {
                    showDropDown();
                    return;
                }
                return;
            }
            SearchView.Y0.c(this);
        }

        boolean c() {
            return TextUtils.getTrimmedLength(getText()) == 0;
        }

        void d() {
            if (this.f1364g) {
                ((InputMethodManager) getContext().getSystemService("input_method")).showSoftInput(this, 0);
                this.f1364g = false;
            }
        }

        @Override // android.widget.AutoCompleteTextView
        public boolean enoughToFilter() {
            return this.f1362e <= 0 || super.enoughToFilter();
        }

        @Override // androidx.appcompat.widget.AppCompatAutoCompleteTextView, android.widget.TextView, android.view.View
        public InputConnection onCreateInputConnection(EditorInfo editorInfo) {
            InputConnection onCreateInputConnection = super.onCreateInputConnection(editorInfo);
            if (this.f1364g) {
                removeCallbacks(this.f1365h);
                post(this.f1365h);
            }
            return onCreateInputConnection;
        }

        @Override // android.view.View
        protected void onFinishInflate() {
            super.onFinishInflate();
            setMinWidth((int) TypedValue.applyDimension(1, getSearchViewTextMinWidthDp(), getResources().getDisplayMetrics()));
        }

        @Override // android.widget.AutoCompleteTextView, android.widget.TextView, android.view.View
        protected void onFocusChanged(boolean z3, int i2, Rect rect) {
            super.onFocusChanged(z3, i2, rect);
            this.f1363f.R();
        }

        @Override // android.widget.AutoCompleteTextView, android.widget.TextView, android.view.View
        public boolean onKeyPreIme(int i2, KeyEvent keyEvent) {
            if (i2 == 4) {
                if (keyEvent.getAction() == 0 && keyEvent.getRepeatCount() == 0) {
                    KeyEvent.DispatcherState keyDispatcherState = getKeyDispatcherState();
                    if (keyDispatcherState != null) {
                        keyDispatcherState.startTracking(keyEvent, this);
                    }
                    return true;
                } else if (keyEvent.getAction() == 1) {
                    KeyEvent.DispatcherState keyDispatcherState2 = getKeyDispatcherState();
                    if (keyDispatcherState2 != null) {
                        keyDispatcherState2.handleUpEvent(keyEvent);
                    }
                    if (keyEvent.isTracking() && !keyEvent.isCanceled()) {
                        this.f1363f.clearFocus();
                        setImeVisibility(false);
                        return true;
                    }
                }
            }
            return super.onKeyPreIme(i2, keyEvent);
        }

        @Override // android.widget.AutoCompleteTextView, android.widget.TextView, android.view.View
        public void onWindowFocusChanged(boolean z3) {
            super.onWindowFocusChanged(z3);
            if (z3 && this.f1363f.hasFocus() && getVisibility() == 0) {
                this.f1364g = true;
                if (SearchView.E(getContext())) {
                    b();
                }
            }
        }

        @Override // android.widget.AutoCompleteTextView
        public void performCompletion() {
        }

        @Override // android.widget.AutoCompleteTextView
        protected void replaceText(CharSequence charSequence) {
        }

        void setImeVisibility(boolean z3) {
            InputMethodManager inputMethodManager = (InputMethodManager) getContext().getSystemService("input_method");
            if (!z3) {
                this.f1364g = false;
                removeCallbacks(this.f1365h);
                inputMethodManager.hideSoftInputFromWindow(getWindowToken(), 0);
            } else if (inputMethodManager.isActive(this)) {
                this.f1364g = false;
                removeCallbacks(this.f1365h);
                inputMethodManager.showSoftInput(this, 0);
            } else {
                this.f1364g = true;
            }
        }

        void setSearchView(SearchView searchView) {
            this.f1363f = searchView;
        }

        @Override // android.widget.AutoCompleteTextView
        public void setThreshold(int i2) {
            super.setThreshold(i2);
            this.f1362e = i2;
        }

        public SearchAutoComplete(Context context, AttributeSet attributeSet) {
            this(context, attributeSet, R.attr.autoCompleteTextViewStyle);
        }

        public SearchAutoComplete(Context context, AttributeSet attributeSet, int i2) {
            super(context, attributeSet, i2);
            this.f1365h = new Runnable() { // from class: androidx.appcompat.widget.SearchView.SearchAutoComplete.1
                @Override // java.lang.Runnable
                public void run() {
                    SearchAutoComplete.this.d();
                }
            };
            this.f1362e = getThreshold();
        }
    }

    /* loaded from: classes.dex */
    private static class UpdatableTouchDelegate extends TouchDelegate {

        /* renamed from: a  reason: collision with root package name */
        private final View f1367a;

        /* renamed from: b  reason: collision with root package name */
        private final Rect f1368b;

        /* renamed from: c  reason: collision with root package name */
        private final Rect f1369c;

        /* renamed from: d  reason: collision with root package name */
        private final Rect f1370d;

        /* renamed from: e  reason: collision with root package name */
        private final int f1371e;

        /* renamed from: f  reason: collision with root package name */
        private boolean f1372f;

        public UpdatableTouchDelegate(Rect rect, Rect rect2, View view) {
            super(rect, view);
            this.f1371e = ViewConfiguration.get(view.getContext()).getScaledTouchSlop();
            this.f1368b = new Rect();
            this.f1370d = new Rect();
            this.f1369c = new Rect();
            setBounds(rect, rect2);
            this.f1367a = view;
        }

        @Override // android.view.TouchDelegate
        public boolean onTouchEvent(MotionEvent motionEvent) {
            boolean z3;
            boolean z4;
            int x3 = (int) motionEvent.getX();
            int y3 = (int) motionEvent.getY();
            int action = motionEvent.getAction();
            boolean z5 = true;
            if (action != 0) {
                if (action == 1 || action == 2) {
                    z4 = this.f1372f;
                    if (z4 && !this.f1370d.contains(x3, y3)) {
                        z5 = z4;
                        z3 = false;
                    }
                } else {
                    if (action == 3) {
                        z4 = this.f1372f;
                        this.f1372f = false;
                    }
                    z3 = true;
                    z5 = false;
                }
                z5 = z4;
                z3 = true;
            } else {
                if (this.f1368b.contains(x3, y3)) {
                    this.f1372f = true;
                    z3 = true;
                }
                z3 = true;
                z5 = false;
            }
            if (z5) {
                if (z3 && !this.f1369c.contains(x3, y3)) {
                    motionEvent.setLocation(this.f1367a.getWidth() / 2, this.f1367a.getHeight() / 2);
                } else {
                    Rect rect = this.f1369c;
                    motionEvent.setLocation(x3 - rect.left, y3 - rect.top);
                }
                return this.f1367a.dispatchTouchEvent(motionEvent);
            }
            return false;
        }

        public void setBounds(Rect rect, Rect rect2) {
            this.f1368b.set(rect);
            this.f1370d.set(rect);
            Rect rect3 = this.f1370d;
            int i2 = this.f1371e;
            rect3.inset(-i2, -i2);
            this.f1369c.set(rect2);
        }
    }

    static {
        Y0 = Build.VERSION.SDK_INT < 29 ? new PreQAutoCompleteTextViewReflector() : null;
    }

    public SearchView(@NonNull Context context) {
        this(context, null);
    }

    private void B(View view, Rect rect) {
        view.getLocationInWindow(this.H);
        getLocationInWindow(this.I);
        int[] iArr = this.H;
        int i2 = iArr[1];
        int[] iArr2 = this.I;
        int i4 = i2 - iArr2[1];
        int i5 = iArr[0] - iArr2[0];
        rect.set(i5, i4, view.getWidth() + i5, view.getHeight() + i4);
    }

    private CharSequence C(CharSequence charSequence) {
        if (!this.f1338x0 || this.K == null) {
            return charSequence;
        }
        double textSize = this.f1333v.getTextSize();
        Double.isNaN(textSize);
        int i2 = (int) (textSize * 1.25d);
        this.K.setBounds(0, 0, i2, i2);
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder("   ");
        spannableStringBuilder.setSpan(new ImageSpan(this.K), 1, 2, 33);
        spannableStringBuilder.append(charSequence);
        return spannableStringBuilder;
    }

    private boolean D() {
        SearchableInfo searchableInfo = this.K0;
        if (searchableInfo == null || !searchableInfo.getVoiceSearchEnabled()) {
            return false;
        }
        Intent intent = null;
        if (this.K0.getVoiceSearchLaunchWebSearch()) {
            intent = this.f1327p0;
        } else if (this.K0.getVoiceSearchLaunchRecognizer()) {
            intent = this.f1328q0;
        }
        return (intent == null || getContext().getPackageManager().resolveActivity(intent, 65536) == null) ? false : true;
    }

    static boolean E(Context context) {
        return context.getResources().getConfiguration().orientation == 2;
    }

    private boolean F() {
        return (this.A0 || this.F0) && !isIconified();
    }

    private void G(Intent intent) {
        if (intent == null) {
            return;
        }
        try {
            getContext().startActivity(intent);
        } catch (RuntimeException unused) {
            StringBuilder sb = new StringBuilder();
            sb.append("Failed launch activity: ");
            sb.append(intent);
        }
    }

    private boolean I(int i2, int i4, String str) {
        Cursor cursor = this.f1342z0.getCursor();
        if (cursor == null || !cursor.moveToPosition(i2)) {
            return false;
        }
        G(w(cursor, i4, str));
        return true;
    }

    private void T() {
        post(this.M0);
    }

    private void U(int i2) {
        Editable text = this.f1333v.getText();
        Cursor cursor = this.f1342z0.getCursor();
        if (cursor == null) {
            return;
        }
        if (cursor.moveToPosition(i2)) {
            CharSequence convertToString = this.f1342z0.convertToString(cursor);
            if (convertToString != null) {
                setQuery(convertToString);
                return;
            } else {
                setQuery(text);
                return;
            }
        }
        setQuery(text);
    }

    private void V() {
        boolean z3 = true;
        boolean z4 = !TextUtils.isEmpty(this.f1333v.getText());
        if (!z4 && (!this.f1338x0 || this.I0)) {
            z3 = false;
        }
        this.B.setVisibility(z3 ? 0 : 8);
        Drawable drawable = this.B.getDrawable();
        if (drawable != null) {
            drawable.setState(z4 ? ViewGroup.ENABLED_STATE_SET : ViewGroup.EMPTY_STATE_SET);
        }
    }

    private void X() {
        CharSequence queryHint = getQueryHint();
        SearchAutoComplete searchAutoComplete = this.f1333v;
        if (queryHint == null) {
            queryHint = "";
        }
        searchAutoComplete.setHint(C(queryHint));
    }

    private void Y() {
        this.f1333v.setThreshold(this.K0.getSuggestThreshold());
        this.f1333v.setImeOptions(this.K0.getImeOptions());
        int inputType = this.K0.getInputType();
        if ((inputType & 15) == 1) {
            inputType &= -65537;
            if (this.K0.getSuggestAuthority() != null) {
                inputType = inputType | 65536 | 524288;
            }
        }
        this.f1333v.setInputType(inputType);
        CursorAdapter cursorAdapter = this.f1342z0;
        if (cursorAdapter != null) {
            cursorAdapter.changeCursor(null);
        }
        if (this.K0.getSuggestAuthority() != null) {
            SuggestionsAdapter suggestionsAdapter = new SuggestionsAdapter(getContext(), this, this.K0, this.O0);
            this.f1342z0 = suggestionsAdapter;
            this.f1333v.setAdapter(suggestionsAdapter);
            ((SuggestionsAdapter) this.f1342z0).setQueryRefinement(this.C0 ? 2 : 1);
        }
    }

    private void Z() {
        this.f1339y.setVisibility((F() && (this.A.getVisibility() == 0 || this.C.getVisibility() == 0)) ? 0 : 8);
    }

    private void a0(boolean z3) {
        this.A.setVisibility((this.A0 && F() && hasFocus() && (z3 || !this.F0)) ? 0 : 8);
    }

    private void b0(boolean z3) {
        this.f1340y0 = z3;
        int i2 = 0;
        int i4 = z3 ? 0 : 8;
        boolean z4 = !TextUtils.isEmpty(this.f1333v.getText());
        this.f1341z.setVisibility(i4);
        a0(z4);
        this.f1335w.setVisibility(z3 ? 8 : 0);
        this.J.setVisibility((this.J.getDrawable() == null || this.f1338x0) ? 8 : 8);
        V();
        c0(!z4);
        Z();
    }

    private void c0(boolean z3) {
        int i2 = 8;
        if (this.F0 && !isIconified() && z3) {
            this.A.setVisibility(8);
            i2 = 0;
        }
        this.C.setVisibility(i2);
    }

    private int getPreferredHeight() {
        return getContext().getResources().getDimensionPixelSize(R.dimen.abc_search_view_preferred_height);
    }

    private int getPreferredWidth() {
        return getContext().getResources().getDimensionPixelSize(R.dimen.abc_search_view_preferred_width);
    }

    private Intent v(String str, Uri uri, String str2, String str3, int i2, String str4) {
        Intent intent = new Intent(str);
        intent.addFlags(268435456);
        if (uri != null) {
            intent.setData(uri);
        }
        intent.putExtra("user_query", this.H0);
        if (str3 != null) {
            intent.putExtra("query", str3);
        }
        if (str2 != null) {
            intent.putExtra("intent_extra_data_key", str2);
        }
        Bundle bundle = this.L0;
        if (bundle != null) {
            intent.putExtra("app_data", bundle);
        }
        if (i2 != 0) {
            intent.putExtra("action_key", i2);
            intent.putExtra("action_msg", str4);
        }
        intent.setComponent(this.K0.getSearchActivity());
        return intent;
    }

    private Intent w(Cursor cursor, int i2, String str) {
        int i4;
        String columnString;
        try {
            try {
                String columnString2 = SuggestionsAdapter.getColumnString(cursor, "suggest_intent_action");
                if (columnString2 == null) {
                    columnString2 = this.K0.getSuggestIntentAction();
                }
                if (columnString2 == null) {
                    columnString2 = "android.intent.action.SEARCH";
                }
                String str2 = columnString2;
                String columnString3 = SuggestionsAdapter.getColumnString(cursor, "suggest_intent_data");
                if (columnString3 == null) {
                    columnString3 = this.K0.getSuggestIntentData();
                }
                if (columnString3 != null && (columnString = SuggestionsAdapter.getColumnString(cursor, "suggest_intent_data_id")) != null) {
                    columnString3 = columnString3 + e.F0 + Uri.encode(columnString);
                }
                return v(str2, columnString3 == null ? null : Uri.parse(columnString3), SuggestionsAdapter.getColumnString(cursor, "suggest_intent_extra_data"), SuggestionsAdapter.getColumnString(cursor, "suggest_intent_query"), i2, str);
            } catch (RuntimeException unused) {
                i4 = -1;
                StringBuilder sb = new StringBuilder();
                sb.append("Search suggestions cursor at row ");
                sb.append(i4);
                sb.append(" returned exception.");
                return null;
            }
        } catch (RuntimeException unused2) {
            i4 = cursor.getPosition();
            StringBuilder sb2 = new StringBuilder();
            sb2.append("Search suggestions cursor at row ");
            sb2.append(i4);
            sb2.append(" returned exception.");
            return null;
        }
    }

    private Intent x(Intent intent, SearchableInfo searchableInfo) {
        ComponentName searchActivity = searchableInfo.getSearchActivity();
        Intent intent2 = new Intent("android.intent.action.SEARCH");
        intent2.setComponent(searchActivity);
        PendingIntent activity = PendingIntent.getActivity(getContext(), 0, intent2, 1107296256);
        Bundle bundle = new Bundle();
        Bundle bundle2 = this.L0;
        if (bundle2 != null) {
            bundle.putParcelable("app_data", bundle2);
        }
        Intent intent3 = new Intent(intent);
        Resources resources = getResources();
        String string = searchableInfo.getVoiceLanguageModeId() != 0 ? resources.getString(searchableInfo.getVoiceLanguageModeId()) : "free_form";
        String string2 = searchableInfo.getVoicePromptTextId() != 0 ? resources.getString(searchableInfo.getVoicePromptTextId()) : null;
        String string3 = searchableInfo.getVoiceLanguageId() != 0 ? resources.getString(searchableInfo.getVoiceLanguageId()) : null;
        int voiceMaxResults = searchableInfo.getVoiceMaxResults() != 0 ? searchableInfo.getVoiceMaxResults() : 1;
        intent3.putExtra("android.speech.extra.LANGUAGE_MODEL", string);
        intent3.putExtra("android.speech.extra.PROMPT", string2);
        intent3.putExtra("android.speech.extra.LANGUAGE", string3);
        intent3.putExtra("android.speech.extra.MAX_RESULTS", voiceMaxResults);
        intent3.putExtra("calling_package", searchActivity != null ? searchActivity.flattenToShortString() : null);
        intent3.putExtra("android.speech.extra.RESULTS_PENDINGINTENT", activity);
        intent3.putExtra("android.speech.extra.RESULTS_PENDINGINTENT_BUNDLE", bundle);
        return intent3;
    }

    private Intent y(Intent intent, SearchableInfo searchableInfo) {
        Intent intent2 = new Intent(intent);
        ComponentName searchActivity = searchableInfo.getSearchActivity();
        intent2.putExtra("calling_package", searchActivity == null ? null : searchActivity.flattenToShortString());
        return intent2;
    }

    private void z() {
        this.f1333v.dismissDropDown();
    }

    void A() {
        if (Build.VERSION.SDK_INT >= 29) {
            this.f1333v.refreshAutoCompleteResults();
            return;
        }
        PreQAutoCompleteTextViewReflector preQAutoCompleteTextViewReflector = Y0;
        preQAutoCompleteTextViewReflector.b(this.f1333v);
        preQAutoCompleteTextViewReflector.a(this.f1333v);
    }

    void H(int i2, String str, String str2) {
        getContext().startActivity(v("android.intent.action.SEARCH", null, null, str2, i2, str));
    }

    void J() {
        if (TextUtils.isEmpty(this.f1333v.getText())) {
            if (this.f1338x0) {
                OnCloseListener onCloseListener = this.f1331t0;
                if (onCloseListener == null || !onCloseListener.onClose()) {
                    clearFocus();
                    b0(true);
                    return;
                }
                return;
            }
            return;
        }
        this.f1333v.setText("");
        this.f1333v.requestFocus();
        this.f1333v.setImeVisibility(true);
    }

    boolean K(int i2, int i4, String str) {
        OnSuggestionListener onSuggestionListener = this.f1334v0;
        if (onSuggestionListener == null || !onSuggestionListener.onSuggestionClick(i2)) {
            I(i2, 0, null);
            this.f1333v.setImeVisibility(false);
            z();
            return true;
        }
        return false;
    }

    boolean L(int i2) {
        OnSuggestionListener onSuggestionListener = this.f1334v0;
        if (onSuggestionListener == null || !onSuggestionListener.onSuggestionSelect(i2)) {
            U(i2);
            return true;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void M(CharSequence charSequence) {
        setQuery(charSequence);
    }

    void N() {
        b0(false);
        this.f1333v.requestFocus();
        this.f1333v.setImeVisibility(true);
        View.OnClickListener onClickListener = this.f1336w0;
        if (onClickListener != null) {
            onClickListener.onClick(this);
        }
    }

    void O() {
        Editable text = this.f1333v.getText();
        if (text == null || TextUtils.getTrimmedLength(text) <= 0) {
            return;
        }
        OnQueryTextListener onQueryTextListener = this.f1330s0;
        if (onQueryTextListener == null || !onQueryTextListener.onQueryTextSubmit(text.toString())) {
            if (this.K0 != null) {
                H(0, null, text.toString());
            }
            this.f1333v.setImeVisibility(false);
            z();
        }
    }

    boolean P(View view, int i2, KeyEvent keyEvent) {
        if (this.K0 != null && this.f1342z0 != null && keyEvent.getAction() == 0 && keyEvent.hasNoModifiers()) {
            if (i2 == 66 || i2 == 84 || i2 == 61) {
                return K(this.f1333v.getListSelection(), 0, null);
            }
            if (i2 == 21 || i2 == 22) {
                this.f1333v.setSelection(i2 == 21 ? 0 : this.f1333v.length());
                this.f1333v.setListSelection(0);
                this.f1333v.clearListSelection();
                this.f1333v.b();
                return true;
            } else if (i2 == 19) {
                this.f1333v.getListSelection();
                return false;
            }
        }
        return false;
    }

    void Q(CharSequence charSequence) {
        Editable text = this.f1333v.getText();
        this.H0 = text;
        boolean z3 = !TextUtils.isEmpty(text);
        a0(z3);
        c0(!z3);
        V();
        Z();
        if (this.f1330s0 != null && !TextUtils.equals(charSequence, this.G0)) {
            this.f1330s0.onQueryTextChange(charSequence.toString());
        }
        this.G0 = charSequence.toString();
    }

    void R() {
        b0(isIconified());
        T();
        if (this.f1333v.hasFocus()) {
            A();
        }
    }

    void S() {
        SearchableInfo searchableInfo = this.K0;
        if (searchableInfo == null) {
            return;
        }
        try {
            if (searchableInfo.getVoiceSearchLaunchWebSearch()) {
                getContext().startActivity(y(this.f1327p0, searchableInfo));
            } else if (searchableInfo.getVoiceSearchLaunchRecognizer()) {
                getContext().startActivity(x(this.f1328q0, searchableInfo));
            }
        } catch (ActivityNotFoundException unused) {
        }
    }

    void W() {
        int[] iArr = this.f1333v.hasFocus() ? ViewGroup.FOCUSED_STATE_SET : ViewGroup.EMPTY_STATE_SET;
        Drawable background = this.f1337x.getBackground();
        if (background != null) {
            background.setState(iArr);
        }
        Drawable background2 = this.f1339y.getBackground();
        if (background2 != null) {
            background2.setState(iArr);
        }
        invalidate();
    }

    @Override // android.view.ViewGroup, android.view.View
    public void clearFocus() {
        this.D0 = true;
        super.clearFocus();
        this.f1333v.clearFocus();
        this.f1333v.setImeVisibility(false);
        this.D0 = false;
    }

    public int getImeOptions() {
        return this.f1333v.getImeOptions();
    }

    public int getInputType() {
        return this.f1333v.getInputType();
    }

    public int getMaxWidth() {
        return this.E0;
    }

    public CharSequence getQuery() {
        return this.f1333v.getText();
    }

    @Nullable
    public CharSequence getQueryHint() {
        CharSequence charSequence = this.B0;
        if (charSequence != null) {
            return charSequence;
        }
        SearchableInfo searchableInfo = this.K0;
        if (searchableInfo != null && searchableInfo.getHintId() != 0) {
            return getContext().getText(this.K0.getHintId());
        }
        return this.f1329r0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getSuggestionCommitIconResId() {
        return this.f1326o0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getSuggestionRowLayout() {
        return this.f1325n0;
    }

    public CursorAdapter getSuggestionsAdapter() {
        return this.f1342z0;
    }

    public boolean isIconfiedByDefault() {
        return this.f1338x0;
    }

    public boolean isIconified() {
        return this.f1340y0;
    }

    public boolean isQueryRefinementEnabled() {
        return this.C0;
    }

    public boolean isSubmitButtonEnabled() {
        return this.A0;
    }

    @Override // androidx.appcompat.view.CollapsibleActionView
    public void onActionViewCollapsed() {
        setQuery("", false);
        clearFocus();
        b0(true);
        this.f1333v.setImeOptions(this.J0);
        this.I0 = false;
    }

    @Override // androidx.appcompat.view.CollapsibleActionView
    public void onActionViewExpanded() {
        if (this.I0) {
            return;
        }
        this.I0 = true;
        int imeOptions = this.f1333v.getImeOptions();
        this.J0 = imeOptions;
        this.f1333v.setImeOptions(imeOptions | 33554432);
        this.f1333v.setText("");
        setIconified(false);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        removeCallbacks(this.M0);
        post(this.N0);
        super.onDetachedFromWindow();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.appcompat.widget.LinearLayoutCompat, android.view.ViewGroup, android.view.View
    public void onLayout(boolean z3, int i2, int i4, int i5, int i6) {
        super.onLayout(z3, i2, i4, i5, i6);
        if (z3) {
            B(this.f1333v, this.F);
            Rect rect = this.G;
            Rect rect2 = this.F;
            rect.set(rect2.left, 0, rect2.right, i6 - i4);
            UpdatableTouchDelegate updatableTouchDelegate = this.E;
            if (updatableTouchDelegate == null) {
                UpdatableTouchDelegate updatableTouchDelegate2 = new UpdatableTouchDelegate(this.G, this.F, this.f1333v);
                this.E = updatableTouchDelegate2;
                setTouchDelegate(updatableTouchDelegate2);
                return;
            }
            updatableTouchDelegate.setBounds(this.G, this.F);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.appcompat.widget.LinearLayoutCompat, android.view.View
    public void onMeasure(int i2, int i4) {
        int i5;
        if (isIconified()) {
            super.onMeasure(i2, i4);
            return;
        }
        int mode = View.MeasureSpec.getMode(i2);
        int size = View.MeasureSpec.getSize(i2);
        if (mode == Integer.MIN_VALUE) {
            int i6 = this.E0;
            size = i6 > 0 ? Math.min(i6, size) : Math.min(getPreferredWidth(), size);
        } else if (mode == 0) {
            size = this.E0;
            if (size <= 0) {
                size = getPreferredWidth();
            }
        } else if (mode == 1073741824 && (i5 = this.E0) > 0) {
            size = Math.min(i5, size);
        }
        int mode2 = View.MeasureSpec.getMode(i4);
        int size2 = View.MeasureSpec.getSize(i4);
        if (mode2 == Integer.MIN_VALUE) {
            size2 = Math.min(getPreferredHeight(), size2);
        } else if (mode2 == 0) {
            size2 = getPreferredHeight();
        }
        super.onMeasure(View.MeasureSpec.makeMeasureSpec(size, 1073741824), View.MeasureSpec.makeMeasureSpec(size2, 1073741824));
    }

    @Override // android.view.View
    protected void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        b0(savedState.f1361a);
        requestLayout();
    }

    @Override // android.view.View
    protected Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        savedState.f1361a = isIconified();
        return savedState;
    }

    @Override // android.view.View
    public void onWindowFocusChanged(boolean z3) {
        super.onWindowFocusChanged(z3);
        T();
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean requestFocus(int i2, Rect rect) {
        if (!this.D0 && isFocusable()) {
            if (!isIconified()) {
                boolean requestFocus = this.f1333v.requestFocus(i2, rect);
                if (requestFocus) {
                    b0(false);
                }
                return requestFocus;
            }
            return super.requestFocus(i2, rect);
        }
        return false;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public void setAppSearchData(Bundle bundle) {
        this.L0 = bundle;
    }

    public void setIconified(boolean z3) {
        if (z3) {
            J();
        } else {
            N();
        }
    }

    public void setIconifiedByDefault(boolean z3) {
        if (this.f1338x0 == z3) {
            return;
        }
        this.f1338x0 = z3;
        b0(z3);
        X();
    }

    public void setImeOptions(int i2) {
        this.f1333v.setImeOptions(i2);
    }

    public void setInputType(int i2) {
        this.f1333v.setInputType(i2);
    }

    public void setMaxWidth(int i2) {
        this.E0 = i2;
        requestLayout();
    }

    public void setOnCloseListener(OnCloseListener onCloseListener) {
        this.f1331t0 = onCloseListener;
    }

    public void setOnQueryTextFocusChangeListener(View.OnFocusChangeListener onFocusChangeListener) {
        this.f1332u0 = onFocusChangeListener;
    }

    public void setOnQueryTextListener(OnQueryTextListener onQueryTextListener) {
        this.f1330s0 = onQueryTextListener;
    }

    public void setOnSearchClickListener(View.OnClickListener onClickListener) {
        this.f1336w0 = onClickListener;
    }

    public void setOnSuggestionListener(OnSuggestionListener onSuggestionListener) {
        this.f1334v0 = onSuggestionListener;
    }

    public void setQuery(CharSequence charSequence, boolean z3) {
        this.f1333v.setText(charSequence);
        if (charSequence != null) {
            SearchAutoComplete searchAutoComplete = this.f1333v;
            searchAutoComplete.setSelection(searchAutoComplete.length());
            this.H0 = charSequence;
        }
        if (!z3 || TextUtils.isEmpty(charSequence)) {
            return;
        }
        O();
    }

    public void setQueryHint(@Nullable CharSequence charSequence) {
        this.B0 = charSequence;
        X();
    }

    public void setQueryRefinementEnabled(boolean z3) {
        this.C0 = z3;
        CursorAdapter cursorAdapter = this.f1342z0;
        if (cursorAdapter instanceof SuggestionsAdapter) {
            ((SuggestionsAdapter) cursorAdapter).setQueryRefinement(z3 ? 2 : 1);
        }
    }

    public void setSearchableInfo(SearchableInfo searchableInfo) {
        this.K0 = searchableInfo;
        if (searchableInfo != null) {
            Y();
            X();
        }
        boolean D = D();
        this.F0 = D;
        if (D) {
            this.f1333v.setPrivateImeOptions(X0);
        }
        b0(isIconified());
    }

    public void setSubmitButtonEnabled(boolean z3) {
        this.A0 = z3;
        b0(isIconified());
    }

    public void setSuggestionsAdapter(CursorAdapter cursorAdapter) {
        this.f1342z0 = cursorAdapter;
        this.f1333v.setAdapter(cursorAdapter);
    }

    void u() {
        int i2;
        if (this.D.getWidth() > 1) {
            Resources resources = getContext().getResources();
            int paddingLeft = this.f1337x.getPaddingLeft();
            Rect rect = new Rect();
            boolean isLayoutRtl = ViewUtils.isLayoutRtl(this);
            int dimensionPixelSize = this.f1338x0 ? resources.getDimensionPixelSize(R.dimen.abc_dropdownitem_icon_width) + resources.getDimensionPixelSize(R.dimen.abc_dropdownitem_text_padding_left) : 0;
            this.f1333v.getDropDownBackground().getPadding(rect);
            if (isLayoutRtl) {
                i2 = -rect.left;
            } else {
                i2 = paddingLeft - (rect.left + dimensionPixelSize);
            }
            this.f1333v.setDropDownHorizontalOffset(i2);
            this.f1333v.setDropDownWidth((((this.D.getWidth() + rect.left) + rect.right) + dimensionPixelSize) - paddingLeft);
        }
    }

    public SearchView(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.searchViewStyle);
    }

    public SearchView(@NonNull Context context, @Nullable AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.F = new Rect();
        this.G = new Rect();
        this.H = new int[2];
        this.I = new int[2];
        this.M0 = new Runnable() { // from class: androidx.appcompat.widget.SearchView.1
            @Override // java.lang.Runnable
            public void run() {
                SearchView.this.W();
            }
        };
        this.N0 = new Runnable() { // from class: androidx.appcompat.widget.SearchView.2
            @Override // java.lang.Runnable
            public void run() {
                CursorAdapter cursorAdapter = SearchView.this.f1342z0;
                if (cursorAdapter instanceof SuggestionsAdapter) {
                    cursorAdapter.changeCursor(null);
                }
            }
        };
        this.O0 = new WeakHashMap<>();
        View.OnClickListener onClickListener = new View.OnClickListener() { // from class: androidx.appcompat.widget.SearchView.5
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                SearchView searchView = SearchView.this;
                if (view == searchView.f1341z) {
                    searchView.N();
                } else if (view == searchView.B) {
                    searchView.J();
                } else if (view == searchView.A) {
                    searchView.O();
                } else if (view == searchView.C) {
                    searchView.S();
                } else if (view == searchView.f1333v) {
                    searchView.A();
                }
            }
        };
        this.P0 = onClickListener;
        this.Q0 = new View.OnKeyListener() { // from class: androidx.appcompat.widget.SearchView.6
            @Override // android.view.View.OnKeyListener
            public boolean onKey(View view, int i4, KeyEvent keyEvent) {
                SearchView searchView = SearchView.this;
                if (searchView.K0 == null) {
                    return false;
                }
                if (searchView.f1333v.isPopupShowing() && SearchView.this.f1333v.getListSelection() != -1) {
                    return SearchView.this.P(view, i4, keyEvent);
                }
                if (!SearchView.this.f1333v.c() && keyEvent.hasNoModifiers() && keyEvent.getAction() == 1 && i4 == 66) {
                    view.cancelLongPress();
                    SearchView searchView2 = SearchView.this;
                    searchView2.H(0, null, searchView2.f1333v.getText().toString());
                    return true;
                }
                return false;
            }
        };
        TextView.OnEditorActionListener onEditorActionListener = new TextView.OnEditorActionListener() { // from class: androidx.appcompat.widget.SearchView.7
            @Override // android.widget.TextView.OnEditorActionListener
            public boolean onEditorAction(TextView textView, int i4, KeyEvent keyEvent) {
                SearchView.this.O();
                return true;
            }
        };
        this.R0 = onEditorActionListener;
        AdapterView.OnItemClickListener onItemClickListener = new AdapterView.OnItemClickListener() { // from class: androidx.appcompat.widget.SearchView.8
            @Override // android.widget.AdapterView.OnItemClickListener
            public void onItemClick(AdapterView<?> adapterView, View view, int i4, long j4) {
                SearchView.this.K(i4, 0, null);
            }
        };
        this.S0 = onItemClickListener;
        AdapterView.OnItemSelectedListener onItemSelectedListener = new AdapterView.OnItemSelectedListener() { // from class: androidx.appcompat.widget.SearchView.9
            @Override // android.widget.AdapterView.OnItemSelectedListener
            public void onItemSelected(AdapterView<?> adapterView, View view, int i4, long j4) {
                SearchView.this.L(i4);
            }

            @Override // android.widget.AdapterView.OnItemSelectedListener
            public void onNothingSelected(AdapterView<?> adapterView) {
            }
        };
        this.T0 = onItemSelectedListener;
        this.U0 = new TextWatcher() { // from class: androidx.appcompat.widget.SearchView.10
            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
            }

            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i4, int i5, int i6) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i4, int i5, int i6) {
                SearchView.this.Q(charSequence);
            }
        };
        int[] iArr = R.styleable.SearchView;
        TintTypedArray obtainStyledAttributes = TintTypedArray.obtainStyledAttributes(context, attributeSet, iArr, i2, 0);
        ViewCompat.saveAttributeDataForStyleable(this, context, iArr, attributeSet, obtainStyledAttributes.getWrappedTypeArray(), i2, 0);
        LayoutInflater.from(context).inflate(obtainStyledAttributes.getResourceId(R.styleable.SearchView_layout, R.layout.abc_search_view), (ViewGroup) this, true);
        SearchAutoComplete searchAutoComplete = (SearchAutoComplete) findViewById(R.id.search_src_text);
        this.f1333v = searchAutoComplete;
        searchAutoComplete.setSearchView(this);
        this.f1335w = findViewById(R.id.search_edit_frame);
        View findViewById = findViewById(R.id.search_plate);
        this.f1337x = findViewById;
        View findViewById2 = findViewById(R.id.submit_area);
        this.f1339y = findViewById2;
        ImageView imageView = (ImageView) findViewById(R.id.search_button);
        this.f1341z = imageView;
        ImageView imageView2 = (ImageView) findViewById(R.id.search_go_btn);
        this.A = imageView2;
        ImageView imageView3 = (ImageView) findViewById(R.id.search_close_btn);
        this.B = imageView3;
        ImageView imageView4 = (ImageView) findViewById(R.id.search_voice_btn);
        this.C = imageView4;
        ImageView imageView5 = (ImageView) findViewById(R.id.search_mag_icon);
        this.J = imageView5;
        ViewCompat.setBackground(findViewById, obtainStyledAttributes.getDrawable(R.styleable.SearchView_queryBackground));
        ViewCompat.setBackground(findViewById2, obtainStyledAttributes.getDrawable(R.styleable.SearchView_submitBackground));
        int i4 = R.styleable.SearchView_searchIcon;
        imageView.setImageDrawable(obtainStyledAttributes.getDrawable(i4));
        imageView2.setImageDrawable(obtainStyledAttributes.getDrawable(R.styleable.SearchView_goIcon));
        imageView3.setImageDrawable(obtainStyledAttributes.getDrawable(R.styleable.SearchView_closeIcon));
        imageView4.setImageDrawable(obtainStyledAttributes.getDrawable(R.styleable.SearchView_voiceIcon));
        imageView5.setImageDrawable(obtainStyledAttributes.getDrawable(i4));
        this.K = obtainStyledAttributes.getDrawable(R.styleable.SearchView_searchHintIcon);
        TooltipCompat.setTooltipText(imageView, getResources().getString(R.string.abc_searchview_description_search));
        this.f1325n0 = obtainStyledAttributes.getResourceId(R.styleable.SearchView_suggestionRowLayout, R.layout.abc_search_dropdown_item_icons_2line);
        this.f1326o0 = obtainStyledAttributes.getResourceId(R.styleable.SearchView_commitIcon, 0);
        imageView.setOnClickListener(onClickListener);
        imageView3.setOnClickListener(onClickListener);
        imageView2.setOnClickListener(onClickListener);
        imageView4.setOnClickListener(onClickListener);
        searchAutoComplete.setOnClickListener(onClickListener);
        searchAutoComplete.addTextChangedListener(this.U0);
        searchAutoComplete.setOnEditorActionListener(onEditorActionListener);
        searchAutoComplete.setOnItemClickListener(onItemClickListener);
        searchAutoComplete.setOnItemSelectedListener(onItemSelectedListener);
        searchAutoComplete.setOnKeyListener(this.Q0);
        searchAutoComplete.setOnFocusChangeListener(new View.OnFocusChangeListener() { // from class: androidx.appcompat.widget.SearchView.3
            @Override // android.view.View.OnFocusChangeListener
            public void onFocusChange(View view, boolean z3) {
                SearchView searchView = SearchView.this;
                View.OnFocusChangeListener onFocusChangeListener = searchView.f1332u0;
                if (onFocusChangeListener != null) {
                    onFocusChangeListener.onFocusChange(searchView, z3);
                }
            }
        });
        setIconifiedByDefault(obtainStyledAttributes.getBoolean(R.styleable.SearchView_iconifiedByDefault, true));
        int dimensionPixelSize = obtainStyledAttributes.getDimensionPixelSize(R.styleable.SearchView_android_maxWidth, -1);
        if (dimensionPixelSize != -1) {
            setMaxWidth(dimensionPixelSize);
        }
        this.f1329r0 = obtainStyledAttributes.getText(R.styleable.SearchView_defaultQueryHint);
        this.B0 = obtainStyledAttributes.getText(R.styleable.SearchView_queryHint);
        int i5 = obtainStyledAttributes.getInt(R.styleable.SearchView_android_imeOptions, -1);
        if (i5 != -1) {
            setImeOptions(i5);
        }
        int i6 = obtainStyledAttributes.getInt(R.styleable.SearchView_android_inputType, -1);
        if (i6 != -1) {
            setInputType(i6);
        }
        setFocusable(obtainStyledAttributes.getBoolean(R.styleable.SearchView_android_focusable, true));
        obtainStyledAttributes.recycle();
        Intent intent = new Intent("android.speech.action.WEB_SEARCH");
        this.f1327p0 = intent;
        intent.addFlags(268435456);
        intent.putExtra("android.speech.extra.LANGUAGE_MODEL", "web_search");
        Intent intent2 = new Intent("android.speech.action.RECOGNIZE_SPEECH");
        this.f1328q0 = intent2;
        intent2.addFlags(268435456);
        View findViewById3 = findViewById(searchAutoComplete.getDropDownAnchor());
        this.D = findViewById3;
        if (findViewById3 != null) {
            findViewById3.addOnLayoutChangeListener(new View.OnLayoutChangeListener() { // from class: androidx.appcompat.widget.SearchView.4
                @Override // android.view.View.OnLayoutChangeListener
                public void onLayoutChange(View view, int i7, int i8, int i9, int i10, int i11, int i12, int i13, int i14) {
                    SearchView.this.u();
                }
            });
        }
        b0(this.f1338x0);
        X();
    }

    private void setQuery(CharSequence charSequence) {
        this.f1333v.setText(charSequence);
        this.f1333v.setSelection(TextUtils.isEmpty(charSequence) ? 0 : charSequence.length());
    }
}
