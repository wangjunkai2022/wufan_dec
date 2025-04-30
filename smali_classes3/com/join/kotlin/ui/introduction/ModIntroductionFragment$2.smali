.class Lcom/join/kotlin/ui/introduction/ModIntroductionFragment$2;
.super Ljava/lang/Object;
.source "ModIntroductionFragment.java"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/kotlin/ui/introduction/ModIntroductionFragment;->aftervidew()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/join/kotlin/ui/introduction/ModIntroductionFragment;


# direct methods
.method constructor <init>(Lcom/join/kotlin/ui/introduction/ModIntroductionFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/ui/introduction/ModIntroductionFragment$2;->this$0:Lcom/join/kotlin/ui/introduction/ModIntroductionFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    return-void
.end method

.method public onPageSelected(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/ModIntroductionFragment$2;->this$0:Lcom/join/kotlin/ui/introduction/ModIntroductionFragment;

    invoke-static {v0}, Lcom/join/kotlin/ui/introduction/ModIntroductionFragment;->access$000(Lcom/join/kotlin/ui/introduction/ModIntroductionFragment;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/ModIntroductionFragment$2;->this$0:Lcom/join/kotlin/ui/introduction/ModIntroductionFragment;

    invoke-static {v0}, Lcom/join/kotlin/ui/introduction/ModIntroductionFragment;->access$000(Lcom/join/kotlin/ui/introduction/ModIntroductionFragment;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/join/kotlin/ui/introduction/ModIntroductionFragment$2;->this$0:Lcom/join/kotlin/ui/introduction/ModIntroductionFragment;

    invoke-static {v1}, Lcom/join/kotlin/ui/introduction/ModIntroductionFragment;->access$100(Lcom/join/kotlin/ui/introduction/ModIntroductionFragment;)I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/BbsTagListBean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/BbsTagListBean;->setSelected(Z)V

    .line 3
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/ModIntroductionFragment$2;->this$0:Lcom/join/kotlin/ui/introduction/ModIntroductionFragment;

    invoke-static {v0}, Lcom/join/kotlin/ui/introduction/ModIntroductionFragment;->access$200(Lcom/join/kotlin/ui/introduction/ModIntroductionFragment;)Lcom/join/kotlin/ui/introduction/ModIntroductionFragment$TypeAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/join/kotlin/ui/introduction/ModIntroductionFragment$2;->this$0:Lcom/join/kotlin/ui/introduction/ModIntroductionFragment;

    invoke-static {v1}, Lcom/join/kotlin/ui/introduction/ModIntroductionFragment;->access$100(Lcom/join/kotlin/ui/introduction/ModIntroductionFragment;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 4
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/ModIntroductionFragment$2;->this$0:Lcom/join/kotlin/ui/introduction/ModIntroductionFragment;

    invoke-static {v0, p1}, Lcom/join/kotlin/ui/introduction/ModIntroductionFragment;->access$102(Lcom/join/kotlin/ui/introduction/ModIntroductionFragment;I)I

    .line 5
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/ModIntroductionFragment$2;->this$0:Lcom/join/kotlin/ui/introduction/ModIntroductionFragment;

    invoke-static {v0}, Lcom/join/kotlin/ui/introduction/ModIntroductionFragment;->access$000(Lcom/join/kotlin/ui/introduction/ModIntroductionFragment;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/join/kotlin/ui/introduction/ModIntroductionFragment$2;->this$0:Lcom/join/kotlin/ui/introduction/ModIntroductionFragment;

    invoke-static {v1}, Lcom/join/kotlin/ui/introduction/ModIntroductionFragment;->access$100(Lcom/join/kotlin/ui/introduction/ModIntroductionFragment;)I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/BbsTagListBean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/BbsTagListBean;->setSelected(Z)V

    .line 6
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/ModIntroductionFragment$2;->this$0:Lcom/join/kotlin/ui/introduction/ModIntroductionFragment;

    invoke-static {v0}, Lcom/join/kotlin/ui/introduction/ModIntroductionFragment;->access$200(Lcom/join/kotlin/ui/introduction/ModIntroductionFragment;)Lcom/join/kotlin/ui/introduction/ModIntroductionFragment$TypeAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/join/kotlin/ui/introduction/ModIntroductionFragment$2;->this$0:Lcom/join/kotlin/ui/introduction/ModIntroductionFragment;

    invoke-static {v1}, Lcom/join/kotlin/ui/introduction/ModIntroductionFragment;->access$100(Lcom/join/kotlin/ui/introduction/ModIntroductionFragment;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 7
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/ModIntroductionFragment$2;->this$0:Lcom/join/kotlin/ui/introduction/ModIntroductionFragment;

    iget-object v0, v0, Lcom/join/kotlin/ui/introduction/ModIntroductionFragment;->rv_list_type:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    :cond_0
    return-void
.end method
