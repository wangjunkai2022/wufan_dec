package in.srain.cube.views;

import android.annotation.TargetApi;
import android.content.Context;
import android.database.DataSetObservable;
import android.database.DataSetObserver;
import android.os.Build;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AbsListView;
import android.widget.AdapterView;
import android.widget.Filter;
import android.widget.Filterable;
import android.widget.FrameLayout;
import android.widget.GridView;
import android.widget.ListAdapter;
import android.widget.WrapperListAdapter;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.Iterator;
/* loaded from: classes3.dex */
public class GridViewWithHeaderAndFooter extends GridView {

    /* renamed from: n  reason: collision with root package name */
    public static boolean f65709n = false;

    /* renamed from: o  reason: collision with root package name */
    private static final String f65710o = "GridViewHeaderAndFooter";

    /* renamed from: a  reason: collision with root package name */
    private AdapterView.OnItemClickListener f65711a;

    /* renamed from: b  reason: collision with root package name */
    private AdapterView.OnItemLongClickListener f65712b;

    /* renamed from: c  reason: collision with root package name */
    private int f65713c;

    /* renamed from: d  reason: collision with root package name */
    private View f65714d;

    /* renamed from: e  reason: collision with root package name */
    private int f65715e;

    /* renamed from: f  reason: collision with root package name */
    private ArrayList<b> f65716f;

    /* renamed from: g  reason: collision with root package name */
    private ArrayList<b> f65717g;

    /* renamed from: h  reason: collision with root package name */
    private ListAdapter f65718h;

    /* renamed from: i  reason: collision with root package name */
    private e f65719i;

    /* renamed from: j  reason: collision with root package name */
    private float f65720j;

    /* renamed from: k  reason: collision with root package name */
    private float f65721k;

    /* renamed from: l  reason: collision with root package name */
    private float f65722l;

