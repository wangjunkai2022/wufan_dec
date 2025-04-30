.class public final Lio/reactivex/internal/operators/parallel/i;
.super Lio/reactivex/parallel/a;
.source "ParallelPeek.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/parallel/i$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/parallel/a<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final a:Lio/reactivex/parallel/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/parallel/a<",
            "TT;>;"
        }
    .end annotation
.end field

.field final b:Lw2/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lw2/g<",
            "-TT;>;"
        }
    .end annotation
.end field

.field final c:Lw2/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lw2/g<",
            "-TT;>;"
        }
    .end annotation
.end field

.field final d:Lw2/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lw2/g<",
            "-",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field

.field final e:Lw2/a;

.field final f:Lw2/a;

.field final g:Lw2/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lw2/g<",
            "-",
            "Ll3/d;",
            ">;"
        }
    .end annotation
.end field

.field final h:Lw2/q;

.field final i:Lw2/a;


# direct methods
.method public constructor <init>(Lio/reactivex/parallel/a;Lw2/g;Lw2/g;Lw2/g;Lw2/a;Lw2/a;Lw2/g;Lw2/q;Lw2/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/parallel/a<",
            "TT;>;",
            "Lw2/g<",
            "-TT;>;",
            "Lw2/g<",
            "-TT;>;",
            "Lw2/g<",
            "-",
            "Ljava/lang/Throwable;",
            ">;",
            "Lw2/a;",
            "Lw2/a;",
            "Lw2/g<",
            "-",
            "Ll3/d;",
            ">;",
            "Lw2/q;",
            "Lw2/a;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lio/reactivex/parallel/a;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/parallel/i;->a:Lio/reactivex/parallel/a;

    const-string p1, "onNext is null"

    .line 3
    invoke-static {p2, p1}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lw2/g;

    iput-object p1, p0, Lio/reactivex/internal/operators/parallel/i;->b:Lw2/g;

    const-string p1, "onAfterNext is null"

    .line 4
    invoke-static {p3, p1}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lw2/g;

    iput-object p1, p0, Lio/reactivex/internal/operators/parallel/i;->c:Lw2/g;

    const-string p1, "onError is null"

    .line 5
    invoke-static {p4, p1}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lw2/g;

    iput-object p1, p0, Lio/reactivex/internal/operators/parallel/i;->d:Lw2/g;

    const-string p1, "onComplete is null"

    .line 6
    invoke-static {p5, p1}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lw2/a;

    iput-object p1, p0, Lio/reactivex/internal/operators/parallel/i;->e:Lw2/a;

    const-string p1, "onAfterTerminated is null"

    .line 7
    invoke-static {p6, p1}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lw2/a;

    iput-object p1, p0, Lio/reactivex/internal/operators/parallel/i;->f:Lw2/a;

    const-string p1, "onSubscribe is null"

    .line 8
    invoke-static {p7, p1}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lw2/g;

    iput-object p1, p0, Lio/reactivex/internal/operators/parallel/i;->g:Lw2/g;

    const-string p1, "onRequest is null"

    .line 9
    invoke-static {p8, p1}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lw2/q;

    iput-object p1, p0, Lio/reactivex/internal/operators/parallel/i;->h:Lw2/q;

    const-string p1, "onCancel is null"

    .line 10
    invoke-static {p9, p1}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lw2/a;

    iput-object p1, p0, Lio/reactivex/internal/operators/parallel/i;->i:Lw2/a;

    return-void
.end method


# virtual methods
.method public F()I
    .locals 1

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/parallel/i;->a:Lio/reactivex/parallel/a;

    invoke-virtual {v0}, Lio/reactivex/parallel/a;->F()I

    move-result v0

    return v0
.end method

.method public Q([Ll3/c;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lorg/reactivestreams/Subscriber<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lio/reactivex/parallel/a;->U([Ll3/c;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    array-length v0, p1

    .line 3
    new-array v1, v0, [Ll3/c;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 4
    new-instance v3, Lio/reactivex/internal/operators/parallel/i$a;

    aget-object v4, p1, v2

    invoke-direct {v3, v4, p0}, Lio/reactivex/internal/operators/parallel/i$a;-><init>(Ll3/c;Lio/reactivex/internal/operators/parallel/i;)V

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5
    :cond_1
    iget-object p1, p0, Lio/reactivex/internal/operators/parallel/i;->a:Lio/reactivex/parallel/a;

    invoke-virtual {p1, v1}, Lio/reactivex/parallel/a;->Q([Ll3/c;)V

    return-void
.end method
