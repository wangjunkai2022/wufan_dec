.class abstract Lkotlinx/coroutines/sync/MutexImpl$a;
.super Lkotlinx/coroutines/internal/s;
.source "Mutex.kt"

# interfaces
.implements Lkotlinx/coroutines/j1;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlinx/coroutines/sync/MutexImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "a"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0018\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\t\u0008\u00a2\u0004\u0018\u00002\u00020\u00012\u00020\u0002B\u0011\u0012\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\u0006\u0010\u0004\u001a\u00020\u0003J\n\u0010\u0006\u001a\u0004\u0018\u00010\u0005H&J\u0010\u0010\u0008\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u0005H&R\u0018\u0010\u000b\u001a\u0004\u0018\u00010\u00058\u0006@\u0007X\u0087\u0004\u00a2\u0006\u0006\n\u0004\u0008\t\u0010\n\u00a8\u0006\u000e"
    }
    d2 = {
        "kotlinx/coroutines/sync/MutexImpl$a",
        "Lkotlinx/coroutines/internal/s;",
        "Lkotlinx/coroutines/j1;",
        "",
        "dispose",
        "",
        "f0",
        "token",
        "e0",
        "d",
        "Ljava/lang/Object;",
        "owner",
        "<init>",
        "(Lkotlinx/coroutines/sync/MutexImpl;Ljava/lang/Object;)V",
        "kotlinx-coroutines-core"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
.end annotation


# instance fields
.field public final d:Ljava/lang/Object;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field final synthetic e:Lkotlinx/coroutines/sync/MutexImpl;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/sync/MutexImpl;Ljava/lang/Object;)V
    .locals 0
    .param p1    # Lkotlinx/coroutines/sync/MutexImpl;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lkotlinx/coroutines/sync/MutexImpl$a;->e:Lkotlinx/coroutines/sync/MutexImpl;

    .line 2
    invoke-direct {p0}, Lkotlinx/coroutines/internal/s;-><init>()V

    .line 3
    iput-object p2, p0, Lkotlinx/coroutines/sync/MutexImpl$a;->d:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final dispose()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lkotlinx/coroutines/internal/s;->X()Z

    return-void
.end method

.method public abstract e0(Ljava/lang/Object;)V
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract f0()Ljava/lang/Object;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method
