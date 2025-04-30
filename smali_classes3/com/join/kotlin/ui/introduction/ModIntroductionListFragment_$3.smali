.class Lcom/join/kotlin/ui/introduction/ModIntroductionListFragment_$3;
.super Ljava/lang/Object;
.source "ModIntroductionListFragment_.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/kotlin/ui/introduction/ModIntroductionListFragment_;->showMain(Ljava/util/List;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/join/kotlin/ui/introduction/ModIntroductionListFragment_;

.field final synthetic val$list:Ljava/util/List;

.field final synthetic val$loadMore:Z


# direct methods
.method constructor <init>(Lcom/join/kotlin/ui/introduction/ModIntroductionListFragment_;Ljava/util/List;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/ui/introduction/ModIntroductionListFragment_$3;->this$0:Lcom/join/kotlin/ui/introduction/ModIntroductionListFragment_;

    iput-object p2, p0, Lcom/join/kotlin/ui/introduction/ModIntroductionListFragment_$3;->val$list:Ljava/util/List;

    iput-boolean p3, p0, Lcom/join/kotlin/ui/introduction/ModIntroductionListFragment_$3;->val$loadMore:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/ModIntroductionListFragment_$3;->this$0:Lcom/join/kotlin/ui/introduction/ModIntroductionListFragment_;

    iget-object v1, p0, Lcom/join/kotlin/ui/introduction/ModIntroductionListFragment_$3;->val$list:Ljava/util/List;

    iget-boolean v2, p0, Lcom/join/kotlin/ui/introduction/ModIntroductionListFragment_$3;->val$loadMore:Z

    invoke-static {v0, v1, v2}, Lcom/join/kotlin/ui/introduction/ModIntroductionListFragment_;->access$001(Lcom/join/kotlin/ui/introduction/ModIntroductionListFragment_;Ljava/util/List;Z)V

    return-void
.end method
