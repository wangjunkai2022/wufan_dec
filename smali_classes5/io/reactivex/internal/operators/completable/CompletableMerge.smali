.class public final Lio/reactivex/internal/operators/completable/CompletableMerge;
.super Lio/reactivex/a;
.source "CompletableMerge.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/completable/CompletableMerge$CompletableMergeSubscriber;
    }
.end annotation


# instance fields
.field final a:Ll3/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ll3/b<",
            "+",
            "Lio/reactivex/g;",
            ">;"
        }
    .end annotation
.end field

.field final b:I

.field final c:Z


# direct methods
.method public constructor <init>(Ll3/b;IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ll3/b<",
            "+",
            "Lio/reactivex/g;",
            ">;IZ)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lio/reactivex/a;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/completable/CompletableMerge;->a:Ll3/b;

    .line 3
    iput p2, p0, Lio/reactivex/internal/operators/completable/CompletableMerge;->b:I

    .line 4
    iput-boolean p3, p0, Lio/reactivex/internal/operators/completable/CompletableMerge;->c:Z

    return-void
.end method


# virtual methods
.method public F0(Lio/reactivex/d;)V
    .locals 3

    .line 1
    new-instance v0, Lio/reactivex/internal/operators/completable/CompletableMerge$CompletableMergeSubscriber;

    iget v1, p0, Lio/reactivex/internal/operators/completable/CompletableMerge;->b:I

    iget-boolean v2, p0, Lio/reactivex/internal/operators/completable/CompletableMerge;->c:Z

    invoke-direct {v0, p1, v1, v2}, Lio/reactivex/internal/operators/completable/CompletableMerge$CompletableMergeSubscriber;-><init>(Lio/reactivex/d;IZ)V

    .line 2
    iget-object p1, p0, Lio/reactivex/internal/operators/completable/CompletableMerge;->a:Ll3/b;

    invoke-interface {p1, v0}, Ll3/b;->c(Ll3/c;)V

    return-void
.end method
