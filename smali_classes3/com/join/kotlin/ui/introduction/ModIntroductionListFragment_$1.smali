.class Lcom/join/kotlin/ui/introduction/ModIntroductionListFragment_$1;
.super Ljava/lang/Object;
.source "ModIntroductionListFragment_.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/kotlin/ui/introduction/ModIntroductionListFragment_;->onViewChanged(Li3/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/join/kotlin/ui/introduction/ModIntroductionListFragment_;


# direct methods
.method constructor <init>(Lcom/join/kotlin/ui/introduction/ModIntroductionListFragment_;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/ui/introduction/ModIntroductionListFragment_$1;->this$0:Lcom/join/kotlin/ui/introduction/ModIntroductionListFragment_;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/join/kotlin/ui/introduction/ModIntroductionListFragment_$1;->this$0:Lcom/join/kotlin/ui/introduction/ModIntroductionListFragment_;

    invoke-virtual {p1}, Lcom/join/kotlin/ui/introduction/ModIntroductionListFragment;->setNetwork()V

    return-void
.end method
