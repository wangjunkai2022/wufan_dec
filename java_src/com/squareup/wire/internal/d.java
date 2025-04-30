package com.squareup.wire.internal;

import com.join.mgps.activity.TagGameListActivity_;
import com.squareup.wire.Message;
import com.squareup.wire.Message.a;
import com.squareup.wire.ProtoAdapter;
import com.squareup.wire.Syntax;
import com.squareup.wire.WireField;
import com.umeng.analytics.pro.ai;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: FieldOrOneOfBinding.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\f\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\bf\u0018\u0000*\u0014\b\u0000\u0010\u0002*\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0001*\u0014\b\u0001\u0010\u0004*\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u00032\u00020\u0005J\f\u0010\u0007\u001a\u0006\u0012\u0002\b\u00030\u0006H&J\u000e\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00050\u0006H&J\u001f\u0010\f\u001a\u00020\u000b2\u0006\u0010\t\u001a\u00028\u00012\u0006\u0010\n\u001a\u00020\u0005H&¢\u0006\u0004\b\f\u0010\rJ!\u0010\u000e\u001a\u00020\u000b2\u0006\u0010\t\u001a\u00028\u00012\b\u0010\n\u001a\u0004\u0018\u00010\u0005H&¢\u0006\u0004\b\u000e\u0010\rJ\u001a\u0010\u0010\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u000f\u001a\u00028\u0000H¦\u0002¢\u0006\u0004\b\u0010\u0010\u0011J\u0019\u0010\u0012\u001a\u0004\u0018\u00010\u00052\u0006\u0010\t\u001a\u00028\u0001H&¢\u0006\u0004\b\u0012\u0010\u0013J\f\u0010\u0014\u001a\u0006\u0012\u0002\b\u00030\u0006H&J\u001a\u0010\u0018\u001a\u00020\u00172\u0006\u0010\u0016\u001a\u00020\u00152\b\u0010\n\u001a\u0004\u0018\u00010\u0005H&R\u0016\u0010\u001c\u001a\u00020\u00198&@&X¦\u0004¢\u0006\u0006\u001a\u0004\b\u001a\u0010\u001bR\u0016\u0010\u001e\u001a\u00020\u00198&@&X¦\u0004¢\u0006\u0006\u001a\u0004\b\u001d\u0010\u001bR\u0016\u0010!\u001a\u00020\u00178&@&X¦\u0004¢\u0006\u0006\u001a\u0004\b\u001f\u0010 R\u0016\u0010#\u001a\u00020\u00178&@&X¦\u0004¢\u0006\u0006\u001a\u0004\b\"\u0010 R\u0016\u0010%\u001a\u00020\u00198&@&X¦\u0004¢\u0006\u0006\u001a\u0004\b$\u0010\u001bR\u0016\u0010)\u001a\u00020&8&@&X¦\u0004¢\u0006\u0006\u001a\u0004\b'\u0010(R\u0016\u0010-\u001a\u00020*8&@&X¦\u0004¢\u0006\u0006\u001a\u0004\b+\u0010,¨\u0006."}, d2 = {"Lcom/squareup/wire/internal/d;", "Lcom/squareup/wire/Message;", "M", "Lcom/squareup/wire/Message$a;", "B", "", "Lcom/squareup/wire/ProtoAdapter;", "keyAdapter", "adapter", "builder", "value", "", ai.aD, "(Lcom/squareup/wire/Message$a;Ljava/lang/Object;)V", "h", "message", com.xinzhu.overmind.utils.helpers.d.f64708a, "(Lcom/squareup/wire/Message;)Ljava/lang/Object;", ai.aA, "(Lcom/squareup/wire/Message$a;)Ljava/lang/Object;", "a", "Lcom/squareup/wire/Syntax;", "syntax", "", "f", "", com.sdk.a.g.f56552a, "()Ljava/lang/String;", "wireFieldJsonName", "b", "declaredName", "e", "()Z", "redacted", "j", "isMap", "getName", "name", "", "getTag", "()I", TagGameListActivity_.f35885q0, "Lcom/squareup/wire/WireField$Label;", "getLabel", "()Lcom/squareup/wire/WireField$Label;", "label", "wire-runtime"}, k = 1, mv = {1, 4, 0})
/* loaded from: classes4.dex */
public interface d<M extends Message<M, B>, B extends Message.a<M, B>> {
    @NotNull
    ProtoAdapter<?> a();

    @NotNull
    ProtoAdapter<Object> adapter();

    @NotNull
    String b();

    void c(@NotNull B b4, @NotNull Object obj);

    @Nullable
    Object d(@NotNull M m4);

    boolean e();

    boolean f(@NotNull Syntax syntax, @Nullable Object obj);

    @NotNull
    String g();

    @NotNull
    WireField.Label getLabel();

    @NotNull
    String getName();

    int getTag();

    void h(@NotNull B b4, @Nullable Object obj);

    @Nullable
    Object i(@NotNull B b4);

    boolean j();

    @NotNull
    ProtoAdapter<?> keyAdapter();
}
