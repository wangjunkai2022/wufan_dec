.class Lcom/join/kotlin/ui/introduction/MoreIntroductionFragment_$4;
.super Ljava/lang/Object;
.source "MoreIntroductionFragment_.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/kotlin/ui/introduction/MoreIntroductionFragment_;->showMain(Lcom/join/mgps/dto/GameBbsPostListBean;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/join/kotlin/ui/introduction/MoreIntroductionFragment_;

.field final synthetic val$list:Lcom/join/mgps/dto/GameBbsPostListBean;

.field final synthetic val$loadMore:Z


# direct methods
.method constructor <init>(Lcom/join/kotlin/ui/introduction/MoreIntroductionFragment_;Lcom/join/mgps/dto/GameBbsPostListBean;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/ui/introduction/MoreIntroductionFragment_$4;->this$0:Lcom/join/kotlin/ui/introduction/MoreIntroductionFragment_;

    iput-object p2, p0, Lcom/join/kotlin/ui/introduction/MoreIntroductionFragment_$4;->val$list:Lcom/join/mgps/dto/GameBbsPostListBean;

    iput-boolean p3, p0, Lcom/join/kotlin/ui/introduction/MoreIntroductionFragment_$4;->val$loadMore:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/MoreIntroductionFragment_$4;->this$0:Lcom/join/kotlin/ui/introduction/MoreIntroductionFragment_;

    iget-object v1, p0, Lcom/join/kotlin/ui/introduction/MoreIntroductionFragment_$4;->val$list:Lcom/join/mgps/dto/GameBbsPostListBean;

    iget-boolean v2, p0, Lcom/join/kotlin/ui/introduction/MoreIntroductionFragment_$4;->val$loadMore:Z

    invoke-static {v0, v1, v2}, Lcom/join/kotlin/ui/introduction/MoreIntroductionFragment_;->access$001(Lcom/join/kotlin/ui/introduction/MoreIntroductionFragment_;Lcom/join/mgps/dto/GameBbsPostListBean;Z)V

    return-void
.end method
