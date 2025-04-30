.class Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment$ItemDetailAdapter$2$1;
.super Ljava/lang/Object;
.source "IntroductionCommentListFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment$ItemDetailAdapter$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment$ItemDetailAdapter$2;


# direct methods
.method constructor <init>(Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment$ItemDetailAdapter$2;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment$ItemDetailAdapter$2$1;->this$2:Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment$ItemDetailAdapter$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment$ItemDetailAdapter$2$1;->this$2:Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment$ItemDetailAdapter$2;

    iget-object v0, p1, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment$ItemDetailAdapter$2;->this$1:Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment$ItemDetailAdapter;

    iget-object v0, v0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment$ItemDetailAdapter;->this$0:Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;

    iget-object v1, p1, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment$ItemDetailAdapter$2;->val$iv_more:Landroid/widget/ImageView;

    iget-object p1, p1, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment$ItemDetailAdapter$2;->val$item:Lcom/join/mgps/dto/BbsCommentListBean;

    invoke-virtual {v0, v1, p1}, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->onClickMore(Landroid/view/View;Lcom/join/mgps/dto/BbsCommentListBean;)V

    return-void
.end method
