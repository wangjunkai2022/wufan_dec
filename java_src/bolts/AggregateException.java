package bolts;

import java.io.PrintStream;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
/* loaded from: classes2.dex */
public class AggregateException extends Exception {

    /* renamed from: b  reason: collision with root package name */
    private static final String f8201b = "There were multiple errors.";
    private static final long serialVersionUID = 1;

    /* renamed from: a  reason: collision with root package name */
    private List<Throwable> f8202a;

    public AggregateException(String str, Throwable[] thArr) {
        this(str, Arrays.asList(thArr));
    }

    @Deprecated
    public Throwable[] a() {
        List<Throwable> list = this.f8202a;
        return (Throwable[]) list.toArray(new Throwable[list.size()]);
    }

    @Deprecated
    public List<Exception> b() {
        ArrayList arrayList = new ArrayList();
        List<Throwable> list = this.f8202a;
        if (list == null) {
            return arrayList;
        }
        for (Throwable th : list) {
            if (th instanceof Exception) {
                arrayList.add((Exception) th);
            } else {
                arrayList.add(new Exception(th));
            }
        }
        return arrayList;
    }

    public List<Throwable> c() {
        return this.f8202a;
    }

    @Override // java.lang.Throwable
    public void printStackTrace(PrintStream printStream) {
        super.printStackTrace(printStream);
        int i2 = -1;
        for (Throwable th : this.f8202a) {
            printStream.append("\n");
            printStream.append("  Inner throwable #");
            i2++;
            printStream.append((CharSequence) Integer.toString(i2));
            printStream.append(": ");
            th.printStackTrace(printStream);
            printStream.append("\n");
        }
    }

    public AggregateException(String str, List<? extends Throwable> list) {
        super(str, (list == null || list.size() <= 0) ? null : list.get(0));
        this.f8202a = Collections.unmodifiableList(list);
    }

    public AggregateException(List<? extends Throwable> list) {
        this(f8201b, list);
    }

    @Override // java.lang.Throwable
    public void printStackTrace(PrintWriter printWriter) {
        super.printStackTrace(printWriter);
        int i2 = -1;
        for (Throwable th : this.f8202a) {
            printWriter.append("\n");
            printWriter.append("  Inner throwable #");
            i2++;
            printWriter.append((CharSequence) Integer.toString(i2));
            printWriter.append(": ");
            th.printStackTrace(printWriter);
            printWriter.append("\n");
        }
    }
}
