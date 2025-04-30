package androidx.fragment.app;

import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AnimationUtils;
import android.widget.AdapterView;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
/* loaded from: classes.dex */
public class ListFragment extends Fragment {

    /* renamed from: l  reason: collision with root package name */
    static final int f6107l = 16711681;

    /* renamed from: m  reason: collision with root package name */
    static final int f6108m = 16711682;

    /* renamed from: n  reason: collision with root package name */
    static final int f6109n = 16711683;

    /* renamed from: a  reason: collision with root package name */
    private final Handler f6110a = new Handler();

    /* renamed from: b  reason: collision with root package name */
    private final Runnable f6111b = new Runnable() { // from class: androidx.fragment.app.ListFragment.1
        @Override // java.lang.Runnable
        public void run() {
            ListView listView = ListFragment.this.f6114e;
            listView.focusableViewAvailable(listView);
        }
    };

    /* renamed from: c  reason: collision with root package name */
    private final AdapterView.OnItemClickListener f6112c = new AdapterView.OnItemClickListener() { // from class: androidx.fragment.app.ListFragment.2
        @Override // android.widget.AdapterView.OnItemClickListener
        public void onItemClick(AdapterView<?> adapterView, View view, int i2, long j4) {
            ListFragment.this.onListItemClick((ListView) adapterView, view, i2, j4);
        }
    };

    /* renamed from: d  reason: collision with root package name */
    ListAdapter f6113d;

    /* renamed from: e  reason: collision with root package name */
    ListView f6114e;

    /* renamed from: f  reason: collision with root package name */
    View f6115f;

    /* renamed from: g  reason: collision with root package name */
    TextView f6116g;

    /* renamed from: h  reason: collision with root package name */
    View f6117h;

    /* renamed from: i  reason: collision with root package name */
    View f6118i;

    /* renamed from: j  reason: collision with root package name */
    CharSequence f6119j;

    /* renamed from: k  reason: collision with root package name */
    boolean f6120k;

    private void M() {
        if (this.f6114e != null) {
            return;
        }
        View view = getView();
        if (view != null) {
            if (view instanceof ListView) {
                this.f6114e = (ListView) view;
            } else {
                TextView textView = (TextView) view.findViewById(f6107l);
                this.f6116g = textView;
                if (textView == null) {
                    this.f6115f = view.findViewById(16908292);
                } else {
                    textView.setVisibility(8);
                }
                this.f6117h = view.findViewById(f6108m);
                this.f6118i = view.findViewById(f6109n);
                View findViewById = view.findViewById(16908298);
                if (!(findViewById instanceof ListView)) {
                    if (findViewById == null) {
                        throw new RuntimeException("Your content must have a ListView whose id attribute is 'android.R.id.list'");
                    }
                    throw new RuntimeException("Content has view with id attribute 'android.R.id.list' that is not a ListView class");
                }
                ListView listView = (ListView) findViewById;
                this.f6114e = listView;
                View view2 = this.f6115f;
                if (view2 != null) {
                    listView.setEmptyView(view2);
                } else {
                    CharSequence charSequence = this.f6119j;
                    if (charSequence != null) {
                        this.f6116g.setText(charSequence);
                        this.f6114e.setEmptyView(this.f6116g);
                    }
                }
            }
            this.f6120k = true;
            this.f6114e.setOnItemClickListener(this.f6112c);
            ListAdapter listAdapter = this.f6113d;
            if (listAdapter != null) {
                this.f6113d = null;
                setListAdapter(listAdapter);
            } else if (this.f6117h != null) {
                N(false, false);
            }
            this.f6110a.post(this.f6111b);
            return;
        }
        throw new IllegalStateException("Content view not yet created");
    }

