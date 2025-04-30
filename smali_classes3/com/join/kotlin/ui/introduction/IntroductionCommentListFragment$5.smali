.class Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment$5;
.super Ljava/lang/Object;
.source "IntroductionCommentListFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->onClickMore(Landroid/view/View;Lcom/join/mgps/dto/BbsCommentListBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;

.field final synthetic val$item:Lcom/join/mgps/dto/BbsCommentListBean;

.field final synthetic val$window:Landroid/widget/PopupWindow;


# direct methods
.method constructor <init>(Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;Landroid/widget/PopupWindow;Lcom/join/mgps/dto/BbsCommentListBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment$5;->this$0:Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;

    iput-object p2, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment$5;->val$window:Landroid/widget/PopupWindow;

    iput-object p3, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment$5;->val$item:Lcom/join/mgps/dto/BbsCommentListBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 1
    iget-object p1, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment$5;->val$window:Landroid/widget/PopupWindow;

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    .line 2
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object p1

    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment$5;->this$0:Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment$5;->this$0:Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;

    iget-object v2, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment$5;->val$item:Lcom/join/mgps/dto/BbsCommentListBean;

    invoke-virtual {v2}, Lcom/join/mgps/dto/BbsCommentListBean;->getUid()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment$5;->val$item:Lcom/join/mgps/dto/BbsCommentListBean;

    invoke-virtual {v3}, Lcom/join/mgps/dto/BbsCommentListBean;->getId()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->getReportUrl(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/join/mgps/Util/IntentUtil;->goShareWebActivity(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
