.class final Lio/reactivex/internal/operators/observable/ObservableInternalHelper$k;
.super Ljava/lang/Object;
.source "ObservableInternalHelper.java"

# interfaces
.implements Lw2/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/observable/ObservableInternalHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "k"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lw2/o<",
        "Lio/reactivex/z<",
        "TT;>;",
        "Lio/reactivex/e0<",
        "TR;>;>;"
    }
.end annotation


# instance fields
.field private final a:Lw2/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lw2/o<",
            "-",
            "Lio/reactivex/z<",
            "TT;>;+",
            "Lio/reactivex/e0<",
            "TR;>;>;"
        }
    .end annotation
.end field

.field private final b:Lio/reactivex/h0;


# direct methods
.method constructor <init>(Lw2/o;Lio/reactivex/h0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lw2/o<",
            "-",
            "Lio/reactivex/z<",
            "TT;>;+",
            "Lio/reactivex/e0<",
            "TR;>;>;",
            "Lio/reactivex/h0;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableInternalHelper$k;->a:Lw2/o;

    .line 3
    iput-object p2, p0, Lio/reactivex/internal/operators/observable/ObservableInternalHelper$k;->b:Lio/reactivex/h0;

    return-void
.end method


# virtual methods
.method public a(Lio/reactivex/z;)Lio/reactivex/e0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/z<",
            "TT;>;)",
            "Lio/reactivex/e0<",
            "TR;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableInternalHelper$k;->a:Lw2/o;

    invoke-interface {v0, p1}, Lw2/o;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "The selector returned a null ObservableSource"

    invoke-static {p1, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/reactivex/e0;

    .line 2
    invoke-static {p1}, Lio/reactivex/z;->M7(Lio/reactivex/e0;)Lio/reactivex/z;

    move-result-object p1

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableInternalHelper$k;->b:Lio/reactivex/h0;

    invoke-virtual {p1, v0}, Lio/reactivex/z;->Y3(Lio/reactivex/h0;)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    check-cast p1, Lio/reactivex/z;

    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/observable/ObservableInternalHelper$k;->a(Lio/reactivex/z;)Lio/reactivex/e0;

    move-result-object p1

    return-object p1
.end method
