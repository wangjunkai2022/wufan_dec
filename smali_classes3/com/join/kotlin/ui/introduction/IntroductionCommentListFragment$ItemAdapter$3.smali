.class Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment$ItemAdapter$3;
.super Ljava/lang/Object;
.source "IntroductionCommentListFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

.field final synthetic val$subItem:Lcom/join/mgps/dto/BbsCommentListBean;


# direct methods
.method constructor <init>(Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment$ItemAdapter;Lcom/join/mgps/dto/BbsCommentListBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment$ItemAdapter$3;->this$1:Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment$ItemAdapter;

    iput-object p2, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment$ItemAdapter$3;->val$subItem:Lcom/join/mgps/dto/BbsCommentListBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment$ItemAdapter$3;->this$1:Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment$ItemAdapter;

    iget-object p1, p1, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment$ItemAdapter;->this$0:Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;

    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment$ItemAdapter$3;->val$subItem:Lcom/join/mgps/dto/BbsCommentListBean;

    iput-object v0, p1, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->commentListBean:Lcom/join/mgps/dto/BbsCommentListBean;

    .line 2
    iget-object p1, p1, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->et_content:Landroid/widget/EditText;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u56de\u590d"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment$ItemAdapter$3;->val$subItem:Lcom/join/mgps/dto/BbsCommentListBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/BbsCommentListBean;->getNickname()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    return-void
.end method
