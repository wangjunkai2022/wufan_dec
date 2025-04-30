package androidx.cursoradapter.widget;

import android.content.Context;
import android.database.ContentObserver;
import android.database.Cursor;
import android.database.DataSetObserver;
import android.os.Handler;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.Filter;
import android.widget.FilterQueryProvider;
import android.widget.Filterable;
import androidx.annotation.RestrictTo;
import androidx.cursoradapter.widget.CursorFilter;
/* loaded from: classes.dex */
public abstract class CursorAdapter extends BaseAdapter implements Filterable, CursorFilter.CursorFilterClient {
    @Deprecated
    public static final int FLAG_AUTO_REQUERY = 1;
    public static final int FLAG_REGISTER_CONTENT_OBSERVER = 2;
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})

    /* renamed from: a  reason: collision with root package name */
    protected boolean f5149a;
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})

    /* renamed from: b  reason: collision with root package name */
    protected boolean f5150b;
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})

    /* renamed from: c  reason: collision with root package name */
    protected Cursor f5151c;
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})

    /* renamed from: d  reason: collision with root package name */
    protected Context f5152d;
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})

    /* renamed from: e  reason: collision with root package name */
    protected int f5153e;
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})

    /* renamed from: f  reason: collision with root package name */
    protected ChangeObserver f5154f;
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})

    /* renamed from: g  reason: collision with root package name */
    protected DataSetObserver f5155g;
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})

    /* renamed from: h  reason: collision with root package name */
    protected CursorFilter f5156h;
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})

    /* renamed from: i  reason: collision with root package name */
    protected FilterQueryProvider f5157i;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public class ChangeObserver extends ContentObserver {
        ChangeObserver() {
            super(new Handler());
        }

        @Override // android.database.ContentObserver
        public boolean deliverSelfNotifications() {
            return true;
        }

        @Override // android.database.ContentObserver
        public void onChange(boolean z3) {
            CursorAdapter.this.c();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public class MyDataSetObserver extends DataSetObserver {
        MyDataSetObserver() {
        }

        @Override // android.database.DataSetObserver
        public void onChanged() {
            CursorAdapter cursorAdapter = CursorAdapter.this;
            cursorAdapter.f5149a = true;
            cursorAdapter.notifyDataSetChanged();
        }

        @Override // android.database.DataSetObserver
        public void onInvalidated() {
            CursorAdapter cursorAdapter = CursorAdapter.this;
            cursorAdapter.f5149a = false;
            cursorAdapter.notifyDataSetInvalidated();
        }
    }

    @Deprecated
    public CursorAdapter(Context context, Cursor cursor) {
        a(context, cursor, 1);
    }

    void a(Context context, Cursor cursor, int i2) {
        if ((i2 & 1) == 1) {
            i2 |= 2;
            this.f5150b = true;
        } else {
            this.f5150b = false;
        }
        boolean z3 = cursor != null;
        this.f5151c = cursor;
        this.f5149a = z3;
        this.f5152d = context;
        this.f5153e = z3 ? cursor.getColumnIndexOrThrow("_id") : -1;
        if ((i2 & 2) == 2) {
            this.f5154f = new ChangeObserver();
            this.f5155g = new MyDataSetObserver();
        } else {
            this.f5154f = null;
            this.f5155g = null;
        }
        if (z3) {
            ChangeObserver changeObserver = this.f5154f;
            if (changeObserver != null) {
                cursor.registerContentObserver(changeObserver);
            }
            DataSetObserver dataSetObserver = this.f5155g;
            if (dataSetObserver != null) {
                cursor.registerDataSetObserver(dataSetObserver);
            }
        }
    }

    @Deprecated
    protected void b(Context context, Cursor cursor, boolean z3) {
        a(context, cursor, z3 ? 1 : 2);
    }

    public abstract void bindView(View view, Context context, Cursor cursor);

    protected void c() {
        Cursor cursor;
        if (!this.f5150b || (cursor = this.f5151c) == null || cursor.isClosed()) {
            return;
        }
        this.f5149a = this.f5151c.requery();
    }

    public void changeCursor(Cursor cursor) {
        Cursor swapCursor = swapCursor(cursor);
        if (swapCursor != null) {
            swapCursor.close();
        }
    }

    public CharSequence convertToString(Cursor cursor) {
        return cursor == null ? "" : cursor.toString();
    }

    @Override // android.widget.Adapter
    public int getCount() {
        Cursor cursor;
        if (!this.f5149a || (cursor = this.f5151c) == null) {
            return 0;
        }
        return cursor.getCount();
    }

    @Override // androidx.cursoradapter.widget.CursorFilter.CursorFilterClient
    public Cursor getCursor() {
        return this.f5151c;
    }

    @Override // android.widget.BaseAdapter, android.widget.SpinnerAdapter
    public View getDropDownView(int i2, View view, ViewGroup viewGroup) {
        if (this.f5149a) {
            this.f5151c.moveToPosition(i2);
            if (view == null) {
                view = newDropDownView(this.f5152d, this.f5151c, viewGroup);
            }
            bindView(view, this.f5152d, this.f5151c);
            return view;
        }
        return null;
    }

    @Override // android.widget.Filterable
    public Filter getFilter() {
        if (this.f5156h == null) {
            this.f5156h = new CursorFilter(this);
        }
        return this.f5156h;
    }

    public FilterQueryProvider getFilterQueryProvider() {
        return this.f5157i;
    }

    @Override // android.widget.Adapter
    public Object getItem(int i2) {
        Cursor cursor;
        if (!this.f5149a || (cursor = this.f5151c) == null) {
            return null;
        }
        cursor.moveToPosition(i2);
        return this.f5151c;
    }

    @Override // android.widget.Adapter
    public long getItemId(int i2) {
        Cursor cursor;
        if (this.f5149a && (cursor = this.f5151c) != null && cursor.moveToPosition(i2)) {
            return this.f5151c.getLong(this.f5153e);
        }
        return 0L;
    }

    @Override // android.widget.Adapter
    public View getView(int i2, View view, ViewGroup viewGroup) {
        if (this.f5149a) {
            if (this.f5151c.moveToPosition(i2)) {
                if (view == null) {
                    view = newView(this.f5152d, this.f5151c, viewGroup);
                }
                bindView(view, this.f5152d, this.f5151c);
                return view;
            }
            throw new IllegalStateException("couldn't move cursor to position " + i2);
        }
        throw new IllegalStateException("this should only be called when the cursor is valid");
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public boolean hasStableIds() {
        return true;
    }

    public View newDropDownView(Context context, Cursor cursor, ViewGroup viewGroup) {
        return newView(context, cursor, viewGroup);
    }

    public abstract View newView(Context context, Cursor cursor, ViewGroup viewGroup);

    public Cursor runQueryOnBackgroundThread(CharSequence charSequence) {
        FilterQueryProvider filterQueryProvider = this.f5157i;
        if (filterQueryProvider != null) {
            return filterQueryProvider.runQuery(charSequence);
        }
        return this.f5151c;
    }

    public void setFilterQueryProvider(FilterQueryProvider filterQueryProvider) {
        this.f5157i = filterQueryProvider;
    }

    public Cursor swapCursor(Cursor cursor) {
        Cursor cursor2 = this.f5151c;
        if (cursor == cursor2) {
            return null;
        }
        if (cursor2 != null) {
            ChangeObserver changeObserver = this.f5154f;
            if (changeObserver != null) {
                cursor2.unregisterContentObserver(changeObserver);
            }
            DataSetObserver dataSetObserver = this.f5155g;
            if (dataSetObserver != null) {
                cursor2.unregisterDataSetObserver(dataSetObserver);
            }
        }
        this.f5151c = cursor;
        if (cursor != null) {
            ChangeObserver changeObserver2 = this.f5154f;
            if (changeObserver2 != null) {
                cursor.registerContentObserver(changeObserver2);
            }
            DataSetObserver dataSetObserver2 = this.f5155g;
            if (dataSetObserver2 != null) {
                cursor.registerDataSetObserver(dataSetObserver2);
            }
            this.f5153e = cursor.getColumnIndexOrThrow("_id");
            this.f5149a = true;
            notifyDataSetChanged();
        } else {
            this.f5153e = -1;
            this.f5149a = false;
            notifyDataSetInvalidated();
        }
        return cursor2;
    }

    public CursorAdapter(Context context, Cursor cursor, boolean z3) {
        a(context, cursor, z3 ? 1 : 2);
    }

    public CursorAdapter(Context context, Cursor cursor, int i2) {
        a(context, cursor, i2);
    }
}
