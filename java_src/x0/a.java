package x0;

import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.FragmentTransaction;
import java.util.ArrayList;
import java.util.Iterator;
/* compiled from: FragmentChangeManager.java */
/* loaded from: classes2.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    private FragmentManager f74253a;

    /* renamed from: b  reason: collision with root package name */
    private int f74254b;

    /* renamed from: c  reason: collision with root package name */
    private ArrayList<Fragment> f74255c;

    /* renamed from: d  reason: collision with root package name */
    private int f74256d;

    public a(FragmentManager fragmentManager, int i2, ArrayList<Fragment> arrayList) {
        this.f74253a = fragmentManager;
        this.f74254b = i2;
        this.f74255c = arrayList;
        c();
    }

    private void c() {
        Iterator<Fragment> it2 = this.f74255c.iterator();
        while (it2.hasNext()) {
            Fragment next = it2.next();
            this.f74253a.beginTransaction().add(this.f74254b, next).hide(next).commit();
        }
        d(0);
    }

    public Fragment a() {
        return this.f74255c.get(this.f74256d);
    }

    public int b() {
        return this.f74256d;
    }

    public void d(int i2) {
        for (int i4 = 0; i4 < this.f74255c.size(); i4++) {
            FragmentTransaction beginTransaction = this.f74253a.beginTransaction();
            Fragment fragment = this.f74255c.get(i4);
            if (i4 == i2) {
                beginTransaction.show(fragment);
            } else {
                beginTransaction.hide(fragment);
            }
            beginTransaction.commit();
        }
        this.f74256d = i2;
    }
}
