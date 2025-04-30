.class Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment$3;
.super Ljava/lang/Object;
.source "IntroductionCommentListFragment.java"

# interfaces
.implements Lcom/join/mgps/base/BaseQuickAdapter$g;


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
    iput-object p1, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment$3;->this$0:Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemChildClick(Lcom/join/mgps/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment$3;->this$0:Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;

    invoke-static {p1}, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->access$100(Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;)Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment$ItemAdapter;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/join/mgps/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/BbsCommentListBean;

    .line 2
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result p3

    const v0, 0x7f090813

    if-ne p3, v0, :cond_0

    .line 3
    iget-object p3, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment$3;->this$0:Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;

    invoke-virtual {p3, p2, p1}, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->onClickMore(Landroid/view/View;Lcom/join/mgps/dto/BbsCommentListBean;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result p3

    const v0, 0x7f09081f

    if-ne p3, v0, :cond_2

    .line 5
    invoke-virtual {p1}, Lcom/join/mgps/dto/BbsCommentListBean;->getPraise()Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 6
    iget-object p2, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment$3;->this$0:Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;

    iget p3, p2, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->pid:I

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p2, p3, p1}, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->onBbsDisPraise(Ljava/lang/Integer;Lcom/join/mgps/dto/BbsCommentListBean;)V

    goto :goto_0

    .line 7
    :cond_1
    iget-object p2, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment$3;->this$0:Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;

    invoke-virtual {p1}, Lcom/join/mgps/dto/BbsCommentListBean;->getRuid()Ljava/lang/Integer;

    move-result-object p3

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment$3;->this$0:Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;

    iget v0, v0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->pid:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, p3, v0, p1}, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->onBbsPraise(Ljava/lang/String;Ljava/lang/Integer;Lcom/join/mgps/dto/BbsCommentListBean;)V

    goto :goto_0

    .line 8
    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result p2

    const p3, 0x7f09029f

    if-ne p2, p3, :cond_3

    .line 9
    iget-object p2, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment$3;->this$0:Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;

    invoke-virtual {p2, p1}, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->showCommentDetail(Lcom/join/mgps/dto/BbsCommentListBean;)V

    :cond_3
    :goto_0
    return-void
.end method
