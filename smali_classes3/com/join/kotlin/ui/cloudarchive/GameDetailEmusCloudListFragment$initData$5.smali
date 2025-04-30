.class public final Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudListFragment$initData$5;
.super Ljava/lang/Object;
.source "GameDetailEmusCloudListFragment.kt"

# interfaces
.implements Landroidx/lifecycle/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudListFragment;->initData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/lifecycle/Observer<",
        "Lcom/join/mgps/dto/CloudListDataBean;",
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
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001J\u0012\u0010\u0005\u001a\u00020\u00042\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016\u00a8\u0006\u0006"
    }
    d2 = {
        "com/join/kotlin/ui/cloudarchive/GameDetailEmusCloudListFragment$initData$5",
        "Landroidx/lifecycle/Observer;",
        "Lcom/join/mgps/dto/CloudListDataBean;",
        "t",
        "",
        "onChanged",
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
.field final synthetic this$0:Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudListFragment;


# direct methods
.method constructor <init>(Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudListFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudListFragment$initData$5;->this$0:Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Lcom/join/mgps/dto/CloudListDataBean;)V
    .locals 2
    .param p1    # Lcom/join/mgps/dto/CloudListDataBean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 2
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudListFragment$initData$5;->this$0:Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudListFragment;

    invoke-virtual {v0}, Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudListFragment;->getViewModle()Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudViewModle;

    move-result-object v0

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudListFragment$initData$5;->this$0:Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudListFragment;

    invoke-virtual {v1}, Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudListFragment;->getAdapterx()Lcom/join/kotlin/ui/cloudarchive/adapter/EmusArchiveAdapter;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudViewModle;->onitemChanged(Lcom/join/mgps/dto/CloudListDataBean;Lcom/join/kotlin/ui/cloudarchive/adapter/EmusArchiveAdapter;)V

    return-void
.end method

.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/join/mgps/dto/CloudListDataBean;

    invoke-virtual {p0, p1}, Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudListFragment$initData$5;->onChanged(Lcom/join/mgps/dto/CloudListDataBean;)V

    return-void
.end method
