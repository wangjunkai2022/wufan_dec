package com.google.android.material.datepicker;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.os.Build;
import android.os.Bundle;
import android.view.ContextThemeWrapper;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.GridView;
import android.widget.ListAdapter;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.Px;
import androidx.annotation.RestrictTo;
import androidx.annotation.StyleRes;
import androidx.annotation.VisibleForTesting;
import androidx.core.util.Pair;
import androidx.core.view.AccessibilityDelegateCompat;
import androidx.core.view.ViewCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.PagerSnapHelper;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.material.R;
import com.google.android.material.button.MaterialButton;
import java.util.Calendar;
import java.util.Iterator;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes2.dex */
public final class MaterialCalendar<S> extends l<S> {

    /* renamed from: l  reason: collision with root package name */
    private static final String f14661l = "THEME_RES_ID_KEY";

    /* renamed from: m  reason: collision with root package name */
    private static final String f14662m = "GRID_SELECTOR_KEY";

    /* renamed from: n  reason: collision with root package name */
    private static final String f14663n = "CALENDAR_CONSTRAINTS_KEY";

    /* renamed from: o  reason: collision with root package name */
    private static final String f14664o = "CURRENT_MONTH_KEY";

    /* renamed from: p  reason: collision with root package name */
    private static final int f14665p = 3;
    @VisibleForTesting

    /* renamed from: q  reason: collision with root package name */
    static final Object f14666q = "MONTHS_VIEW_GROUP_TAG";
    @VisibleForTesting

    /* renamed from: r  reason: collision with root package name */
    static final Object f14667r = "NAVIGATION_PREV_TAG";
    @VisibleForTesting

    /* renamed from: s  reason: collision with root package name */
    static final Object f14668s = "NAVIGATION_NEXT_TAG";
    @VisibleForTesting

    /* renamed from: t  reason: collision with root package name */
    static final Object f14669t = "SELECTOR_TOGGLE_TAG";
    @StyleRes

    /* renamed from: b  reason: collision with root package name */
    private int f14670b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    private DateSelector<S> f14671c;
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    private CalendarConstraints f14672d;
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    private Month f14673e;

    /* renamed from: f  reason: collision with root package name */
    private CalendarSelector f14674f;

    /* renamed from: g  reason: collision with root package name */
    private com.google.android.material.datepicker.b f14675g;

    /* renamed from: h  reason: collision with root package name */
    private RecyclerView f14676h;

    /* renamed from: i  reason: collision with root package name */
    private RecyclerView f14677i;

    /* renamed from: j  reason: collision with root package name */
    private View f14678j;

    /* renamed from: k  reason: collision with root package name */
    private View f14679k;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public enum CalendarSelector {
        DAY,
        YEAR
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class a implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f14680a;

        a(int i2) {
            this.f14680a = i2;
        }

        @Override // java.lang.Runnable
        public void run() {
            MaterialCalendar.this.f14677i.smoothScrollToPosition(this.f14680a);
        }
    }

    /* loaded from: classes2.dex */
    class b extends AccessibilityDelegateCompat {
        b() {
        }

