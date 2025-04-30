.class Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment$ItemAdapter$1;
.super Ljava/lang/Object;
.source "IntroductionCommentListFragment.java"

# interfaces
.implements Lcom/join/mgps/customview/textview/MovementTextView$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment$ItemAdapter;->convert(Lcom/join/mgps/base/b;Lcom/join/mgps/dto/BbsCommentListBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment$ItemAdapter;

.field final synthetic val$item:Lcom/join/mgps/dto/BbsCommentListBean;


# direct methods
.method constructor <init>(Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment$ItemAdapter;Lcom/join/mgps/dto/BbsCommentListBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment$ItemAdapter$1;->this$1:Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment$ItemAdapter;

    iput-object p2, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment$ItemAdapter$1;->val$item:Lcom/join/mgps/dto/BbsCommentListBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClickText()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment$ItemAdapter$1;->this$1:Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment$ItemAdapter;

    iget-object v0, v0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment$ItemAdapter;->this$0:Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;

    iget-object v1, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment$ItemAdapter$1;->val$item:Lcom/join/mgps/dto/BbsCommentListBean;

    invoke-virtual {v0, v1}, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->showCommentDetail(Lcom/join/mgps/dto/BbsCommentListBean;)V

    return-void
.end method
