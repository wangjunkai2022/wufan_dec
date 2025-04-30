.class public Lcom/join/kotlin/presenter/BasePresenter;
.super Ljava/lang/Object;
.source "BasePresenter.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/psk/kotlin/base/presenter/view/BaseView;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\t\u0008\u0016\u0018\u0000*\u0008\u0008\u0000\u0010\u0002*\u00020\u00012\u00020\u0003B\u0007\u00a2\u0006\u0004\u0008\n\u0010\u000bR\"\u0010\u0004\u001a\u00028\u00008\u0006@\u0006X\u0086.\u00a2\u0006\u0012\n\u0004\u0008\u0004\u0010\u0005\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\t\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/join/kotlin/presenter/BasePresenter;",
        "Lcom/psk/kotlin/base/presenter/view/BaseView;",
        "T",
        "",
        "mView",
        "Lcom/psk/kotlin/base/presenter/view/BaseView;",
        "getMView",
        "()Lcom/psk/kotlin/base/presenter/view/BaseView;",
        "setMView",
        "(Lcom/psk/kotlin/base/presenter/view/BaseView;)V",
        "<init>",
        "()V",
        "app_wufunNormalRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# instance fields
.field public mView:Lcom/psk/kotlin/base/presenter/view/BaseView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getMView()Lcom/psk/kotlin/base/presenter/view/BaseView;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/presenter/BasePresenter;->mView:Lcom/psk/kotlin/base/presenter/view/BaseView;

    if-nez v0, :cond_0

    const-string v1, "mView"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final setMView(Lcom/psk/kotlin/base/presenter/view/BaseView;)V
    .locals 1
    .param p1    # Lcom/psk/kotlin/base/presenter/view/BaseView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/presenter/BasePresenter;->mView:Lcom/psk/kotlin/base/presenter/view/BaseView;

    return-void
.end method
