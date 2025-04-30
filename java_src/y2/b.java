package y2;

import android.annotation.TargetApi;
import android.view.ActionMode;
import android.view.Menu;
import android.view.MenuItem;
import it.sephiroth.android.library.widget.AbsHListView;
/* compiled from: MultiChoiceModeWrapper.java */
/* loaded from: classes5.dex */
public class b implements a {

    /* renamed from: a  reason: collision with root package name */
    private a f74273a;

    /* renamed from: b  reason: collision with root package name */
    private AbsHListView f74274b;

    public b(AbsHListView absHListView) {
        this.f74274b = absHListView;
    }

    @Override // y2.a
    @TargetApi(11)
    public void a(ActionMode actionMode, int i2, long j4, boolean z3) {
        this.f74273a.a(actionMode, i2, j4, z3);
        if (this.f74274b.getCheckedItemCount() == 0) {
            actionMode.finish();
        }
    }

    public boolean b() {
        return this.f74273a != null;
    }

    public void c(a aVar) {
        this.f74273a = aVar;
    }

    @Override // android.view.ActionMode.Callback
    @TargetApi(11)
    public boolean onActionItemClicked(ActionMode actionMode, MenuItem menuItem) {
        return this.f74273a.onActionItemClicked(actionMode, menuItem);
    }

    @Override // android.view.ActionMode.Callback
    @TargetApi(11)
    public boolean onCreateActionMode(ActionMode actionMode, Menu menu) {
        if (this.f74273a.onCreateActionMode(actionMode, menu)) {
            this.f74274b.setLongClickable(false);
            return true;
        }
        return false;
    }

    @Override // android.view.ActionMode.Callback
    @TargetApi(11)
    public void onDestroyActionMode(ActionMode actionMode) {
        this.f74273a.onDestroyActionMode(actionMode);
        AbsHListView absHListView = this.f74274b;
        absHListView.f70447o0 = null;
        absHListView.Q();
        AbsHListView absHListView2 = this.f74274b;
        absHListView2.f70552m = true;
        absHListView2.r();
        this.f74274b.requestLayout();
        this.f74274b.setLongClickable(true);
    }

    @Override // android.view.ActionMode.Callback
    @TargetApi(11)
    public boolean onPrepareActionMode(ActionMode actionMode, Menu menu) {
        return this.f74273a.onPrepareActionMode(actionMode, menu);
    }
}
