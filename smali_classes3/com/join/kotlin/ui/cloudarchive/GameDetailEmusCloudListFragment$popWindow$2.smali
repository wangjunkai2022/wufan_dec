.class final Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudListFragment$popWindow$2;
.super Lkotlin/jvm/internal/Lambda;
.source "GameDetailEmusCloudListFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudListFragment;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Landroid/widget/PopupWindow;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0010\u0003\u001a\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0001\u0010\u0002"
    }
    d2 = {
        "Landroid/widget/PopupWindow;",
        "invoke",
        "()Landroid/widget/PopupWindow;",
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
.field final synthetic this$0:Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudListFragment;


# direct methods
.method constructor <init>(Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudListFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudListFragment$popWindow$2;->this$0:Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudListFragment;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Landroid/widget/PopupWindow;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudListFragment$popWindow$2;->this$0:Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudListFragment;

    invoke-virtual {v0}, Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudListFragment;->createPopwindow()Landroid/widget/PopupWindow;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudListFragment$popWindow$2;->invoke()Landroid/widget/PopupWindow;

    move-result-object v0

    return-object v0
.end method
