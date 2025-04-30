.class final Lio/reactivex/internal/operators/single/c$a$a;
.super Ljava/lang/Object;
.source "SingleDelay.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/single/c$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation


# instance fields
.field private final a:Ljava/lang/Throwable;

.field final synthetic b:Lio/reactivex/internal/operators/single/c$a;


# direct methods
.method constructor <init>(Lio/reactivex/internal/operators/single/c$a;Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/reactivex/internal/operators/single/c$a$a;->b:Lio/reactivex/internal/operators/single/c$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lio/reactivex/internal/operators/single/c$a$a;->a:Ljava/lang/Throwable;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/single/c$a$a;->b:Lio/reactivex/internal/operators/single/c$a;

    iget-object v0, v0, Lio/reactivex/internal/operators/single/c$a;->b:Lio/reactivex/l0;

    iget-object v1, p0, Lio/reactivex/internal/operators/single/c$a$a;->a:Ljava/lang/Throwable;

    invoke-interface {v0, v1}, Lio/reactivex/l0;->onError(Ljava/lang/Throwable;)V

    return-void
.end method
