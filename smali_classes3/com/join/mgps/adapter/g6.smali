.class public Lcom/join/mgps/adapter/g6;
.super Lcom/join/mgps/base/BaseQuickAdapter;
.source "SimulatorFastEntryTagGameAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/join/mgps/base/BaseQuickAdapter<",
        "Lcom/join/mgps/dto/SimulatorFastEntryBean$GameInfo;",
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
            "Lcom/join/mgps/dto/SimulatorFastEntryBean$GameInfo;",
            ">;)V"
        }
    .end annotation

    const v0, 0x7f0c0392

    .line 1
    invoke-direct {p0, v0, p1}, Lcom/join/mgps/base/BaseQuickAdapter;-><init>(ILjava/util/List;)V

    return-void
.end method

.method public static synthetic a(Lcom/join/mgps/adapter/g6;Lcom/join/mgps/dto/SimulatorFastEntryBean$GameInfo;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/join/mgps/adapter/g6;->c(Lcom/join/mgps/dto/SimulatorFastEntryBean$GameInfo;Landroid/view/View;)V

    return-void
.end method

.method private synthetic c(Lcom/join/mgps/dto/SimulatorFastEntryBean$GameInfo;Landroid/view/View;)V
    .locals 2

    .line 1
    new-instance p2, Lcom/join/mgps/Util/IntentDateBean;

    invoke-direct {p2}, Lcom/join/mgps/Util/IntentDateBean;-><init>()V

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p2, v0}, Lcom/join/mgps/Util/IntentDateBean;->setLink_type(I)V

    .line 3
    invoke-virtual {p1}, Lcom/join/mgps/dto/SimulatorFastEntryBean$GameInfo;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/join/mgps/Util/IntentDateBean;->setCrc_link_type_val(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p2}, Lcom/join/mgps/Util/IntentDateBean;->getExtBean()Lcom/join/mgps/dto/ExtBean;

    move-result-object p1

    if-nez p1, :cond_0

    .line 5
    new-instance p1, Lcom/join/mgps/dto/ExtBean;

    invoke-direct {p1}, Lcom/join/mgps/dto/ExtBean;-><init>()V

    invoke-virtual {p2, p1}, Lcom/join/mgps/Util/IntentDateBean;->setExtBean(Lcom/join/mgps/dto/ExtBean;)V

    .line 6
    :cond_0
    invoke-virtual {p2}, Lcom/join/mgps/Util/IntentDateBean;->getExtBean()Lcom/join/mgps/dto/ExtBean;

    move-result-object p1

    const/16 v0, 0xcf

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/join/mgps/dto/ExtBean;->setFrom(Ljava/lang/String;)V

    .line 7
    invoke-virtual {p2}, Lcom/join/mgps/Util/IntentDateBean;->getExtBean()Lcom/join/mgps/dto/ExtBean;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/join/mgps/dto/ExtBean;->set_from_type(I)Lcom/join/mgps/dto/ExtBean;

    .line 8
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object p1

    iget-object v0, p0, Lcom/join/mgps/base/BaseQuickAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0, p2}, Lcom/join/mgps/Util/IntentUtil;->intentActivity(Landroid/content/Context;Lcom/join/mgps/Util/IntentDateBean;)V

    return-void
.end method


# virtual methods
.method protected b(Lcom/join/mgps/base/b;Lcom/join/mgps/dto/SimulatorFastEntryBean$GameInfo;)V
    .locals 2

    const v0, 0x7f0907c9

    .line 1
    invoke-virtual {p1, v0}, Lcom/join/mgps/base/b;->k(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {p2}, Lcom/join/mgps/dto/SimulatorFastEntryBean$GameInfo;->getIco()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/join/android/app/common/utils/MyImageLoader;->h(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p2}, Lcom/join/mgps/dto/SimulatorFastEntryBean$GameInfo;->getGame()Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f09109e

    invoke-virtual {p1, v1, v0}, Lcom/join/mgps/base/b;->K(ILjava/lang/CharSequence;)Lcom/join/mgps/base/b;

    .line 3
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v0, Lcom/join/mgps/adapter/f6;

    invoke-direct {v0, p0, p2}, Lcom/join/mgps/adapter/f6;-><init>(Lcom/join/mgps/adapter/g6;Lcom/join/mgps/dto/SimulatorFastEntryBean$GameInfo;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected bridge synthetic convert(Lcom/join/mgps/base/b;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/join/mgps/dto/SimulatorFastEntryBean$GameInfo;

    invoke-virtual {p0, p1, p2}, Lcom/join/mgps/adapter/g6;->b(Lcom/join/mgps/base/b;Lcom/join/mgps/dto/SimulatorFastEntryBean$GameInfo;)V

    return-void
.end method
