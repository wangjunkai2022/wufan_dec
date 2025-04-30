.class public final Lio/reactivex/internal/operators/flowable/b;
.super Ljava/lang/Object;
.source "BlockingFlowableLatest.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/flowable/b$a;
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
.field final a:Ll3/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ll3/b<",
            "+TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ll3/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ll3/b<",
            "+TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/b;->a:Ll3/b;

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
    new-instance v0, Lio/reactivex/internal/operators/flowable/b$a;

    invoke-direct {v0}, Lio/reactivex/internal/operators/flowable/b$a;-><init>()V

    .line 2
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/b;->a:Ll3/b;

    invoke-static {v1}, Lio/reactivex/j;->V2(Ll3/b;)Lio/reactivex/j;

    move-result-object v1

    invoke-virtual {v1}, Lio/reactivex/j;->I3()Lio/reactivex/j;

    move-result-object v1

    invoke-virtual {v1, v0}, Lio/reactivex/j;->g6(Lio/reactivex/o;)V

    return-object v0
.end method
