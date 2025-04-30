package com.squareup.wire;

import com.join.mgps.activity.TagGameListActivity_;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import kotlin.Metadata;
import kotlin.annotation.AnnotationRetention;
import kotlin.annotation.AnnotationTarget;
import kotlin.jvm.JvmName;
/* compiled from: WireField.kt */
@Target({ElementType.FIELD})
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u001b\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0087\u0002\u0018\u00002\u00020\u0001:\u0001\u0011BB\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\b\u0002\u0010\f\u001a\u00020\u000b\u0012\b\b\u0002\u0010\u000f\u001a\u00020\u000e\u0012\b\b\u0002\u0010\n\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0002R\u0013\u0010\u0003\u001a\u00020\u00028\u0006@\u0006¢\u0006\u0006\u001a\u0004\b\u0003\u0010\u0004R\u0013\u0010\u0005\u001a\u00020\u00028\u0006@\u0006¢\u0006\u0006\u001a\u0004\b\u0005\u0010\u0004R\u0013\u0010\u0006\u001a\u00020\u00028\u0006@\u0006¢\u0006\u0006\u001a\u0004\b\u0006\u0010\u0004R\u0013\u0010\b\u001a\u00020\u00078\u0006@\u0006¢\u0006\u0006\u001a\u0004\b\b\u0010\tR\u0013\u0010\n\u001a\u00020\u00028\u0006@\u0006¢\u0006\u0006\u001a\u0004\b\n\u0010\u0004R\u0013\u0010\f\u001a\u00020\u000b8\u0006@\u0006¢\u0006\u0006\u001a\u0004\b\f\u0010\rR\u0013\u0010\u000f\u001a\u00020\u000e8\u0006@\u0006¢\u0006\u0006\u001a\u0004\b\u000f\u0010\u0010¨\u0006\u0012"}, d2 = {"Lcom/squareup/wire/WireField;", "", "", "adapter", "()Ljava/lang/String;", "keyAdapter", "jsonName", "", TagGameListActivity_.f35885q0, "()I", "declaredName", "Lcom/squareup/wire/WireField$Label;", "label", "()Lcom/squareup/wire/WireField$Label;", "", "redacted", "()Z", "Label", "wire-runtime"}, k = 1, mv = {1, 4, 0})
@kotlin.annotation.Target(allowedTargets = {AnnotationTarget.FIELD})
@Retention(RetentionPolicy.RUNTIME)
@kotlin.annotation.Retention(AnnotationRetention.RUNTIME)
/* loaded from: classes.dex */
public @interface WireField {

    /* compiled from: WireField.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\u000b\n\u0002\b\r\b\u0086\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\t\b\u0002¢\u0006\u0004\b\u0007\u0010\bR\u0013\u0010\u0003\u001a\u00020\u00028G@\u0006¢\u0006\u0006\u001a\u0004\b\u0003\u0010\u0004R\u0013\u0010\u0005\u001a\u00020\u00028G@\u0006¢\u0006\u0006\u001a\u0004\b\u0005\u0010\u0004R\u0013\u0010\u0006\u001a\u00020\u00028G@\u0006¢\u0006\u0006\u001a\u0004\b\u0006\u0010\u0004j\u0002\b\tj\u0002\b\nj\u0002\b\u000bj\u0002\b\fj\u0002\b\rj\u0002\b\u000e¨\u0006\u000f"}, d2 = {"Lcom/squareup/wire/WireField$Label;", "", "", "isOneOf", "()Z", "isPacked", "isRepeated", "<init>", "(Ljava/lang/String;I)V", "REQUIRED", "OPTIONAL", "REPEATED", "ONE_OF", "PACKED", "OMIT_IDENTITY", "wire-runtime"}, k = 1, mv = {1, 4, 0})
    /* loaded from: classes.dex */
    public enum Label {
        REQUIRED,
        OPTIONAL,
        REPEATED,
        ONE_OF,
        PACKED,
        OMIT_IDENTITY;

        @JvmName(name = "isOneOf")
        public final boolean isOneOf() {
            return this == ONE_OF;
        }

        @JvmName(name = "isPacked")
        public final boolean isPacked() {
            return this == PACKED;
        }

        @JvmName(name = "isRepeated")
        public final boolean isRepeated() {
            return this == REPEATED || this == PACKED;
        }
    }

    String adapter();

    String declaredName() default "";

    String jsonName() default "";

    String keyAdapter() default "";

    Label label() default Label.OPTIONAL;

    boolean redacted() default false;

    int tag();
}
