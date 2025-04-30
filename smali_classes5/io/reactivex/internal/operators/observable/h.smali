.class public final Lio/reactivex/internal/operators/observable/h;
.super Lio/reactivex/i0;
.source "ObservableAnySingle.java"

# interfaces
.implements Lx2/d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/observable/h$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/i0<",
        "Ljava/lang/Boolean;",
        ">;",
        "Lx2/d<",
        "Ljava/lang/Boolean;",
        ">;"
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

.field final b:Lw2/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lw2/r<",
            "-TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/reactivex/e0;Lw2/r;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/e0<",
            "TT;>;",
            "Lw2/r<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lio/reactivex/i0;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/h;->a:Lio/reactivex/e0;

    .line 3
    iput-object p2, p0, Lio/reactivex/internal/operators/observable/h;->b:Lw2/r;

    return-void
.end method


# virtual methods
.method protected Y0(Lio/reactivex/l0;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/l0<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/h;->a:Lio/reactivex/e0;

    new-instance v1, Lio/reactivex/internal/operators/observable/h$a;

    iget-object v2, p0, Lio/reactivex/internal/operators/observable/h;->b:Lw2/r;

    invoke-direct {v1, p1, v2}, Lio/reactivex/internal/operators/observable/h$a;-><init>(Lio/reactivex/l0;Lw2/r;)V

    invoke-interface {v0, v1}, Lio/reactivex/e0;->a(Lio/reactivex/g0;)V

    return-void
.end method

.method public b()Lio/reactivex/z;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/z<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lio/reactivex/internal/operators/observable/g;

    iget-object v1, p0, Lio/reactivex/internal/operators/observable/h;->a:Lio/reactivex/e0;

    iget-object v2, p0, Lio/reactivex/internal/operators/observable/h;->b:Lw2/r;

    invoke-direct {v0, v1, v2}, Lio/reactivex/internal/operators/observable/g;-><init>(Lio/reactivex/e0;Lw2/r;)V

    invoke-static {v0}, Lio/reactivex/plugins/a;->R(Lio/reactivex/z;)Lio/reactivex/z;

    move-result-object v0

    return-object v0
.end method
