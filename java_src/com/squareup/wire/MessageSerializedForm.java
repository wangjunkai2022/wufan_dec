package com.squareup.wire;

import com.squareup.wire.Message;
import com.squareup.wire.Message.a;
import com.umeng.analytics.pro.ai;
import java.io.IOException;
import java.io.ObjectStreamException;
import java.io.Serializable;
import java.io.StreamCorruptedException;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: MessageSerializedForm.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0012\n\u0002\b\u0007\b\u0000\u0018\u0000 \u0012*\u0014\b\u0000\u0010\u0002*\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0001*\u0014\b\u0001\u0010\u0004*\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u00032\u00020\u0005:\u0001\rB\u001d\u0012\u0006\u0010\u000f\u001a\u00020\f\u0012\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00028\u00000\b¢\u0006\u0004\b\u0010\u0010\u0011J\u0006\u0010\u0007\u001a\u00020\u0006R\u001c\u0010\u000b\u001a\b\u0012\u0004\u0012\u00028\u00000\b8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\t\u0010\nR\u0016\u0010\u000f\u001a\u00020\f8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\r\u0010\u000e¨\u0006\u0013"}, d2 = {"Lcom/squareup/wire/MessageSerializedForm;", "Lcom/squareup/wire/Message;", "M", "Lcom/squareup/wire/Message$a;", "B", "Ljava/io/Serializable;", "", "readResolve", "Ljava/lang/Class;", "b", "Ljava/lang/Class;", "messageClass", "", "a", "[B", "bytes", "<init>", "([BLjava/lang/Class;)V", ai.aD, "wire-runtime"}, k = 1, mv = {1, 4, 0})
/* loaded from: classes4.dex */
public final class MessageSerializedForm<M extends Message<M, B>, B extends Message.a<M, B>> implements Serializable {

    /* renamed from: c  reason: collision with root package name */
    public static final a f56769c = new a(null);
    private static final long serialVersionUID = 0;

    /* renamed from: a  reason: collision with root package name */
    private final byte[] f56770a;

    /* renamed from: b  reason: collision with root package name */
    private final Class<M> f56771b;

    /* compiled from: MessageSerializedForm.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010\u0000\n\u0002\u0010\t\n\u0002\b\u0005\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0005\u0010\u0006R\u0016\u0010\u0003\u001a\u00020\u00028\u0002@\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004¨\u0006\u0007"}, d2 = {"com/squareup/wire/MessageSerializedForm$a", "", "", "serialVersionUID", "J", "<init>", "()V", "wire-runtime"}, k = 1, mv = {1, 4, 0})
    /* loaded from: classes4.dex */
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public MessageSerializedForm(@NotNull byte[] bytes, @NotNull Class<M> messageClass) {
        Intrinsics.checkNotNullParameter(bytes, "bytes");
        Intrinsics.checkNotNullParameter(messageClass, "messageClass");
        this.f56770a = bytes;
        this.f56771b = messageClass;
    }

    @NotNull
    public final Object readResolve() throws ObjectStreamException {
        try {
            return ProtoAdapter.M.b(this.f56771b).g(this.f56770a);
        } catch (IOException e4) {
            throw new StreamCorruptedException(e4.getMessage());
        }
    }
}
