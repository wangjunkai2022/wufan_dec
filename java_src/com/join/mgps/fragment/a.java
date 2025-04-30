package com.join.mgps.fragment;

import android.os.Bundle;
import android.os.Handler;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.fragment.app.Fragment;
/* compiled from: AbsBaseFragment.java */
/* loaded from: classes4.dex */
public abstract class a extends Fragment {

    /* renamed from: a  reason: collision with root package name */
    protected Handler f48276a = new Handler();

    protected abstract void M(View view);

    protected abstract View N(LayoutInflater layoutInflater);

    protected abstract void initData();

    @Override // androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        initData();
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        super.onCreateView(layoutInflater, viewGroup, bundle);
        View N = N(layoutInflater);
        M(N);
        return N;
    }
}
