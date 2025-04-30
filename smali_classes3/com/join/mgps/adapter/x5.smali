.class public Lcom/join/mgps/adapter/x5;
.super Lcom/join/mgps/base/BaseQuickAdapter;
.source "SimulatorFastEntryAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/join/mgps/base/BaseQuickAdapter<",
        "Lcom/join/mgps/dto/SimulatorFastEntryBean$FastEntryBean;",
        "Lcom/join/mgps/base/b;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/SimulatorFastEntryBean$FastEntryBean;",
            ">;)V"
        }
    .end annotation

    const v0, 0x7f0c038e

    .line 1
    invoke-direct {p0, v0, p1}, Lcom/join/mgps/base/BaseQuickAdapter;-><init>(ILjava/util/List;)V

    return-void
.end method

.method public static synthetic a(Lcom/join/mgps/adapter/x5;Lcom/join/mgps/dto/SimulatorFastEntryBean$FastEntryBean;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/join/mgps/adapter/x5;->c(Lcom/join/mgps/dto/SimulatorFastEntryBean$FastEntryBean;Landroid/view/View;)V

    return-void
.end method

.method private synthetic c(Lcom/join/mgps/dto/SimulatorFastEntryBean$FastEntryBean;Landroid/view/View;)V
    .locals 2

    .line 1
    new-instance p2, Landroid/content/Intent;

    iget-object v0, p0, Lcom/join/mgps/base/BaseQuickAdapter;->mContext:Landroid/content/Context;

    const-class v1, Lcom/join/kotlin/ui/findgame/CategoryDetailListActivity;

    invoke-direct {p2, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "typeId"

    const/4 v1, 0x1

    .line 2
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3
    invoke-virtual {p1}, Lcom/join/mgps/dto/SimulatorFastEntryBean$FastEntryBean;->getId()I

    move-result v0

    const-string v1, "tagId"

    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4
    invoke-virtual {p1}, Lcom/join/mgps/dto/SimulatorFastEntryBean$FastEntryBean;->getTitle()Ljava/lang/String;

    move-result-object p1

    const-string v0, "tagName"

    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5
    iget-object p1, p0, Lcom/join/mgps/base/BaseQuickAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method protected b(Lcom/join/mgps/base/b;Lcom/join/mgps/dto/SimulatorFastEntryBean$FastEntryBean;)V
    .locals 2

    const v0, 0x7f090687

    .line 1
    invoke-virtual {p1, v0}, Lcom/join/mgps/base/b;->k(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {p2}, Lcom/join/mgps/dto/SimulatorFastEntryBean$FastEntryBean;->getPic()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/join/android/app/common/utils/MyImageLoader;->h(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p2}, Lcom/join/mgps/dto/SimulatorFastEntryBean$FastEntryBean;->getTitle()Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f090acd

    invoke-virtual {p1, v1, v0}, Lcom/join/mgps/base/b;->K(ILjava/lang/CharSequence;)Lcom/join/mgps/base/b;

    .line 3
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v0, Lcom/join/mgps/adapter/w5;

    invoke-direct {v0, p0, p2}, Lcom/join/mgps/adapter/w5;-><init>(Lcom/join/mgps/adapter/x5;Lcom/join/mgps/dto/SimulatorFastEntryBean$FastEntryBean;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected bridge synthetic convert(Lcom/join/mgps/base/b;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/join/mgps/dto/SimulatorFastEntryBean$FastEntryBean;

    invoke-virtual {p0, p1, p2}, Lcom/join/mgps/adapter/x5;->b(Lcom/join/mgps/base/b;Lcom/join/mgps/dto/SimulatorFastEntryBean$FastEntryBean;)V

    return-void
.end method
