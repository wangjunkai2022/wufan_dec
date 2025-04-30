.class abstract Lio/reactivex/internal/operators/parallel/d$b;
.super Ljava/lang/Object;
.source "ParallelFilterTry.java"

# interfaces
.implements Lx2/a;
.implements Ll3/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/parallel/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lx2/a<",
        "TT;>;",
        "Ll3/d;"
    }
.end annotation


# instance fields
.field final a:Lw2/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lw2/r<",
            "-TT;>;"
        }
    .end annotation
.end field

.field final b:Lw2/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lw2/c<",
            "-",
            "Ljava/lang/Long;",
            "-",
            "Ljava/lang/Throwable;",
            "Lio/reactivex/parallel/ParallelFailureHandling;",
            ">;"
        }
    .end annotation
.end field

.field c:Ll3/d;

.field d:Z


# direct methods
.method constructor <init>(Lw2/r;Lw2/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lw2/r<",
            "-TT;>;",
            "Lw2/c<",
            "-",
            "Ljava/lang/Long;",
            "-",
            "Ljava/lang/Throwable;",
            "Lio/reactivex/parallel/ParallelFailureHandling;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/parallel/d$b;->a:Lw2/r;

    .line 3
    iput-object p2, p0, Lio/reactivex/internal/operators/parallel/d$b;->b:Lw2/c;

    return-void
.end method


# virtual methods
.method public final cancel()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/parallel/d$b;->c:Ll3/d;

    invoke-interface {v0}, Ll3/d;->cancel()V

    return-void
.end method

.method public final onNext(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p0, p1}, Lx2/a;->v0(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-boolean p1, p0, Lio/reactivex/internal/operators/parallel/d$b;->d:Z

    if-nez p1, :cond_0

    .line 2
    iget-object p1, p0, Lio/reactivex/internal/operators/parallel/d$b;->c:Ll3/d;

    const-wide/16 v0, 0x1

    invoke-interface {p1, v0, v1}, Ll3/d;->request(J)V

    :cond_0
    return-void
.end method

.method public final request(J)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/parallel/d$b;->c:Ll3/d;

    invoke-interface {v0, p1, p2}, Ll3/d;->request(J)V

    return-void
.end method
