package kotlin.jvm.internal;

import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
/* compiled from: PrimitiveSpreadBuilders.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0019\n\u0002\u0010\b\n\u0000\n\u0002\u0010\f\n\u0000\n\u0002\u0010\u0002\n\u0002\b\b\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u000f\u0012\u0006\u0010\f\u001a\u00020\u0003¢\u0006\u0004\b\r\u0010\u000eJ\f\u0010\u0004\u001a\u00020\u0003*\u00020\u0002H\u0014J\u000e\u0010\b\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u0005J\u0006\u0010\t\u001a\u00020\u0002R\u0016\u0010\n\u001a\u00020\u00028\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\n\u0010\u000b¨\u0006\u000f"}, d2 = {"Lkotlin/jvm/internal/CharSpreadBuilder;", "Lkotlin/jvm/internal/PrimitiveSpreadBuilder;", "", "", "getSize", "", "value", "", "add", "toArray", "values", "[C", "size", "<init>", "(I)V", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
/* loaded from: classes5.dex */
public final class CharSpreadBuilder extends PrimitiveSpreadBuilder<char[]> {
    private final char[] values;

    public CharSpreadBuilder(int i2) {
        super(i2);
        this.values = new char[i2];
    }

    public final void add(char c4) {
        char[] cArr = this.values;
        int position = getPosition();
        setPosition(position + 1);
        cArr[position] = c4;
    }

    @NotNull
    public final char[] toArray() {
        return toArray(this.values, new char[size()]);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlin.jvm.internal.PrimitiveSpreadBuilder
    public int getSize(@NotNull char[] getSize) {
        Intrinsics.checkNotNullParameter(getSize, "$this$getSize");
        return getSize.length;
    }
}
