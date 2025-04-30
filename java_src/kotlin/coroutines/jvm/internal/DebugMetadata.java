package kotlin.coroutines.jvm.internal;

import com.umeng.analytics.pro.ai;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import kotlin.Metadata;
import kotlin.SinceKotlin;
import kotlin.annotation.AnnotationTarget;
import kotlin.jvm.JvmName;
/* compiled from: DebugMetadata.kt */
@Target({ElementType.TYPE})
@SinceKotlin(version = "1.3")
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u001b\n\u0002\u0010\u0011\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u0015\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u000f\b\u0081\u0002\u0018\u00002\u00020\u0001B\\\u0012\b\b\u0002\u0010\u000e\u001a\u00020\u000b\u0012\b\b\u0002\u0010\u0011\u001a\u00020\u0003\u0012\b\b\u0002\u0010\n\u001a\u00020\u0007\u0012\u000e\b\u0002\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002\u0012\u000e\b\u0002\u0010\u0019\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002\u0012\b\b\u0002\u0010\u0017\u001a\u00020\u0007\u0012\b\b\u0002\u0010\u0013\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0015\u001a\u00020\u0003R\u0019\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00030\u00028\u0007@\u0006¢\u0006\u0006\u001a\u0004\b\u0004\u0010\u0005R\u0013\u0010\n\u001a\u00020\u00078\u0007@\u0006¢\u0006\u0006\u001a\u0004\b\b\u0010\tR\u0013\u0010\u000e\u001a\u00020\u000b8\u0007@\u0006¢\u0006\u0006\u001a\u0004\b\f\u0010\rR\u0013\u0010\u0011\u001a\u00020\u00038\u0007@\u0006¢\u0006\u0006\u001a\u0004\b\u000f\u0010\u0010R\u0013\u0010\u0013\u001a\u00020\u00038\u0007@\u0006¢\u0006\u0006\u001a\u0004\b\u0012\u0010\u0010R\u0013\u0010\u0015\u001a\u00020\u00038\u0007@\u0006¢\u0006\u0006\u001a\u0004\b\u0014\u0010\u0010R\u0013\u0010\u0017\u001a\u00020\u00078\u0007@\u0006¢\u0006\u0006\u001a\u0004\b\u0016\u0010\tR\u0019\u0010\u0019\u001a\b\u0012\u0004\u0012\u00020\u00030\u00028\u0007@\u0006¢\u0006\u0006\u001a\u0004\b\u0018\u0010\u0005¨\u0006\u001a"}, d2 = {"Lkotlin/coroutines/jvm/internal/DebugMetadata;", "", "", "", "n", "()[Ljava/lang/String;", "localNames", "", "l", "()[I", "lineNumbers", "", "v", "()I", "version", "f", "()Ljava/lang/String;", "sourceFile", "m", "methodName", ai.aD, "className", ai.aA, "indexToLabel", ai.az, "spilled", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
@kotlin.annotation.Target(allowedTargets = {AnnotationTarget.CLASS})
@Retention(RetentionPolicy.RUNTIME)
/* loaded from: classes.dex */
public @interface DebugMetadata {
    @JvmName(name = ai.aD)
    String c() default "";

    @JvmName(name = "f")
    String f() default "";

    @JvmName(name = ai.aA)
    int[] i() default {};

    @JvmName(name = "l")
    int[] l() default {};

    @JvmName(name = "m")
    String m() default "";

    @JvmName(name = "n")
    String[] n() default {};

    @JvmName(name = ai.az)
    String[] s() default {};

    @JvmName(name = "v")
    int v() default 1;
}
