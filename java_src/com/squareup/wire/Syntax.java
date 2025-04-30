package com.squareup.wire;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: Syntax.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\u000e\n\u0002\b\n\b\u0086\u0001\u0018\u0000 \b2\b\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\tB\u0011\b\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002¢\u0006\u0004\b\u0006\u0010\u0007J\b\u0010\u0003\u001a\u00020\u0002H\u0016R\u0016\u0010\u0004\u001a\u00020\u00028\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0004\u0010\u0005j\u0002\b\nj\u0002\b\u000b¨\u0006\f"}, d2 = {"Lcom/squareup/wire/Syntax;", "", "", "toString", TypedValues.Custom.S_STRING, "Ljava/lang/String;", "<init>", "(Ljava/lang/String;ILjava/lang/String;)V", "Companion", "a", "PROTO_2", "PROTO_3", "wire-runtime"}, k = 1, mv = {1, 4, 0})
/* loaded from: classes4.dex */
public enum Syntax {
    PROTO_2("proto2"),
    PROTO_3("proto3");
    
    public static final a Companion = new a(null);
    private final String string;

    /* compiled from: Syntax.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0014\n\u0000\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0006\u0010\u0007J\u0011\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0086\u0002¨\u0006\b"}, d2 = {"com/squareup/wire/Syntax$a", "", "", TypedValues.Custom.S_STRING, "Lcom/squareup/wire/Syntax;", "a", "<init>", "()V", "wire-runtime"}, k = 1, mv = {1, 4, 0})
    /* loaded from: classes4.dex */
    public static final class a {
        private a() {
        }

        @NotNull
        public final Syntax a(@NotNull String string) {
            Syntax[] values;
            Intrinsics.checkNotNullParameter(string, "string");
            for (Syntax syntax : Syntax.values()) {
                if (Intrinsics.areEqual(syntax.string, string)) {
                    return syntax;
                }
            }
            throw new IllegalArgumentException("unexpected syntax: " + string);
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    Syntax(String str) {
        this.string = str;
    }

    @Override // java.lang.Enum
    @NotNull
    public String toString() {
        return this.string;
    }
}
