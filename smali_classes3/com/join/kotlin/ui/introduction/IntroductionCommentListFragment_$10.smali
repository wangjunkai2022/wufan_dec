.class Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment_$10;
.super Ljava/lang/Object;
.source "IntroductionCommentListFragment_.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment_;->showDetail(Ljava/util/List;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment_;

.field final synthetic val$list:Ljava/util/List;

.field final synthetic val$loadMore:Z


# direct methods
.method constructor <init>(Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment_;Ljava/util/List;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment_$10;->this$0:Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment_;

    iput-object p2, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment_$10;->val$list:Ljava/util/List;

    iput-boolean p3, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment_$10;->val$loadMore:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment_$10;->this$0:Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment_;

    iget-object v1, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment_$10;->val$list:Ljava/util/List;

    iget-boolean v2, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment_$10;->val$loadMore:Z

    invoke-static {v0, v1, v2}, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment_;->access$201(Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment_;Ljava/util/List;Z)V

    return-void
.end method
