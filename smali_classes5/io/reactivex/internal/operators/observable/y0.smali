.class public final Lio/reactivex/internal/operators/observable/y0;
.super Lio/reactivex/internal/operators/observable/a;
.source "ObservableMapNotification.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/observable/y0$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/operators/observable/a<",
        "TT;",
        "Lio/reactivex/e0<",
        "+TR;>;>;"
    }
.end annotation


# instance fields
.field final b:Lw2/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lw2/o<",
            "-TT;+",
            "Lio/reactivex/e0<",
            "+TR;>;>;"
        }
    .end annotation
.end field

.field final c:Lw2/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lw2/o<",
            "-",
            "Ljava/lang/Throwable;",
            "+",
            "Lio/reactivex/e0<",
            "+TR;>;>;"
        }
    .end annotation
.end field

.field final d:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable<",
            "+",
            "Lio/reactivex/e0<",
            "+TR;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/reactivex/e0;Lw2/o;Lw2/o;Ljava/util/concurrent/Callable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/e0<",
            "TT;>;",
            "Lw2/o<",
            "-TT;+",
            "Lio/reactivex/e0<",
            "+TR;>;>;",
            "Lw2/o<",
            "-",
            "Ljava/lang/Throwable;",
            "+",
            "Lio/reactivex/e0<",
            "+TR;>;>;",
            "Ljava/util/concurrent/Callable<",
            "+",
            "Lio/reactivex/e0<",
            "+TR;>;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lio/reactivex/internal/operators/observable/a;-><init>(Lio/reactivex/e0;)V

    .line 2
    iput-object p2, p0, Lio/reactivex/internal/operators/observable/y0;->b:Lw2/o;

    .line 3
    iput-object p3, p0, Lio/reactivex/internal/operators/observable/y0;->c:Lw2/o;

    .line 4
    iput-object p4, p0, Lio/reactivex/internal/operators/observable/y0;->d:Ljava/util/concurrent/Callable;

    return-void
.end method


# virtual methods
.method public F5(Lio/reactivex/g0;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/g0<",
            "-",
            "Lio/reactivex/e0<",
            "+TR;>;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/a;->a:Lio/reactivex/e0;

    new-instance v1, Lio/reactivex/internal/operators/observable/y0$a;

    iget-object v2, p0, Lio/reactivex/internal/operators/observable/y0;->b:Lw2/o;

    iget-object v3, p0, Lio/reactivex/internal/operators/observable/y0;->c:Lw2/o;

    iget-object v4, p0, Lio/reactivex/internal/operators/observable/y0;->d:Ljava/util/concurrent/Callable;

    invoke-direct {v1, p1, v2, v3, v4}, Lio/reactivex/internal/operators/observable/y0$a;-><init>(Lio/reactivex/g0;Lw2/o;Lw2/o;Ljava/util/concurrent/Callable;)V

    invoke-interface {v0, v1}, Lio/reactivex/e0;->a(Lio/reactivex/g0;)V

    return-void
.end method
