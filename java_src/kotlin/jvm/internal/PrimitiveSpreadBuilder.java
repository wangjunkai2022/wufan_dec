package kotlin.jvm.internal;

import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
/* compiled from: PrimitiveSpreadBuilders.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\b\n\u0002\u0010\u0011\n\u0002\b\u000b\b&\u0018\u0000*\b\b\u0000\u0010\u0002*\u00020\u00012\u00020\u0001B\u000f\u0012\u0006\u0010\n\u001a\u00020\u0003¢\u0006\u0004\b\u001a\u0010\u0019J\u0013\u0010\u0004\u001a\u00020\u0003*\u00028\u0000H$¢\u0006\u0004\b\u0004\u0010\u0005J\u0015\u0010\b\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00028\u0000¢\u0006\u0004\b\b\u0010\tJ\b\u0010\n\u001a\u00020\u0003H\u0004J\u001f\u0010\r\u001a\u00028\u00002\u0006\u0010\u000b\u001a\u00028\u00002\u0006\u0010\f\u001a\u00028\u0000H\u0004¢\u0006\u0004\b\r\u0010\u000eR\u0016\u0010\n\u001a\u00020\u00038\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\n\u0010\u000fR$\u0010\u0011\u001a\n\u0012\u0006\u0012\u0004\u0018\u00018\u00000\u00108\u0002@\u0002X\u0082\u0004¢\u0006\f\n\u0004\b\u0011\u0010\u0012\u0012\u0004\b\u0013\u0010\u0014R\"\u0010\u0015\u001a\u00020\u00038\u0004@\u0004X\u0084\u000e¢\u0006\u0012\n\u0004\b\u0015\u0010\u000f\u001a\u0004\b\u0016\u0010\u0017\"\u0004\b\u0018\u0010\u0019¨\u0006\u001b"}, d2 = {"Lkotlin/jvm/internal/PrimitiveSpreadBuilder;", "", "T", "", "getSize", "(Ljava/lang/Object;)I", "spreadArgument", "", "addSpread", "(Ljava/lang/Object;)V", "size", "values", "result", "toArray", "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;", "I", "", "spreads", "[Ljava/lang/Object;", "getSpreads$annotations", "()V", "position", "getPosition", "()I", "setPosition", "(I)V", "<init>", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
/* loaded from: classes5.dex */
public abstract class PrimitiveSpreadBuilder<T> {
    private int position;
    private final int size;
    private final T[] spreads;

    public PrimitiveSpreadBuilder(int i2) {
        this.size = i2;
        this.spreads = (T[]) new Object[i2];
    }

    private static /* synthetic */ void getSpreads$annotations() {
    }

    public final void addSpread(@NotNull T spreadArgument) {
        Intrinsics.checkNotNullParameter(spreadArgument, "spreadArgument");
        T[] tArr = this.spreads;
        int i2 = this.position;
        this.position = i2 + 1;
        tArr[i2] = spreadArgument;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final int getPosition() {
        return this.position;
    }

    protected abstract int getSize(@NotNull T t3);

    /* JADX INFO: Access modifiers changed from: protected */
    public final void setPosition(int i2) {
        this.position = i2;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final int size() {
        int i2 = this.size - 1;
        int i4 = 0;
        if (i2 >= 0) {
            int i5 = 0;
            while (true) {
                T t3 = this.spreads[i5];
                i4 += t3 != null ? getSize(t3) : 1;
                if (i5 == i2) {
                    break;
                }
                i5++;
            }
        }
        return i4;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @NotNull
    public final T toArray(@NotNull T values, @NotNull T result) {
        int i2;
        Intrinsics.checkNotNullParameter(values, "values");
        Intrinsics.checkNotNullParameter(result, "result");
        int i4 = this.size - 1;
        int i5 = 0;
        if (i4 >= 0) {
            int i6 = 0;
            int i7 = 0;
            i2 = 0;
            while (true) {
                T t3 = this.spreads[i6];
                if (t3 != null) {
                    if (i7 < i6) {
                        int i8 = i6 - i7;
                        System.arraycopy(values, i7, result, i2, i8);
                        i2 += i8;
                    }
                    int size = getSize(t3);
                    System.arraycopy(t3, 0, result, i2, size);
                    i2 += size;
                    i7 = i6 + 1;
                }
                if (i6 == i4) {
                    break;
                }
                i6++;
            }
            i5 = i7;
        } else {
            i2 = 0;
        }
        int i9 = this.size;
        if (i5 < i9) {
            System.arraycopy(values, i5, result, i2, i9 - i5);
        }
        return result;
    }
}
