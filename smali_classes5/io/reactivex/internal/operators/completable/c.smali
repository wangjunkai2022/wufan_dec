.class public final Lio/reactivex/internal/operators/completable/c;
.super Lio/reactivex/a;
.source "CompletableDetach.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/completable/c$a;
    }
.end annotation


# instance fields
.field final a:Lio/reactivex/g;


# direct methods
.method public constructor <init>(Lio/reactivex/g;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/reactivex/a;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/completable/c;->a:Lio/reactivex/g;

    return-void
.end method


# virtual methods
.method protected F0(Lio/reactivex/d;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/completable/c;->a:Lio/reactivex/g;

    new-instance v1, Lio/reactivex/internal/operators/completable/c$a;

    invoke-direct {v1, p1}, Lio/reactivex/internal/operators/completable/c$a;-><init>(Lio/reactivex/d;)V

    invoke-interface {v0, v1}, Lio/reactivex/g;->a(Lio/reactivex/d;)V

    return-void
.end method
