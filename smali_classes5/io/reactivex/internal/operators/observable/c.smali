.class public final Lio/reactivex/internal/operators/observable/c;
.super Ljava/lang/Object;
.source "BlockingObservableMostRecent.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/observable/c$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final a:Lio/reactivex/e0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/e0<",
            "TT;>;"
        }
    .end annotation
.end field

.field final b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/reactivex/e0;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/e0<",
            "TT;>;TT;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/c;->a:Lio/reactivex/e0;

    .line 3
    iput-object p2, p0, Lio/reactivex/internal/operators/observable/c;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lio/reactivex/internal/operators/observable/c$a;

    iget-object v1, p0, Lio/reactivex/internal/operators/observable/c;->b:Ljava/lang/Object;

    invoke-direct {v0, v1}, Lio/reactivex/internal/operators/observable/c$a;-><init>(Ljava/lang/Object;)V

    .line 2
    iget-object v1, p0, Lio/reactivex/internal/operators/observable/c;->a:Lio/reactivex/e0;

    invoke-interface {v1, v0}, Lio/reactivex/e0;->a(Lio/reactivex/g0;)V

    .line 3
    invoke-virtual {v0}, Lio/reactivex/internal/operators/observable/c$a;->c()Lio/reactivex/internal/operators/observable/c$a$a;

    move-result-object v0

    return-object v0
.end method
