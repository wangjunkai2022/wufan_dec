package com.join.mgps.fragment;

import android.app.Fragment;
import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.join.android.app.mgsim.wufun.R;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.EFragment;
import org.androidannotations.annotations.ViewById;
@EFragment(R.layout.shopfragmet_item)
/* loaded from: classes4.dex */
public class MyShopFragmentItem extends Fragment {
    @ViewById

    /* renamed from: a  reason: collision with root package name */
    RecyclerView f48268a;

    /* renamed from: b  reason: collision with root package name */
    a f48269b;

    /* loaded from: classes4.dex */
    class a extends RecyclerView.Adapter<C0203a> {

        /* renamed from: a  reason: collision with root package name */
        Context f48270a;

        /* renamed from: com.join.mgps.fragment.MyShopFragmentItem$a$a  reason: collision with other inner class name */
        /* loaded from: classes4.dex */
        class C0203a extends RecyclerView.ViewHolder {
            public C0203a(View view) {
                super(view);
            }
        }

        public a(Context context) {
            this.f48270a = context;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        /* renamed from: a */
        public void onBindViewHolder(C0203a c0203a, int i2) {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        /* renamed from: b */
        public C0203a onCreateViewHolder(ViewGroup viewGroup, int i2) {
            return null;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            return 0;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @AfterViews
    public void a() {
        this.f48268a.setLayoutManager(new LinearLayoutManager(getActivity()));
        a aVar = new a(getActivity());
        this.f48269b = aVar;
        this.f48268a.setAdapter(aVar);
    }
}
