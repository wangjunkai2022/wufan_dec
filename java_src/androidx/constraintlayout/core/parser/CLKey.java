package androidx.constraintlayout.core.parser;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import java.util.ArrayList;
/* loaded from: classes.dex */
public class CLKey extends CLContainer {

    /* renamed from: i  reason: collision with root package name */
    private static ArrayList<String> f2290i;

    static {
        ArrayList<String> arrayList = new ArrayList<>();
        f2290i = arrayList;
        arrayList.add("ConstraintSets");
        f2290i.add("Variables");
        f2290i.add("Generate");
        f2290i.add(TypedValues.TransitionType.NAME);
        f2290i.add("KeyFrames");
        f2290i.add(TypedValues.AttributesType.NAME);
        f2290i.add("KeyPositions");
        f2290i.add("KeyCycles");
    }

    public CLKey(char[] cArr) {
        super(cArr);
    }

    public static CLElement allocate(char[] cArr) {
        return new CLKey(cArr);
    }

    public String getName() {
        return content();
    }

    public CLElement getValue() {
        if (this.f2282h.size() > 0) {
            return this.f2282h.get(0);
        }
        return null;
    }

    public void set(CLElement cLElement) {
        if (this.f2282h.size() > 0) {
            this.f2282h.set(0, cLElement);
        } else {
            this.f2282h.add(cLElement);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.constraintlayout.core.parser.CLElement
    public String toFormattedJSON(int i2, int i4) {
        StringBuilder sb = new StringBuilder(b());
        a(sb, i2);
        String content = content();
        if (this.f2282h.size() > 0) {
            sb.append(content);
            sb.append(": ");
            if (f2290i.contains(content)) {
                i4 = 3;
            }
            if (i4 > 0) {
                sb.append(this.f2282h.get(0).toFormattedJSON(i2, i4 - 1));
            } else {
                String json = this.f2282h.get(0).toJSON();
                if (json.length() + i2 < CLElement.f2283f) {
                    sb.append(json);
                } else {
                    sb.append(this.f2282h.get(0).toFormattedJSON(i2, i4 - 1));
                }
            }
            return sb.toString();
        }
        return content + ": <> ";
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.constraintlayout.core.parser.CLElement
    public String toJSON() {
        if (this.f2282h.size() > 0) {
            return b() + content() + ": " + this.f2282h.get(0).toJSON();
        }
        return b() + content() + ": <> ";
    }

    public static CLElement allocate(String str, CLElement cLElement) {
        CLKey cLKey = new CLKey(str.toCharArray());
        cLKey.setStart(0L);
        cLKey.setEnd(str.length() - 1);
        cLKey.set(cLElement);
        return cLKey;
    }
}
