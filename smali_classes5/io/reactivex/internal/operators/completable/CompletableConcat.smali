.class public final Lio/reactivex/internal/operators/completable/CompletableConcat;
.super Lio/reactivex/a;
.source "CompletableConcat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/completable/CompletableConcat$CompletableConcatSubscriber;
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


# direct methods
.method public constructor <init>(Ll3/b;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ll3/b<",
            "+",
            "Lio/reactivex/g;",
            ">;I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lio/reactivex/a;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/completable/CompletableConcat;->a:Ll3/b;

    .line 3
    iput p2, p0, Lio/reactivex/internal/operators/completable/CompletableConcat;->b:I

    return-void
.end method


# virtual methods
.method public F0(Lio/reactivex/d;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/completable/CompletableConcat;->a:Ll3/b;

    new-instance v1, Lio/reactivex/internal/operators/completable/CompletableConcat$CompletableConcatSubscriber;

    iget v2, p0, Lio/reactivex/internal/operators/completable/CompletableConcat;->b:I

    invoke-direct {v1, p1, v2}, Lio/reactivex/internal/operators/completable/CompletableConcat$CompletableConcatSubscriber;-><init>(Lio/reactivex/d;I)V

    invoke-interface {v0, v1}, Ll3/b;->c(Ll3/c;)V

    return-void
.end method
