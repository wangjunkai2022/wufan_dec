package androidx.core.view.accessibility;

import android.os.Build;
import android.os.Parcelable;
import android.view.View;
import android.view.accessibility.AccessibilityRecord;
import androidx.annotation.NonNull;
import java.util.List;
/* loaded from: classes.dex */
public class AccessibilityRecordCompat {

    /* renamed from: a  reason: collision with root package name */
    private final AccessibilityRecord f4994a;

    @Deprecated
    public AccessibilityRecordCompat(Object obj) {
        this.f4994a = (AccessibilityRecord) obj;
    }

    @Deprecated
    public static AccessibilityRecordCompat obtain(AccessibilityRecordCompat accessibilityRecordCompat) {
        return new AccessibilityRecordCompat(AccessibilityRecord.obtain(accessibilityRecordCompat.f4994a));
    }

    @Deprecated
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof AccessibilityRecordCompat) {
            AccessibilityRecordCompat accessibilityRecordCompat = (AccessibilityRecordCompat) obj;
            AccessibilityRecord accessibilityRecord = this.f4994a;
            if (accessibilityRecord == null) {
                if (accessibilityRecordCompat.f4994a != null) {
                    return false;
                }
            } else if (!accessibilityRecord.equals(accessibilityRecordCompat.f4994a)) {
                return false;
            }
            return true;
        }
        return false;
    }

    @Deprecated
    public int getAddedCount() {
        return this.f4994a.getAddedCount();
    }

    @Deprecated
    public CharSequence getBeforeText() {
        return this.f4994a.getBeforeText();
    }

    @Deprecated
    public CharSequence getClassName() {
        return this.f4994a.getClassName();
    }

    @Deprecated
    public CharSequence getContentDescription() {
        return this.f4994a.getContentDescription();
    }

    @Deprecated
    public int getCurrentItemIndex() {
        return this.f4994a.getCurrentItemIndex();
    }

    @Deprecated
    public int getFromIndex() {
        return this.f4994a.getFromIndex();
    }

    @Deprecated
    public Object getImpl() {
        return this.f4994a;
    }

    @Deprecated
    public int getItemCount() {
        return this.f4994a.getItemCount();
    }

    @Deprecated
    public int getMaxScrollX() {
        return getMaxScrollX(this.f4994a);
    }

    @Deprecated
    public int getMaxScrollY() {
        return getMaxScrollY(this.f4994a);
    }

    @Deprecated
    public Parcelable getParcelableData() {
        return this.f4994a.getParcelableData();
    }

    @Deprecated
    public int getRemovedCount() {
        return this.f4994a.getRemovedCount();
    }

    @Deprecated
    public int getScrollX() {
        return this.f4994a.getScrollX();
    }

    @Deprecated
    public int getScrollY() {
        return this.f4994a.getScrollY();
    }

    @Deprecated
    public AccessibilityNodeInfoCompat getSource() {
        return AccessibilityNodeInfoCompat.l(this.f4994a.getSource());
    }

    @Deprecated
    public List<CharSequence> getText() {
        return this.f4994a.getText();
    }

    @Deprecated
    public int getToIndex() {
        return this.f4994a.getToIndex();
    }

    @Deprecated
    public int getWindowId() {
        return this.f4994a.getWindowId();
    }

    @Deprecated
    public int hashCode() {
        AccessibilityRecord accessibilityRecord = this.f4994a;
        if (accessibilityRecord == null) {
            return 0;
        }
        return accessibilityRecord.hashCode();
    }

    @Deprecated
    public boolean isChecked() {
        return this.f4994a.isChecked();
    }

    @Deprecated
    public boolean isEnabled() {
        return this.f4994a.isEnabled();
    }

    @Deprecated
    public boolean isFullScreen() {
        return this.f4994a.isFullScreen();
    }

    @Deprecated
    public boolean isPassword() {
        return this.f4994a.isPassword();
    }

    @Deprecated
    public boolean isScrollable() {
        return this.f4994a.isScrollable();
    }

    @Deprecated
    public void recycle() {
        this.f4994a.recycle();
    }

    @Deprecated
    public void setAddedCount(int i2) {
        this.f4994a.setAddedCount(i2);
    }

    @Deprecated
    public void setBeforeText(CharSequence charSequence) {
        this.f4994a.setBeforeText(charSequence);
    }

    @Deprecated
    public void setChecked(boolean z3) {
        this.f4994a.setChecked(z3);
    }

    @Deprecated
    public void setClassName(CharSequence charSequence) {
        this.f4994a.setClassName(charSequence);
    }

    @Deprecated
    public void setContentDescription(CharSequence charSequence) {
        this.f4994a.setContentDescription(charSequence);
    }

    @Deprecated
    public void setCurrentItemIndex(int i2) {
        this.f4994a.setCurrentItemIndex(i2);
    }

    @Deprecated
    public void setEnabled(boolean z3) {
        this.f4994a.setEnabled(z3);
    }

    @Deprecated
    public void setFromIndex(int i2) {
        this.f4994a.setFromIndex(i2);
    }

    @Deprecated
    public void setFullScreen(boolean z3) {
        this.f4994a.setFullScreen(z3);
    }

    @Deprecated
    public void setItemCount(int i2) {
        this.f4994a.setItemCount(i2);
    }

    @Deprecated
    public void setMaxScrollX(int i2) {
        setMaxScrollX(this.f4994a, i2);
    }

    @Deprecated
    public void setMaxScrollY(int i2) {
        setMaxScrollY(this.f4994a, i2);
    }

    @Deprecated
    public void setParcelableData(Parcelable parcelable) {
        this.f4994a.setParcelableData(parcelable);
    }

    @Deprecated
    public void setPassword(boolean z3) {
        this.f4994a.setPassword(z3);
    }

    @Deprecated
    public void setRemovedCount(int i2) {
        this.f4994a.setRemovedCount(i2);
    }

    @Deprecated
    public void setScrollX(int i2) {
        this.f4994a.setScrollX(i2);
    }

    @Deprecated
    public void setScrollY(int i2) {
        this.f4994a.setScrollY(i2);
    }

    @Deprecated
    public void setScrollable(boolean z3) {
        this.f4994a.setScrollable(z3);
    }

    @Deprecated
    public void setSource(View view) {
        this.f4994a.setSource(view);
    }

    @Deprecated
    public void setToIndex(int i2) {
        this.f4994a.setToIndex(i2);
    }

    public static int getMaxScrollX(AccessibilityRecord accessibilityRecord) {
        if (Build.VERSION.SDK_INT >= 15) {
            return accessibilityRecord.getMaxScrollX();
        }
        return 0;
    }

    public static int getMaxScrollY(AccessibilityRecord accessibilityRecord) {
        if (Build.VERSION.SDK_INT >= 15) {
            return accessibilityRecord.getMaxScrollY();
        }
        return 0;
    }

    @Deprecated
    public static AccessibilityRecordCompat obtain() {
        return new AccessibilityRecordCompat(AccessibilityRecord.obtain());
    }

    public static void setMaxScrollX(AccessibilityRecord accessibilityRecord, int i2) {
        if (Build.VERSION.SDK_INT >= 15) {
            accessibilityRecord.setMaxScrollX(i2);
        }
    }

    public static void setMaxScrollY(AccessibilityRecord accessibilityRecord, int i2) {
        if (Build.VERSION.SDK_INT >= 15) {
            accessibilityRecord.setMaxScrollY(i2);
        }
    }

    @Deprecated
    public void setSource(View view, int i2) {
        setSource(this.f4994a, view, i2);
    }

    public static void setSource(@NonNull AccessibilityRecord accessibilityRecord, View view, int i2) {
        if (Build.VERSION.SDK_INT >= 16) {
            accessibilityRecord.setSource(view, i2);
        }
    }
}
