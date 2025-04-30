package com.xinzhu.overmind.server.pm;

import android.content.Intent;
import android.content.IntentFilter;
import android.net.Uri;
import android.util.ArrayMap;
import android.util.MutableInt;
import android.util.PrintWriterPrinter;
import com.xinzhu.overmind.server.pm.MindPackage;
import com.xinzhu.overmind.server.pm.MindPackage.IntentInfo;
import com.xinzhu.overmind.utils.u;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
/* compiled from: IntentResolver.java */
/* loaded from: classes3.dex */
public abstract class f<F extends MindPackage.IntentInfo, R> {

    /* renamed from: h  reason: collision with root package name */
    private static final String f64596h = "IntentResolver";

    /* renamed from: i  reason: collision with root package name */
    private static final boolean f64597i = false;

    /* renamed from: j  reason: collision with root package name */
    private static final boolean f64598j = false;

    /* renamed from: k  reason: collision with root package name */
    private static final boolean f64599k = false;

    /* renamed from: l  reason: collision with root package name */
    private static final Comparator f64600l = new a();

    /* renamed from: a  reason: collision with root package name */
    private final HashSet<F> f64601a = new HashSet<>();

    /* renamed from: b  reason: collision with root package name */
    private final ArrayMap<String, F[]> f64602b = new ArrayMap<>();

    /* renamed from: c  reason: collision with root package name */
    private final ArrayMap<String, F[]> f64603c = new ArrayMap<>();

    /* renamed from: d  reason: collision with root package name */
    private final ArrayMap<String, F[]> f64604d = new ArrayMap<>();

    /* renamed from: e  reason: collision with root package name */
    private final ArrayMap<String, F[]> f64605e = new ArrayMap<>();

    /* renamed from: f  reason: collision with root package name */
    private final ArrayMap<String, F[]> f64606f = new ArrayMap<>();

    /* renamed from: g  reason: collision with root package name */
    private final ArrayMap<String, F[]> f64607g = new ArrayMap<>();

    /* compiled from: IntentResolver.java */
    /* loaded from: classes3.dex */
    class a implements Comparator {
        a() {
        }

        @Override // java.util.Comparator
        public int compare(Object o12, Object o22) {
            int priority = ((IntentFilter) o12).getPriority();
            int priority2 = ((IntentFilter) o22).getPriority();
            if (priority > priority2) {
                return -1;
            }
            return priority < priority2 ? 1 : 0;
        }
    }

    /* compiled from: IntentResolver.java */
    /* loaded from: classes3.dex */
    private class b implements Iterator<F> {

        /* renamed from: a  reason: collision with root package name */
        private final Iterator<F> f64608a;

        /* renamed from: b  reason: collision with root package name */
        private F f64609b;

        b(Iterator<F> it2) {
            this.f64608a = it2;
        }

        @Override // java.util.Iterator
        /* renamed from: a */
        public F next() {
            F next = this.f64608a.next();
            this.f64609b = next;
            return next;
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f64608a.hasNext();
        }

        @Override // java.util.Iterator
        public void remove() {
            F f4 = this.f64609b;
            if (f4 != null) {
                f.this.y(f4);
            }
            this.f64608a.remove();
        }
    }

    private final int B(F filter, Iterator<String> i2, ArrayMap<String, F[]> dest, String prefix) {
        int i4 = 0;
        if (i2 == null) {
            return 0;
        }
        while (i2.hasNext()) {
            i4++;
            z(dest, i2.next(), filter);
        }
        return i4;
    }

    private final int C(F filter, String prefix) {
        String str;
        Iterator<String> typesIterator = filter.f64540a.typesIterator();
        if (typesIterator == null) {
            return 0;
        }
        int i2 = 0;
        while (typesIterator.hasNext()) {
            String next = typesIterator.next();
            i2++;
            int indexOf = next.indexOf(47);
            if (indexOf > 0) {
                str = next.substring(0, indexOf).intern();
            } else {
                str = next;
                next = next + "/*";
            }
            z(this.f64602b, next, filter);
            if (indexOf > 0) {
                z(this.f64603c, str, filter);
            } else {
                z(this.f64604d, str, filter);
            }
        }
        return i2;
    }

    private final void a(ArrayMap<String, F[]> map, String name, F filter) {
        F[] fArr = map.get(name);
        if (fArr == null) {
            F[] r3 = r(2);
            map.put(name, r3);
            r3[0] = filter;
            return;
        }
        int length = fArr.length;
        int i2 = length;
        while (i2 > 0 && fArr[i2 - 1] == null) {
            i2--;
        }
        if (i2 < length) {
            fArr[i2] = filter;
            return;
        }
        F[] r4 = r((length * 3) / 2);
        System.arraycopy(fArr, 0, r4, 0, length);
        r4[length] = filter;
        map.put(name, r4);
    }

