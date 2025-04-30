package androidx.databinding.adapters;

import android.util.SparseBooleanArray;
import android.widget.TableLayout;
import androidx.annotation.RestrictTo;
import androidx.databinding.BindingAdapter;
import java.util.regex.Pattern;
@RestrictTo({RestrictTo.Scope.LIBRARY})
/* loaded from: classes.dex */
public class TableLayoutBindingAdapter {

    /* renamed from: a  reason: collision with root package name */
    private static Pattern f5342a = Pattern.compile("\\s*,\\s*");

    /* renamed from: b  reason: collision with root package name */
    private static final int f5343b = 20;

    private static SparseBooleanArray a(CharSequence charSequence) {
        SparseBooleanArray sparseBooleanArray = new SparseBooleanArray();
        if (charSequence == null) {
            return sparseBooleanArray;
        }
        for (String str : f5342a.split(charSequence)) {
            try {
                int parseInt = Integer.parseInt(str);
                if (parseInt >= 0) {
                    sparseBooleanArray.put(parseInt, true);
                }
            } catch (NumberFormatException unused) {
            }
        }
        return sparseBooleanArray;
    }

    @BindingAdapter({"android:collapseColumns"})
    public static void setCollapseColumns(TableLayout tableLayout, CharSequence charSequence) {
        SparseBooleanArray a4 = a(charSequence);
        for (int i2 = 0; i2 < 20; i2++) {
            boolean z3 = a4.get(i2, false);
            if (z3 != tableLayout.isColumnCollapsed(i2)) {
                tableLayout.setColumnCollapsed(i2, z3);
            }
        }
    }

    @BindingAdapter({"android:shrinkColumns"})
    public static void setShrinkColumns(TableLayout tableLayout, CharSequence charSequence) {
        if (charSequence != null && charSequence.length() > 0 && charSequence.charAt(0) == '*') {
            tableLayout.setShrinkAllColumns(true);
            return;
        }
        tableLayout.setShrinkAllColumns(false);
        SparseBooleanArray a4 = a(charSequence);
        int size = a4.size();
        for (int i2 = 0; i2 < size; i2++) {
            int keyAt = a4.keyAt(i2);
            boolean valueAt = a4.valueAt(i2);
            if (valueAt) {
                tableLayout.setColumnShrinkable(keyAt, valueAt);
            }
        }
    }

    @BindingAdapter({"android:stretchColumns"})
    public static void setStretchColumns(TableLayout tableLayout, CharSequence charSequence) {
        if (charSequence != null && charSequence.length() > 0 && charSequence.charAt(0) == '*') {
            tableLayout.setStretchAllColumns(true);
            return;
        }
        tableLayout.setStretchAllColumns(false);
        SparseBooleanArray a4 = a(charSequence);
        int size = a4.size();
        for (int i2 = 0; i2 < size; i2++) {
            int keyAt = a4.keyAt(i2);
            boolean valueAt = a4.valueAt(i2);
            if (valueAt) {
                tableLayout.setColumnStretchable(keyAt, valueAt);
            }
        }
    }
}
