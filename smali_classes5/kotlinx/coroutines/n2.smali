.class public final Lkotlinx/coroutines/n2;
.super Lkotlinx/coroutines/internal/q;
.source "JobSupport.kt"

# interfaces
.implements Lkotlinx/coroutines/x1;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nJobSupport.kt\nKotlin\n*S Kotlin\n*F\n+ 1 JobSupport.kt\nkotlinx/coroutines/NodeList\n+ 2 LockFreeLinkedList.kt\nkotlinx/coroutines/internal/LockFreeLinkedListHead\n*L\n1#1,1478:1\n641#2,6:1479\n*S KotlinDebug\n*F\n+ 1 JobSupport.kt\nkotlinx/coroutines/NodeList\n*L\n1370#1:1479,6\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0006\n\u0002\u0010\u000b\n\u0002\u0008\u0005\u0008\u0000\u0018\u00002\u00020\u00012\u00020\u0002B\u0007\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u000e\u0010\u0005\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0003J\u0008\u0010\u0006\u001a\u00020\u0003H\u0016R\u0016\u0010\t\u001a\u00020\u00008V@\u0016X\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0007\u0010\u0008R\u0016\u0010\u000b\u001a\u00020\n8V@\u0016X\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000b\u0010\u000c\u00a8\u0006\u000f"
    }
    d2 = {
        "Lkotlinx/coroutines/n2;",
        "Lkotlinx/coroutines/internal/q;",
        "Lkotlinx/coroutines/x1;",
        "",
        "state",
        "h0",
        "toString",
        "e",
        "()Lkotlinx/coroutines/n2;",
        "list",
        "",
        "isActive",
        "()Z",
        "<init>",
        "()V",
        "kotlinx-coroutines-core"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lkotlinx/coroutines/internal/q;-><init>()V

    return-void
.end method


# virtual methods
.method public e()Lkotlinx/coroutines/n2;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    return-object p0
.end method

.method public final h0(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "List{"

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "}["

    .line 4
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    invoke-virtual {p0}, Lkotlinx/coroutines/internal/s;->O()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlinx/coroutines/internal/s;

    const/4 v1, 0x1

    .line 6
    :goto_0
    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 7
    instance-of v2, p1, Lkotlinx/coroutines/i2;

    if-eqz v2, :cond_1

    move-object v2, p1

    check-cast v2, Lkotlinx/coroutines/i2;

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_1

    :cond_0
    const-string v3, ", "

    .line 8
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    :goto_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 10
    :cond_1
    invoke-virtual {p1}, Lkotlinx/coroutines/internal/s;->P()Lkotlinx/coroutines/internal/s;

    move-result-object p1

    goto :goto_0

    :cond_2
    const-string p1, "]"

    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "StringBuilder().apply(builderAction).toString()"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public isActive()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-static {}, Lkotlinx/coroutines/v0;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Active"

    invoke-virtual {p0, v0}, Lkotlinx/coroutines/n2;->h0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-super {p0}, Lkotlinx/coroutines/internal/s;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method
