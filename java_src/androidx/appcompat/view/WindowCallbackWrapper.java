package androidx.appcompat.view;

import android.view.ActionMode;
import android.view.KeyEvent;
import android.view.KeyboardShortcutGroup;
import android.view.Menu;
import android.view.MenuItem;
import android.view.MotionEvent;
import android.view.SearchEvent;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import android.view.accessibility.AccessibilityEvent;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import java.util.List;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
/* loaded from: classes.dex */
public class WindowCallbackWrapper implements Window.Callback {

    /* renamed from: a  reason: collision with root package name */
    final Window.Callback f514a;

    public WindowCallbackWrapper(Window.Callback callback) {
        if (callback != null) {
            this.f514a = callback;
            return;
        }
        throw new IllegalArgumentException("Window callback may not be null");
    }

    @Override // android.view.Window.Callback
    public boolean dispatchGenericMotionEvent(MotionEvent motionEvent) {
        return this.f514a.dispatchGenericMotionEvent(motionEvent);
    }

    @Override // android.view.Window.Callback
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        return this.f514a.dispatchKeyEvent(keyEvent);
    }

    @Override // android.view.Window.Callback
    public boolean dispatchKeyShortcutEvent(KeyEvent keyEvent) {
        return this.f514a.dispatchKeyShortcutEvent(keyEvent);
    }

    @Override // android.view.Window.Callback
    public boolean dispatchPopulateAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        return this.f514a.dispatchPopulateAccessibilityEvent(accessibilityEvent);
    }

    @Override // android.view.Window.Callback
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        return this.f514a.dispatchTouchEvent(motionEvent);
    }

    @Override // android.view.Window.Callback
    public boolean dispatchTrackballEvent(MotionEvent motionEvent) {
        return this.f514a.dispatchTrackballEvent(motionEvent);
    }

    public final Window.Callback getWrapped() {
        return this.f514a;
    }

    @Override // android.view.Window.Callback
    public void onActionModeFinished(android.view.ActionMode actionMode) {
        this.f514a.onActionModeFinished(actionMode);
    }

    @Override // android.view.Window.Callback
    public void onActionModeStarted(android.view.ActionMode actionMode) {
        this.f514a.onActionModeStarted(actionMode);
    }

    @Override // android.view.Window.Callback
    public void onAttachedToWindow() {
        this.f514a.onAttachedToWindow();
    }

    @Override // android.view.Window.Callback
    public void onContentChanged() {
        this.f514a.onContentChanged();
    }

    @Override // android.view.Window.Callback
    public boolean onCreatePanelMenu(int i2, Menu menu) {
        return this.f514a.onCreatePanelMenu(i2, menu);
    }

    @Override // android.view.Window.Callback
    public View onCreatePanelView(int i2) {
        return this.f514a.onCreatePanelView(i2);
    }

    @Override // android.view.Window.Callback
    public void onDetachedFromWindow() {
        this.f514a.onDetachedFromWindow();
    }

    @Override // android.view.Window.Callback
    public boolean onMenuItemSelected(int i2, MenuItem menuItem) {
        return this.f514a.onMenuItemSelected(i2, menuItem);
    }

    @Override // android.view.Window.Callback
    public boolean onMenuOpened(int i2, Menu menu) {
        return this.f514a.onMenuOpened(i2, menu);
    }

    @Override // android.view.Window.Callback
    public void onPanelClosed(int i2, Menu menu) {
        this.f514a.onPanelClosed(i2, menu);
    }

    @Override // android.view.Window.Callback
    @RequiresApi(26)
    public void onPointerCaptureChanged(boolean z3) {
        this.f514a.onPointerCaptureChanged(z3);
    }

    @Override // android.view.Window.Callback
    public boolean onPreparePanel(int i2, View view, Menu menu) {
        return this.f514a.onPreparePanel(i2, view, menu);
    }

    @Override // android.view.Window.Callback
    @RequiresApi(24)
    public void onProvideKeyboardShortcuts(List<KeyboardShortcutGroup> list, Menu menu, int i2) {
        this.f514a.onProvideKeyboardShortcuts(list, menu, i2);
    }

    @Override // android.view.Window.Callback
    @RequiresApi(23)
    public boolean onSearchRequested(SearchEvent searchEvent) {
        return this.f514a.onSearchRequested(searchEvent);
    }

    @Override // android.view.Window.Callback
    public void onWindowAttributesChanged(WindowManager.LayoutParams layoutParams) {
        this.f514a.onWindowAttributesChanged(layoutParams);
    }

    @Override // android.view.Window.Callback
    public void onWindowFocusChanged(boolean z3) {
        this.f514a.onWindowFocusChanged(z3);
    }

    @Override // android.view.Window.Callback
    public android.view.ActionMode onWindowStartingActionMode(ActionMode.Callback callback) {
        return this.f514a.onWindowStartingActionMode(callback);
    }

    @Override // android.view.Window.Callback
    public boolean onSearchRequested() {
        return this.f514a.onSearchRequested();
    }

    @Override // android.view.Window.Callback
    @RequiresApi(23)
    public android.view.ActionMode onWindowStartingActionMode(ActionMode.Callback callback, int i2) {
        return this.f514a.onWindowStartingActionMode(callback, i2);
    }
}
