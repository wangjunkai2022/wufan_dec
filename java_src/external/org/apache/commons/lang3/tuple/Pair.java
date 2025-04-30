package external.org.apache.commons.lang3.tuple;

import external.org.apache.commons.lang3.ObjectUtils;
import external.org.apache.commons.lang3.builder.b;
import io.netty.util.internal.StringUtil;
import java.io.Serializable;
import java.util.Map;
/* loaded from: classes3.dex */
public abstract class Pair<L, R> implements Map.Entry<L, R>, Comparable<Pair<L, R>>, Serializable {
    private static final long serialVersionUID = 4954918890077093841L;

    public static <L, R> Pair<L, R> A(L left, R right) {
        return new ImmutablePair(left, right);
    }

    @Override // java.util.Map.Entry
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof Map.Entry) {
            Map.Entry entry = (Map.Entry) obj;
            return ObjectUtils.f(getKey(), entry.getKey()) && ObjectUtils.f(getValue(), entry.getValue());
        }
        return false;
    }

    @Override // java.util.Map.Entry
    public final L getKey() {
        return s();
    }

    @Override // java.util.Map.Entry
    public R getValue() {
        return x();
    }

    @Override // java.util.Map.Entry
    public int hashCode() {
        return (getKey() == null ? 0 : getKey().hashCode()) ^ (getValue() != null ? getValue().hashCode() : 0);
    }

    @Override // java.lang.Comparable
    /* renamed from: m */
    public int compareTo(Pair<L, R> other) {
        return new b().g(s(), other.s()).g(x(), other.x()).C();
    }

    public abstract L s();

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append('(');
        sb.append(s());
        sb.append(StringUtil.COMMA);
        sb.append(x());
        sb.append(')');
        return sb.toString();
    }

    public abstract R x();

    public String z0(String format) {
        return String.format(format, s(), x());
    }
}
