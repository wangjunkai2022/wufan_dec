package external.org.apache.commons.lang3.tuple;
/* loaded from: classes3.dex */
public final class ImmutablePair<L, R> extends Pair<L, R> {
    private static final long serialVersionUID = 4954918890077093841L;

    /* renamed from: a  reason: collision with root package name */
    public final L f65456a;

    /* renamed from: b  reason: collision with root package name */
    public final R f65457b;

    public ImmutablePair(L left, R right) {
        this.f65456a = left;
        this.f65457b = right;
    }

    public static <L, R> ImmutablePair<L, R> U(L left, R right) {
        return new ImmutablePair<>(left, right);
    }

    @Override // external.org.apache.commons.lang3.tuple.Pair
    public L s() {
        return this.f65456a;
    }

    @Override // java.util.Map.Entry
    public R setValue(R value) {
        throw new UnsupportedOperationException();
    }

    @Override // external.org.apache.commons.lang3.tuple.Pair
    public R x() {
        return this.f65457b;
    }
}
