package test;

import com.umeng.analytics.pro.ai;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
/* compiled from: AA.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0006\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\b\u0010\tJ\u0006\u0010\u0003\u001a\u00020\u0002J\u000e\u0010\u0006\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004J\u0006\u0010\u0007\u001a\u00020\u0002¨\u0006\n"}, d2 = {"Ltest/AA;", "", "", "a", "", "type", "b", ai.aD, "<init>", "()V", "app_wufunNormalRelease"}, k = 1, mv = {1, 4, 2})
/* loaded from: classes5.dex */
public final class AA {
    public final void a() {
        a.a("111", new Function1<Integer, Unit>() { // from class: test.AA$Test$1
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Integer num) {
                invoke(num.intValue());
                return Unit.INSTANCE;
            }

            public final void invoke(int i2) {
                AA.this.b(i2);
            }
        });
    }

    public final void b(int i2) {
    }

    public final void c() {
    }
}
