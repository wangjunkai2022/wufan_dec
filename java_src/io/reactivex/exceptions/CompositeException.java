package io.reactivex.exceptions;

import io.reactivex.annotations.NonNull;
import java.io.PrintStream;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
/* loaded from: classes5.dex */
public final class CompositeException extends RuntimeException {
    private static final long serialVersionUID = 3026362227162912146L;

    /* renamed from: a  reason: collision with root package name */
    private final List<Throwable> f65799a;

    /* renamed from: b  reason: collision with root package name */
    private final String f65800b;

    /* renamed from: c  reason: collision with root package name */
    private Throwable f65801c;

    /* loaded from: classes5.dex */
    static final class CompositeExceptionCausalChain extends RuntimeException {

        /* renamed from: a  reason: collision with root package name */
        static final String f65802a = "Chain of Causes for CompositeException In Order Received =>";
        private static final long serialVersionUID = 3875212506787802066L;

        CompositeExceptionCausalChain() {
        }

        @Override // java.lang.Throwable
        public String getMessage() {
            return f65802a;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public static abstract class a {
        a() {
        }

        abstract void a(Object obj);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public static final class b extends a {

        /* renamed from: a  reason: collision with root package name */
        private final PrintStream f65803a;

        b(PrintStream printStream) {
            this.f65803a = printStream;
        }

        @Override // io.reactivex.exceptions.CompositeException.a
        void a(Object obj) {
            this.f65803a.println(obj);
        }
    }

    /* loaded from: classes5.dex */
    static final class c extends a {

        /* renamed from: a  reason: collision with root package name */
        private final PrintWriter f65804a;

        c(PrintWriter printWriter) {
            this.f65804a = printWriter;
        }

        @Override // io.reactivex.exceptions.CompositeException.a
        void a(Object obj) {
            this.f65804a.println(obj);
        }
    }

    public CompositeException(@NonNull Throwable... thArr) {
        this(thArr == null ? Collections.singletonList(new NullPointerException("exceptions was null")) : Arrays.asList(thArr));
    }

    private void a(StringBuilder sb, Throwable th, String str) {
        StackTraceElement[] stackTrace;
        sb.append(str);
        sb.append(th);
        sb.append('\n');
        for (StackTraceElement stackTraceElement : th.getStackTrace()) {
            sb.append("\t\tat ");
            sb.append(stackTraceElement);
            sb.append('\n');
        }
        if (th.getCause() != null) {
            sb.append("\tCaused by: ");
            a(sb, th.getCause(), "");
        }
    }

    private List<Throwable> c(Throwable th) {
        ArrayList arrayList = new ArrayList();
        Throwable cause = th.getCause();
        if (cause != null && cause != th) {
            while (true) {
                arrayList.add(cause);
                Throwable cause2 = cause.getCause();
                if (cause2 == null || cause2 == cause) {
                    break;
                }
                cause = cause2;
            }
        }
        return arrayList;
    }

    private void e(a aVar) {
        StackTraceElement[] stackTrace;
        StringBuilder sb = new StringBuilder(128);
        sb.append(this);
        sb.append('\n');
        for (StackTraceElement stackTraceElement : getStackTrace()) {
            sb.append("\tat ");
            sb.append(stackTraceElement);
            sb.append('\n');
        }
        int i2 = 1;
        for (Throwable th : this.f65799a) {
            sb.append("  ComposedException ");
            sb.append(i2);
            sb.append(" :\n");
            a(sb, th, "\t");
            i2++;
        }
        aVar.a(sb.toString());
    }

    @NonNull
    public List<Throwable> b() {
        return this.f65799a;
    }

    Throwable d(Throwable th) {
        Throwable cause = th.getCause();
        if (cause == null || this.f65801c == cause) {
            return th;
        }
        while (true) {
            Throwable cause2 = cause.getCause();
            if (cause2 == null || cause2 == cause) {
                break;
            }
            cause = cause2;
        }
        return cause;
    }

    public int f() {
        return this.f65799a.size();
    }

    @Override // java.lang.Throwable
    @NonNull
    public synchronized Throwable getCause() {
        if (this.f65801c == null) {
            CompositeExceptionCausalChain compositeExceptionCausalChain = new CompositeExceptionCausalChain();
            HashSet hashSet = new HashSet();
            Iterator<Throwable> it2 = this.f65799a.iterator();
            CompositeExceptionCausalChain compositeExceptionCausalChain2 = compositeExceptionCausalChain;
            while (it2.hasNext()) {
                Throwable next = it2.next();
                if (!hashSet.contains(next)) {
                    hashSet.add(next);
                    for (Throwable th : c(next)) {
                        if (hashSet.contains(th)) {
                            next = new RuntimeException("Duplicate found in causal chain so cropping to prevent loop ...");
                        } else {
                            hashSet.add(th);
                        }
                    }
                    try {
                        compositeExceptionCausalChain2.initCause(next);
                    } catch (Throwable unused) {
                    }
                    compositeExceptionCausalChain2 = d(compositeExceptionCausalChain2);
                }
            }
            this.f65801c = compositeExceptionCausalChain;
        }
        return this.f65801c;
    }

    @Override // java.lang.Throwable
    @NonNull
    public String getMessage() {
        return this.f65800b;
    }

    @Override // java.lang.Throwable
    public void printStackTrace() {
        printStackTrace(System.err);
    }

    @Override // java.lang.Throwable
    public void printStackTrace(PrintStream printStream) {
        e(new b(printStream));
    }

    @Override // java.lang.Throwable
    public void printStackTrace(PrintWriter printWriter) {
        e(new c(printWriter));
    }

    public CompositeException(@NonNull Iterable<? extends Throwable> iterable) {
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        ArrayList arrayList = new ArrayList();
        if (iterable != null) {
            for (Throwable th : iterable) {
                if (th instanceof CompositeException) {
                    linkedHashSet.addAll(((CompositeException) th).b());
                } else if (th != null) {
                    linkedHashSet.add(th);
                } else {
                    linkedHashSet.add(new NullPointerException("Throwable was null!"));
                }
            }
        } else {
            linkedHashSet.add(new NullPointerException("errors was null"));
        }
        if (!linkedHashSet.isEmpty()) {
            arrayList.addAll(linkedHashSet);
            List<Throwable> unmodifiableList = Collections.unmodifiableList(arrayList);
            this.f65799a = unmodifiableList;
            this.f65800b = unmodifiableList.size() + " exceptions occurred. ";
            return;
        }
        throw new IllegalArgumentException("errors is empty");
    }
}
