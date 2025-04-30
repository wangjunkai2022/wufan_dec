package androidx.databinding.adapters;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.TextView;
import androidx.annotation.RestrictTo;
import androidx.databinding.ObservableList;
import java.util.List;
@RestrictTo({RestrictTo.Scope.LIBRARY})
/* loaded from: classes.dex */
class ObservableListAdapter<T> extends BaseAdapter {

    /* renamed from: a  reason: collision with root package name */
    private List<T> f5320a;

    /* renamed from: b  reason: collision with root package name */
    private ObservableList.OnListChangedCallback f5321b;

    /* renamed from: c  reason: collision with root package name */
    private final Context f5322c;

    /* renamed from: d  reason: collision with root package name */
    private final int f5323d;

    /* renamed from: e  reason: collision with root package name */
    private final int f5324e;

    /* renamed from: f  reason: collision with root package name */
    private final int f5325f;

    /* renamed from: g  reason: collision with root package name */
    private final LayoutInflater f5326g;

    public ObservableListAdapter(Context context, List<T> list, int i2, int i4, int i5) {
        this.f5322c = context;
        this.f5324e = i2;
        this.f5323d = i4;
        this.f5325f = i5;
        this.f5326g = i2 == 0 ? null : (LayoutInflater) context.getSystemService("layout_inflater");
        setList(list);
    }

    @Override // android.widget.Adapter
    public int getCount() {
        return this.f5320a.size();
    }

    @Override // android.widget.BaseAdapter, android.widget.SpinnerAdapter
    public View getDropDownView(int i2, View view, ViewGroup viewGroup) {
        return getViewForResource(this.f5323d, i2, view, viewGroup);
    }

    @Override // android.widget.Adapter
    public Object getItem(int i2) {
        return this.f5320a.get(i2);
    }

    @Override // android.widget.Adapter
    public long getItemId(int i2) {
        return i2;
    }

    @Override // android.widget.Adapter
    public View getView(int i2, View view, ViewGroup viewGroup) {
        return getViewForResource(this.f5324e, i2, view, viewGroup);
    }

    public View getViewForResource(int i2, int i4, View view, ViewGroup viewGroup) {
        CharSequence valueOf;
        if (view == null) {
            if (i2 == 0) {
                view = new TextView(this.f5322c);
            } else {
                view = this.f5326g.inflate(i2, viewGroup, false);
            }
        }
        int i5 = this.f5325f;
        TextView textView = (TextView) (i5 == 0 ? view : view.findViewById(i5));
        T t3 = this.f5320a.get(i4);
        if (t3 instanceof CharSequence) {
            valueOf = (CharSequence) t3;
        } else {
            valueOf = String.valueOf(t3);
        }
        textView.setText(valueOf);
        return view;
    }

    public void setList(List<T> list) {
        List<T> list2 = this.f5320a;
        if (list2 == list) {
            return;
        }
        if (list2 instanceof ObservableList) {
            ((ObservableList) list2).removeOnListChangedCallback(this.f5321b);
        }
        this.f5320a = list;
        if (list instanceof ObservableList) {
            if (this.f5321b == null) {
                this.f5321b = new ObservableList.OnListChangedCallback() { // from class: androidx.databinding.adapters.ObservableListAdapter.1
                    @Override // androidx.databinding.ObservableList.OnListChangedCallback
                    public void onChanged(ObservableList observableList) {
                        ObservableListAdapter.this.notifyDataSetChanged();
                    }

                    @Override // androidx.databinding.ObservableList.OnListChangedCallback
                    public void onItemRangeChanged(ObservableList observableList, int i2, int i4) {
                        ObservableListAdapter.this.notifyDataSetChanged();
                    }

                    @Override // androidx.databinding.ObservableList.OnListChangedCallback
                    public void onItemRangeInserted(ObservableList observableList, int i2, int i4) {
                        ObservableListAdapter.this.notifyDataSetChanged();
                    }

                    @Override // androidx.databinding.ObservableList.OnListChangedCallback
                    public void onItemRangeMoved(ObservableList observableList, int i2, int i4, int i5) {
                        ObservableListAdapter.this.notifyDataSetChanged();
                    }

                    @Override // androidx.databinding.ObservableList.OnListChangedCallback
                    public void onItemRangeRemoved(ObservableList observableList, int i2, int i4) {
                        ObservableListAdapter.this.notifyDataSetChanged();
                    }
                };
            }
            ((ObservableList) this.f5320a).addOnListChangedCallback(this.f5321b);
        }
        notifyDataSetChanged();
    }
}
