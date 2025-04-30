package it.sephiroth.android.library.widget;

import android.database.DataSetObserver;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Filter;
import android.widget.Filterable;
import android.widget.ListAdapter;
import android.widget.WrapperListAdapter;
import it.sephiroth.android.library.widget.HListView;
import java.util.ArrayList;
import java.util.Iterator;
/* compiled from: HeaderViewListAdapter.java */
/* loaded from: classes5.dex */
public class b implements WrapperListAdapter, Filterable {

    /* renamed from: f  reason: collision with root package name */
    static final ArrayList<HListView.c> f70632f = new ArrayList<>();

    /* renamed from: a  reason: collision with root package name */
    private final ListAdapter f70633a;

    /* renamed from: b  reason: collision with root package name */
    ArrayList<HListView.c> f70634b;

    /* renamed from: c  reason: collision with root package name */
    ArrayList<HListView.c> f70635c;

    /* renamed from: d  reason: collision with root package name */
    boolean f70636d;

    /* renamed from: e  reason: collision with root package name */
    private final boolean f70637e;

    public b(ArrayList<HListView.c> arrayList, ArrayList<HListView.c> arrayList2, ListAdapter listAdapter) {
        this.f70633a = listAdapter;
        this.f70637e = listAdapter instanceof Filterable;
        if (arrayList == null) {
            this.f70634b = f70632f;
        } else {
            this.f70634b = arrayList;
        }
        if (arrayList2 == null) {
            this.f70635c = f70632f;
        } else {
            this.f70635c = arrayList2;
        }
        this.f70636d = a(this.f70634b) && a(this.f70635c);
    }

    private boolean a(ArrayList<HListView.c> arrayList) {
        if (arrayList != null) {
            Iterator<HListView.c> it2 = arrayList.iterator();
            while (it2.hasNext()) {
                if (!it2.next().f70619c) {
                    return false;
                }
            }
            return true;
        }
        return true;
    }

    @Override // android.widget.ListAdapter
    public boolean areAllItemsEnabled() {
        ListAdapter listAdapter = this.f70633a;
        if (listAdapter != null) {
            return this.f70636d && listAdapter.areAllItemsEnabled();
        }
        return true;
    }

    public int b() {
        return this.f70635c.size();
    }

    public int c() {
        return this.f70634b.size();
    }

    public boolean d(View view) {
        boolean z3 = false;
        for (int i2 = 0; i2 < this.f70635c.size(); i2++) {
            if (this.f70635c.get(i2).f70617a == view) {
                this.f70635c.remove(i2);
                if (a(this.f70634b) && a(this.f70635c)) {
                    z3 = true;
                }
                this.f70636d = z3;
                return true;
            }
        }
        return false;
    }

    public boolean e(View view) {
        boolean z3 = false;
        for (int i2 = 0; i2 < this.f70634b.size(); i2++) {
            if (this.f70634b.get(i2).f70617a == view) {
                this.f70634b.remove(i2);
                if (a(this.f70634b) && a(this.f70635c)) {
                    z3 = true;
                }
                this.f70636d = z3;
                return true;
            }
        }
        return false;
    }

    @Override // android.widget.Adapter
    public int getCount() {
        int b4;
        int c4;
        if (this.f70633a != null) {
            b4 = b() + c();
            c4 = this.f70633a.getCount();
        } else {
            b4 = b();
            c4 = c();
        }
        return b4 + c4;
    }

    @Override // android.widget.Filterable
    public Filter getFilter() {
        if (this.f70637e) {
            return ((Filterable) this.f70633a).getFilter();
        }
        return null;
    }

    @Override // android.widget.Adapter
    public Object getItem(int i2) {
        int c4 = c();
        if (i2 < c4) {
            return this.f70634b.get(i2).f70618b;
        }
        int i4 = i2 - c4;
        int i5 = 0;
        ListAdapter listAdapter = this.f70633a;
        if (listAdapter != null && i4 < (i5 = listAdapter.getCount())) {
            return this.f70633a.getItem(i4);
        }
        return this.f70635c.get(i4 - i5).f70618b;
    }

    @Override // android.widget.Adapter
    public long getItemId(int i2) {
        int i4;
        int c4 = c();
        ListAdapter listAdapter = this.f70633a;
        if (listAdapter == null || i2 < c4 || (i4 = i2 - c4) >= listAdapter.getCount()) {
            return -1L;
        }
        return this.f70633a.getItemId(i4);
    }

    @Override // android.widget.Adapter
    public int getItemViewType(int i2) {
        int i4;
        int c4 = c();
        ListAdapter listAdapter = this.f70633a;
        if (listAdapter == null || i2 < c4 || (i4 = i2 - c4) >= listAdapter.getCount()) {
            return -2;
        }
        return this.f70633a.getItemViewType(i4);
    }

    @Override // android.widget.Adapter
    public View getView(int i2, View view, ViewGroup viewGroup) {
        int c4 = c();
        if (i2 < c4) {
            return this.f70634b.get(i2).f70617a;
        }
        int i4 = i2 - c4;
        int i5 = 0;
        ListAdapter listAdapter = this.f70633a;
        if (listAdapter != null && i4 < (i5 = listAdapter.getCount())) {
            return this.f70633a.getView(i4, view, viewGroup);
        }
        return this.f70635c.get(i4 - i5).f70617a;
    }

    @Override // android.widget.Adapter
    public int getViewTypeCount() {
        ListAdapter listAdapter = this.f70633a;
        if (listAdapter != null) {
            return listAdapter.getViewTypeCount();
        }
        return 1;
    }

    @Override // android.widget.WrapperListAdapter
    public ListAdapter getWrappedAdapter() {
        return this.f70633a;
    }

    @Override // android.widget.Adapter
    public boolean hasStableIds() {
        ListAdapter listAdapter = this.f70633a;
        if (listAdapter != null) {
            return listAdapter.hasStableIds();
        }
        return false;
    }

    @Override // android.widget.Adapter
    public boolean isEmpty() {
        ListAdapter listAdapter = this.f70633a;
        return listAdapter == null || listAdapter.isEmpty();
    }

    @Override // android.widget.ListAdapter
    public boolean isEnabled(int i2) {
        int c4 = c();
        if (i2 < c4) {
            return this.f70634b.get(i2).f70619c;
        }
        int i4 = i2 - c4;
        int i5 = 0;
        ListAdapter listAdapter = this.f70633a;
        if (listAdapter != null && i4 < (i5 = listAdapter.getCount())) {
            try {
                return this.f70633a.isEnabled(i4);
            } catch (Exception e4) {
                e4.printStackTrace();
            }
        }
        return this.f70635c.get(i4 - i5).f70619c;
    }

    @Override // android.widget.Adapter
    public void registerDataSetObserver(DataSetObserver dataSetObserver) {
        ListAdapter listAdapter = this.f70633a;
        if (listAdapter != null) {
            listAdapter.registerDataSetObserver(dataSetObserver);
        }
    }

    @Override // android.widget.Adapter
    public void unregisterDataSetObserver(DataSetObserver dataSetObserver) {
        ListAdapter listAdapter = this.f70633a;
        if (listAdapter != null) {
            listAdapter.unregisterDataSetObserver(dataSetObserver);
        }
    }
}
