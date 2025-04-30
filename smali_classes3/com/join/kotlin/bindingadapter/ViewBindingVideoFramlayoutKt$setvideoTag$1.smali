.class final Lcom/join/kotlin/bindingadapter/ViewBindingVideoFramlayoutKt$setvideoTag$1;
.super Ljava/lang/Object;
.source "ViewBindingVideoFramlayout.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/kotlin/bindingadapter/ViewBindingVideoFramlayoutKt;->setvideoTag(Lcom/facebook/drawee/view/SimpleDraweeView;ILcom/join/android/app/component/video/c;Lcom/join/mgps/Util/IntentDateBean;Ljava/lang/String;)V
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
.field final synthetic $intentData:Lcom/join/mgps/Util/IntentDateBean;

.field final synthetic $simpleDraweeView:Lcom/facebook/drawee/view/SimpleDraweeView;


# direct methods
.method constructor <init>(Lcom/facebook/drawee/view/SimpleDraweeView;Lcom/join/mgps/Util/IntentDateBean;)V
    .locals 0

    iput-object p1, p0, Lcom/join/kotlin/bindingadapter/ViewBindingVideoFramlayoutKt$setvideoTag$1;->$simpleDraweeView:Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object p2, p0, Lcom/join/kotlin/bindingadapter/ViewBindingVideoFramlayoutKt$setvideoTag$1;->$intentData:Lcom/join/mgps/Util/IntentDateBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object p1

    iget-object v0, p0, Lcom/join/kotlin/bindingadapter/ViewBindingVideoFramlayoutKt$setvideoTag$1;->$simpleDraweeView:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/join/kotlin/bindingadapter/ViewBindingVideoFramlayoutKt$setvideoTag$1;->$intentData:Lcom/join/mgps/Util/IntentDateBean;

    invoke-virtual {p1, v0, v1}, Lcom/join/mgps/Util/IntentUtil;->intentActivity(Landroid/content/Context;Lcom/join/mgps/Util/IntentDateBean;)V

    return-void
.end method