    private void d(Intent intent, com.xinzhu.overmind.server.pm.b<String> categories, boolean debug, boolean defaultOnly, String resolvedType, String scheme, F[] src, List<R> dest, int userId) {
        F f4;
        String str;
        Uri uri;
        F[] fArr = src;
        String action = intent.getAction();
        Uri data = intent.getData();
        String str2 = intent.getPackage();
        int length = fArr != null ? fArr.length : 0;
        int i2 = 0;
        boolean z3 = false;
        while (i2 < length && (f4 = fArr[i2]) != null) {
            if (debug) {
                u.h(f64596h, "Matching against filter " + f4);
            }
            if (str2 == null || q(str2, f4)) {
                if (c(f4, dest)) {
                    str = action;
                    uri = data;
                    int match = f4.f64540a.match(action, resolvedType, scheme, data, categories, f64596h);
                    if (match >= 0) {
                        if (debug) {
                            u.h(f64596h, "  Filter matched!  match=0x" + Integer.toHexString(match) + " hasDefault=" + f4.f64540a.hasCategory("android.intent.category.DEFAULT"));
                        }
                        if (!defaultOnly || f4.f64540a.hasCategory("android.intent.category.DEFAULT")) {
                            R s3 = s(f4, match, userId);
                            if (debug) {
                                u.h(f64596h, "    Created result: " + s3);
                            }
                            if (s3 != null) {
                                dest.add(s3);
                            }
                        } else {
                            z3 = true;
                        }
                    } else if (debug) {
                        String str3 = match != -4 ? match != -3 ? match != -2 ? match != -1 ? "unknown reason" : "type" : "data" : "action" : "category";
                        u.h(f64596h, "  Filter did not match: " + str3);
                    }
                    i2++;
                    fArr = src;
                    action = str;
                    data = uri;
                } else if (debug) {
                    u.h(f64596h, "  Filter's target already added");
                }
            } else if (debug) {
                u.h(f64596h, "  Filter is not from package " + str2 + "; skipping");
            }
            str = action;
            uri = data;
            i2++;
            fArr = src;
            action = str;
            data = uri;
        }
        if (debug && z3) {
            if (dest.size() == 0) {
                u.h(f64596h, "resolveIntent failed: found match, but none with CATEGORY_DEFAULT");
            } else if (dest.size() > 1) {
                u.h(f64596h, "resolveIntent: multiple matches, only some with CATEGORY_DEFAULT");
            }
        }
    }

    private ArrayList<F> e(F[] array, IntentFilter matching) {
        F f4;
        ArrayList<F> arrayList = null;
        if (array != null) {
            for (int i2 = 0; i2 < array.length && (f4 = array[i2]) != null; i2++) {
                if (i(f4.f64540a, matching)) {
                    if (arrayList == null) {
                        arrayList = new ArrayList<>();
                    }
                    arrayList.add(f4);
                }
            }
        }
        return arrayList;
    }

    public static boolean i(IntentFilter f12, IntentFilter f22) {
        int countActions = f12.countActions();
        if (countActions != f22.countActions()) {
            return false;
        }
        for (int i2 = 0; i2 < countActions; i2++) {
            if (!f22.hasAction(f12.getAction(i2))) {
                return false;
            }
        }
        int countCategories = f12.countCategories();
        if (countCategories != f22.countCategories()) {
            return false;
        }
        for (int i4 = 0; i4 < countCategories; i4++) {
            if (!f22.hasCategory(f12.getCategory(i4))) {
                return false;
            }
        }
        int countDataSchemes = f12.countDataSchemes();
        if (countDataSchemes != f22.countDataSchemes()) {
            return false;
        }
        for (int i5 = 0; i5 < countDataSchemes; i5++) {
            if (!f22.hasDataScheme(f12.getDataScheme(i5))) {
                return false;
            }
        }
        return f12.countDataSchemeSpecificParts() == f22.countDataSchemeSpecificParts();
    }

    private static com.xinzhu.overmind.server.pm.b<String> o(Intent intent) {
        Set<String> categories = intent.getCategories();
        if (categories == null) {
            return null;
        }
        return new com.xinzhu.overmind.server.pm.b<>((String[]) categories.toArray(new String[categories.size()]));
    }

    private final int v(F filter, Iterator<String> i2, ArrayMap<String, F[]> dest, String prefix) {
        int i4 = 0;
        if (i2 == null) {
            return 0;
        }
        while (i2.hasNext()) {
            i4++;
            a(dest, i2.next(), filter);
        }
        return i4;
    }

