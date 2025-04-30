package androidx.fragment.app;

import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.IdRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class FragmentStore {

    /* renamed from: d  reason: collision with root package name */
    private static final String f5985d = "FragmentManager";

    /* renamed from: a  reason: collision with root package name */
    private final ArrayList<Fragment> f5986a = new ArrayList<>();

    /* renamed from: b  reason: collision with root package name */
    private final HashMap<String, FragmentStateManager> f5987b = new HashMap<>();

    /* renamed from: c  reason: collision with root package name */
    private FragmentManagerViewModel f5988c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(@NonNull Fragment fragment) {
        if (!this.f5986a.contains(fragment)) {
            synchronized (this.f5986a) {
                this.f5986a.add(fragment);
            }
            fragment.mAdded = true;
            return;
        }
        throw new IllegalStateException("Fragment already added: " + fragment);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b() {
        this.f5987b.values().removeAll(Collections.singleton(null));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean c(@NonNull String str) {
        return this.f5987b.get(str) != null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void d(int i2) {
        for (FragmentStateManager fragmentStateManager : this.f5987b.values()) {
            if (fragmentStateManager != null) {
                fragmentStateManager.u(i2);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void e(@NonNull String str, @Nullable FileDescriptor fileDescriptor, @NonNull PrintWriter printWriter, @Nullable String[] strArr) {
        String str2 = str + "    ";
        if (!this.f5987b.isEmpty()) {
            printWriter.print(str);
            printWriter.println("Active Fragments:");
            for (FragmentStateManager fragmentStateManager : this.f5987b.values()) {
                printWriter.print(str);
                if (fragmentStateManager != null) {
                    Fragment k4 = fragmentStateManager.k();
                    printWriter.println(k4);
                    k4.dump(str2, fileDescriptor, printWriter, strArr);
                } else {
                    printWriter.println("null");
                }
            }
        }
        int size = this.f5986a.size();
        if (size > 0) {
            printWriter.print(str);
            printWriter.println("Added Fragments:");
            for (int i2 = 0; i2 < size; i2++) {
                printWriter.print(str);
                printWriter.print("  #");
                printWriter.print(i2);
                printWriter.print(": ");
                printWriter.println(this.f5986a.get(i2).toString());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Nullable
    public Fragment f(@NonNull String str) {
        FragmentStateManager fragmentStateManager = this.f5987b.get(str);
        if (fragmentStateManager != null) {
            return fragmentStateManager.k();
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Nullable
    public Fragment g(@IdRes int i2) {
        for (int size = this.f5986a.size() - 1; size >= 0; size--) {
            Fragment fragment = this.f5986a.get(size);
            if (fragment != null && fragment.mFragmentId == i2) {
                return fragment;
            }
        }
        for (FragmentStateManager fragmentStateManager : this.f5987b.values()) {
            if (fragmentStateManager != null) {
                Fragment k4 = fragmentStateManager.k();
                if (k4.mFragmentId == i2) {
                    return k4;
                }
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Nullable
    public Fragment h(@Nullable String str) {
        if (str != null) {
            for (int size = this.f5986a.size() - 1; size >= 0; size--) {
                Fragment fragment = this.f5986a.get(size);
                if (fragment != null && str.equals(fragment.mTag)) {
                    return fragment;
                }
            }
        }
        if (str != null) {
            for (FragmentStateManager fragmentStateManager : this.f5987b.values()) {
                if (fragmentStateManager != null) {
                    Fragment k4 = fragmentStateManager.k();
                    if (str.equals(k4.mTag)) {
                        return k4;
                    }
                }
            }
            return null;
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Nullable
    public Fragment i(@NonNull String str) {
        Fragment findFragmentByWho;
        for (FragmentStateManager fragmentStateManager : this.f5987b.values()) {
            if (fragmentStateManager != null && (findFragmentByWho = fragmentStateManager.k().findFragmentByWho(str)) != null) {
                return findFragmentByWho;
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int j(@NonNull Fragment fragment) {
        View view;
        View view2;
        ViewGroup viewGroup = fragment.mContainer;
        if (viewGroup == null) {
            return -1;
        }
        int indexOf = this.f5986a.indexOf(fragment);
        for (int i2 = indexOf - 1; i2 >= 0; i2--) {
            Fragment fragment2 = this.f5986a.get(i2);
            if (fragment2.mContainer == viewGroup && (view2 = fragment2.mView) != null) {
                return viewGroup.indexOfChild(view2) + 1;
            }
        }
        while (true) {
            indexOf++;
            if (indexOf >= this.f5986a.size()) {
                return -1;
            }
            Fragment fragment3 = this.f5986a.get(indexOf);
            if (fragment3.mContainer == viewGroup && (view = fragment3.mView) != null) {
                return viewGroup.indexOfChild(view);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int k() {
        return this.f5987b.size();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @NonNull
    public List<FragmentStateManager> l() {
        ArrayList arrayList = new ArrayList();
        for (FragmentStateManager fragmentStateManager : this.f5987b.values()) {
            if (fragmentStateManager != null) {
                arrayList.add(fragmentStateManager);
            }
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @NonNull
    public List<Fragment> m() {
        ArrayList arrayList = new ArrayList();
        for (FragmentStateManager fragmentStateManager : this.f5987b.values()) {
            if (fragmentStateManager != null) {
                arrayList.add(fragmentStateManager.k());
            } else {
                arrayList.add(null);
            }
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Nullable
    public FragmentStateManager n(@NonNull String str) {
        return this.f5987b.get(str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @NonNull
    public List<Fragment> o() {
        ArrayList arrayList;
        if (this.f5986a.isEmpty()) {
            return Collections.emptyList();
        }
        synchronized (this.f5986a) {
            arrayList = new ArrayList(this.f5986a);
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public FragmentManagerViewModel p() {
        return this.f5988c;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void q(@NonNull FragmentStateManager fragmentStateManager) {
        Fragment k4 = fragmentStateManager.k();
        if (c(k4.mWho)) {
            return;
        }
        this.f5987b.put(k4.mWho, fragmentStateManager);
        if (k4.mRetainInstanceChangedWhileDetached) {
            if (k4.mRetainInstance) {
                this.f5988c.a(k4);
            } else {
                this.f5988c.j(k4);
            }
            k4.mRetainInstanceChangedWhileDetached = false;
        }
        if (FragmentManager.y0(2)) {
            StringBuilder sb = new StringBuilder();
            sb.append("Added fragment to active set ");
            sb.append(k4);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void r(@NonNull FragmentStateManager fragmentStateManager) {
        Fragment k4 = fragmentStateManager.k();
        if (k4.mRetainInstance) {
            this.f5988c.j(k4);
        }
        if (this.f5987b.put(k4.mWho, null) != null && FragmentManager.y0(2)) {
            StringBuilder sb = new StringBuilder();
            sb.append("Removed fragment from active set ");
            sb.append(k4);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void s() {
        Iterator<Fragment> it2 = this.f5986a.iterator();
        while (it2.hasNext()) {
            FragmentStateManager fragmentStateManager = this.f5987b.get(it2.next().mWho);
            if (fragmentStateManager != null) {
                fragmentStateManager.m();
            }
        }
        for (FragmentStateManager fragmentStateManager2 : this.f5987b.values()) {
            if (fragmentStateManager2 != null) {
                fragmentStateManager2.m();
                Fragment k4 = fragmentStateManager2.k();
                if (k4.mRemoving && !k4.isInBackStack()) {
                    r(fragmentStateManager2);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void t(@NonNull Fragment fragment) {
        synchronized (this.f5986a) {
            this.f5986a.remove(fragment);
        }
        fragment.mAdded = false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void u() {
        this.f5987b.clear();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void v(@Nullable List<String> list) {
        this.f5986a.clear();
        if (list != null) {
            for (String str : list) {
                Fragment f4 = f(str);
                if (f4 != null) {
                    if (FragmentManager.y0(2)) {
                        StringBuilder sb = new StringBuilder();
                        sb.append("restoreSaveState: added (");
                        sb.append(str);
                        sb.append("): ");
                        sb.append(f4);
                    }
                    a(f4);
                } else {
                    throw new IllegalStateException("No instantiated fragment for (" + str + ")");
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @NonNull
    public ArrayList<FragmentState> w() {
        ArrayList<FragmentState> arrayList = new ArrayList<>(this.f5987b.size());
        for (FragmentStateManager fragmentStateManager : this.f5987b.values()) {
            if (fragmentStateManager != null) {
                Fragment k4 = fragmentStateManager.k();
                FragmentState s3 = fragmentStateManager.s();
                arrayList.add(s3);
                if (FragmentManager.y0(2)) {
                    StringBuilder sb = new StringBuilder();
                    sb.append("Saved state of ");
                    sb.append(k4);
                    sb.append(": ");
                    sb.append(s3.f5961m);
                }
            }
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Nullable
    public ArrayList<String> x() {
        synchronized (this.f5986a) {
            if (this.f5986a.isEmpty()) {
                return null;
            }
            ArrayList<String> arrayList = new ArrayList<>(this.f5986a.size());
            Iterator<Fragment> it2 = this.f5986a.iterator();
            while (it2.hasNext()) {
                Fragment next = it2.next();
                arrayList.add(next.mWho);
                if (FragmentManager.y0(2)) {
                    StringBuilder sb = new StringBuilder();
                    sb.append("saveAllState: adding fragment (");
                    sb.append(next.mWho);
                    sb.append("): ");
                    sb.append(next);
                }
            }
            return arrayList;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void y(@NonNull FragmentManagerViewModel fragmentManagerViewModel) {
        this.f5988c = fragmentManagerViewModel;
    }
}
