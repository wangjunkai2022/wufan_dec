.class public final Lio/reactivex/internal/util/d;
.super Ljava/util/concurrent/CountDownLatch;
.source "BlockingIgnoringReceiver.java"

# interfaces
.implements Lw2/g;
.implements Lw2/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/CountDownLatch;",
        "Lw2/g<",
        "Ljava/lang/Throwable;",
        ">;",
        "Lw2/a;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/reactivex/internal/util/d;->a:Ljava/lang/Throwable;

    .line 2
    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lio/reactivex/internal/util/d;->a(Ljava/lang/Throwable;)V

    return-void
.end method

.method public run()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method