    private final int w(F filter, String prefix) {
        String str;
        Iterator<String> typesIterator = filter.f64540a.typesIterator();
        if (typesIterator == null) {
            return 0;
        }
        int i2 = 0;
        while (typesIterator.hasNext()) {
            String next = typesIterator.next();
            i2++;
            int indexOf = next.indexOf(47);
            if (indexOf > 0) {
                str = next.substring(0, indexOf).intern();
            } else {
                str = next;
                next = next + "/*";
            }
            a(this.f64602b, next, filter);
            if (indexOf > 0) {
                a(this.f64603c, str, filter);
            } else {
                a(this.f64604d, str, filter);
            }
        }
        return i2;
    }

    private final void z(ArrayMap<String, F[]> map, String name, Object object) {
        F[] fArr = map.get(name);
        if (fArr != null) {
            int length = fArr.length - 1;
            while (length >= 0 && fArr[length] == null) {
                length--;
            }
            int i2 = length;
            while (length >= 0) {
                if (fArr[length] == object) {
                    int i4 = i2 - length;
                    if (i4 > 0) {
                        System.arraycopy(fArr, length + 1, fArr, length, i4);
                    }
                    fArr[i2] = null;
                    i2--;
                }
                length--;
            }
            if (i2 < 0) {
                map.remove(name);
            } else if (i2 < fArr.length / 2) {
                F[] r3 = r(i2 + 2);
                System.arraycopy(fArr, 0, r3, 0, i2 + 1);
                map.put(name, r3);
            }
        }
    }

    protected void A(List<R> results) {
        Collections.sort(results, f64600l);
    }

    public void b(F f4) {
        this.f64601a.add(f4);
        int v3 = v(f4, f4.f64540a.schemesIterator(), this.f64605e, "      Scheme: ");
        int w3 = w(f4, "      Type: ");
        if (v3 == 0 && w3 == 0) {
            v(f4, f4.f64540a.actionsIterator(), this.f64606f, "      Action: ");
        }
        if (w3 != 0) {
            v(f4, f4.f64540a.actionsIterator(), this.f64607g, "      TypedAction: ");
        }
    }

    protected boolean c(F filter, List<R> dest) {
        return true;
    }

    protected void f(PrintWriter out, String prefix, F filter) {
        out.print(prefix);
        out.println(filter);
    }

    protected void g(PrintWriter out, String prefix, Object label, int count) {
        out.print(prefix);
        out.print(label);
        out.print(": ");
        out.println(count);
    }

    boolean h(PrintWriter out, String titlePrefix, String title, String prefix, ArrayMap<String, F[]> map, String packageName, boolean printFilter, boolean collapseDuplicates) {
        boolean z3;
        String str;
        F f4;
        PrintWriterPrinter printWriterPrinter;
        boolean z4;
        ArrayMap<String, F[]> arrayMap = map;
        String str2 = prefix + "  ";
        String str3 = prefix + "    ";
        ArrayMap arrayMap2 = new ArrayMap();
        String str4 = title;
        int i2 = 0;
        boolean z5 = false;
        PrintWriterPrinter printWriterPrinter2 = null;
        while (i2 < map.size()) {
            F[] valueAt = arrayMap.valueAt(i2);
            int length = valueAt.length;
            if (!collapseDuplicates || printFilter) {
                z3 = z5;
                str4 = str4;
                printWriterPrinter2 = printWriterPrinter2;
                int i4 = 0;
                boolean z6 = false;
                while (i4 < length) {
                    F f5 = valueAt[i4];
                    if (f5 != null) {
                        if (packageName == null || q(packageName, f5)) {
                            if (str4 != null) {
                                out.print(titlePrefix);
                                out.println(str4);
                                str4 = null;
                            }
                            if (!z6) {
                                out.print(str2);
                                out.print(arrayMap.keyAt(i2));
                                out.println(":");
                                z6 = true;
                            }
                            f(out, str3, f5);
                            if (printFilter) {
                                if (printWriterPrinter2 == null) {
                                    printWriterPrinter2 = new PrintWriterPrinter(out);
                                }
                                f5.f64540a.dump(printWriterPrinter2, str3 + "  ");
                            }
                            z3 = true;
                        }
                        i4++;
                        arrayMap = map;
                    }
                }
            } else {
                arrayMap2.clear();
                int i5 = 0;
                while (true) {
                    str = str4;
                    if (i5 >= length || (f4 = valueAt[i5]) == null) {
                        break;
                    }
                    if (packageName == null || q(packageName, f4)) {
                        Object m4 = m(f4);
                        printWriterPrinter = printWriterPrinter2;
                        int indexOfKey = arrayMap2.indexOfKey(m4);
                        if (indexOfKey < 0) {
                            z4 = z5;
                            arrayMap2.put(m4, new MutableInt(1));
                        } else {
                            z4 = z5;
                            ((MutableInt) arrayMap2.valueAt(indexOfKey)).value++;
                        }
                    } else {
                        z4 = z5;
                        printWriterPrinter = printWriterPrinter2;
                    }
                    i5++;
                    str4 = str;
                    printWriterPrinter2 = printWriterPrinter;
                    z5 = z4;
                }
                z3 = z5;
                PrintWriterPrinter printWriterPrinter3 = printWriterPrinter2;
                str4 = str;
                int i6 = 0;
                boolean z7 = false;
                while (i6 < arrayMap2.size()) {
                    if (str4 != null) {
                        out.print(titlePrefix);
                        out.println(str4);
                        str4 = null;
                    }
                    if (!z7) {
                        out.print(str2);
                        out.print(arrayMap.keyAt(i2));
                        out.println(":");
                        z7 = true;
                    }
                    g(out, str3, arrayMap2.keyAt(i6), ((MutableInt) arrayMap2.valueAt(i6)).value);
                    i6++;
                    z3 = true;
                }
                printWriterPrinter2 = printWriterPrinter3;
            }
            z5 = z3;
            i2++;
            arrayMap = map;
        }
        return z5;
    }

