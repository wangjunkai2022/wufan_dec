.class public final Lcom/join/kotlin/bindingadapter/ViewBindingDownloadViewKt;
.super Ljava/lang/Object;
.source "ViewBindingDownloadView.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u001a \u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0001\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0007\u001a \u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0001\u001a\u00020\u00082\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0007\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/join/mgps/customview/DownloadViewStroke;",
        "downloadView",
        "Lcom/join/mgps/business/CollectionBeanSubBusiness;",
        "collectionBeanSubBusiness",
        "",
        "listStatus",
        "",
        "downloadVIewBinding",
        "Lcom/join/mgps/customview/DownloadViewNormal;",
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
.method public static final downloadVIewBinding(Lcom/join/mgps/customview/DownloadViewNormal;Lcom/join/mgps/business/CollectionBeanSubBusiness;I)V
    .locals 0
    .param p0    # Lcom/join/mgps/customview/DownloadViewNormal;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lcom/join/mgps/business/CollectionBeanSubBusiness;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Landroidx/databinding/BindingAdapter;
        requireAll = false
        value = {
            "initData",
            "listStatus"
        }
    .end annotation

    const-string p2, "downloadView"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "collectionBeanSubBusiness"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Lcom/join/mgps/business/CollectionBeanSubBusiness;->getDownloadTask()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object p2

    invoke-virtual {p0, p2, p1}, Lcom/join/mgps/customview/DownloadViewNormal;->a(Lcom/github/snowdream/android/app/downloader/DownloadTask;Lcom/join/mgps/dto/CollectionBeanSub;)V

    return-void
.end method

.method public static final downloadVIewBinding(Lcom/join/mgps/customview/DownloadViewStroke;Lcom/join/mgps/business/CollectionBeanSubBusiness;I)V
    .locals 0
    .param p0    # Lcom/join/mgps/customview/DownloadViewStroke;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lcom/join/mgps/business/CollectionBeanSubBusiness;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Landroidx/databinding/BindingAdapter;
        requireAll = false
        value = {
            "initData",
            "listStatus"
        }
    .end annotation

    const-string p2, "downloadView"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "collectionBeanSubBusiness"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Lcom/join/mgps/business/CollectionBeanSubBusiness;->getDownloadTask()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object p2

    invoke-virtual {p0, p2, p1}, Lcom/join/mgps/customview/DownloadViewStroke;->a(Lcom/github/snowdream/android/app/downloader/DownloadTask;Lcom/join/mgps/dto/CollectionBeanSub;)V

    return-void
.end method
