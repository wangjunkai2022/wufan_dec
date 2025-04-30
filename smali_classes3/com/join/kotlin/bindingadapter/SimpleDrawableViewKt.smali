.class public final Lcom/join/kotlin/bindingadapter/SimpleDrawableViewKt;
.super Ljava/lang/Object;
.source "SimpleDrawableView.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u001a,\u0010\u0003\u001a\u00020\u00072\u0006\u0010\u0001\u001a\u00020\u00002\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u00022\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u0006\u001a\u00020\u0005H\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/facebook/drawee/view/SimpleDraweeView;",
        "simpleDraweeView",
        "",
        "loadUrl",
        "loadGif",
        "",
        "defaultId",
        "",
        "app_wufunNormalRelease"
    }
    k = 0x2
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# direct methods
.method public static final loadUrl(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .param p0    # Lcom/facebook/drawee/view/SimpleDraweeView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation runtime Landroidx/databinding/BindingAdapter;
        requireAll = false
        value = {
            "loadUrl",
            "loadGif",
            "defaultId"
        }
    .end annotation

    const-string v0, "simpleDraweeView"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_1

    .line 1
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_3

    const-string p2, "simpleDraweeView.hierarchy"

    if-nez p3, :cond_2

    .line 2
    invoke-virtual {p0}, Lcom/facebook/drawee/view/DraweeView;->getHierarchy()Lk0/b;

    move-result-object p3

    check-cast p3, Lcom/facebook/drawee/generic/a;

    invoke-static {p3, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p3}, Lcom/facebook/drawee/generic/a;->l()Lcom/facebook/drawee/drawable/r$c;

    move-result-object p2

    .line 3
    invoke-static {p0, p1, p2}, Lcom/join/android/app/common/utils/MyImageLoader;->i(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;Lcom/facebook/drawee/drawable/r$c;)V

    goto :goto_2

    .line 4
    :cond_2
    invoke-virtual {p0}, Lcom/facebook/drawee/view/DraweeView;->getHierarchy()Lk0/b;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/generic/a;

    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/facebook/drawee/generic/a;->l()Lcom/facebook/drawee/drawable/r$c;

    move-result-object p2

    .line 5
    invoke-static {p0, p3, p1, p2}, Lcom/join/android/app/common/utils/MyImageLoader;->e(Lcom/facebook/drawee/view/SimpleDraweeView;ILjava/lang/String;Lcom/facebook/drawee/drawable/r$c;)V

    goto :goto_2

    .line 6
    :cond_3
    invoke-static {p0, p2}, Lcom/join/android/app/common/utils/MyImageLoader;->n(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    :goto_2
    return-void
.end method
