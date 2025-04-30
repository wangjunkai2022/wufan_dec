.class public interface abstract Lcom/join/kotlin/ui/cloudarchive/adapter/OnEmusClickArchiveListener;
.super Ljava/lang/Object;
.source "EmusArchiveAdapter.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0002\u0008\u0003\u0008f\u0018\u00002\u00020\u0001J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H&J\u0008\u0010\u0006\u001a\u00020\u0004H&J\u0018\u0010\t\u001a\u00020\u00042\u0006\u0010\u0008\u001a\u00020\u00072\u0006\u0010\u0003\u001a\u00020\u0002H&J\u0010\u0010\n\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H&J\u0010\u0010\u000b\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H&J\u0012\u0010\u000e\u001a\u00020\u00042\u0008\u0010\r\u001a\u0004\u0018\u00010\u000cH&\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/join/kotlin/ui/cloudarchive/adapter/OnEmusClickArchiveListener;",
        "",
        "Lcom/join/mgps/dto/CloudListDataBean;",
        "archive",
        "",
        "onClickRun",
        "uploadCloud",
        "Landroid/view/View;",
        "view",
        "onClickMore",
        "onPraise",
        "onClickDislike",
        "",
        "imagePath",
        "onClickImage",
        "app_wufunNormalRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# virtual methods
.method public abstract onClickDislike(Lcom/join/mgps/dto/CloudListDataBean;)V
    .param p1    # Lcom/join/mgps/dto/CloudListDataBean;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract onClickImage(Ljava/lang/String;)V
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
.end method

.method public abstract onClickMore(Landroid/view/View;Lcom/join/mgps/dto/CloudListDataBean;)V
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/join/mgps/dto/CloudListDataBean;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract onClickRun(Lcom/join/mgps/dto/CloudListDataBean;)V
    .param p1    # Lcom/join/mgps/dto/CloudListDataBean;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract onPraise(Lcom/join/mgps/dto/CloudListDataBean;)V
    .param p1    # Lcom/join/mgps/dto/CloudListDataBean;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract uploadCloud()V
.end method
