.class public final Lcom/join/kotlin/domain/common/LiveDataExtensionKt;
.super Ljava/lang/Object;
.source "LiveDataExtension.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001c\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0011\n\u0002\u0008\u0003\u001a%\u0010\u0004\u001a\u00020\u0003\"\u0004\u0008\u0000\u0010\u0000*\u0008\u0012\u0004\u0012\u00028\u00000\u00012\u0006\u0010\u0002\u001a\u00028\u0000\u00a2\u0006\u0004\u0008\u0004\u0010\u0005\u001a1\u0010\u0004\u001a\u00020\u0003\"\u0004\u0008\u0000\u0010\u0000*\u0008\u0012\u0004\u0012\u00028\u00000\u00062\u0012\u0010\u0008\u001a\n\u0012\u0006\u0008\u0001\u0012\u00028\u00000\u0007\"\u00028\u0000\u00a2\u0006\u0004\u0008\u0004\u0010\t\u00a8\u0006\n"
    }
    d2 = {
        "T",
        "Lcom/join/kotlin/domain/common/SingleLiveEvent;",
        "value",
        "",
        "setEvent",
        "(Lcom/join/kotlin/domain/common/SingleLiveEvent;Ljava/lang/Object;)V",
        "Lcom/join/kotlin/domain/common/SingleLiveEvents;",
        "",
        "values",
        "(Lcom/join/kotlin/domain/common/SingleLiveEvents;[Ljava/lang/Object;)V",
        "app_wufunNormalRelease"
    }
    k = 0x2
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# direct methods
.method public static final setEvent(Lcom/join/kotlin/domain/common/SingleLiveEvent;Ljava/lang/Object;)V
    .locals 1
    .param p0    # Lcom/join/kotlin/domain/common/SingleLiveEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/join/kotlin/domain/common/SingleLiveEvent<",
            "TT;>;TT;)V"
        }
    .end annotation

    const-string v0, "$this$setEvent"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0, p1}, Lcom/join/kotlin/domain/common/SingleLiveEvent;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public static final varargs setEvent(Lcom/join/kotlin/domain/common/SingleLiveEvents;[Ljava/lang/Object;)V
    .locals 1
    .param p0    # Lcom/join/kotlin/domain/common/SingleLiveEvents;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # [Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/join/kotlin/domain/common/SingleLiveEvents<",
            "TT;>;[TT;)V"
        }
    .end annotation

    const-string v0, "$this$setEvent"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "values"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-static {p1}, Lkotlin/collections/ArraysKt;->toList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/join/kotlin/domain/common/SingleLiveEvents;->setValue(Ljava/util/List;)V

    return-void
.end method
