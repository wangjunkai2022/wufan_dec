.class public final Lio/reactivex/internal/operators/single/SingleUnsubscribeOn;
.super Lio/reactivex/i0;
.source "SingleUnsubscribeOn.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/single/SingleUnsubscribeOn$UnsubscribeOnSingleObserver;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/i0<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final a:Lio/reactivex/o0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/o0<",
            "TT;>;"
        }
    .end annotation
.end field

.field final b:Lio/reactivex/h0;


# direct methods
.method public constructor <init>(Lio/reactivex/o0;Lio/reactivex/h0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/o0<",
            "TT;>;",
            "Lio/reactivex/h0;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lio/reactivex/i0;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/single/SingleUnsubscribeOn;->a:Lio/reactivex/o0;

    .line 3
    iput-object p2, p0, Lio/reactivex/internal/operators/single/SingleUnsubscribeOn;->b:Lio/reactivex/h0;

    return-void
.end method


# virtual methods
.method protected Y0(Lio/reactivex/l0;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/l0<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/single/SingleUnsubscribeOn;->a:Lio/reactivex/o0;

    new-instance v1, Lio/reactivex/internal/operators/single/SingleUnsubscribeOn$UnsubscribeOnSingleObserver;

    iget-object v2, p0, Lio/reactivex/internal/operators/single/SingleUnsubscribeOn;->b:Lio/reactivex/h0;

    invoke-direct {v1, p1, v2}, Lio/reactivex/internal/operators/single/SingleUnsubscribeOn$UnsubscribeOnSingleObserver;-><init>(Lio/reactivex/l0;Lio/reactivex/h0;)V

    invoke-interface {v0, v1}, Lio/reactivex/o0;->a(Lio/reactivex/l0;)V

    return-void
.end method
