package androidx.cursoradapter.widget;

import android.database.Cursor;
import android.widget.Filter;
/* loaded from: classes.dex */
class CursorFilter extends Filter {

    /* renamed from: a  reason: collision with root package name */
    CursorFilterClient f5160a;

    /* loaded from: classes.dex */
    interface CursorFilterClient {
        void changeCursor(Cursor cursor);

        CharSequence convertToString(Cursor cursor);

        Cursor getCursor();

        Cursor runQueryOnBackgroundThread(CharSequence charSequence);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public CursorFilter(CursorFilterClient cursorFilterClient) {
        this.f5160a = cursorFilterClient;
    }

    @Override // android.widget.Filter
    public CharSequence convertResultToString(Object obj) {
        return this.f5160a.convertToString((Cursor) obj);
    }

    @Override // android.widget.Filter
    protected Filter.FilterResults performFiltering(CharSequence charSequence) {
        Cursor runQueryOnBackgroundThread = this.f5160a.runQueryOnBackgroundThread(charSequence);
        Filter.FilterResults filterResults = new Filter.FilterResults();
        if (runQueryOnBackgroundThread != null) {
            filterResults.count = runQueryOnBackgroundThread.getCount();
            filterResults.values = runQueryOnBackgroundThread;
        } else {
            filterResults.count = 0;
            filterResults.values = null;
        }
        return filterResults;
    }

    @Override // android.widget.Filter
    protected void publishResults(CharSequence charSequence, Filter.FilterResults filterResults) {
        Cursor cursor = this.f5160a.getCursor();
        Object obj = filterResults.values;
        if (obj == null || obj == cursor) {
            return;
        }
        this.f5160a.changeCursor((Cursor) obj);
    }
}
