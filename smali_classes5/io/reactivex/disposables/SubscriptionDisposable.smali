.class final Lio/reactivex/disposables/SubscriptionDisposable;
.super Lio/reactivex/disposables/ReferenceDisposable;
.source "SubscriptionDisposable.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/reactivex/disposables/ReferenceDisposable<",
        "Ll3/d;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x9cfc6416eb4a343L


# direct methods
.method constructor <init>(Ll3/d;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/reactivex/disposables/ReferenceDisposable;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic a(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Lio/reactivex/annotations/NonNull;
        .end annotation
    .end param

    .line 1
    check-cast p1, Ll3/d;

    invoke-virtual {p0, p1}, Lio/reactivex/disposables/SubscriptionDisposable;->b(Ll3/d;)V

    return-void
.end method

.method protected b(Ll3/d;)V
    .locals 0
    .param p1    # Ll3/d;
        .annotation build Lio/reactivex/annotations/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-interface {p1}, Ll3/d;->cancel()V

    return-void
.end method
