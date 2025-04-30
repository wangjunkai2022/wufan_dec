.class Lcom/join/kotlin/ui/introduction/ModIntroductionFragment_$4;
.super Ljava/lang/Object;
.source "ModIntroductionFragment_.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/kotlin/ui/introduction/ModIntroductionFragment_;->showMain(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/join/kotlin/ui/introduction/ModIntroductionFragment_;

.field final synthetic val$types:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/join/kotlin/ui/introduction/ModIntroductionFragment_;Ljava/util/List;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/ui/introduction/ModIntroductionFragment_$4;->this$0:Lcom/join/kotlin/ui/introduction/ModIntroductionFragment_;

    iput-object p2, p0, Lcom/join/kotlin/ui/introduction/ModIntroductionFragment_$4;->val$types:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/ModIntroductionFragment_$4;->this$0:Lcom/join/kotlin/ui/introduction/ModIntroductionFragment_;

    iget-object v1, p0, Lcom/join/kotlin/ui/introduction/ModIntroductionFragment_$4;->val$types:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/join/kotlin/ui/introduction/ModIntroductionFragment_;->access$001(Lcom/join/kotlin/ui/introduction/ModIntroductionFragment_;Ljava/util/List;)V

    return-void
.end method
