package androidx.appcompat.app;

import android.view.View;
import android.widget.AdapterView;
import androidx.appcompat.app.ActionBar;
/* loaded from: classes.dex */
class NavItemSelectedListener implements AdapterView.OnItemSelectedListener {

    /* renamed from: a  reason: collision with root package name */
    private final ActionBar.OnNavigationListener f279a;

    public NavItemSelectedListener(ActionBar.OnNavigationListener onNavigationListener) {
        this.f279a = onNavigationListener;
    }

    @Override // android.widget.AdapterView.OnItemSelectedListener
    public void onItemSelected(AdapterView<?> adapterView, View view, int i2, long j4) {
        ActionBar.OnNavigationListener onNavigationListener = this.f279a;
        if (onNavigationListener != null) {
            onNavigationListener.onNavigationItemSelected(i2, j4);
        }
    }

    @Override // android.widget.AdapterView.OnItemSelectedListener
    public void onNothingSelected(AdapterView<?> adapterView) {
    }
}
