.class public final Lio/reactivex/internal/operators/observable/c0;
.super Lio/reactivex/internal/operators/observable/a;
.source "ObservableElementAt.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/observable/c0$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/operators/observable/a<",
        "TT;TT;>;"
    }
.end annotation


# instance fields
.field final b:J

.field final c:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field final d:Z


# direct methods
.method public constructor <init>(Lio/reactivex/e0;JLjava/lang/Object;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/e0<",
            "TT;>;JTT;Z)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lio/reactivex/internal/operators/observable/a;-><init>(Lio/reactivex/e0;)V

    .line 2
    iput-wide p2, p0, Lio/reactivex/internal/operators/observable/c0;->b:J

    .line 3
    iput-object p4, p0, Lio/reactivex/internal/operators/observable/c0;->c:Ljava/lang/Object;

    .line 4
    iput-boolean p5, p0, Lio/reactivex/internal/operators/observable/c0;->d:Z

    return-void
.end method


# virtual methods
.method public F5(Lio/reactivex/g0;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/g0<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/a;->a:Lio/reactivex/e0;

    new-instance v7, Lio/reactivex/internal/operators/observable/c0$a;

    iget-wide v3, p0, Lio/reactivex/internal/operators/observable/c0;->b:J

    iget-object v5, p0, Lio/reactivex/internal/operators/observable/c0;->c:Ljava/lang/Object;

    iget-boolean v6, p0, Lio/reactivex/internal/operators/observable/c0;->d:Z

    move-object v1, v7

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lio/reactivex/internal/operators/observable/c0$a;-><init>(Lio/reactivex/g0;JLjava/lang/Object;Z)V

    invoke-interface {v0, v7}, Lio/reactivex/e0;->a(Lio/reactivex/g0;)V

    return-void
.end method
