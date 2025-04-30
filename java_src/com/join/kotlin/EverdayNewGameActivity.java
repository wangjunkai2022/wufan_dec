package com.join.kotlin;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.viewpager.widget.ViewPager;
import com.BaseAppCompatActivity;
import com.join.android.app.mgsim.wufun.databinding.le;
import com.join.mgps.activity.LocalGameActivity;
import com.join.mgps.customview.d0;
import com.psk.kotlin.ext.CommonExtKt;
import java.util.ArrayList;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: EverdayNewGameActivity.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\t\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0014\u0010\u0015J\u0012\u0010\u0005\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0014R\"\u0010\u0007\u001a\u00020\u00068\u0006@\u0006X\u0086.¢\u0006\u0012\n\u0004\b\u0007\u0010\b\u001a\u0004\b\t\u0010\n\"\u0004\b\u000b\u0010\fR\"\u0010\u000e\u001a\u00020\r8\u0006@\u0006X\u0086.¢\u0006\u0012\n\u0004\b\u000e\u0010\u000f\u001a\u0004\b\u0010\u0010\u0011\"\u0004\b\u0012\u0010\u0013¨\u0006\u0016"}, d2 = {"Lcom/join/kotlin/EverdayNewGameActivity;", "Lcom/BaseAppCompatActivity;", "Landroid/os/Bundle;", "savedInstanceState", "", "onCreate", "Lcom/join/android/app/mgsim/wufun/databinding/le;", "binding", "Lcom/join/android/app/mgsim/wufun/databinding/le;", "getBinding", "()Lcom/join/android/app/mgsim/wufun/databinding/le;", "setBinding", "(Lcom/join/android/app/mgsim/wufun/databinding/le;)V", "Lcom/join/mgps/customview/d0;", "adapter", "Lcom/join/mgps/customview/d0;", "getAdapter", "()Lcom/join/mgps/customview/d0;", "setAdapter", "(Lcom/join/mgps/customview/d0;)V", "<init>", "()V", "app_wufunNormalRelease"}, k = 1, mv = {1, 4, 2})
/* loaded from: classes3.dex */
public final class EverdayNewGameActivity extends BaseAppCompatActivity {
    public d0 adapter;
    public le binding;

    @NotNull
    public final d0 getAdapter() {
        d0 d0Var = this.adapter;
        if (d0Var == null) {
            Intrinsics.throwUninitializedPropertyAccessException("adapter");
        }
        return d0Var;
    }

    @NotNull
    public final le getBinding() {
        le leVar = this.binding;
        if (leVar == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        }
        return leVar;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.BaseAppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(@Nullable Bundle bundle) {
        ArrayList arrayListOf;
        super.onCreate(bundle);
        le c4 = le.c(LayoutInflater.from(this));
        Intrinsics.checkNotNullExpressionValue(c4, "EverdayNewActivityBindin…ayoutInflater.from(this))");
        setContentView(c4.getRoot());
        arrayListOf = CollectionsKt__CollectionsKt.arrayListOf(LocalGameActivity.f32927r, "网游", "单机", "模拟器");
        ArrayList arrayList = new ArrayList();
        Iterator it2 = arrayListOf.iterator();
        while (it2.hasNext()) {
            EverdayNewFragment everdayNewFragment = new EverdayNewFragment();
            Bundle bundle2 = new Bundle();
            bundle2.putString("title", (String) it2.next());
            everdayNewFragment.setArguments(bundle2);
            arrayList.add(everdayNewFragment);
        }
        this.adapter = new d0(getSupportFragmentManager(), arrayList, arrayListOf);
        ViewPager viewPager = c4.f22132d;
        Intrinsics.checkNotNullExpressionValue(viewPager, "binding.viewPager");
        d0 d0Var = this.adapter;
        if (d0Var == null) {
            Intrinsics.throwUninitializedPropertyAccessException("adapter");
        }
        viewPager.setAdapter(d0Var);
        d0 d0Var2 = this.adapter;
        if (d0Var2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("adapter");
        }
        d0Var2.notifyDataSetChanged();
        c4.f22130b.setViewPager(c4.f22132d);
        ImageView imageView = c4.f22131c.f24814b;
        Intrinsics.checkNotNullExpressionValue(imageView, "binding.titleLayout.backImage");
        CommonExtKt.onClick(imageView, new Function0<Unit>() { // from class: com.join.kotlin.EverdayNewGameActivity$onCreate$1
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Unit invoke() {
                invoke2();
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2() {
                EverdayNewGameActivity.this.finish();
            }
        });
        TextView textView = c4.f22131c.f24816d;
        Intrinsics.checkNotNullExpressionValue(textView, "binding.titleLayout.titleTextview");
        textView.setText("每日上新");
        ViewPager viewPager2 = c4.f22132d;
        Intrinsics.checkNotNullExpressionValue(viewPager2, "binding.viewPager");
        viewPager2.setOffscreenPageLimit(5);
        c4.f22132d.setCurrentItem(getIntent().getIntExtra("default_position", 0));
    }

    public final void setAdapter(@NotNull d0 d0Var) {
        Intrinsics.checkNotNullParameter(d0Var, "<set-?>");
        this.adapter = d0Var;
    }

    public final void setBinding(@NotNull le leVar) {
        Intrinsics.checkNotNullParameter(leVar, "<set-?>");
        this.binding = leVar;
    }
}
