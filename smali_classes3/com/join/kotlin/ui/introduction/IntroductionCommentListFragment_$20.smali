.class Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment_$20;
.super Ljava/lang/Object;
.source "IntroductionCommentListFragment_.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment_;->updatePraise(ZLcom/join/mgps/dto/BbsCommentListBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment_;

.field final synthetic val$item:Lcom/join/mgps/dto/BbsCommentListBean;

.field final synthetic val$praise:Z


# direct methods
.method constructor <init>(Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment_;ZLcom/join/mgps/dto/BbsCommentListBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment_$20;->this$0:Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment_;

    iput-boolean p2, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment_$20;->val$praise:Z

    iput-object p3, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment_$20;->val$item:Lcom/join/mgps/dto/BbsCommentListBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment_$20;->this$0:Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment_;

    iget-boolean v1, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment_$20;->val$praise:Z

    iget-object v2, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment_$20;->val$item:Lcom/join/mgps/dto/BbsCommentListBean;

    invoke-static {v0, v1, v2}, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment_;->access$1201(Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment_;ZLcom/join/mgps/dto/BbsCommentListBean;)V

    return-void
.end method
