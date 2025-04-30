package kotlin.jvm.internal;

import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
/* compiled from: PrimitiveSpreadBuilders.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0015\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\b\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u000f\u0012\u0006\u0010\u000b\u001a\u00020\u0003¢\u0006\u0004\b\f\u0010\rJ\f\u0010\u0004\u001a\u00020\u0003*\u00020\u0002H\u0014J\u000e\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0003J\u0006\u0010\b\u001a\u00020\u0002R\u0016\u0010\t\u001a\u00020\u00028\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\t\u0010\n¨\u0006\u000e"}, d2 = {"Lkotlin/jvm/internal/IntSpreadBuilder;", "Lkotlin/jvm/internal/PrimitiveSpreadBuilder;", "", "", "getSize", "value", "", "add", "toArray", "values", "[I", "size", "<init>", "(I)V", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
/* loaded from: classes5.dex */
public final class IntSpreadBuilder extends PrimitiveSpreadBuilder<int[]> {
    private final int[] values;

    public IntSpreadBuilder(int i2) {
        super(i2);
        this.values = new int[i2];
    }

    public final void add(int i2) {
        int[] iArr = this.values;
        int position = getPosition();
        setPosition(position + 1);
        iArr[position] = i2;
    }

    @NotNull
    public final int[] toArray() {
        return toArray(this.values, new int[size()]);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlin.jvm.internal.PrimitiveSpreadBuilder
    public int getSize(@NotNull int[] getSize) {
        Intrinsics.checkNotNullParameter(getSize, "$this$getSize");
        return getSize.length;
    }
}
