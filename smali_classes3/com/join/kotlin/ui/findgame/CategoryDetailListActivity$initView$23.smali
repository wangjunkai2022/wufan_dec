.class public final Lcom/join/kotlin/ui/findgame/CategoryDetailListActivity$initView$23;
.super Ljava/lang/Object;
.source "CategoryDetailListActivity.kt"

# interfaces
.implements Lcom/join/kotlin/ui/findgame/adapter/FindTypeListAdapter$OnItenSelected;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/kotlin/ui/findgame/CategoryDetailListActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016\u00a8\u0006\u0006"
    }
    d2 = {
        "com/join/kotlin/ui/findgame/CategoryDetailListActivity$initView$23",
        "Lcom/join/kotlin/ui/findgame/adapter/FindTypeListAdapter$OnItenSelected;",
        "Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;",
        "type",
        "",
        "onItemselected",
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
.field final synthetic this$0:Lcom/join/kotlin/ui/findgame/CategoryDetailListActivity;


# direct methods
.method constructor <init>(Lcom/join/kotlin/ui/findgame/CategoryDetailListActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailListActivity$initView$23;->this$0:Lcom/join/kotlin/ui/findgame/CategoryDetailListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemselected(Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;)V
    .locals 2
    .param p1    # Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailListActivity$initView$23;->this$0:Lcom/join/kotlin/ui/findgame/CategoryDetailListActivity;

    invoke-virtual {v0}, Lcom/join/kotlin/ui/findgame/CategoryDetailListActivity;->getDatas()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/join/kotlin/ui/findgame/CategoryDetailListActivity;->access$onfindTypeSelected(Lcom/join/kotlin/ui/findgame/CategoryDetailListActivity;Ljava/util/List;Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;)V

    return-void
.end method
