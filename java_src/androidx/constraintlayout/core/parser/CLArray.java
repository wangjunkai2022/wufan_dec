package androidx.constraintlayout.core.parser;

import java.util.Iterator;
/* loaded from: classes.dex */
public class CLArray extends CLContainer {
    public CLArray(char[] cArr) {
        super(cArr);
    }

    public static CLElement allocate(char[] cArr) {
        return new CLArray(cArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.constraintlayout.core.parser.CLElement
    public String toFormattedJSON(int i2, int i4) {
        StringBuilder sb = new StringBuilder();
        String json = toJSON();
        if (i4 <= 0 && json.length() + i2 < CLElement.f2283f) {
            sb.append(json);
        } else {
            sb.append("[\n");
            Iterator<CLElement> it2 = this.f2282h.iterator();
            boolean z3 = true;
            while (it2.hasNext()) {
                CLElement next = it2.next();
                if (z3) {
                    z3 = false;
                } else {
                    sb.append(",\n");
                }
                a(sb, CLElement.f2284g + i2);
                sb.append(next.toFormattedJSON(CLElement.f2284g + i2, i4 - 1));
            }
            sb.append("\n");
            a(sb, i2);
            sb.append("]");
        }
        return sb.toString();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.constraintlayout.core.parser.CLElement
    public String toJSON() {
        StringBuilder sb = new StringBuilder(b() + "[");
        boolean z3 = true;
        for (int i2 = 0; i2 < this.f2282h.size(); i2++) {
            if (z3) {
                z3 = false;
            } else {
                sb.append(", ");
            }
            sb.append(this.f2282h.get(i2).toJSON());
        }
        return ((Object) sb) + "]";
    }
}
