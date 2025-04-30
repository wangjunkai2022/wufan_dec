.class Lcom/join/kotlin/ui/cloudarchive/ModgameModTabFragment$3;
.super Ljava/lang/Object;
.source "ModgameModTabFragment.java"

# interfaces
.implements Lcom/join/mgps/base/BaseQuickAdapter$i;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/kotlin/ui/cloudarchive/ModgameModTabFragment;->initData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/join/kotlin/ui/cloudarchive/ModgameModTabFragment;


# direct methods
.method constructor <init>(Lcom/join/kotlin/ui/cloudarchive/ModgameModTabFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameModTabFragment$3;->this$0:Lcom/join/kotlin/ui/cloudarchive/ModgameModTabFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Lcom/join/mgps/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameModTabFragment$3;->this$0:Lcom/join/kotlin/ui/cloudarchive/ModgameModTabFragment;

    iget-object p1, p1, Lcom/join/kotlin/ui/cloudarchive/ModgameModTabFragment;->context:Landroid/content/Context;

    invoke-static {p1}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object p1

    const-string p2, "\u589e\u5f3a\u6a21\u5f0f\u542f\u52a8\u6e38\u620f\u5373\u53ef\u4f53\u9a8c"

    invoke-virtual {p1, p2}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    return-void
.end method
