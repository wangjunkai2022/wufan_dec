.class public interface abstract Lkotlinx/coroutines/flow/s;
.super Ljava/lang/Object;
.source "SharingStarted.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlinx/coroutines/flow/s$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u00e6\u0080\u0001\u0018\u0000 \u00072\u00020\u0001:\u0001\u0007J\u001c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u00052\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0002H&\u00a8\u0006\u0008"
    }
    d2 = {
        "Lkotlinx/coroutines/flow/s;",
        "",
        "Lkotlinx/coroutines/flow/v;",
        "",
        "subscriptionCount",
        "Lkotlinx/coroutines/flow/f;",
        "Lkotlinx/coroutines/flow/SharingCommand;",
        "a",
        "kotlinx-coroutines-core"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
.end annotation


# static fields
.field public static final a:Lkotlinx/coroutines/flow/s$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lkotlinx/coroutines/flow/s$a;->a:Lkotlinx/coroutines/flow/s$a;

    sput-object v0, Lkotlinx/coroutines/flow/s;->a:Lkotlinx/coroutines/flow/s$a;

    return-void
.end method


# virtual methods
.method public abstract a(Lkotlinx/coroutines/flow/v;)Lkotlinx/coroutines/flow/f;
    .param p1    # Lkotlinx/coroutines/flow/v;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/flow/v<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lkotlinx/coroutines/flow/f<",
            "Lkotlinx/coroutines/flow/SharingCommand;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method