    private void N(boolean z3, boolean z4) {
        M();
        View view = this.f6117h;
        if (view != null) {
            if (this.f6120k == z3) {
                return;
            }
            this.f6120k = z3;
            if (z3) {
                if (z4) {
                    view.startAnimation(AnimationUtils.loadAnimation(getContext(), 17432577));
                    this.f6118i.startAnimation(AnimationUtils.loadAnimation(getContext(), 17432576));
                } else {
                    view.clearAnimation();
                    this.f6118i.clearAnimation();
                }
                this.f6117h.setVisibility(8);
                this.f6118i.setVisibility(0);
                return;
            }
            if (z4) {
                view.startAnimation(AnimationUtils.loadAnimation(getContext(), 17432576));
                this.f6118i.startAnimation(AnimationUtils.loadAnimation(getContext(), 17432577));
            } else {
                view.clearAnimation();
                this.f6118i.clearAnimation();
            }
            this.f6117h.setVisibility(0);
            this.f6118i.setVisibility(8);
            return;
        }
        throw new IllegalStateException("Can't be used with a custom content view");
    }

    @Nullable
    public ListAdapter getListAdapter() {
        return this.f6113d;
    }

    @NonNull
    public ListView getListView() {
        M();
        return this.f6114e;
    }

    public long getSelectedItemId() {
        M();
        return this.f6114e.getSelectedItemId();
    }

    public int getSelectedItemPosition() {
        M();
        return this.f6114e.getSelectedItemPosition();
    }

    @Override // androidx.fragment.app.Fragment
    @Nullable
    public View onCreateView(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle) {
        Context requireContext = requireContext();
        FrameLayout frameLayout = new FrameLayout(requireContext);
        LinearLayout linearLayout = new LinearLayout(requireContext);
        linearLayout.setId(f6108m);
        linearLayout.setOrientation(1);
        linearLayout.setVisibility(8);
        linearLayout.setGravity(17);
        linearLayout.addView(new ProgressBar(requireContext, null, 16842874), new FrameLayout.LayoutParams(-2, -2));
        frameLayout.addView(linearLayout, new FrameLayout.LayoutParams(-1, -1));
        FrameLayout frameLayout2 = new FrameLayout(requireContext);
        frameLayout2.setId(f6109n);
        TextView textView = new TextView(requireContext);
        textView.setId(f6107l);
        textView.setGravity(17);
        frameLayout2.addView(textView, new FrameLayout.LayoutParams(-1, -1));
        ListView listView = new ListView(requireContext);
        listView.setId(16908298);
        listView.setDrawSelectorOnTop(false);
        frameLayout2.addView(listView, new FrameLayout.LayoutParams(-1, -1));
        frameLayout.addView(frameLayout2, new FrameLayout.LayoutParams(-1, -1));
        frameLayout.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
        return frameLayout;
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroyView() {
        this.f6110a.removeCallbacks(this.f6111b);
        this.f6114e = null;
        this.f6120k = false;
        this.f6118i = null;
        this.f6117h = null;
        this.f6115f = null;
        this.f6116g = null;
        super.onDestroyView();
    }

    public void onListItemClick(@NonNull ListView listView, @NonNull View view, int i2, long j4) {
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(@NonNull View view, @Nullable Bundle bundle) {
        super.onViewCreated(view, bundle);
        M();
    }

    @NonNull
    public final ListAdapter requireListAdapter() {
        ListAdapter listAdapter = getListAdapter();
        if (listAdapter != null) {
            return listAdapter;
        }
        throw new IllegalStateException("ListFragment " + this + " does not have a ListAdapter.");
    }

    public void setEmptyText(@Nullable CharSequence charSequence) {
        M();
        TextView textView = this.f6116g;
        if (textView != null) {
            textView.setText(charSequence);
            if (this.f6119j == null) {
                this.f6114e.setEmptyView(this.f6116g);
            }
            this.f6119j = charSequence;
            return;
        }
        throw new IllegalStateException("Can't be used with a custom content view");
    }

    public void setListAdapter(@Nullable ListAdapter listAdapter) {
        boolean z3 = this.f6113d != null;
        this.f6113d = listAdapter;
        ListView listView = this.f6114e;
        if (listView != null) {
            listView.setAdapter(listAdapter);
            if (this.f6120k || z3) {
                return;
            }
            N(true, requireView().getWindowToken() != null);
        }
    }

    public void setListShown(boolean z3) {
        N(z3, true);
    }

    public void setListShownNoAnimation(boolean z3) {
        N(z3, false);
    }

    public void setSelection(int i2) {
        M();
        this.f6114e.setSelection(i2);
    }
}
