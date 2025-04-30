package androidx.constraintlayout.core.parser;
/* loaded from: classes.dex */
public class CLParsingException extends Exception {

    /* renamed from: a  reason: collision with root package name */
    private final String f2300a;

    /* renamed from: b  reason: collision with root package name */
    private final int f2301b;

    /* renamed from: c  reason: collision with root package name */
    private final String f2302c;

    public CLParsingException(String str, CLElement cLElement) {
        this.f2300a = str;
        if (cLElement != null) {
            this.f2302c = cLElement.c();
            this.f2301b = cLElement.getLine();
            return;
        }
        this.f2302c = "unknown";
        this.f2301b = 0;
    }

    public String reason() {
        return this.f2300a + " (" + this.f2302c + " at line " + this.f2301b + ")";
    }

    @Override // java.lang.Throwable
    public String toString() {
        return "CLParsingException (" + hashCode() + ") : " + reason();
    }
}