        @Override // androidx.core.view.AccessibilityDelegateCompat
        public void onInitializeAccessibilityNodeInfo(View view, @NonNull AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
            super.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfoCompat);
            accessibilityNodeInfoCompat.setCollectionInfo(null);
        }
    }

    /* loaded from: classes2.dex */
    class c extends m {

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ int f14683b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        c(Context context, int i2, boolean z3, int i4) {
            super(context, i2, z3);
            this.f14683b = i4;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // androidx.recyclerview.widget.LinearLayoutManager
        public void calculateExtraLayoutSpace(@NonNull RecyclerView.State state, @NonNull int[] iArr) {
            if (this.f14683b == 0) {
                iArr[0] = MaterialCalendar.this.f14677i.getWidth();
                iArr[1] = MaterialCalendar.this.f14677i.getWidth();
                return;
            }
            iArr[0] = MaterialCalendar.this.f14677i.getHeight();
            iArr[1] = MaterialCalendar.this.f14677i.getHeight();
        }
    }

    /* loaded from: classes2.dex */
    class d implements k {
        d() {
        }

        @Override // com.google.android.material.datepicker.MaterialCalendar.k
        public void a(long j4) {
            if (MaterialCalendar.this.f14672d.f().m(j4)) {
                MaterialCalendar.this.f14671c.y0(j4);
                Iterator<com.google.android.material.datepicker.k<S>> it2 = MaterialCalendar.this.f14825a.iterator();
                while (it2.hasNext()) {
                    it2.next().b((S) MaterialCalendar.this.f14671c.v0());
                }
                MaterialCalendar.this.f14677i.getAdapter().notifyDataSetChanged();
                if (MaterialCalendar.this.f14676h != null) {
                    MaterialCalendar.this.f14676h.getAdapter().notifyDataSetChanged();
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class e extends RecyclerView.ItemDecoration {

        /* renamed from: a  reason: collision with root package name */
        private final Calendar f14686a = o.v();

        /* renamed from: b  reason: collision with root package name */
        private final Calendar f14687b = o.v();

        e() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.ItemDecoration
        public void onDraw(@NonNull Canvas canvas, @NonNull RecyclerView recyclerView, @NonNull RecyclerView.State state) {
            int width;
            if ((recyclerView.getAdapter() instanceof p) && (recyclerView.getLayoutManager() instanceof GridLayoutManager)) {
                p pVar = (p) recyclerView.getAdapter();
                GridLayoutManager gridLayoutManager = (GridLayoutManager) recyclerView.getLayoutManager();
                for (Pair<Long, Long> pair : MaterialCalendar.this.f14671c.Y()) {
                    Long l4 = pair.first;
                    if (l4 != null && pair.second != null) {
                        this.f14686a.setTimeInMillis(l4.longValue());
                        this.f14687b.setTimeInMillis(pair.second.longValue());
                        int c4 = pVar.c(this.f14686a.get(1));
                        int c5 = pVar.c(this.f14687b.get(1));
                        View findViewByPosition = gridLayoutManager.findViewByPosition(c4);
                        View findViewByPosition2 = gridLayoutManager.findViewByPosition(c5);
                        int spanCount = c4 / gridLayoutManager.getSpanCount();
                        int spanCount2 = c5 / gridLayoutManager.getSpanCount();
                        int i2 = spanCount;
                        while (i2 <= spanCount2) {
                            View findViewByPosition3 = gridLayoutManager.findViewByPosition(gridLayoutManager.getSpanCount() * i2);
                            if (findViewByPosition3 != null) {
                                int top = findViewByPosition3.getTop() + MaterialCalendar.this.f14675g.f14779d.e();
                                int bottom = findViewByPosition3.getBottom() - MaterialCalendar.this.f14675g.f14779d.b();
                                int left = i2 == spanCount ? findViewByPosition.getLeft() + (findViewByPosition.getWidth() / 2) : 0;
                                if (i2 == spanCount2) {
                                    width = findViewByPosition2.getLeft() + (findViewByPosition2.getWidth() / 2);
                                } else {
                                    width = recyclerView.getWidth();
                                }
                                canvas.drawRect(left, top, width, bottom, MaterialCalendar.this.f14675g.f14783h);
                            }
                            i2++;
                        }
                    }
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class f extends AccessibilityDelegateCompat {
        f() {
        }

        @Override // androidx.core.view.AccessibilityDelegateCompat
        public void onInitializeAccessibilityNodeInfo(View view, @NonNull AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
            String string;
            super.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfoCompat);
            if (MaterialCalendar.this.f14679k.getVisibility() == 0) {
                string = MaterialCalendar.this.getString(R.string.mtrl_picker_toggle_to_year_selection);
            } else {
                string = MaterialCalendar.this.getString(R.string.mtrl_picker_toggle_to_day_selection);
            }
            accessibilityNodeInfoCompat.setHintText(string);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class g extends RecyclerView.OnScrollListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ com.google.android.material.datepicker.j f14690a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ MaterialButton f14691b;

        g(com.google.android.material.datepicker.j jVar, MaterialButton materialButton) {
            this.f14690a = jVar;
            this.f14691b = materialButton;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
        public void onScrollStateChanged(@NonNull RecyclerView recyclerView, int i2) {
            if (i2 == 0) {
                CharSequence text = this.f14691b.getText();
                if (Build.VERSION.SDK_INT >= 16) {
                    recyclerView.announceForAccessibility(text);
                } else {
                    recyclerView.sendAccessibilityEvent(2048);
                }
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
        public void onScrolled(@NonNull RecyclerView recyclerView, int i2, int i4) {
            int findLastVisibleItemPosition;
            if (i2 < 0) {
                findLastVisibleItemPosition = MaterialCalendar.this.f0().findFirstVisibleItemPosition();
            } else {
                findLastVisibleItemPosition = MaterialCalendar.this.f0().findLastVisibleItemPosition();
            }
            MaterialCalendar.this.f14673e = this.f14690a.b(findLastVisibleItemPosition);
            this.f14691b.setText(this.f14690a.c(findLastVisibleItemPosition));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class h implements View.OnClickListener {
        h() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            MaterialCalendar.this.k0();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class i implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ com.google.android.material.datepicker.j f14694a;

        i(com.google.android.material.datepicker.j jVar) {
            this.f14694a = jVar;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            int findFirstVisibleItemPosition = MaterialCalendar.this.f0().findFirstVisibleItemPosition() + 1;
            if (findFirstVisibleItemPosition < MaterialCalendar.this.f14677i.getAdapter().getItemCount()) {
                MaterialCalendar.this.i0(this.f14694a.b(findFirstVisibleItemPosition));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class j implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ com.google.android.material.datepicker.j f14696a;

        j(com.google.android.material.datepicker.j jVar) {
            this.f14696a = jVar;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            int findLastVisibleItemPosition = MaterialCalendar.this.f0().findLastVisibleItemPosition() - 1;
            if (findLastVisibleItemPosition >= 0) {
                MaterialCalendar.this.i0(this.f14696a.b(findLastVisibleItemPosition));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public interface k {
        void a(long j4);
    }

    private void X(@NonNull View view, @NonNull com.google.android.material.datepicker.j jVar) {
        MaterialButton materialButton = (MaterialButton) view.findViewById(R.id.month_navigation_fragment_toggle);
        materialButton.setTag(f14669t);
        ViewCompat.setAccessibilityDelegate(materialButton, new f());
        MaterialButton materialButton2 = (MaterialButton) view.findViewById(R.id.month_navigation_previous);
        materialButton2.setTag(f14667r);
        MaterialButton materialButton3 = (MaterialButton) view.findViewById(R.id.month_navigation_next);
        materialButton3.setTag(f14668s);
        this.f14678j = view.findViewById(R.id.mtrl_calendar_year_selector_frame);
        this.f14679k = view.findViewById(R.id.mtrl_calendar_day_selector_frame);
        j0(CalendarSelector.DAY);
        materialButton.setText(this.f14673e.R0());
        this.f14677i.addOnScrollListener(new g(jVar, materialButton));
        materialButton.setOnClickListener(new h());
        materialButton3.setOnClickListener(new i(jVar));
        materialButton2.setOnClickListener(new j(jVar));
    }

    @NonNull
    private RecyclerView.ItemDecoration Z() {
        return new e();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Px
    public static int d0(@NonNull Context context) {
        return context.getResources().getDimensionPixelSize(R.dimen.mtrl_calendar_day_height);
    }

    private static int e0(@NonNull Context context) {
        Resources resources = context.getResources();
        int dimensionPixelSize = resources.getDimensionPixelSize(R.dimen.mtrl_calendar_navigation_height) + resources.getDimensionPixelOffset(R.dimen.mtrl_calendar_navigation_top_padding) + resources.getDimensionPixelOffset(R.dimen.mtrl_calendar_navigation_bottom_padding);
        int dimensionPixelSize2 = resources.getDimensionPixelSize(R.dimen.mtrl_calendar_days_of_week_height);
        int i2 = com.google.android.material.datepicker.i.f14811f;
        return dimensionPixelSize + dimensionPixelSize2 + (resources.getDimensionPixelSize(R.dimen.mtrl_calendar_day_height) * i2) + ((i2 - 1) * resources.getDimensionPixelOffset(R.dimen.mtrl_calendar_month_vertical_padding)) + resources.getDimensionPixelOffset(R.dimen.mtrl_calendar_bottom_padding);
    }

    @NonNull
    public static <T> MaterialCalendar<T> g0(@NonNull DateSelector<T> dateSelector, @StyleRes int i2, @NonNull CalendarConstraints calendarConstraints) {
        MaterialCalendar<T> materialCalendar = new MaterialCalendar<>();
        Bundle bundle = new Bundle();
        bundle.putInt(f14661l, i2);
        bundle.putParcelable(f14662m, dateSelector);
        bundle.putParcelable(f14663n, calendarConstraints);
        bundle.putParcelable(f14664o, calendarConstraints.i());
        materialCalendar.setArguments(bundle);
        return materialCalendar;
    }

    private void h0(int i2) {
        this.f14677i.post(new a(i2));
    }

    @Override // com.google.android.material.datepicker.l
    public boolean M(@NonNull com.google.android.material.datepicker.k<S> kVar) {
        return super.M(kVar);
    }

    @Override // com.google.android.material.datepicker.l
    @Nullable
    public DateSelector<S> O() {
        return this.f14671c;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Nullable
    public CalendarConstraints a0() {
        return this.f14672d;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public com.google.android.material.datepicker.b b0() {
        return this.f14675g;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Nullable
    public Month c0() {
        return this.f14673e;
    }

    @NonNull
    LinearLayoutManager f0() {
        return (LinearLayoutManager) this.f14677i.getLayoutManager();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void i0(Month month) {
        com.google.android.material.datepicker.j jVar = (com.google.android.material.datepicker.j) this.f14677i.getAdapter();
        int d4 = jVar.d(month);
        int d5 = d4 - jVar.d(this.f14673e);
        boolean z3 = Math.abs(d5) > 3;
        boolean z4 = d5 > 0;
        this.f14673e = month;
        if (z3 && z4) {
            this.f14677i.scrollToPosition(d4 - 3);
            h0(d4);
        } else if (z3) {
            this.f14677i.scrollToPosition(d4 + 3);
            h0(d4);
        } else {
            h0(d4);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void j0(CalendarSelector calendarSelector) {
        this.f14674f = calendarSelector;
        if (calendarSelector == CalendarSelector.YEAR) {
            this.f14676h.getLayoutManager().scrollToPosition(((p) this.f14676h.getAdapter()).c(this.f14673e.f14748c));
            this.f14678j.setVisibility(0);
            this.f14679k.setVisibility(8);
        } else if (calendarSelector == CalendarSelector.DAY) {
            this.f14678j.setVisibility(8);
            this.f14679k.setVisibility(0);
            i0(this.f14673e);
        }
    }

    void k0() {
        CalendarSelector calendarSelector = this.f14674f;
        CalendarSelector calendarSelector2 = CalendarSelector.YEAR;
        if (calendarSelector == calendarSelector2) {
            j0(CalendarSelector.DAY);
        } else if (calendarSelector == CalendarSelector.DAY) {
            j0(calendarSelector2);
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        if (bundle == null) {
            bundle = getArguments();
        }
        this.f14670b = bundle.getInt(f14661l);
        this.f14671c = (DateSelector) bundle.getParcelable(f14662m);
        this.f14672d = (CalendarConstraints) bundle.getParcelable(f14663n);
        this.f14673e = (Month) bundle.getParcelable(f14664o);
    }

    @Override // androidx.fragment.app.Fragment
    @NonNull
    public View onCreateView(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle) {
        int i2;
        int i4;
        ContextThemeWrapper contextThemeWrapper = new ContextThemeWrapper(getContext(), this.f14670b);
        this.f14675g = new com.google.android.material.datepicker.b(contextThemeWrapper);
        LayoutInflater cloneInContext = layoutInflater.cloneInContext(contextThemeWrapper);
        Month j4 = this.f14672d.j();
        if (MaterialDatePicker.l0(contextThemeWrapper)) {
            i2 = R.layout.mtrl_calendar_vertical;
            i4 = 1;
        } else {
            i2 = R.layout.mtrl_calendar_horizontal;
            i4 = 0;
        }
        View inflate = cloneInContext.inflate(i2, viewGroup, false);
        inflate.setMinimumHeight(e0(requireContext()));
        GridView gridView = (GridView) inflate.findViewById(R.id.mtrl_calendar_days_of_week);
        ViewCompat.setAccessibilityDelegate(gridView, new b());
        gridView.setAdapter((ListAdapter) new com.google.android.material.datepicker.e());
        gridView.setNumColumns(j4.f14749d);
        gridView.setEnabled(false);
        this.f14677i = (RecyclerView) inflate.findViewById(R.id.mtrl_calendar_months);
        this.f14677i.setLayoutManager(new c(getContext(), i4, false, i4));
        this.f14677i.setTag(f14666q);
        com.google.android.material.datepicker.j jVar = new com.google.android.material.datepicker.j(contextThemeWrapper, this.f14671c, this.f14672d, new d());
        this.f14677i.setAdapter(jVar);
        int integer = contextThemeWrapper.getResources().getInteger(R.integer.mtrl_calendar_year_selector_span);
        RecyclerView recyclerView = (RecyclerView) inflate.findViewById(R.id.mtrl_calendar_year_selector_frame);
        this.f14676h = recyclerView;
        if (recyclerView != null) {
            recyclerView.setHasFixedSize(true);
            this.f14676h.setLayoutManager(new GridLayoutManager((Context) contextThemeWrapper, integer, 1, false));
            this.f14676h.setAdapter(new p(this));
            this.f14676h.addItemDecoration(Z());
        }
        if (inflate.findViewById(R.id.month_navigation_fragment_toggle) != null) {
            X(inflate, jVar);
        }
        if (!MaterialDatePicker.l0(contextThemeWrapper)) {
            new PagerSnapHelper().attachToRecyclerView(this.f14677i);
        }
        this.f14677i.scrollToPosition(jVar.d(this.f14673e));
        return inflate;
    }

    @Override // androidx.fragment.app.Fragment
    public void onSaveInstanceState(@NonNull Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putInt(f14661l, this.f14670b);
        bundle.putParcelable(f14662m, this.f14671c);
        bundle.putParcelable(f14663n, this.f14672d);
        bundle.putParcelable(f14664o, this.f14673e);
    }
}
