.class final Lcom/join/kotlin/bindingadapter/ViewBindingVideoFramlayoutKt$loadVideoUrl$1;
.super Ljava/lang/Object;
.source "ViewBindingVideoFramlayout.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/kotlin/bindingadapter/ViewBindingVideoFramlayoutKt;->loadVideoUrl(Landroid/widget/FrameLayout;Lcom/join/kotlin/ui/modleregin/modle/VideoModle;Lcom/join/android/app/component/video/c;Lcom/join/mgps/Util/IntentDateBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0010\u0006\u001a\u00020\u00032\u000e\u0010\u0002\u001a\n \u0001*\u0004\u0018\u00010\u00000\u0000H\n\u00a2\u0006\u0004\u0008\u0004\u0010\u0005"
    }
    d2 = {
        "Landroid/view/View;",
        "kotlin.jvm.PlatformType",
        "it",
        "",
        "onClick",
        "(Landroid/view/View;)V",
        "<anonymous>"
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# instance fields
.field final synthetic $videoData:Lcom/join/kotlin/ui/modleregin/modle/VideoModle;

.field final synthetic $videoHelper:Lcom/join/android/app/component/video/c;


# direct methods
.method constructor <init>(Lcom/join/android/app/component/video/c;Lcom/join/kotlin/ui/modleregin/modle/VideoModle;)V
    .locals 0

    iput-object p1, p0, Lcom/join/kotlin/bindingadapter/ViewBindingVideoFramlayoutKt$loadVideoUrl$1;->$videoHelper:Lcom/join/android/app/component/video/c;

    iput-object p2, p0, Lcom/join/kotlin/bindingadapter/ViewBindingVideoFramlayoutKt$loadVideoUrl$1;->$videoData:Lcom/join/kotlin/ui/modleregin/modle/VideoModle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/join/kotlin/bindingadapter/ViewBindingVideoFramlayoutKt$loadVideoUrl$1;->$videoHelper:Lcom/join/android/app/component/video/c;

    iget-object v0, p0, Lcom/join/kotlin/bindingadapter/ViewBindingVideoFramlayoutKt$loadVideoUrl$1;->$videoData:Lcom/join/kotlin/ui/modleregin/modle/VideoModle;

    invoke-virtual {v0}, Lcom/join/kotlin/ui/modleregin/modle/VideoModle;->getPosition()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/join/android/app/component/video/c;->y(I)V

    return-void
.end method
