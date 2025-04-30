package androidx.fragment.app;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.FragmentTransaction;
import androidx.lifecycle.Lifecycle;
import java.io.PrintWriter;
import java.util.ArrayList;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class BackStackRecord extends FragmentTransaction implements FragmentManager.BackStackEntry, FragmentManager.OpGenerator {
    private static final String H = "FragmentManager";
    final FragmentManager E;
    boolean F;
    int G;

    /* JADX INFO: Access modifiers changed from: package-private */
    public BackStackRecord(@NonNull FragmentManager fragmentManager) {
        super(fragmentManager.getFragmentFactory(), fragmentManager.o0() != null ? fragmentManager.o0().getContext().getClassLoader() : null);
        this.G = -1;
        this.E = fragmentManager;
    }

    private static boolean l(FragmentTransaction.Op op) {
        Fragment fragment = op.f6030b;
        return (fragment == null || !fragment.mAdded || fragment.mView == null || fragment.mDetached || fragment.mHidden || !fragment.isPostponed()) ? false : true;
    }

    @Override // androidx.fragment.app.FragmentTransaction
    public int commit() {
        return f(false);
    }

    @Override // androidx.fragment.app.FragmentTransaction
    public int commitAllowingStateLoss() {
        return f(true);
    }

    @Override // androidx.fragment.app.FragmentTransaction
    public void commitNow() {
        disallowAddToBackStack();
        this.E.Y(this, false);
    }

    @Override // androidx.fragment.app.FragmentTransaction
    public void commitNowAllowingStateLoss() {
        disallowAddToBackStack();
        this.E.Y(this, true);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // androidx.fragment.app.FragmentTransaction
    public void d(int i2, Fragment fragment, @Nullable String str, int i4) {
        super.d(i2, fragment, str, i4);
        fragment.mFragmentManager = this.E;
    }

    @Override // androidx.fragment.app.FragmentTransaction
    @NonNull
    public FragmentTransaction detach(@NonNull Fragment fragment) {
        FragmentManager fragmentManager = fragment.mFragmentManager;
        if (fragmentManager != null && fragmentManager != this.E) {
            throw new IllegalStateException("Cannot detach Fragment attached to a different FragmentManager. Fragment " + fragment.toString() + " is already attached to a FragmentManager.");
        }
        return super.detach(fragment);
    }

    public void dump(String str, PrintWriter printWriter) {
        dump(str, printWriter, true);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void e(int i2) {
        if (this.f6018i) {
            if (FragmentManager.y0(2)) {
                StringBuilder sb = new StringBuilder();
                sb.append("Bump nesting in ");
                sb.append(this);
                sb.append(" by ");
                sb.append(i2);
            }
            int size = this.f6012c.size();
            for (int i4 = 0; i4 < size; i4++) {
                FragmentTransaction.Op op = this.f6012c.get(i4);
                Fragment fragment = op.f6030b;
                if (fragment != null) {
                    fragment.mBackStackNesting += i2;
                    if (FragmentManager.y0(2)) {
                        StringBuilder sb2 = new StringBuilder();
                        sb2.append("Bump nesting of ");
                        sb2.append(op.f6030b);
                        sb2.append(" to ");
                        sb2.append(op.f6030b.mBackStackNesting);
                    }
                }
            }
        }
    }

    int f(boolean z3) {
        if (!this.F) {
            if (FragmentManager.y0(2)) {
                StringBuilder sb = new StringBuilder();
                sb.append("Commit: ");
                sb.append(this);
                PrintWriter printWriter = new PrintWriter(new LogWriter(H));
                dump("  ", printWriter);
                printWriter.close();
            }
            this.F = true;
            if (this.f6018i) {
                this.G = this.E.i();
            } else {
                this.G = -1;
            }
            this.E.V(this, z3);
            return this.G;
        }
        throw new IllegalStateException("commit already called");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void g() {
        int size = this.f6012c.size();
        for (int i2 = 0; i2 < size; i2++) {
            FragmentTransaction.Op op = this.f6012c.get(i2);
            Fragment fragment = op.f6030b;
            if (fragment != null) {
                fragment.setPopDirection(false);
                fragment.setNextTransition(this.f6017h);
                fragment.setSharedElementNames(this.f6025p, this.f6026q);
            }
            switch (op.f6029a) {
                case 1:
                    fragment.setAnimations(op.f6031c, op.f6032d, op.f6033e, op.f6034f);
                    this.E.c1(fragment, false);
                    this.E.g(fragment);
                    break;
                case 2:
                default:
                    throw new IllegalArgumentException("Unknown cmd: " + op.f6029a);
                case 3:
                    fragment.setAnimations(op.f6031c, op.f6032d, op.f6033e, op.f6034f);
                    this.E.S0(fragment);
                    break;
                case 4:
                    fragment.setAnimations(op.f6031c, op.f6032d, op.f6033e, op.f6034f);
                    this.E.w0(fragment);
                    break;
                case 5:
                    fragment.setAnimations(op.f6031c, op.f6032d, op.f6033e, op.f6034f);
                    this.E.c1(fragment, false);
                    this.E.h1(fragment);
                    break;
                case 6:
                    fragment.setAnimations(op.f6031c, op.f6032d, op.f6033e, op.f6034f);
                    this.E.v(fragment);
                    break;
                case 7:
                    fragment.setAnimations(op.f6031c, op.f6032d, op.f6033e, op.f6034f);
                    this.E.c1(fragment, false);
                    this.E.k(fragment);
                    break;
                case 8:
                    this.E.e1(fragment);
                    break;
                case 9:
                    this.E.e1(null);
                    break;
                case 10:
                    this.E.d1(fragment, op.f6036h);
                    break;
            }
            if (!this.f6027r && op.f6029a != 1 && fragment != null && !FragmentManager.Q) {
                this.E.H0(fragment);
            }
        }
        if (this.f6027r || FragmentManager.Q) {
            return;
        }
        FragmentManager fragmentManager = this.E;
        fragmentManager.I0(fragmentManager.f5889q, true);
    }

    @Override // androidx.fragment.app.FragmentManager.OpGenerator
    public boolean generateOps(@NonNull ArrayList<BackStackRecord> arrayList, @NonNull ArrayList<Boolean> arrayList2) {
        if (FragmentManager.y0(2)) {
            StringBuilder sb = new StringBuilder();
            sb.append("Run: ");
            sb.append(this);
        }
        arrayList.add(this);
        arrayList2.add(Boolean.FALSE);
        if (this.f6018i) {
            this.E.e(this);
            return true;
        }
        return true;
    }

    @Override // androidx.fragment.app.FragmentManager.BackStackEntry
    @Nullable
    public CharSequence getBreadCrumbShortTitle() {
        if (this.f6023n != 0) {
            return this.E.o0().getContext().getText(this.f6023n);
        }
        return this.f6024o;
    }

    @Override // androidx.fragment.app.FragmentManager.BackStackEntry
    public int getBreadCrumbShortTitleRes() {
        return this.f6023n;
    }

    @Override // androidx.fragment.app.FragmentManager.BackStackEntry
    @Nullable
    public CharSequence getBreadCrumbTitle() {
        if (this.f6021l != 0) {
            return this.E.o0().getContext().getText(this.f6021l);
        }
        return this.f6022m;
    }

    @Override // androidx.fragment.app.FragmentManager.BackStackEntry
    public int getBreadCrumbTitleRes() {
        return this.f6021l;
    }

    @Override // androidx.fragment.app.FragmentManager.BackStackEntry
    public int getId() {
        return this.G;
    }

    @Override // androidx.fragment.app.FragmentManager.BackStackEntry
    @Nullable
    public String getName() {
        return this.f6020k;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void h(boolean z3) {
        for (int size = this.f6012c.size() - 1; size >= 0; size--) {
            FragmentTransaction.Op op = this.f6012c.get(size);
            Fragment fragment = op.f6030b;
            if (fragment != null) {
                fragment.setPopDirection(true);
                fragment.setNextTransition(FragmentManager.Z0(this.f6017h));
                fragment.setSharedElementNames(this.f6026q, this.f6025p);
            }
            switch (op.f6029a) {
                case 1:
                    fragment.setAnimations(op.f6031c, op.f6032d, op.f6033e, op.f6034f);
                    this.E.c1(fragment, true);
                    this.E.S0(fragment);
                    break;
                case 2:
                default:
                    throw new IllegalArgumentException("Unknown cmd: " + op.f6029a);
                case 3:
                    fragment.setAnimations(op.f6031c, op.f6032d, op.f6033e, op.f6034f);
                    this.E.g(fragment);
                    break;
                case 4:
                    fragment.setAnimations(op.f6031c, op.f6032d, op.f6033e, op.f6034f);
                    this.E.h1(fragment);
                    break;
                case 5:
                    fragment.setAnimations(op.f6031c, op.f6032d, op.f6033e, op.f6034f);
                    this.E.c1(fragment, true);
                    this.E.w0(fragment);
                    break;
                case 6:
                    fragment.setAnimations(op.f6031c, op.f6032d, op.f6033e, op.f6034f);
                    this.E.k(fragment);
                    break;
                case 7:
                    fragment.setAnimations(op.f6031c, op.f6032d, op.f6033e, op.f6034f);
                    this.E.c1(fragment, true);
                    this.E.v(fragment);
                    break;
                case 8:
                    this.E.e1(null);
                    break;
                case 9:
                    this.E.e1(fragment);
                    break;
                case 10:
                    this.E.d1(fragment, op.f6035g);
                    break;
            }
            if (!this.f6027r && op.f6029a != 3 && fragment != null && !FragmentManager.Q) {
                this.E.H0(fragment);
            }
        }
        if (this.f6027r || !z3 || FragmentManager.Q) {
            return;
        }
        FragmentManager fragmentManager = this.E;
        fragmentManager.I0(fragmentManager.f5889q, true);
    }

    @Override // androidx.fragment.app.FragmentTransaction
    @NonNull
    public FragmentTransaction hide(@NonNull Fragment fragment) {
        FragmentManager fragmentManager = fragment.mFragmentManager;
        if (fragmentManager != null && fragmentManager != this.E) {
            throw new IllegalStateException("Cannot hide Fragment attached to a different FragmentManager. Fragment " + fragment.toString() + " is already attached to a FragmentManager.");
        }
        return super.hide(fragment);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Fragment i(ArrayList<Fragment> arrayList, Fragment fragment) {
        Fragment fragment2 = fragment;
        int i2 = 0;
        while (i2 < this.f6012c.size()) {
            FragmentTransaction.Op op = this.f6012c.get(i2);
            int i4 = op.f6029a;
            if (i4 != 1) {
                if (i4 == 2) {
                    Fragment fragment3 = op.f6030b;
                    int i5 = fragment3.mContainerId;
                    boolean z3 = false;
                    for (int size = arrayList.size() - 1; size >= 0; size--) {
                        Fragment fragment4 = arrayList.get(size);
                        if (fragment4.mContainerId == i5) {
                            if (fragment4 == fragment3) {
                                z3 = true;
                            } else {
                                if (fragment4 == fragment2) {
                                    this.f6012c.add(i2, new FragmentTransaction.Op(9, fragment4));
                                    i2++;
                                    fragment2 = null;
                                }
                                FragmentTransaction.Op op2 = new FragmentTransaction.Op(3, fragment4);
                                op2.f6031c = op.f6031c;
                                op2.f6033e = op.f6033e;
                                op2.f6032d = op.f6032d;
                                op2.f6034f = op.f6034f;
                                this.f6012c.add(i2, op2);
                                arrayList.remove(fragment4);
                                i2++;
                            }
                        }
                    }
                    if (z3) {
                        this.f6012c.remove(i2);
                        i2--;
                    } else {
                        op.f6029a = 1;
                        arrayList.add(fragment3);
                    }
                } else if (i4 == 3 || i4 == 6) {
                    arrayList.remove(op.f6030b);
                    Fragment fragment5 = op.f6030b;
                    if (fragment5 == fragment2) {
                        this.f6012c.add(i2, new FragmentTransaction.Op(9, fragment5));
                        i2++;
                        fragment2 = null;
                    }
                } else if (i4 != 7) {
                    if (i4 == 8) {
                        this.f6012c.add(i2, new FragmentTransaction.Op(9, fragment2));
                        i2++;
                        fragment2 = op.f6030b;
                    }
                }
                i2++;
            }
            arrayList.add(op.f6030b);
            i2++;
        }
        return fragment2;
    }

    @Override // androidx.fragment.app.FragmentTransaction
    public boolean isEmpty() {
        return this.f6012c.isEmpty();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean j(int i2) {
        int size = this.f6012c.size();
        for (int i4 = 0; i4 < size; i4++) {
            Fragment fragment = this.f6012c.get(i4).f6030b;
            int i5 = fragment != null ? fragment.mContainerId : 0;
            if (i5 != 0 && i5 == i2) {
                return true;
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean k(ArrayList<BackStackRecord> arrayList, int i2, int i4) {
        if (i4 == i2) {
            return false;
        }
        int size = this.f6012c.size();
        int i5 = -1;
        for (int i6 = 0; i6 < size; i6++) {
            Fragment fragment = this.f6012c.get(i6).f6030b;
            int i7 = fragment != null ? fragment.mContainerId : 0;
            if (i7 != 0 && i7 != i5) {
                for (int i8 = i2; i8 < i4; i8++) {
                    BackStackRecord backStackRecord = arrayList.get(i8);
                    int size2 = backStackRecord.f6012c.size();
                    for (int i9 = 0; i9 < size2; i9++) {
                        Fragment fragment2 = backStackRecord.f6012c.get(i9).f6030b;
                        if ((fragment2 != null ? fragment2.mContainerId : 0) == i7) {
                            return true;
                        }
                    }
                }
                i5 = i7;
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean m() {
        for (int i2 = 0; i2 < this.f6012c.size(); i2++) {
            if (l(this.f6012c.get(i2))) {
                return true;
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void n(Fragment.OnStartEnterTransitionListener onStartEnterTransitionListener) {
        for (int i2 = 0; i2 < this.f6012c.size(); i2++) {
            FragmentTransaction.Op op = this.f6012c.get(i2);
            if (l(op)) {
                op.f6030b.setOnStartEnterTransitionListener(onStartEnterTransitionListener);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Fragment o(ArrayList<Fragment> arrayList, Fragment fragment) {
        for (int size = this.f6012c.size() - 1; size >= 0; size--) {
            FragmentTransaction.Op op = this.f6012c.get(size);
            int i2 = op.f6029a;
            if (i2 != 1) {
                if (i2 != 3) {
                    switch (i2) {
                        case 8:
                            fragment = null;
                            break;
                        case 9:
                            fragment = op.f6030b;
                            break;
                        case 10:
                            op.f6036h = op.f6035g;
                            break;
                    }
                }
                arrayList.add(op.f6030b);
            }
            arrayList.remove(op.f6030b);
        }
        return fragment;
    }

    @Override // androidx.fragment.app.FragmentTransaction
    @NonNull
    public FragmentTransaction remove(@NonNull Fragment fragment) {
        FragmentManager fragmentManager = fragment.mFragmentManager;
        if (fragmentManager != null && fragmentManager != this.E) {
            throw new IllegalStateException("Cannot remove Fragment attached to a different FragmentManager. Fragment " + fragment.toString() + " is already attached to a FragmentManager.");
        }
        return super.remove(fragment);
    }

    public void runOnCommitRunnables() {
        if (this.f6028s != null) {
            for (int i2 = 0; i2 < this.f6028s.size(); i2++) {
                this.f6028s.get(i2).run();
            }
            this.f6028s = null;
        }
    }

    @Override // androidx.fragment.app.FragmentTransaction
    @NonNull
    public FragmentTransaction setMaxLifecycle(@NonNull Fragment fragment, @NonNull Lifecycle.State state) {
        if (fragment.mFragmentManager == this.E) {
            if (state == Lifecycle.State.INITIALIZED && fragment.mState > -1) {
                throw new IllegalArgumentException("Cannot set maximum Lifecycle to " + state + " after the Fragment has been created");
            } else if (state != Lifecycle.State.DESTROYED) {
                return super.setMaxLifecycle(fragment, state);
            } else {
                throw new IllegalArgumentException("Cannot set maximum Lifecycle to " + state + ". Use remove() to remove the fragment from the FragmentManager and trigger its destruction.");
            }
        }
        throw new IllegalArgumentException("Cannot setMaxLifecycle for Fragment not attached to FragmentManager " + this.E);
    }

    @Override // androidx.fragment.app.FragmentTransaction
    @NonNull
    public FragmentTransaction setPrimaryNavigationFragment(@Nullable Fragment fragment) {
        FragmentManager fragmentManager;
        if (fragment != null && (fragmentManager = fragment.mFragmentManager) != null && fragmentManager != this.E) {
            throw new IllegalStateException("Cannot setPrimaryNavigation for Fragment attached to a different FragmentManager. Fragment " + fragment.toString() + " is already attached to a FragmentManager.");
        }
        return super.setPrimaryNavigationFragment(fragment);
    }

    @Override // androidx.fragment.app.FragmentTransaction
    @NonNull
    public FragmentTransaction show(@NonNull Fragment fragment) {
        FragmentManager fragmentManager = fragment.mFragmentManager;
        if (fragmentManager != null && fragmentManager != this.E) {
            throw new IllegalStateException("Cannot show Fragment attached to a different FragmentManager. Fragment " + fragment.toString() + " is already attached to a FragmentManager.");
        }
        return super.show(fragment);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder(128);
        sb.append("BackStackEntry{");
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        if (this.G >= 0) {
            sb.append(" #");
            sb.append(this.G);
        }
        if (this.f6020k != null) {
            sb.append(" ");
            sb.append(this.f6020k);
        }
        sb.append("}");
        return sb.toString();
    }

    public void dump(String str, PrintWriter printWriter, boolean z3) {
        String str2;
        if (z3) {
            printWriter.print(str);
            printWriter.print("mName=");
            printWriter.print(this.f6020k);
            printWriter.print(" mIndex=");
            printWriter.print(this.G);
            printWriter.print(" mCommitted=");
            printWriter.println(this.F);
            if (this.f6017h != 0) {
                printWriter.print(str);
                printWriter.print("mTransition=#");
                printWriter.print(Integer.toHexString(this.f6017h));
            }
            if (this.f6013d != 0 || this.f6014e != 0) {
                printWriter.print(str);
                printWriter.print("mEnterAnim=#");
                printWriter.print(Integer.toHexString(this.f6013d));
                printWriter.print(" mExitAnim=#");
                printWriter.println(Integer.toHexString(this.f6014e));
            }
            if (this.f6015f != 0 || this.f6016g != 0) {
                printWriter.print(str);
                printWriter.print("mPopEnterAnim=#");
                printWriter.print(Integer.toHexString(this.f6015f));
                printWriter.print(" mPopExitAnim=#");
                printWriter.println(Integer.toHexString(this.f6016g));
            }
            if (this.f6021l != 0 || this.f6022m != null) {
                printWriter.print(str);
                printWriter.print("mBreadCrumbTitleRes=#");
                printWriter.print(Integer.toHexString(this.f6021l));
                printWriter.print(" mBreadCrumbTitleText=");
                printWriter.println(this.f6022m);
            }
            if (this.f6023n != 0 || this.f6024o != null) {
                printWriter.print(str);
                printWriter.print("mBreadCrumbShortTitleRes=#");
                printWriter.print(Integer.toHexString(this.f6023n));
                printWriter.print(" mBreadCrumbShortTitleText=");
                printWriter.println(this.f6024o);
            }
        }
        if (this.f6012c.isEmpty()) {
            return;
        }
        printWriter.print(str);
        printWriter.println("Operations:");
        int size = this.f6012c.size();
        for (int i2 = 0; i2 < size; i2++) {
            FragmentTransaction.Op op = this.f6012c.get(i2);
            switch (op.f6029a) {
                case 0:
                    str2 = "NULL";
                    break;
                case 1:
                    str2 = "ADD";
                    break;
                case 2:
                    str2 = "REPLACE";
                    break;
                case 3:
                    str2 = "REMOVE";
                    break;
                case 4:
                    str2 = "HIDE";
                    break;
                case 5:
                    str2 = "SHOW";
                    break;
                case 6:
                    str2 = "DETACH";
                    break;
                case 7:
                    str2 = "ATTACH";
                    break;
                case 8:
                    str2 = "SET_PRIMARY_NAV";
                    break;
                case 9:
                    str2 = "UNSET_PRIMARY_NAV";
                    break;
                case 10:
                    str2 = "OP_SET_MAX_LIFECYCLE";
                    break;
                default:
                    str2 = "cmd=" + op.f6029a;
                    break;
            }
            printWriter.print(str);
            printWriter.print("  Op #");
            printWriter.print(i2);
            printWriter.print(": ");
            printWriter.print(str2);
            printWriter.print(" ");
            printWriter.println(op.f6030b);
            if (z3) {
                if (op.f6031c != 0 || op.f6032d != 0) {
                    printWriter.print(str);
                    printWriter.print("enterAnim=#");
                    printWriter.print(Integer.toHexString(op.f6031c));
                    printWriter.print(" exitAnim=#");
                    printWriter.println(Integer.toHexString(op.f6032d));
                }
                if (op.f6033e != 0 || op.f6034f != 0) {
                    printWriter.print(str);
                    printWriter.print("popEnterAnim=#");
                    printWriter.print(Integer.toHexString(op.f6033e));
                    printWriter.print(" popExitAnim=#");
                    printWriter.println(Integer.toHexString(op.f6034f));
                }
            }
        }
    }
}
