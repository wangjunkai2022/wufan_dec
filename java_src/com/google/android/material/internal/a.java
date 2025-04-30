package com.google.android.material.internal;

import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.IdRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.annotation.UiThread;
import com.google.android.material.internal.g;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
/* compiled from: CheckableGroup.java */
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
@UiThread
/* loaded from: classes2.dex */
public class a<T extends g<T>> {

    /* renamed from: a  reason: collision with root package name */
    private final Map<Integer, T> f15084a = new HashMap();

    /* renamed from: b  reason: collision with root package name */
    private final Set<Integer> f15085b = new HashSet();

    /* renamed from: c  reason: collision with root package name */
    private b f15086c;

    /* renamed from: d  reason: collision with root package name */
    private boolean f15087d;

    /* renamed from: e  reason: collision with root package name */
    private boolean f15088e;

    /* compiled from: CheckableGroup.java */
    /* renamed from: com.google.android.material.internal.a$a  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    class C0108a implements g.a<T> {
        C0108a() {
        }

        @Override // com.google.android.material.internal.g.a
        /* renamed from: b */
        public void a(T t3, boolean z3) {
            if (z3) {
                if (!a.this.g(t3)) {
                    return;
                }
            } else {
                a aVar = a.this;
                if (!aVar.t(t3, aVar.f15088e)) {
                    return;
                }
            }
            a.this.n();
        }
    }

    /* compiled from: CheckableGroup.java */
    /* loaded from: classes2.dex */
    public interface b {
        void a(@NonNull Set<Integer> set);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean g(@NonNull g<T> gVar) {
        int id = gVar.getId();
        if (this.f15085b.contains(Integer.valueOf(id))) {
            return false;
        }
        T t3 = this.f15084a.get(Integer.valueOf(k()));
        if (t3 != null) {
            t(t3, false);
        }
        boolean add = this.f15085b.add(Integer.valueOf(id));
        if (!gVar.isChecked()) {
            gVar.setChecked(true);
        }
        return add;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void n() {
        b bVar = this.f15086c;
        if (bVar != null) {
            bVar.a(i());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean t(@NonNull g<T> gVar, boolean z3) {
        int id = gVar.getId();
        if (this.f15085b.contains(Integer.valueOf(id))) {
            if (z3 && this.f15085b.size() == 1 && this.f15085b.contains(Integer.valueOf(id))) {
                gVar.setChecked(true);
                return false;
            }
            boolean remove = this.f15085b.remove(Integer.valueOf(id));
            if (gVar.isChecked()) {
                gVar.setChecked(false);
            }
            return remove;
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void e(T t3) {
        this.f15084a.put(Integer.valueOf(t3.getId()), t3);
        if (t3.isChecked()) {
            g(t3);
        }
        t3.setInternalOnCheckedChangeListener(new C0108a());
    }

    public void f(@IdRes int i2) {
        T t3 = this.f15084a.get(Integer.valueOf(i2));
        if (t3 != null && g(t3)) {
            n();
        }
    }

    public void h() {
        boolean z3 = !this.f15085b.isEmpty();
        for (T t3 : this.f15084a.values()) {
            t(t3, false);
        }
        if (z3) {
            n();
        }
    }

    @NonNull
    public Set<Integer> i() {
        return new HashSet(this.f15085b);
    }

    @NonNull
    public List<Integer> j(@NonNull ViewGroup viewGroup) {
        Set<Integer> i2 = i();
        ArrayList arrayList = new ArrayList();
        for (int i4 = 0; i4 < viewGroup.getChildCount(); i4++) {
            View childAt = viewGroup.getChildAt(i4);
            if ((childAt instanceof g) && i2.contains(Integer.valueOf(childAt.getId()))) {
                arrayList.add(Integer.valueOf(childAt.getId()));
            }
        }
        return arrayList;
    }

    @IdRes
    public int k() {
        if (!this.f15087d || this.f15085b.isEmpty()) {
            return -1;
        }
        return this.f15085b.iterator().next().intValue();
    }

    public boolean l() {
        return this.f15088e;
    }

    public boolean m() {
        return this.f15087d;
    }

    public void o(T t3) {
        t3.setInternalOnCheckedChangeListener(null);
        this.f15084a.remove(Integer.valueOf(t3.getId()));
        this.f15085b.remove(Integer.valueOf(t3.getId()));
    }

    public void p(@Nullable b bVar) {
        this.f15086c = bVar;
    }

    public void q(boolean z3) {
        this.f15088e = z3;
    }

    public void r(boolean z3) {
        if (this.f15087d != z3) {
            this.f15087d = z3;
            h();
        }
    }

    public void s(@IdRes int i2) {
        T t3 = this.f15084a.get(Integer.valueOf(i2));
        if (t3 != null && t(t3, this.f15088e)) {
            n();
        }
    }
}
