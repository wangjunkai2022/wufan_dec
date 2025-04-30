.class public final Lcom/join/kotlin/bindingadapter/ViewBindingVideoFramlayoutKt;
.super Ljava/lang/Object;
.source "ViewBindingVideoFramlayout.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\u001a*\u0010\t\u001a\u00020\u00082\u0006\u0010\u0001\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0007\u001a6\u0010\u0010\u001a\u00020\u00082\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\u000c2\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u00042\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u00062\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u000eH\u0007\u00a8\u0006\u0011"
    }
    d2 = {
        "Landroid/widget/FrameLayout;",
        "frameLayout",
        "Lcom/join/kotlin/ui/modleregin/modle/VideoModle;",
        "videoData",
        "Lcom/join/android/app/component/video/c;",
        "videoHelper",
        "Lcom/join/mgps/Util/IntentDateBean;",
        "intentData",
        "",
        "loadVideoUrl",
        "Lcom/facebook/drawee/view/SimpleDraweeView;",
        "simpleDraweeView",
        "",
        "setVideoTag",
        "",
        "loadUrl",
        "setvideoTag",
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
.method public static final loadVideoUrl(Landroid/widget/FrameLayout;Lcom/join/kotlin/ui/modleregin/modle/VideoModle;Lcom/join/android/app/component/video/c;Lcom/join/mgps/Util/IntentDateBean;)V
    .locals 5
    .param p0    # Landroid/widget/FrameLayout;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lcom/join/kotlin/ui/modleregin/modle/VideoModle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/join/android/app/component/video/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/join/mgps/Util/IntentDateBean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation runtime Landroidx/databinding/BindingAdapter;
        requireAll = false
        value = {
            "videoData",
            "videoHelper",
            "intentData"
        }
    .end annotation

    const-string v0, "frameLayout"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "videoData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "videoHelper"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Lcom/join/kotlin/ui/modleregin/modle/VideoModle;->getVideoUrl()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

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
    if-eqz v0, :cond_2

    return-void

    .line 2
    :cond_2
    new-instance v0, Lcom/join/android/app/component/video/c$k;

    .line 3
    invoke-virtual {p1}, Lcom/join/kotlin/ui/modleregin/modle/VideoModle;->getPosition()I

    move-result v2

    .line 4
    invoke-virtual {p1}, Lcom/join/kotlin/ui/modleregin/modle/VideoModle;->getVideoUrl()Ljava/lang/String;

    move-result-object v3

    .line 5
    invoke-virtual {p1}, Lcom/join/kotlin/ui/modleregin/modle/VideoModle;->getVideoCover()Ljava/lang/String;

    move-result-object v4

    .line 6
    invoke-direct {v0, v2, v3, v4, p3}, Lcom/join/android/app/component/video/c$k;-><init>(ILjava/lang/String;Ljava/lang/String;Lcom/join/mgps/Util/IntentDateBean;)V

    .line 7
    invoke-virtual {p1}, Lcom/join/kotlin/ui/modleregin/modle/VideoModle;->getPosition()I

    move-result v2

    new-array v1, v1, [Z

    invoke-virtual {p2, v2, v0, v1}, Lcom/join/android/app/component/video/c;->d(ILcom/join/android/app/component/video/c$k;[Z)V

    .line 8
    invoke-virtual {p1}, Lcom/join/kotlin/ui/modleregin/modle/VideoModle;->getPosition()I

    move-result v0

    invoke-virtual {p2, v0, p0}, Lcom/join/android/app/component/video/c;->K(ILandroid/widget/FrameLayout;)V

    if-nez p3, :cond_3

    .line 9
    new-instance p3, Lcom/join/kotlin/bindingadapter/ViewBindingVideoFramlayoutKt$loadVideoUrl$1;

    invoke-direct {p3, p2, p1}, Lcom/join/kotlin/bindingadapter/ViewBindingVideoFramlayoutKt$loadVideoUrl$1;-><init>(Lcom/join/android/app/component/video/c;Lcom/join/kotlin/ui/modleregin/modle/VideoModle;)V

    invoke-virtual {p0, p3}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 10
    :cond_3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "loadVideoUrl position= "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/join/kotlin/ui/modleregin/modle/VideoModle;->getPosition()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "MyListViewVideoHelper"

    invoke-static {p1, p0}, Lcom/join/mgps/Util/t0;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static final setvideoTag(Lcom/facebook/drawee/view/SimpleDraweeView;ILcom/join/android/app/component/video/c;Lcom/join/mgps/Util/IntentDateBean;Ljava/lang/String;)V
    .locals 2
    .param p0    # Lcom/facebook/drawee/view/SimpleDraweeView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/join/android/app/component/video/c;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/join/mgps/Util/IntentDateBean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation runtime Landroidx/databinding/BindingAdapter;
        requireAll = false
        value = {
            "setVideoTag",
            "videoHelper",
            "intentData",
            "loadCover"
        }
    .end annotation

    const-string v0, "simpleDraweeView"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/facebook/drawee/view/DraweeView;->getHierarchy()Lk0/b;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/generic/a;

    const-string v1, "simpleDraweeView.hierarchy"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/facebook/drawee/generic/a;->l()Lcom/facebook/drawee/drawable/r$c;

    move-result-object v0

    .line 2
    invoke-static {p0, p4, v0}, Lcom/join/android/app/common/utils/MyImageLoader;->i(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;Lcom/facebook/drawee/drawable/r$c;)V

    .line 3
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setvideoTag setVideoTag= "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    const-string v0, "MyListViewVideoHelper"

    invoke-static {v0, p4}, Lcom/join/mgps/Util/t0;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-virtual {p0, p4}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    if-eqz p2, :cond_0

    .line 5
    invoke-virtual {p2, p1, p0}, Lcom/join/android/app/component/video/c;->L(ILcom/facebook/drawee/view/SimpleDraweeView;)V

    :cond_0
    if-eqz p3, :cond_1

    .line 6
    new-instance p1, Lcom/join/kotlin/bindingadapter/ViewBindingVideoFramlayoutKt$setvideoTag$1;

    invoke-direct {p1, p0, p3}, Lcom/join/kotlin/bindingadapter/ViewBindingVideoFramlayoutKt$setvideoTag$1;-><init>(Lcom/facebook/drawee/view/SimpleDraweeView;Lcom/join/mgps/Util/IntentDateBean;)V

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    return-void
.end method
