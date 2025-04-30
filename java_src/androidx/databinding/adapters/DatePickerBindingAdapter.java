package androidx.databinding.adapters;

import android.widget.DatePicker;
import androidx.annotation.RestrictTo;
import androidx.databinding.BindingAdapter;
import androidx.databinding.InverseBindingListener;
import androidx.databinding.InverseBindingMethod;
import androidx.databinding.InverseBindingMethods;
import androidx.databinding.library.baseAdapters.R;
@InverseBindingMethods({@InverseBindingMethod(attribute = "android:year", type = DatePicker.class), @InverseBindingMethod(attribute = "android:month", type = DatePicker.class), @InverseBindingMethod(attribute = "android:day", method = "getDayOfMonth", type = DatePicker.class)})
@RestrictTo({RestrictTo.Scope.LIBRARY})
/* loaded from: classes.dex */
public class DatePickerBindingAdapter {

    /* loaded from: classes.dex */
    private static class DateChangedListener implements DatePicker.OnDateChangedListener {

        /* renamed from: a  reason: collision with root package name */
        DatePicker.OnDateChangedListener f5313a;

        /* renamed from: b  reason: collision with root package name */
        InverseBindingListener f5314b;

        /* renamed from: c  reason: collision with root package name */
        InverseBindingListener f5315c;

        /* renamed from: d  reason: collision with root package name */
        InverseBindingListener f5316d;

        private DateChangedListener() {
        }

        @Override // android.widget.DatePicker.OnDateChangedListener
        public void onDateChanged(DatePicker datePicker, int i2, int i4, int i5) {
            DatePicker.OnDateChangedListener onDateChangedListener = this.f5313a;
            if (onDateChangedListener != null) {
                onDateChangedListener.onDateChanged(datePicker, i2, i4, i5);
            }
            InverseBindingListener inverseBindingListener = this.f5314b;
            if (inverseBindingListener != null) {
                inverseBindingListener.onChange();
            }
            InverseBindingListener inverseBindingListener2 = this.f5315c;
            if (inverseBindingListener2 != null) {
                inverseBindingListener2.onChange();
            }
            InverseBindingListener inverseBindingListener3 = this.f5316d;
            if (inverseBindingListener3 != null) {
                inverseBindingListener3.onChange();
            }
        }

        public void setListeners(DatePicker.OnDateChangedListener onDateChangedListener, InverseBindingListener inverseBindingListener, InverseBindingListener inverseBindingListener2, InverseBindingListener inverseBindingListener3) {
            this.f5313a = onDateChangedListener;
            this.f5314b = inverseBindingListener;
            this.f5315c = inverseBindingListener2;
            this.f5316d = inverseBindingListener3;
        }
    }

    @BindingAdapter(requireAll = false, value = {"android:year", "android:month", "android:day", "android:onDateChanged", "android:yearAttrChanged", "android:monthAttrChanged", "android:dayAttrChanged"})
    public static void setListeners(DatePicker datePicker, int i2, int i4, int i5, DatePicker.OnDateChangedListener onDateChangedListener, InverseBindingListener inverseBindingListener, InverseBindingListener inverseBindingListener2, InverseBindingListener inverseBindingListener3) {
        if (i2 == 0) {
            i2 = datePicker.getYear();
        }
        if (i5 == 0) {
            i5 = datePicker.getDayOfMonth();
        }
        if (inverseBindingListener == null && inverseBindingListener2 == null && inverseBindingListener3 == null) {
            datePicker.init(i2, i4, i5, onDateChangedListener);
            return;
        }
        int i6 = R.id.onDateChanged;
        DateChangedListener dateChangedListener = (DateChangedListener) ListenerUtil.getListener(datePicker, i6);
        if (dateChangedListener == null) {
            dateChangedListener = new DateChangedListener();
            ListenerUtil.trackListener(datePicker, dateChangedListener, i6);
        }
        dateChangedListener.setListeners(onDateChangedListener, inverseBindingListener, inverseBindingListener2, inverseBindingListener3);
        datePicker.init(i2, i4, i5, dateChangedListener);
    }
}
