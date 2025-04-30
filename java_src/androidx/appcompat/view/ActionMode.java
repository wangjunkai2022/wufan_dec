package androidx.appcompat.view;

import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import androidx.annotation.RestrictTo;
/* loaded from: classes.dex */
public abstract class ActionMode {

    /* renamed from: a  reason: collision with root package name */
    private Object f445a;

    /* renamed from: b  reason: collision with root package name */
    private boolean f446b;

    /* loaded from: classes.dex */
    public interface Callback {
        boolean onActionItemClicked(ActionMode actionMode, MenuItem menuItem);

        boolean onCreateActionMode(ActionMode actionMode, Menu menu);

        void onDestroyActionMode(ActionMode actionMode);

        boolean onPrepareActionMode(ActionMode actionMode, Menu menu);
    }

    public abstract void finish();

    public abstract View getCustomView();

    public abstract Menu getMenu();

    public abstract MenuInflater getMenuInflater();

    public abstract CharSequence getSubtitle();

    public Object getTag() {
        return this.f445a;
    }

    public abstract CharSequence getTitle();

    public boolean getTitleOptionalHint() {
        return this.f446b;
    }

    public abstract void invalidate();

    public boolean isTitleOptional() {
        return false;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public boolean isUiFocusable() {
        return true;
    }

    public abstract void setCustomView(View view);

    public abstract void setSubtitle(int i2);

    public abstract void setSubtitle(CharSequence charSequence);

    public void setTag(Object obj) {
        this.f445a = obj;
    }

    public abstract void setTitle(int i2);

    public abstract void setTitle(CharSequence charSequence);

    public void setTitleOptionalHint(boolean z3) {
        this.f446b = z3;
    }
}
