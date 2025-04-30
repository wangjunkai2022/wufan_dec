package com.join.kotlin.ui.cloudarchive;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import com.join.android.app.mgsim.wufun.R;
import java.util.HashMap;
import java.util.Map;
import org.androidannotations.api.builder.d;
/* loaded from: classes3.dex */
public final class ModgameModTabFragment_ extends ModgameModTabFragment implements g3.a, i3.a, i3.b {
    private View contentView_;
    private final i3.c onViewChangedNotifier_ = new i3.c();
    private final Map<Class<?>, Object> beans_ = new HashMap();

    /* loaded from: classes3.dex */
    public static class FragmentBuilder_ extends d<FragmentBuilder_, ModgameModTabFragment> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // org.androidannotations.api.builder.d
        public ModgameModTabFragment build() {
            ModgameModTabFragment_ modgameModTabFragment_ = new ModgameModTabFragment_();
            modgameModTabFragment_.setArguments(this.args);
            return modgameModTabFragment_;
        }
    }

    public static FragmentBuilder_ builder() {
        return new FragmentBuilder_();
    }

    private void init_(Bundle bundle) {
        i3.c.b(this);
    }

    @Override // g3.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.beans_.get(cls);
    }

    @Override // i3.a
    public <T extends View> T internalFindViewById(int i2) {
        View view = this.contentView_;
        if (view == null) {
            return null;
        }
        return (T) view.findViewById(i2);
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        i3.c c4 = i3.c.c(this.onViewChangedNotifier_);
        init_(bundle);
        super.onCreate(bundle);
        i3.c.c(c4);
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View onCreateView = super.onCreateView(layoutInflater, viewGroup, bundle);
        this.contentView_ = onCreateView;
        if (onCreateView == null) {
            this.contentView_ = layoutInflater.inflate(R.layout.modgame_modtab_fragment_layout, viewGroup, false);
        }
        return this.contentView_;
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        this.contentView_ = null;
        this.rv_cheat_type = null;
        this.rv_cheat_list = null;
        this.loding_layout = null;
        this.loding_faile = null;
        this.setNetwork = null;
    }

    @Override // i3.b
    public void onViewChanged(i3.a aVar) {
        this.rv_cheat_type = (RecyclerView) aVar.internalFindViewById(R.id.rv_cheat_type);
        this.rv_cheat_list = (RecyclerView) aVar.internalFindViewById(R.id.rv_cheat_list);
        this.loding_layout = aVar.internalFindViewById(R.id.loding_layout);
        this.loding_faile = aVar.internalFindViewById(R.id.loding_faile);
        this.setNetwork = aVar.internalFindViewById(R.id.setNetwork);
        aftervidew();
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        this.onViewChangedNotifier_.a(this);
    }

    @Override // g3.a
    public <T> void putBean(Class<T> cls, T t3) {
        this.beans_.put(cls, t3);
    }
}
