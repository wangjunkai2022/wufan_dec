.class final Lio/reactivex/internal/operators/single/c$a;
.super Ljava/lang/Object;
.source "SingleDelay.java"

# interfaces
.implements Lio/reactivex/l0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/single/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/single/c$a$a;,
        Lio/reactivex/internal/operators/single/c$a$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/l0<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final a:Lio/reactivex/internal/disposables/SequentialDisposable;

.field final b:Lio/reactivex/l0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/l0<",
            "-TT;>;"
        }
    .end annotation
.end field

.field final synthetic c:Lio/reactivex/internal/operators/single/c;


# direct methods
.method constructor <init>(Lio/reactivex/internal/operators/single/c;Lio/reactivex/internal/disposables/SequentialDisposable;Lio/reactivex/l0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/disposables/SequentialDisposable;",
            "Lio/reactivex/l0<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/reactivex/internal/operators/single/c$a;->c:Lio/reactivex/internal/operators/single/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lio/reactivex/internal/operators/single/c$a;->a:Lio/reactivex/internal/disposables/SequentialDisposable;

    .line 3
    iput-object p3, p0, Lio/reactivex/internal/operators/single/c$a;->b:Lio/reactivex/l0;

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Throwable;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/single/c$a;->a:Lio/reactivex/internal/disposables/SequentialDisposable;

    iget-object v1, p0, Lio/reactivex/internal/operators/single/c$a;->c:Lio/reactivex/internal/operators/single/c;

    iget-object v1, v1, Lio/reactivex/internal/operators/single/c;->d:Lio/reactivex/h0;

    new-instance v2, Lio/reactivex/internal/operators/single/c$a$a;

    invoke-direct {v2, p0, p1}, Lio/reactivex/internal/operators/single/c$a$a;-><init>(Lio/reactivex/internal/operators/single/c$a;Ljava/lang/Throwable;)V

    iget-object p1, p0, Lio/reactivex/internal/operators/single/c$a;->c:Lio/reactivex/internal/operators/single/c;

    iget-boolean v3, p1, Lio/reactivex/internal/operators/single/c;->e:Z

    if-eqz v3, :cond_0

    iget-wide v3, p1, Lio/reactivex/internal/operators/single/c;->b:J

    goto :goto_0

    :cond_0
    const-wide/16 v3, 0x0

    :goto_0
    iget-object p1, p1, Lio/reactivex/internal/operators/single/c;->c:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v4, p1}, Lio/reactivex/h0;->f(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lio/reactivex/disposables/b;

    move-result-object p1

    invoke-virtual {v0, p1}, Lio/reactivex/internal/disposables/SequentialDisposable;->a(Lio/reactivex/disposables/b;)Z

    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/b;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/single/c$a;->a:Lio/reactivex/internal/disposables/SequentialDisposable;

    invoke-virtual {v0, p1}, Lio/reactivex/internal/disposables/SequentialDisposable;->a(Lio/reactivex/disposables/b;)Z

    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/single/c$a;->a:Lio/reactivex/internal/disposables/SequentialDisposable;

    iget-object v1, p0, Lio/reactivex/internal/operators/single/c$a;->c:Lio/reactivex/internal/operators/single/c;

    iget-object v1, v1, Lio/reactivex/internal/operators/single/c;->d:Lio/reactivex/h0;

    new-instance v2, Lio/reactivex/internal/operators/single/c$a$b;

    invoke-direct {v2, p0, p1}, Lio/reactivex/internal/operators/single/c$a$b;-><init>(Lio/reactivex/internal/operators/single/c$a;Ljava/lang/Object;)V

    iget-object p1, p0, Lio/reactivex/internal/operators/single/c$a;->c:Lio/reactivex/internal/operators/single/c;

    iget-wide v3, p1, Lio/reactivex/internal/operators/single/c;->b:J

    iget-object p1, p1, Lio/reactivex/internal/operators/single/c;->c:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v4, p1}, Lio/reactivex/h0;->f(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lio/reactivex/disposables/b;

    move-result-object p1

    invoke-virtual {v0, p1}, Lio/reactivex/internal/disposables/SequentialDisposable;->a(Lio/reactivex/disposables/b;)Z

    return-void
.end method
