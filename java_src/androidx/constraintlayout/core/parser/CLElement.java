package androidx.constraintlayout.core.parser;

import java.io.PrintStream;
/* loaded from: classes.dex */
public class CLElement {

    /* renamed from: f  reason: collision with root package name */
    protected static int f2283f = 80;

    /* renamed from: g  reason: collision with root package name */
    protected static int f2284g = 2;

    /* renamed from: a  reason: collision with root package name */
    private final char[] f2285a;

    /* renamed from: b  reason: collision with root package name */
    protected long f2286b = -1;

    /* renamed from: c  reason: collision with root package name */
    protected long f2287c = Long.MAX_VALUE;

    /* renamed from: d  reason: collision with root package name */
    protected CLContainer f2288d;

    /* renamed from: e  reason: collision with root package name */
    private int f2289e;

    public CLElement(char[] cArr) {
        this.f2285a = cArr;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void a(StringBuilder sb, int i2) {
        for (int i4 = 0; i4 < i2; i4++) {
            sb.append(' ');
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public String b() {
        if (CLParser.f2295d) {
            return c() + " -> ";
        }
        return "";
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public String c() {
        String cls = getClass().toString();
        return cls.substring(cls.lastIndexOf(46) + 1);
    }

    public String content() {
        String str = new String(this.f2285a);
        long j4 = this.f2287c;
        if (j4 != Long.MAX_VALUE) {
            long j5 = this.f2286b;
            if (j4 >= j5) {
                return str.substring((int) j5, ((int) j4) + 1);
            }
        }
        long j6 = this.f2286b;
        return str.substring((int) j6, ((int) j6) + 1);
    }

    public CLElement getContainer() {
        return this.f2288d;
    }

    public long getEnd() {
        return this.f2287c;
    }

    public float getFloat() {
        if (this instanceof CLNumber) {
            return ((CLNumber) this).getFloat();
        }
        return Float.NaN;
    }

    public int getInt() {
        if (this instanceof CLNumber) {
            return ((CLNumber) this).getInt();
        }
        return 0;
    }

    public int getLine() {
        return this.f2289e;
    }

    public long getStart() {
        return this.f2286b;
    }

    public boolean isDone() {
        return this.f2287c != Long.MAX_VALUE;
    }

    public boolean isStarted() {
        return this.f2286b > -1;
    }

    public boolean notStarted() {
        return this.f2286b == -1;
    }

    public void setContainer(CLContainer cLContainer) {
        this.f2288d = cLContainer;
    }

    public void setEnd(long j4) {
        if (this.f2287c != Long.MAX_VALUE) {
            return;
        }
        this.f2287c = j4;
        if (CLParser.f2295d) {
            PrintStream printStream = System.out;
            printStream.println("closing " + hashCode() + " -> " + this);
        }
        CLContainer cLContainer = this.f2288d;
        if (cLContainer != null) {
            cLContainer.add(this);
        }
    }

    public void setLine(int i2) {
        this.f2289e = i2;
    }

    public void setStart(long j4) {
        this.f2286b = j4;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public String toFormattedJSON(int i2, int i4) {
        return "";
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public String toJSON() {
        return "";
    }

    public String toString() {
        long j4 = this.f2286b;
        long j5 = this.f2287c;
        if (j4 <= j5 && j5 != Long.MAX_VALUE) {
            String substring = new String(this.f2285a).substring((int) this.f2286b, ((int) this.f2287c) + 1);
            return c() + " (" + this.f2286b + " : " + this.f2287c + ") <<" + substring + ">>";
        }
        return getClass() + " (INVALID, " + this.f2286b + "-" + this.f2287c + ")";
    }
}