    public Iterator<F> j() {
        return new b(this.f64601a.iterator());
    }

    protected void k(List<R> results) {
    }

    public Set<F> l() {
        return Collections.unmodifiableSet(this.f64601a);
    }

    protected Object m(F filter) {
        return "IntentFilter";
    }

    public ArrayList<F> n(IntentFilter matching) {
        if (matching.countDataSchemes() == 1) {
            return e(this.f64605e.get(matching.getDataScheme(0)), matching);
        }
        if (matching.countDataTypes() != 0 && matching.countActions() == 1) {
            return e(this.f64607g.get(matching.getAction(0)), matching);
        }
        if (matching.countDataTypes() == 0 && matching.countDataSchemes() == 0 && matching.countActions() == 1) {
            return e(this.f64606f.get(matching.getAction(0)), matching);
        }
        ArrayList<F> arrayList = null;
        Iterator<F> it2 = this.f64601a.iterator();
        while (it2.hasNext()) {
            F next = it2.next();
            if (i(next.f64540a, matching)) {
                if (arrayList == null) {
                    arrayList = new ArrayList<>();
                }
                arrayList.add(next);
            }
        }
        return arrayList;
    }

    protected boolean p(F filter, int userId) {
        return false;
    }

    protected abstract boolean q(String packageName, F filter);

    protected abstract F[] r(int size);

    /* JADX WARN: Multi-variable type inference failed */
    protected R s(F filter, int match, int userId) {
        return filter;
    }

    /* JADX WARN: Removed duplicated region for block: B:44:0x0165  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x018a  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x018e A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:55:0x01a4  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x01c4  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x01da  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x01dd  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x01f2  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x0208  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x0221  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.util.List<R> t(android.content.Intent r21, java.lang.String r22, boolean r23, int r24) {
        /*
            Method dump skipped, instructions count: 585
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.xinzhu.overmind.server.pm.f.t(android.content.Intent, java.lang.String, boolean, int):java.util.List");
    }

    public List<R> u(Intent intent, String resolvedType, boolean defaultOnly, ArrayList<F[]> listCut, int userId) {
        ArrayList arrayList = new ArrayList();
        boolean z3 = (intent.getFlags() & 8) != 0;
        com.xinzhu.overmind.server.pm.b<String> o3 = o(intent);
        String scheme = intent.getScheme();
        int size = listCut.size();
        for (int i2 = 0; i2 < size; i2++) {
            d(intent, o3, z3, defaultOnly, resolvedType, scheme, listCut.get(i2), arrayList, userId);
        }
        k(arrayList);
        return arrayList;
    }

    public void x(F f4) {
        y(f4);
        this.f64601a.remove(f4);
    }

    void y(F f4) {
        int B = B(f4, f4.f64540a.schemesIterator(), this.f64605e, "      Scheme: ");
        int C = C(f4, "      Type: ");
        if (B == 0 && C == 0) {
            B(f4, f4.f64540a.actionsIterator(), this.f64606f, "      Action: ");
        }
        if (C != 0) {
            B(f4, f4.f64540a.actionsIterator(), this.f64607g, "      TypedAction: ");
        }
    }
}
