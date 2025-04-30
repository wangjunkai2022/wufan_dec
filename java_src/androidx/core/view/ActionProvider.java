package androidx.core.view;

import android.content.Context;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;
import androidx.annotation.RestrictTo;
/* loaded from: classes.dex */
public abstract class ActionProvider {

    /* renamed from: d  reason: collision with root package name */
    private static final String f4727d = "ActionProvider(support)";

    /* renamed from: a  reason: collision with root package name */
    private final Context f4728a;

    /* renamed from: b  reason: collision with root package name */
    private SubUiVisibilityListener f4729b;

    /* renamed from: c  reason: collision with root package name */
    private VisibilityListener f4730c;

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    /* loaded from: classes.dex */
    public interface SubUiVisibilityListener {
        void onSubUiVisibilityChanged(boolean z3);
    }

    /* loaded from: classes.dex */
    public interface VisibilityListener {
        void onActionProviderVisibilityChanged(boolean z3);
    }

    public ActionProvider(Context context) {
        this.f4728a = context;
    }

    public Context getContext() {
        return this.f4728a;
    }

    public boolean hasSubMenu() {
        return false;
    }

    public boolean isVisible() {
        return true;
    }

    public abstract View onCreateActionView();

    public View onCreateActionView(MenuItem menuItem) {
        return onCreateActionView();
    }

    public boolean onPerformDefaultAction() {
        return false;
    }

    public void onPrepareSubMenu(SubMenu subMenu) {
    }

    public boolean overridesItemVisibility() {
        return false;
    }

    public void refreshVisibility() {
        if (this.f4730c == null || !overridesItemVisibility()) {
            return;
        }
        this.f4730c.onActionProviderVisibilityChanged(isVisible());
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public void reset() {
        this.f4730c = null;
        this.f4729b = null;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public void setSubUiVisibilityListener(SubUiVisibilityListener subUiVisibilityListener) {
        this.f4729b = subUiVisibilityListener;
    }

    public void setVisibilityListener(VisibilityListener visibilityListener) {
        if (this.f4730c != null && visibilityListener != null) {
            StringBuilder sb = new StringBuilder();
            sb.append("setVisibilityListener: Setting a new ActionProvider.VisibilityListener when one is already set. Are you reusing this ");
            sb.append(getClass().getSimpleName());
            sb.append(" instance while it is still in use somewhere else?");
        }
        this.f4730c = visibilityListener;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public void subUiVisibilityChanged(boolean z3) {
        SubUiVisibilityListener subUiVisibilityListener = this.f4729b;
        if (subUiVisibilityListener != null) {
            subUiVisibilityListener.onSubUiVisibilityChanged(z3);
        }
    }
}