    /* renamed from: m  reason: collision with root package name */
    private float f65723m;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public static class b {

        /* renamed from: a  reason: collision with root package name */
        public View f65724a;

        /* renamed from: b  reason: collision with root package name */
        public ViewGroup f65725b;

        /* renamed from: c  reason: collision with root package name */
        public Object f65726c;

        /* renamed from: d  reason: collision with root package name */
        public boolean f65727d;

        private b() {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public class c extends FrameLayout {
        public c(Context context) {
            super(context);
        }

        @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
        protected void onLayout(boolean z3, int i2, int i4, int i5, int i6) {
            int paddingLeft = GridViewWithHeaderAndFooter.this.getPaddingLeft() + getPaddingLeft();
            if (paddingLeft != i2) {
                offsetLeftAndRight(paddingLeft - i2);
            }
            super.onLayout(z3, i2, i4, i5, i6);
        }

        @Override // android.widget.FrameLayout, android.view.View
        protected void onMeasure(int i2, int i4) {
            super.onMeasure(View.MeasureSpec.makeMeasureSpec((GridViewWithHeaderAndFooter.this.getMeasuredWidth() - GridViewWithHeaderAndFooter.this.getPaddingLeft()) - GridViewWithHeaderAndFooter.this.getPaddingRight(), View.MeasureSpec.getMode(i2)), i4);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public static class d implements WrapperListAdapter, Filterable {

        /* renamed from: k  reason: collision with root package name */
        static final ArrayList<b> f65729k = new ArrayList<>();

        /* renamed from: b  reason: collision with root package name */
        private final ListAdapter f65731b;

        /* renamed from: c  reason: collision with root package name */
        ArrayList<b> f65732c;

        /* renamed from: d  reason: collision with root package name */
        ArrayList<b> f65733d;

        /* renamed from: g  reason: collision with root package name */
        boolean f65736g;

        /* renamed from: h  reason: collision with root package name */
        private final boolean f65737h;

        /* renamed from: a  reason: collision with root package name */
        private final DataSetObservable f65730a = new DataSetObservable();

        /* renamed from: e  reason: collision with root package name */
        private int f65734e = 1;

        /* renamed from: f  reason: collision with root package name */
        private int f65735f = -1;

        /* renamed from: i  reason: collision with root package name */
        private boolean f65738i = true;

        /* renamed from: j  reason: collision with root package name */
        private boolean f65739j = false;

        public d(ArrayList<b> arrayList, ArrayList<b> arrayList2, ListAdapter listAdapter) {
            boolean z3 = true;
            this.f65731b = listAdapter;
            this.f65737h = listAdapter instanceof Filterable;
            if (arrayList == null) {
                this.f65732c = f65729k;
            } else {
                this.f65732c = arrayList;
            }
            if (arrayList2 == null) {
                this.f65733d = f65729k;
            } else {
                this.f65733d = arrayList2;
            }
            this.f65736g = (a(this.f65732c) && a(this.f65733d)) ? false : false;
        }

        private boolean a(ArrayList<b> arrayList) {
            if (arrayList != null) {
                Iterator<b> it2 = arrayList.iterator();
                while (it2.hasNext()) {
                    if (!it2.next().f65727d) {
                        return false;
                    }
                }
                return true;
            }
            return true;
        }

        private int b() {
            double ceil = Math.ceil((this.f65731b.getCount() * 1.0f) / this.f65734e);
            double d4 = this.f65734e;
            Double.isNaN(d4);
            return (int) (ceil * d4);
        }

        @Override // android.widget.ListAdapter
        public boolean areAllItemsEnabled() {
            ListAdapter listAdapter = this.f65731b;
            return listAdapter == null || (this.f65736g && listAdapter.areAllItemsEnabled());
        }

        public int c() {
            return this.f65733d.size();
        }

        public int d() {
            return this.f65732c.size();
        }

        public void e() {
            this.f65730a.notifyChanged();
        }

        public boolean f(View view) {
            boolean z3 = false;
            for (int i2 = 0; i2 < this.f65733d.size(); i2++) {
                if (this.f65733d.get(i2).f65724a == view) {
                    this.f65733d.remove(i2);
                    if (a(this.f65732c) && a(this.f65733d)) {
                        z3 = true;
                    }
                    this.f65736g = z3;
                    this.f65730a.notifyChanged();
                    return true;
                }
            }
            return false;
        }

        public boolean g(View view) {
            boolean z3 = false;
            for (int i2 = 0; i2 < this.f65732c.size(); i2++) {
                if (this.f65732c.get(i2).f65724a == view) {
                    this.f65732c.remove(i2);
                    if (a(this.f65732c) && a(this.f65733d)) {
                        z3 = true;
                    }
                    this.f65736g = z3;
                    this.f65730a.notifyChanged();
                    return true;
                }
            }
            return false;
        }

        @Override // android.widget.Adapter
        public int getCount() {
            if (this.f65731b != null) {
                return ((c() + d()) * this.f65734e) + b();
            }
            return (c() + d()) * this.f65734e;
        }

        @Override // android.widget.Filterable
        public Filter getFilter() {
            if (this.f65737h) {
                return ((Filterable) this.f65731b).getFilter();
            }
            return null;
        }

        @Override // android.widget.Adapter
        public Object getItem(int i2) {
            int d4 = d();
            int i4 = this.f65734e;
            int i5 = d4 * i4;
            if (i2 < i5) {
                if (i2 % i4 == 0) {
                    return this.f65732c.get(i2 / i4).f65726c;
                }
                return null;
            }
            int i6 = i2 - i5;
            int i7 = 0;
            if (this.f65731b != null && i6 < (i7 = b())) {
                if (i6 < this.f65731b.getCount()) {
                    return this.f65731b.getItem(i6);
                }
                return null;
            }
            int i8 = i6 - i7;
            if (i8 % this.f65734e == 0) {
                return this.f65733d.get(i8).f65726c;
            }
            return null;
        }

        @Override // android.widget.Adapter
        public long getItemId(int i2) {
            int i4;
            int d4 = d() * this.f65734e;
            ListAdapter listAdapter = this.f65731b;
            if (listAdapter == null || i2 < d4 || (i4 = i2 - d4) >= listAdapter.getCount()) {
                return -1L;
            }
            return this.f65731b.getItemId(i4);
        }

        @Override // android.widget.Adapter
        public int getItemViewType(int i2) {
            int i4;
            int i5;
            int d4 = d() * this.f65734e;
            ListAdapter listAdapter = this.f65731b;
            int viewTypeCount = listAdapter == null ? 0 : listAdapter.getViewTypeCount() - 1;
            int i6 = -2;
            if (this.f65738i && i2 < d4) {
                if (i2 == 0 && this.f65739j) {
                    i6 = this.f65732c.size() + viewTypeCount + this.f65733d.size() + 1 + 1;
                }
                int i7 = this.f65734e;
                if (i2 % i7 != 0) {
                    i6 = (i2 / i7) + 1 + viewTypeCount;
                }
            }
            int i8 = i2 - d4;
            if (this.f65731b != null) {
                i4 = b();
                if (i8 >= 0 && i8 < i4) {
                    if (i8 < this.f65731b.getCount()) {
                        i6 = this.f65731b.getItemViewType(i8);
                    } else if (this.f65738i) {
                        i6 = this.f65732c.size() + viewTypeCount + 1;
                    }
                }
            } else {
                i4 = 0;
            }
            if (this.f65738i && (i5 = i8 - i4) >= 0 && i5 < getCount() && i5 % this.f65734e != 0) {
                i6 = viewTypeCount + this.f65732c.size() + 1 + (i5 / this.f65734e) + 1;
            }
            if (GridViewWithHeaderAndFooter.f65709n) {
                String.format("getItemViewType: pos: %s, result: %s", Integer.valueOf(i2), Integer.valueOf(i6), Boolean.valueOf(this.f65738i), Boolean.valueOf(this.f65739j));
            }
            return i6;
        }

        @Override // android.widget.Adapter
        public View getView(int i2, View view, ViewGroup viewGroup) {
            int i4 = 0;
            if (GridViewWithHeaderAndFooter.f65709n) {
                Object[] objArr = new Object[2];
                objArr[0] = Integer.valueOf(i2);
                objArr[1] = Boolean.valueOf(view == null);
                String.format("getView: %s, reused: %s", objArr);
            }
            int d4 = d();
            int i5 = this.f65734e;
            int i6 = d4 * i5;
            if (i2 < i6) {
                ViewGroup viewGroup2 = this.f65732c.get(i2 / i5).f65725b;
                if (i2 % this.f65734e == 0) {
                    return viewGroup2;
                }
                if (view == null) {
                    view = new View(viewGroup.getContext());
                }
                view.setVisibility(4);
                view.setMinimumHeight(viewGroup2.getHeight());
                return view;
            }
            int i7 = i2 - i6;
            if (this.f65731b != null && i7 < (i4 = b())) {
                if (i7 < this.f65731b.getCount()) {
                    return this.f65731b.getView(i7, view, viewGroup);
                }
                if (view == null) {
                    view = new View(viewGroup.getContext());
                }
                view.setVisibility(4);
                view.setMinimumHeight(this.f65735f);
                return view;
            }
            int i8 = i7 - i4;
            if (i8 < getCount()) {
                ViewGroup viewGroup3 = this.f65733d.get(i8 / this.f65734e).f65725b;
                if (i2 % this.f65734e == 0) {
                    return viewGroup3;
                }
                if (view == null) {
                    view = new View(viewGroup.getContext());
                }
                view.setVisibility(4);
                view.setMinimumHeight(viewGroup3.getHeight());
                return view;
            }
            throw new ArrayIndexOutOfBoundsException(i2);
        }

        @Override // android.widget.Adapter
        public int getViewTypeCount() {
            ListAdapter listAdapter = this.f65731b;
            int viewTypeCount = listAdapter == null ? 1 : listAdapter.getViewTypeCount();
            if (this.f65738i) {
                int size = this.f65732c.size() + 1 + this.f65733d.size();
                if (this.f65739j) {
                    size++;
                }
                viewTypeCount += size;
            }
            if (GridViewWithHeaderAndFooter.f65709n) {
                String.format("getViewTypeCount: %s", Integer.valueOf(viewTypeCount));
            }
            return viewTypeCount;
        }

        @Override // android.widget.WrapperListAdapter
        public ListAdapter getWrappedAdapter() {
            return this.f65731b;
        }

        public void h(int i2) {
            if (i2 >= 1 && this.f65734e != i2) {
                this.f65734e = i2;
                e();
            }
        }

        @Override // android.widget.Adapter
        public boolean hasStableIds() {
            ListAdapter listAdapter = this.f65731b;
            return listAdapter != null && listAdapter.hasStableIds();
        }

        public void i(int i2) {
            this.f65735f = i2;
        }

        @Override // android.widget.Adapter
        public boolean isEmpty() {
            ListAdapter listAdapter = this.f65731b;
            return listAdapter == null || listAdapter.isEmpty();
        }

        @Override // android.widget.ListAdapter
        public boolean isEnabled(int i2) {
            int i4;
            int d4 = d();
            int i5 = this.f65734e;
            int i6 = d4 * i5;
            if (i2 < i6) {
                return i2 % i5 == 0 && this.f65732c.get(i2 / i5).f65727d;
            }
            int i7 = i2 - i6;
            if (this.f65731b != null) {
                i4 = b();
                if (i7 < i4) {
                    return i7 < this.f65731b.getCount() && this.f65731b.isEnabled(i7);
                }
            } else {
                i4 = 0;
            }
            int i8 = i7 - i4;
            int i9 = this.f65734e;
            return i8 % i9 == 0 && this.f65733d.get(i8 / i9).f65727d;
        }

        @Override // android.widget.Adapter
        public void registerDataSetObserver(DataSetObserver dataSetObserver) {
            this.f65730a.registerObserver(dataSetObserver);
            ListAdapter listAdapter = this.f65731b;
            if (listAdapter != null) {
                listAdapter.registerDataSetObserver(dataSetObserver);
            }
        }

        @Override // android.widget.Adapter
        public void unregisterDataSetObserver(DataSetObserver dataSetObserver) {
            this.f65730a.unregisterObserver(dataSetObserver);
            ListAdapter listAdapter = this.f65731b;
            if (listAdapter != null) {
                listAdapter.unregisterDataSetObserver(dataSetObserver);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public class e implements AdapterView.OnItemClickListener, AdapterView.OnItemLongClickListener {
        private e() {
        }

        @Override // android.widget.AdapterView.OnItemClickListener
        public void onItemClick(AdapterView<?> adapterView, View view, int i2, long j4) {
            int headerViewCount;
            if (GridViewWithHeaderAndFooter.this.f65711a == null || (headerViewCount = i2 - (GridViewWithHeaderAndFooter.this.getHeaderViewCount() * GridViewWithHeaderAndFooter.this.getNumColumnsCompatible())) < 0) {
                return;
            }
            GridViewWithHeaderAndFooter.this.f65711a.onItemClick(adapterView, view, headerViewCount, j4);
        }

        @Override // android.widget.AdapterView.OnItemLongClickListener
        public boolean onItemLongClick(AdapterView<?> adapterView, View view, int i2, long j4) {
            int headerViewCount;
            if (GridViewWithHeaderAndFooter.this.f65712b == null || (headerViewCount = i2 - (GridViewWithHeaderAndFooter.this.getHeaderViewCount() * GridViewWithHeaderAndFooter.this.getNumColumnsCompatible())) < 0) {
                return true;
            }
            GridViewWithHeaderAndFooter.this.f65712b.onItemLongClick(adapterView, view, headerViewCount, j4);
            return true;
        }
    }

    public GridViewWithHeaderAndFooter(Context context) {
        super(context);
        this.f65713c = -1;
        this.f65714d = null;
        this.f65715e = -1;
        this.f65716f = new ArrayList<>();
        this.f65717g = new ArrayList<>();
        i();
    }

    @TargetApi(16)
    private int getColumnWidthCompatible() {
        if (Build.VERSION.SDK_INT >= 16) {
            return super.getColumnWidth();
        }
        try {
            Field declaredField = GridView.class.getDeclaredField("mColumnWidth");
            declaredField.setAccessible(true);
            return declaredField.getInt(this);
        } catch (IllegalAccessException e4) {
            throw new RuntimeException(e4);
        } catch (NoSuchFieldException e5) {
            throw new RuntimeException(e5);
        }
    }

    private e getItemClickHandler() {
        if (this.f65719i == null) {
            this.f65719i = new e();
        }
        return this.f65719i;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @TargetApi(11)
    public int getNumColumnsCompatible() {
        if (Build.VERSION.SDK_INT >= 11) {
            return super.getNumColumns();
        }
        try {
            Field declaredField = GridView.class.getDeclaredField("mNumColumns");
            declaredField.setAccessible(true);
            return declaredField.getInt(this);
        } catch (Exception unused) {
            int i2 = this.f65713c;
            if (i2 != -1) {
                return i2;
            }
            throw new RuntimeException("Can not determine the mNumColumns for this API platform, please call setNumColumns to set it.");
        }
    }

    private void i() {
    }

    private void k(View view, ArrayList<b> arrayList) {
        int size = arrayList.size();
        for (int i2 = 0; i2 < size; i2++) {
            if (arrayList.get(i2).f65724a == view) {
                arrayList.remove(i2);
                return;
            }
        }
    }

    public void d(View view) {
        e(view, null, true);
    }

    public void e(View view, Object obj, boolean z3) {
        ListAdapter adapter = getAdapter();
        if (adapter != null && !(adapter instanceof d)) {
            throw new IllegalStateException("Cannot add header view to grid -- setAdapter has already been called.");
        }
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        b bVar = new b();
        c cVar = new c(getContext());
        if (layoutParams != null) {
            view.setLayoutParams(new FrameLayout.LayoutParams(layoutParams.width, layoutParams.height));
            cVar.setLayoutParams(new AbsListView.LayoutParams(layoutParams.width, layoutParams.height));
        }
        cVar.addView(view);
        bVar.f65724a = view;
        bVar.f65725b = cVar;
        bVar.f65726c = obj;
        bVar.f65727d = z3;
        this.f65717g.add(bVar);
        if (adapter != null) {
            ((d) adapter).e();
        }
    }

    public void f(View view) {
        g(view, null, true);
    }

    public void g(View view, Object obj, boolean z3) {
        ListAdapter adapter = getAdapter();
        if (adapter != null && !(adapter instanceof d)) {
            throw new IllegalStateException("Cannot add header view to grid -- setAdapter has already been called.");
        }
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        b bVar = new b();
        c cVar = new c(getContext());
        if (layoutParams != null) {
            view.setLayoutParams(new FrameLayout.LayoutParams(layoutParams.width, layoutParams.height));
            cVar.setLayoutParams(new AbsListView.LayoutParams(layoutParams.width, layoutParams.height));
        }
        cVar.addView(view);
        bVar.f65724a = view;
        bVar.f65725b = cVar;
        bVar.f65726c = obj;
        bVar.f65727d = z3;
        this.f65716f.add(bVar);
        if (adapter != null) {
            ((d) adapter).e();
        }
    }

    public int getFooterViewCount() {
        return this.f65717g.size();
    }

    public int getHeaderViewCount() {
        return this.f65716f.size();
    }

    @Override // android.widget.GridView
    @TargetApi(16)
    public int getHorizontalSpacing() {
        int horizontalSpacing;
        try {
            if (Build.VERSION.SDK_INT < 16) {
                Field declaredField = GridView.class.getDeclaredField("mHorizontalSpacing");
                declaredField.setAccessible(true);
                horizontalSpacing = declaredField.getInt(this);
            } else {
                horizontalSpacing = super.getHorizontalSpacing();
            }
            return horizontalSpacing;
        } catch (Exception unused) {
            return 0;
        }
    }

    public ListAdapter getOriginalAdapter() {
        return this.f65718h;
    }

    public int getRowHeight() {
        int i2 = this.f65715e;
        if (i2 > 0) {
            return i2;
        }
        ListAdapter adapter = getAdapter();
        int numColumnsCompatible = getNumColumnsCompatible();
        if (adapter == null || adapter.getCount() <= (this.f65716f.size() + this.f65717g.size()) * numColumnsCompatible) {
            return -1;
        }
        int columnWidthCompatible = getColumnWidthCompatible();
        View view = getAdapter().getView(numColumnsCompatible * this.f65716f.size(), this.f65714d, this);
        AbsListView.LayoutParams layoutParams = (AbsListView.LayoutParams) view.getLayoutParams();
        if (layoutParams == null) {
            layoutParams = new AbsListView.LayoutParams(-1, -2, 0);
            view.setLayoutParams(layoutParams);
        }
        view.measure(GridView.getChildMeasureSpec(View.MeasureSpec.makeMeasureSpec(columnWidthCompatible, 1073741824), 0, layoutParams.width), GridView.getChildMeasureSpec(View.MeasureSpec.makeMeasureSpec(0, 0), 0, layoutParams.height));
        this.f65714d = view;
        int measuredHeight = view.getMeasuredHeight();
        this.f65715e = measuredHeight;
        return measuredHeight;
    }

    @Override // android.widget.GridView
    @TargetApi(16)
    public int getVerticalSpacing() {
        int verticalSpacing;
        try {
            if (Build.VERSION.SDK_INT < 16) {
                Field declaredField = GridView.class.getDeclaredField("mVerticalSpacing");
                declaredField.setAccessible(true);
                verticalSpacing = declaredField.getInt(this);
            } else {
                verticalSpacing = super.getVerticalSpacing();
            }
            return verticalSpacing;
        } catch (Exception unused) {
            return 0;
        }
    }

    public int h(int i2) {
        if (i2 >= 0) {
            return this.f65716f.get(i2).f65724a.getMeasuredHeight();
        }
        return 0;
    }

    public void j() {
        this.f65715e = -1;
    }

    public boolean l(View view) {
        boolean z3 = false;
        if (this.f65717g.size() > 0) {
            ListAdapter adapter = getAdapter();
            if (adapter != null && ((d) adapter).f(view)) {
                z3 = true;
            }
            k(view, this.f65717g);
        }
        return z3;
    }

    public boolean m(View view) {
        boolean z3 = false;
        if (this.f65716f.size() > 0) {
            ListAdapter adapter = getAdapter();
            if (adapter != null && ((d) adapter).g(view)) {
                z3 = true;
            }
            k(view, this.f65716f);
        }
        return z3;
    }

    @TargetApi(11)
    public void n() {
        int count = getAdapter().getCount() - 1;
        if (Build.VERSION.SDK_INT >= 11) {
            smoothScrollToPositionFromTop(count, 0);
        } else {
            setSelection(count);
        }
    }

    @TargetApi(11)
    public void o(int i2) {
        int count = getAdapter().getCount() - 1;
        if (Build.VERSION.SDK_INT >= 11) {
            smoothScrollToPositionFromTop(count, 0, i2);
        } else {
            setSelection(count);
        }
    }

    @Override // android.widget.AbsListView, android.widget.AdapterView, android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.f65714d = null;
    }

    @Override // android.widget.AbsListView, android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        if (action == 0) {
            this.f65721k = 0.0f;
            this.f65720j = 0.0f;
            this.f65722l = motionEvent.getX();
            this.f65723m = motionEvent.getY();
        } else if (action == 2) {
            float x3 = motionEvent.getX();
            float y3 = motionEvent.getY();
            this.f65720j += Math.abs(x3 - this.f65722l);
            float abs = this.f65721k + Math.abs(y3 - this.f65723m);
            this.f65721k = abs;
            this.f65722l = x3;
            this.f65723m = y3;
            if (this.f65720j > abs) {
                return false;
            }
        }
        return super.onInterceptTouchEvent(motionEvent);
    }

    @Override // android.widget.GridView, android.widget.AbsListView, android.view.View
    protected void onMeasure(int i2, int i4) {
        super.onMeasure(i2, i4);
        ListAdapter adapter = getAdapter();
        if (adapter == null || !(adapter instanceof d)) {
            return;
        }
        d dVar = (d) adapter;
        dVar.h(getNumColumnsCompatible());
        dVar.i(getRowHeight());
    }

    @Override // android.view.ViewGroup
    public void setClipChildren(boolean z3) {
    }

    public void setClipChildrenSupper(boolean z3) {
        super.setClipChildren(false);
    }

    @Override // android.widget.GridView
    public void setNumColumns(int i2) {
        super.setNumColumns(i2);
        this.f65713c = i2;
        ListAdapter adapter = getAdapter();
        if (adapter == null || !(adapter instanceof d)) {
            return;
        }
        ((d) adapter).h(i2);
    }

    @Override // android.widget.AdapterView
    public void setOnItemClickListener(AdapterView.OnItemClickListener onItemClickListener) {
        this.f65711a = onItemClickListener;
        super.setOnItemClickListener(getItemClickHandler());
    }

    @Override // android.widget.AdapterView
    public void setOnItemLongClickListener(AdapterView.OnItemLongClickListener onItemLongClickListener) {
        this.f65712b = onItemLongClickListener;
        super.setOnItemLongClickListener(getItemClickHandler());
    }

    @Override // android.widget.AdapterView
    public void setAdapter(ListAdapter listAdapter) {
        this.f65718h = listAdapter;
        if (this.f65716f.size() <= 0 && this.f65717g.size() <= 0) {
            super.setAdapter(listAdapter);
            return;
        }
        d dVar = new d(this.f65716f, this.f65717g, listAdapter);
        int numColumnsCompatible = getNumColumnsCompatible();
        if (numColumnsCompatible > 1) {
            dVar.h(numColumnsCompatible);
        }
        dVar.i(getRowHeight());
        super.setAdapter((ListAdapter) dVar);
    }

    public GridViewWithHeaderAndFooter(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f65713c = -1;
        this.f65714d = null;
        this.f65715e = -1;
        this.f65716f = new ArrayList<>();
        this.f65717g = new ArrayList<>();
        i();
    }

    public GridViewWithHeaderAndFooter(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.f65713c = -1;
        this.f65714d = null;
        this.f65715e = -1;
        this.f65716f = new ArrayList<>();
        this.f65717g = new ArrayList<>();
        i();
    }
}
