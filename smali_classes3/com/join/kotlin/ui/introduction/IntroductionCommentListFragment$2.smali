.class Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment$2;
.super Ljava/lang/Object;
.source "IntroductionCommentListFragment.java"

# interfaces
.implements Lcom/join/mgps/base/BaseQuickAdapter$k;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->aftervidew()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;


# direct methods
.method constructor <init>(Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment$2;->this$0:Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadMoreRequested()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment$2;->this$0:Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;

    invoke-static {v0}, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->access$008(Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;)I

    .line 2
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment$2;->this$0:Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;

    invoke-static {v0}, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->access$000(Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->loadData(I)V

    return-void
.end method
