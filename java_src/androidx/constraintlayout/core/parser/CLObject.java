package androidx.constraintlayout.core.parser;

import java.util.Iterator;
/* loaded from: classes.dex */
public class CLObject extends CLContainer implements Iterable<CLKey> {

    /* loaded from: classes.dex */
    private class CLObjectIterator implements Iterator {

        /* renamed from: a  reason: collision with root package name */
        CLObject f2292a;

        /* renamed from: b  reason: collision with root package name */
        int f2293b = 0;

        public CLObjectIterator(CLObject cLObject) {
            this.f2292a = cLObject;
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f2293b < this.f2292a.size();
        }

        @Override // java.util.Iterator
        public Object next() {
            CLKey cLKey = (CLKey) this.f2292a.f2282h.get(this.f2293b);
            this.f2293b++;
            return cLKey;
        }
    }

    public CLObject(char[] cArr) {
        super(cArr);
    }

    public static CLObject allocate(char[] cArr) {
        return new CLObject(cArr);
    }

    @Override // java.lang.Iterable
    public Iterator<CLKey> iterator() {
        return new CLObjectIterator(this);
    }

    public String toFormattedJSON() {
        return toFormattedJSON(0, 0);
    }

    @Override // androidx.constraintlayout.core.parser.CLElement
    public String toJSON() {
        StringBuilder sb = new StringBuilder(b() + "{ ");
        Iterator<CLElement> it2 = this.f2282h.iterator();
        boolean z3 = true;
        while (it2.hasNext()) {
            CLElement next = it2.next();
            if (z3) {
                z3 = false;
            } else {
                sb.append(", ");
            }
            sb.append(next.toJSON());
        }
        sb.append(" }");
        return sb.toString();
    }

    @Override // androidx.constraintlayout.core.parser.CLElement
    public String toFormattedJSON(int i2, int i4) {
        StringBuilder sb = new StringBuilder(b());
        sb.append("{\n");
        Iterator<CLElement> it2 = this.f2282h.iterator();
        boolean z3 = true;
        while (it2.hasNext()) {
            CLElement next = it2.next();
            if (z3) {
                z3 = false;
            } else {
                sb.append(",\n");
            }
            sb.append(next.toFormattedJSON(CLElement.f2284g + i2, i4 - 1));
        }
        sb.append("\n");
        a(sb, i2);
        sb.append("}");
        return sb.toString();
    }
}
