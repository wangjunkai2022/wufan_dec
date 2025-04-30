.class Lcom/join/kotlin/ui/introduction/ModIntroductionListFragment$2;
.super Ljava/lang/Object;
.source "ModIntroductionListFragment.java"

# interfaces
.implements Lcom/join/mgps/base/BaseQuickAdapter$k;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/kotlin/ui/introduction/ModIntroductionListFragment;->aftervidew()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/join/kotlin/ui/introduction/ModIntroductionListFragment;


# direct methods
.method constructor <init>(Lcom/join/kotlin/ui/introduction/ModIntroductionListFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/ui/introduction/ModIntroductionListFragment$2;->this$0:Lcom/join/kotlin/ui/introduction/ModIntroductionListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadMoreRequested()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/ModIntroductionListFragment$2;->this$0:Lcom/join/kotlin/ui/introduction/ModIntroductionListFragment;

    invoke-static {v0}, Lcom/join/kotlin/ui/introduction/ModIntroductionListFragment;->access$008(Lcom/join/kotlin/ui/introduction/ModIntroductionListFragment;)I

    .line 2
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/ModIntroductionListFragment$2;->this$0:Lcom/join/kotlin/ui/introduction/ModIntroductionListFragment;

    invoke-static {v0}, Lcom/join/kotlin/ui/introduction/ModIntroductionListFragment;->access$000(Lcom/join/kotlin/ui/introduction/ModIntroductionListFragment;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/join/kotlin/ui/introduction/ModIntroductionListFragment;->loadData(I)V

    return-void
.end method
