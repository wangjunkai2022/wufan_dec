.class Lcom/join/kotlin/ui/introduction/ModIntroductionListFragment_$4;
.super Ljava/lang/Object;
.source "ModIntroductionListFragment_.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/kotlin/ui/introduction/ModIntroductionListFragment_;->showLoadFailed(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/join/kotlin/ui/introduction/ModIntroductionListFragment_;

.field final synthetic val$msg:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/join/kotlin/ui/introduction/ModIntroductionListFragment_;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/ui/introduction/ModIntroductionListFragment_$4;->this$0:Lcom/join/kotlin/ui/introduction/ModIntroductionListFragment_;

    iput-object p2, p0, Lcom/join/kotlin/ui/introduction/ModIntroductionListFragment_$4;->val$msg:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/ModIntroductionListFragment_$4;->this$0:Lcom/join/kotlin/ui/introduction/ModIntroductionListFragment_;

    iget-object v1, p0, Lcom/join/kotlin/ui/introduction/ModIntroductionListFragment_$4;->val$msg:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/join/kotlin/ui/introduction/ModIntroductionListFragment_;->access$101(Lcom/join/kotlin/ui/introduction/ModIntroductionListFragment_;Ljava/lang/String;)V

    return-void
.end method
