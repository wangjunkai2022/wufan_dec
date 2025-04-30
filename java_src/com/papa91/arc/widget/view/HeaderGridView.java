package com.papa91.arc.widget.view;

import android.content.Context;
import android.database.DataSetObservable;
import android.database.DataSetObserver;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Filter;
import android.widget.Filterable;
import android.widget.FrameLayout;
import android.widget.GridView;
import android.widget.ListAdapter;
import android.widget.WrapperListAdapter;
import java.util.ArrayList;
import java.util.Iterator;
/* loaded from: classes4.dex */
public class HeaderGridView extends GridView {
    private static final String TAG = "HeaderGridView";
    private ArrayList<FixedViewInfo> mHeaderViewInfos;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes4.dex */
    public static class FixedViewInfo {
        public Object data;
        public boolean isSelectable;
        public View view;
        public ViewGroup viewContainer;

        private FixedViewInfo() {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes4.dex */
    public class FullWidthFixedViewLayout extends FrameLayout {
        public FullWidthFixedViewLayout(Context context) {
            super(context);
        }

        @Override // android.widget.FrameLayout, android.view.View
        protected void onMeasure(int i2, int i4) {
            super.onMeasure(View.MeasureSpec.makeMeasureSpec((HeaderGridView.this.getMeasuredWidth() - HeaderGridView.this.getPaddingLeft()) - HeaderGridView.this.getPaddingRight(), View.MeasureSpec.getMode(i2)), i4);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes4.dex */
    public static class HeaderViewGridAdapter implements WrapperListAdapter, Filterable {
        private final ListAdapter mAdapter;
        boolean mAreAllFixedViewsSelectable;
        ArrayList<FixedViewInfo> mHeaderViewInfos;
        private final boolean mIsFilterable;
        private final DataSetObservable mDataSetObservable = new DataSetObservable();
        private int mNumColumns = 1;

        public HeaderViewGridAdapter(ArrayList<FixedViewInfo> arrayList, ListAdapter listAdapter) {
            this.mAdapter = listAdapter;
            this.mIsFilterable = listAdapter instanceof Filterable;
            if (arrayList != null) {
                this.mHeaderViewInfos = arrayList;
                this.mAreAllFixedViewsSelectable = areAllListInfosSelectable(arrayList);
                return;
            }
            throw new IllegalArgumentException("headerViewInfos cannot be null");
        }

        private boolean areAllListInfosSelectable(ArrayList<FixedViewInfo> arrayList) {
            if (arrayList != null) {
                Iterator<FixedViewInfo> it2 = arrayList.iterator();
                while (it2.hasNext()) {
                    if (!it2.next().isSelectable) {
                        return false;
                    }
                }
                return true;
            }
            return true;
        }

        @Override // android.widget.ListAdapter
        public boolean areAllItemsEnabled() {
            ListAdapter listAdapter = this.mAdapter;
            if (listAdapter != null) {
                return this.mAreAllFixedViewsSelectable && listAdapter.areAllItemsEnabled();
            }
            return true;
        }

        @Override // android.widget.Adapter
        public int getCount() {
            if (this.mAdapter != null) {
                return (getHeadersCount() * this.mNumColumns) + this.mAdapter.getCount();
            }
            return getHeadersCount() * this.mNumColumns;
        }

        @Override // android.widget.Filterable
        public Filter getFilter() {
            if (this.mIsFilterable) {
                return ((Filterable) this.mAdapter).getFilter();
            }
            return null;
        }

        public int getHeadersCount() {
            return this.mHeaderViewInfos.size();
        }

        @Override // android.widget.Adapter
        public Object getItem(int i2) {
            int headersCount = getHeadersCount();
            int i4 = this.mNumColumns;
            int i5 = headersCount * i4;
            if (i2 < i5) {
                if (i2 % i4 == 0) {
                    return this.mHeaderViewInfos.get(i2 / i4).data;
                }
                return null;
            }
            int i6 = i2 - i5;
            ListAdapter listAdapter = this.mAdapter;
            if (listAdapter != null && i6 < listAdapter.getCount()) {
                return this.mAdapter.getItem(i6);
            }
            throw new ArrayIndexOutOfBoundsException(i2);
        }

        @Override // android.widget.Adapter
        public long getItemId(int i2) {
            int i4;
            int headersCount = getHeadersCount() * this.mNumColumns;
            ListAdapter listAdapter = this.mAdapter;
            if (listAdapter == null || i2 < headersCount || (i4 = i2 - headersCount) >= listAdapter.getCount()) {
                return -1L;
            }
            return this.mAdapter.getItemId(i4);
        }

        @Override // android.widget.Adapter
        public int getItemViewType(int i2) {
            int i4;
            int headersCount = getHeadersCount();
            int i5 = this.mNumColumns;
            int i6 = headersCount * i5;
            if (i2 < i6 && i2 % i5 != 0) {
                ListAdapter listAdapter = this.mAdapter;
                if (listAdapter != null) {
                    return listAdapter.getViewTypeCount();
                }
                return 1;
            }
            ListAdapter listAdapter2 = this.mAdapter;
            if (listAdapter2 == null || i2 < i6 || (i4 = i2 - i6) >= listAdapter2.getCount()) {
                return -2;
            }
            return this.mAdapter.getItemViewType(i4);
        }

        @Override // android.widget.Adapter
        public View getView(int i2, View view, ViewGroup viewGroup) {
            int headersCount = getHeadersCount();
            int i4 = this.mNumColumns;
            int i5 = headersCount * i4;
            if (i2 < i5) {
                ViewGroup viewGroup2 = this.mHeaderViewInfos.get(i2 / i4).viewContainer;
                if (i2 % this.mNumColumns == 0) {
                    return viewGroup2;
                }
                if (view == null) {
                    view = new View(viewGroup.getContext());
                }
                view.setVisibility(4);
                view.setMinimumHeight(viewGroup2.getHeight());
                return view;
            }
            int i6 = i2 - i5;
            ListAdapter listAdapter = this.mAdapter;
            if (listAdapter != null && i6 < listAdapter.getCount()) {
                return this.mAdapter.getView(i6, view, viewGroup);
            }
            throw new ArrayIndexOutOfBoundsException(i2);
        }

        @Override // android.widget.Adapter
        public int getViewTypeCount() {
            ListAdapter listAdapter = this.mAdapter;
            if (listAdapter != null) {
                return listAdapter.getViewTypeCount() + 1;
            }
            return 2;
        }

        @Override // android.widget.WrapperListAdapter
        public ListAdapter getWrappedAdapter() {
            return this.mAdapter;
        }

        @Override // android.widget.Adapter
        public boolean hasStableIds() {
            ListAdapter listAdapter = this.mAdapter;
            if (listAdapter != null) {
                return listAdapter.hasStableIds();
            }
            return false;
        }

        @Override // android.widget.Adapter
        public boolean isEmpty() {
            ListAdapter listAdapter = this.mAdapter;
            return (listAdapter == null || listAdapter.isEmpty()) && getHeadersCount() == 0;
        }

        @Override // android.widget.ListAdapter
        public boolean isEnabled(int i2) {
            int headersCount = getHeadersCount();
            int i4 = this.mNumColumns;
            int i5 = headersCount * i4;
            if (i2 < i5) {
                return i2 % i4 == 0 && this.mHeaderViewInfos.get(i2 / i4).isSelectable;
            }
            int i6 = i2 - i5;
            ListAdapter listAdapter = this.mAdapter;
            if (listAdapter != null && i6 < listAdapter.getCount()) {
                return this.mAdapter.isEnabled(i6);
            }
            throw new ArrayIndexOutOfBoundsException(i2);
        }

        public void notifyDataSetChanged() {
            this.mDataSetObservable.notifyChanged();
        }

        @Override // android.widget.Adapter
        public void registerDataSetObserver(DataSetObserver dataSetObserver) {
            this.mDataSetObservable.registerObserver(dataSetObserver);
            ListAdapter listAdapter = this.mAdapter;
            if (listAdapter != null) {
                listAdapter.registerDataSetObserver(dataSetObserver);
            }
        }

        public boolean removeHeader(View view) {
            for (int i2 = 0; i2 < this.mHeaderViewInfos.size(); i2++) {
                if (this.mHeaderViewInfos.get(i2).view == view) {
                    this.mHeaderViewInfos.remove(i2);
                    this.mAreAllFixedViewsSelectable = areAllListInfosSelectable(this.mHeaderViewInfos);
                    this.mDataSetObservable.notifyChanged();
                    return true;
                }
            }
            return false;
        }

        public void setNumColumns(int i2) {
            if (i2 >= 1) {
                if (this.mNumColumns != i2) {
                    this.mNumColumns = i2;
                    notifyDataSetChanged();
                    return;
                }
                return;
            }
            throw new IllegalArgumentException("Number of columns must be 1 or more");
        }

        @Override // android.widget.Adapter
        public void unregisterDataSetObserver(DataSetObserver dataSetObserver) {
            this.mDataSetObservable.unregisterObserver(dataSetObserver);
            ListAdapter listAdapter = this.mAdapter;
            if (listAdapter != null) {
                listAdapter.unregisterDataSetObserver(dataSetObserver);
            }
        }
    }

    public HeaderGridView(Context context) {
        super(context);
        this.mHeaderViewInfos = new ArrayList<>();
        initHeaderGridView();
    }

    private void initHeaderGridView() {
        super.setClipChildren(false);
    }

    private void removeFixedViewInfo(View view, ArrayList<FixedViewInfo> arrayList) {
        int size = arrayList.size();
        for (int i2 = 0; i2 < size; i2++) {
            if (arrayList.get(i2).view == view) {
                arrayList.remove(i2);
                return;
            }
        }
    }

    public void addHeaderView(View view, Object obj, boolean z3) {
        ListAdapter adapter = getAdapter();
        if (adapter != null && !(adapter instanceof HeaderViewGridAdapter)) {
            throw new IllegalStateException("Cannot add header view to grid -- setAdapter has already been called.");
        }
        FixedViewInfo fixedViewInfo = new FixedViewInfo();
        FullWidthFixedViewLayout fullWidthFixedViewLayout = new FullWidthFixedViewLayout(getContext());
        fullWidthFixedViewLayout.addView(view);
        fixedViewInfo.view = view;
        fixedViewInfo.viewContainer = fullWidthFixedViewLayout;
        fixedViewInfo.data = obj;
        fixedViewInfo.isSelectable = z3;
        this.mHeaderViewInfos.add(fixedViewInfo);
        if (adapter != null) {
            ((HeaderViewGridAdapter) adapter).notifyDataSetChanged();
        }
    }

    public int getHeaderViewCount() {
        return this.mHeaderViewInfos.size();
    }

    @Override // android.widget.GridView, android.widget.AbsListView, android.view.View
    protected void onMeasure(int i2, int i4) {
        super.onMeasure(i2, i4);
        ListAdapter adapter = getAdapter();
        if (adapter == null || !(adapter instanceof HeaderViewGridAdapter)) {
            return;
        }
        ((HeaderViewGridAdapter) adapter).setNumColumns(getNumColumns());
    }

    public boolean removeHeaderView(View view) {
        boolean z3 = false;
        if (this.mHeaderViewInfos.size() > 0) {
            ListAdapter adapter = getAdapter();
            if (adapter != null && ((HeaderViewGridAdapter) adapter).removeHeader(view)) {
                z3 = true;
            }
            removeFixedViewInfo(view, this.mHeaderViewInfos);
        }
        return z3;
    }

    @Override // android.view.ViewGroup
    public void setClipChildren(boolean z3) {
    }

    @Override // android.widget.AdapterView
    public void setAdapter(ListAdapter listAdapter) {
        if (this.mHeaderViewInfos.size() > 0) {
            HeaderViewGridAdapter headerViewGridAdapter = new HeaderViewGridAdapter(this.mHeaderViewInfos, listAdapter);
            int numColumns = getNumColumns();
            if (numColumns > 1) {
                headerViewGridAdapter.setNumColumns(numColumns);
            }
            super.setAdapter((ListAdapter) headerViewGridAdapter);
            return;
        }
        super.setAdapter(listAdapter);
    }

    public HeaderGridView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mHeaderViewInfos = new ArrayList<>();
        initHeaderGridView();
    }

    public HeaderGridView(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.mHeaderViewInfos = new ArrayList<>();
        initHeaderGridView();
    }

    public void addHeaderView(View view) {
        addHeaderView(view, null, true);
    }
}
