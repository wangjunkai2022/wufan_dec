.class public final Lcom/psk/eventmodule/net/StatCore$Companion;
.super Ljava/lang/Object;
.source "StatCore.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/psk/eventmodule/net/StatCore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\t\u0010\nJ\u000e\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002R\u0018\u0010\u0003\u001a\u0004\u0018\u00010\u00028\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0003\u0010\u0006R\u0018\u0010\u0007\u001a\u0004\u0018\u00010\u00048\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/psk/eventmodule/net/StatCore$Companion;",
        "",
        "Landroid/content/Context;",
        "context",
        "Lcom/psk/eventmodule/net/StatCore;",
        "getInstance",
        "Landroid/content/Context;",
        "instance",
        "Lcom/psk/eventmodule/net/StatCore;",
        "<init>",
        "()V",
        "EventModule_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/psk/eventmodule/net/StatCore$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getInstance(Landroid/content/Context;)Lcom/psk/eventmodule/net/StatCore;
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {}, Lcom/psk/eventmodule/net/StatCore;->access$getInstance$cp()Lcom/psk/eventmodule/net/StatCore;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lcom/psk/frame/roomlibrary/volcano/a;->c:Lcom/psk/frame/roomlibrary/volcano/a;

    invoke-virtual {v0, p1}, Lcom/psk/frame/roomlibrary/volcano/a;->a(Landroid/content/Context;)V

    .line 3
    new-instance v0, Lcom/psk/eventmodule/net/StatCore;

    invoke-direct {v0}, Lcom/psk/eventmodule/net/StatCore;-><init>()V

    invoke-static {v0}, Lcom/psk/eventmodule/net/StatCore;->access$setInstance$cp(Lcom/psk/eventmodule/net/StatCore;)V

    .line 4
    :cond_0
    invoke-static {}, Lcom/psk/eventmodule/net/StatCore;->access$getContext$cp()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_1

    .line 5
    invoke-static {p1}, Lcom/psk/eventmodule/net/StatCore;->access$setContext$cp(Landroid/content/Context;)V

    .line 6
    :cond_1
    invoke-static {}, Lcom/psk/eventmodule/net/StatCore;->access$getInstance$cp()Lcom/psk/eventmodule/net/StatCore;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object p1
.end method
