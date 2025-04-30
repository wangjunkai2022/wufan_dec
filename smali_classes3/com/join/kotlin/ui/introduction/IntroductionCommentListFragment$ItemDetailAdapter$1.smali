.class Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment$ItemDetailAdapter$1;
.super Ljava/lang/Object;
.source "IntroductionCommentListFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment$ItemDetailAdapter;->onBindViewHolder(Lcom/join/mgps/base/b;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment$ItemDetailAdapter;

.field final synthetic val$item:Lcom/join/mgps/dto/BbsCommentListBean;


# direct methods
.method constructor <init>(Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment$ItemDetailAdapter;Lcom/join/mgps/dto/BbsCommentListBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment$ItemDetailAdapter$1;->this$1:Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment$ItemDetailAdapter;

    iput-object p2, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment$ItemDetailAdapter$1;->val$item:Lcom/join/mgps/dto/BbsCommentListBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment$ItemDetailAdapter$1;->val$item:Lcom/join/mgps/dto/BbsCommentListBean;

    invoke-virtual {p1}, Lcom/join/mgps/dto/BbsCommentListBean;->getPraise()Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment$ItemDetailAdapter$1;->this$1:Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment$ItemDetailAdapter;

    iget-object p1, p1, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment$ItemDetailAdapter;->this$0:Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;

    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment$ItemDetailAdapter$1;->val$item:Lcom/join/mgps/dto/BbsCommentListBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/BbsCommentListBean;->getId()Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment$ItemDetailAdapter$1;->val$item:Lcom/join/mgps/dto/BbsCommentListBean;

    invoke-virtual {p1, v0, v1}, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->onBbsDisPraise(Ljava/lang/Integer;Lcom/join/mgps/dto/BbsCommentListBean;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment$ItemDetailAdapter$1;->this$1:Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment$ItemDetailAdapter;

    iget-object p1, p1, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment$ItemDetailAdapter;->this$0:Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;

    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment$ItemDetailAdapter$1;->val$item:Lcom/join/mgps/dto/BbsCommentListBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/BbsCommentListBean;->getRuid()Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment$ItemDetailAdapter$1;->val$item:Lcom/join/mgps/dto/BbsCommentListBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/BbsCommentListBean;->getId()Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment$ItemDetailAdapter$1;->val$item:Lcom/join/mgps/dto/BbsCommentListBean;

    invoke-virtual {p1, v0, v1, v2}, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->onBbsPraise(Ljava/lang/String;Ljava/lang/Integer;Lcom/join/mgps/dto/BbsCommentListBean;)V

    :goto_0
    return-void
.end method
