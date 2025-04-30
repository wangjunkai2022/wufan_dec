.class public Lcom/join/mgps/adapter/t4;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "PapaMainV2Adapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/adapter/t4$h;,
        Lcom/join/mgps/adapter/t4$r;,
        Lcom/join/mgps/adapter/t4$p;,
        Lcom/join/mgps/adapter/t4$o;,
        Lcom/join/mgps/adapter/t4$m;,
        Lcom/join/mgps/adapter/t4$j;,
        Lcom/join/mgps/adapter/t4$q;,
        Lcom/join/mgps/adapter/t4$n;,
        Lcom/join/mgps/adapter/t4$l;,
        Lcom/join/mgps/adapter/t4$k;,
        Lcom/join/mgps/adapter/t4$s;,
        Lcom/join/mgps/adapter/t4$i;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field public static final A:I = 0x14

.field public static final B:I = 0x15

.field public static final C:I = 0x16

.field public static final D:I = 0x17

.field public static final E:I = 0x18

.field public static final F:I = 0x19

.field public static final G:I = 0x1a

.field public static final H:I = 0x1b

.field public static final I:I = 0x1c

.field public static final J:I = 0x1d

.field public static final K:I = 0x1e

.field public static final L:I = 0x1f

.field public static final M:I = 0x20

.field public static final N:I = 0x21

.field public static final O:I = 0x22

.field public static final P:I = 0x23

.field public static final Q:I = 0x24

.field public static final R:I = 0x25

.field public static final S:I = 0x26

.field public static final T:I = 0x27

.field public static final h:I = 0x0

.field public static final i:I = 0x1

.field public static final j:I = 0x2

.field public static final k:I = 0x3

.field public static final l:I = 0x4

.field public static final m:I = 0x5

.field public static final n:I = 0x6

.field public static final o:I = 0x7

.field public static final p:I = 0x8

.field public static final q:I = 0x9

.field public static final r:I = 0xa

.field public static final s:I = 0xb

.field public static final t:I = 0xc

.field public static final u:I = 0xd

.field public static final v:I = 0xe

.field public static final w:I = 0xf

.field public static final x:I = 0x10

.field public static final y:I = 0x12

.field public static final z:I = 0x13


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/MgpapaMainItemBean;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroid/content/Context;

.field private c:Landroidx/fragment/app/Fragment;

.field private d:Lo1/e;

.field private e:Lcom/join/android/app/component/video/c;

.field f:Lcom/join/mgps/customview/d0;

.field private g:Lcom/join/mgps/adapter/t4$i;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/fragment/app/Fragment;Ljava/util/List;Lcom/join/android/app/component/video/c;Lo1/e;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroidx/fragment/app/Fragment;",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/MgpapaMainItemBean;",
            ">;",
            "Lcom/join/android/app/component/video/c;",
            "Lo1/e;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/join/mgps/adapter/t4;->g:Lcom/join/mgps/adapter/t4$i;

    .line 3
    iput-object p1, p0, Lcom/join/mgps/adapter/t4;->b:Landroid/content/Context;

    .line 4
    iput-object p2, p0, Lcom/join/mgps/adapter/t4;->c:Landroidx/fragment/app/Fragment;

    .line 5
    iput-object p4, p0, Lcom/join/mgps/adapter/t4;->e:Lcom/join/android/app/component/video/c;

    .line 6
    iput-object p5, p0, Lcom/join/mgps/adapter/t4;->d:Lo1/e;

    if-nez p3, :cond_0

    .line 7
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    iput-object p3, p0, Lcom/join/mgps/adapter/t4;->a:Ljava/util/List;

    const/4 p1, 0x1

    .line 8
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->setHasStableIds(Z)V

    return-void
.end method

.method private synthetic A(Ljava/util/List;Lcom/join/mgps/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    .line 1
    invoke-interface {p1, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/PAPAHomeBeanV7$NgSelectionDTO;

    .line 2
    new-instance p2, Lcom/join/mgps/Util/IntentDateBean;

    invoke-direct {p2}, Lcom/join/mgps/Util/IntentDateBean;-><init>()V

    const/4 p3, 0x1

    .line 3
    invoke-virtual {p2, p3}, Lcom/join/mgps/Util/IntentDateBean;->setLink_type(I)V

    .line 4
    invoke-virtual {p1}, Lcom/join/mgps/dto/PAPAHomeBeanV7$NgSelectionDTO;->getId()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/join/mgps/Util/IntentDateBean;->setCrc_link_type_val(Ljava/lang/String;)V

    .line 5
    invoke-virtual {p2}, Lcom/join/mgps/Util/IntentDateBean;->getExtBean()Lcom/join/mgps/dto/ExtBean;

    move-result-object p3

    if-nez p3, :cond_0

    .line 6
    new-instance p3, Lcom/join/mgps/dto/ExtBean;

    invoke-direct {p3}, Lcom/join/mgps/dto/ExtBean;-><init>()V

    invoke-virtual {p2, p3}, Lcom/join/mgps/Util/IntentDateBean;->setExtBean(Lcom/join/mgps/dto/ExtBean;)V

    .line 7
    :cond_0
    invoke-virtual {p2}, Lcom/join/mgps/Util/IntentDateBean;->getExtBean()Lcom/join/mgps/dto/ExtBean;

    move-result-object p3

    invoke-virtual {p1}, Lcom/join/mgps/dto/PAPAHomeBeanV7$NgSelectionDTO;->get_from()I

    move-result p4

    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Lcom/join/mgps/dto/ExtBean;->setFrom(Ljava/lang/String;)V

    .line 8
    invoke-virtual {p2}, Lcom/join/mgps/Util/IntentDateBean;->getExtBean()Lcom/join/mgps/dto/ExtBean;

    move-result-object p3

    invoke-virtual {p1}, Lcom/join/mgps/dto/PAPAHomeBeanV7$NgSelectionDTO;->get_from_type()I

    move-result p4

    invoke-virtual {p3, p4}, Lcom/join/mgps/dto/ExtBean;->set_from_type(I)Lcom/join/mgps/dto/ExtBean;

    .line 9
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object p3

    iget-object p4, p0, Lcom/join/mgps/adapter/t4;->b:Landroid/content/Context;

    invoke-virtual {p3, p4, p2}, Lcom/join/mgps/Util/IntentUtil;->intentActivity(Landroid/content/Context;Lcom/join/mgps/Util/IntentDateBean;)V

    .line 10
    invoke-virtual {p1}, Lcom/join/mgps/dto/PAPAHomeBeanV7$NgSelectionDTO;->getPosition()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/join/mgps/adapter/t4;->M(Ljava/lang/String;)V

    .line 11
    invoke-virtual {p1}, Lcom/join/mgps/dto/PAPAHomeBeanV7$NgSelectionDTO;->getPosition()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/join/mgps/adapter/t4;->J(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic B(Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/join/mgps/Util/c0;->a()Lcom/join/mgps/Util/c0;

    move-result-object p1

    new-instance v0, Lcom/join/kotlin/ui/findgame/data/IntentClassfyEvent;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/join/kotlin/ui/findgame/data/IntentClassfyEvent;-><init>(I)V

    invoke-virtual {p1, v0}, Lcom/join/mgps/Util/c0;->c(Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 2
    invoke-direct {p0, p1}, Lcom/join/mgps/adapter/t4;->M(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic C(Ljava/util/List;Lcom/join/mgps/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object p2

    iget-object p3, p0, Lcom/join/mgps/adapter/t4;->b:Landroid/content/Context;

    invoke-interface {p1, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;

    invoke-virtual {v0}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->getIntentDataBean()Lcom/join/mgps/Util/IntentDateBean;

    move-result-object v0

    invoke-virtual {p2, p3, v0}, Lcom/join/mgps/Util/IntentUtil;->intentActivity(Landroid/content/Context;Lcom/join/mgps/Util/IntentDateBean;)V

    .line 2
    invoke-interface {p1, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;

    invoke-virtual {p2}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->getPosition()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/join/mgps/adapter/t4;->M(Ljava/lang/String;)V

    .line 3
    invoke-interface {p1, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;

    invoke-virtual {p1}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->getPosition()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/join/mgps/adapter/t4;->J(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic D(Ljava/util/List;ILcom/join/mgps/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 2

    .line 1
    invoke-interface {p1, p5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;

    .line 2
    invoke-virtual {p1}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->getGameBean()Lcom/join/mgps/dto/CollectionBeanSub;

    move-result-object p3

    const/4 p5, 0x0

    if-nez p3, :cond_0

    invoke-virtual {p1}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->getDownloadTask()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object p3

    if-nez p3, :cond_0

    const/4 p3, 0x1

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    invoke-virtual {p1, p3}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->setRequesting(Z)V

    const p3, 0x7f09098a

    .line 3
    :try_start_0
    invoke-virtual {p4, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ProgressBar;

    const v0, 0x7f09108f

    .line 4
    invoke-virtual {p4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p4

    check-cast p4, Landroid/widget/TextView;

    .line 5
    invoke-virtual {p1}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->isRequesting()Z

    move-result v0

    const/4 v1, 0x4

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    const/4 v0, 0x4

    :goto_1
    invoke-virtual {p3, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 6
    invoke-virtual {p1}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->isRequesting()Z

    move-result p3

    if-eqz p3, :cond_2

    const/4 p5, 0x4

    :cond_2
    invoke-virtual {p4, p5}, Landroid/widget/TextView;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p3

    .line 7
    invoke-virtual {p3}, Ljava/lang/Exception;->printStackTrace()V

    .line 8
    :goto_2
    iget-object p3, p0, Lcom/join/mgps/adapter/t4;->g:Lcom/join/mgps/adapter/t4$i;

    if-eqz p3, :cond_3

    .line 9
    invoke-interface {p3, p2, p1}, Lcom/join/mgps/adapter/t4$i;->a(ILcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;)V

    :cond_3
    return-void
.end method

.method private synthetic E(Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;Landroid/widget/ProgressBar;Landroid/widget/TextView;ILandroid/view/View;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->getGameBean()Lcom/join/mgps/dto/CollectionBeanSub;

    move-result-object p5

    const/4 v0, 0x0

    if-nez p5, :cond_0

    invoke-virtual {p1}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->getDownloadTask()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object p5

    if-nez p5, :cond_0

    const/4 p5, 0x1

    goto :goto_0

    :cond_0
    const/4 p5, 0x0

    :goto_0
    invoke-virtual {p1, p5}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->setRequesting(Z)V

    .line 2
    invoke-virtual {p1}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->isRequesting()Z

    move-result p5

    const/4 v1, 0x4

    if-eqz p5, :cond_1

    const/4 p5, 0x0

    goto :goto_1

    :cond_1
    const/4 p5, 0x4

    :goto_1
    invoke-virtual {p2, p5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 3
    invoke-virtual {p1}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->isRequesting()Z

    move-result p2

    if-eqz p2, :cond_2

    const/4 v0, 0x4

    :cond_2
    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4
    iget-object p2, p0, Lcom/join/mgps/adapter/t4;->g:Lcom/join/mgps/adapter/t4$i;

    if-eqz p2, :cond_3

    invoke-interface {p2, p4, p1}, Lcom/join/mgps/adapter/t4$i;->a(ILcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;)V

    :cond_3
    return-void
.end method

.method private synthetic F(Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object p2

    iget-object v0, p0, Lcom/join/mgps/adapter/t4;->b:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->getIntentDataBean()Lcom/join/mgps/Util/IntentDateBean;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lcom/join/mgps/Util/IntentUtil;->intentActivity(Landroid/content/Context;Lcom/join/mgps/Util/IntentDateBean;)V

    .line 2
    invoke-direct {p0, p1}, Lcom/join/mgps/adapter/t4;->K(Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;)V

    .line 3
    invoke-virtual {p1}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->getPosition()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/join/mgps/adapter/t4;->M(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p1}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->getPosition()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/join/mgps/adapter/t4;->J(Ljava/lang/String;)V

    return-void
.end method

.method private G(Ljava/util/List;Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/PAPAHomeBeanV7$NgSelectionDTO;",
            ">;",
            "Landroidx/recyclerview/widget/RecyclerView;",
            ")V"
        }
    .end annotation

    if-eqz p2, :cond_3

    if-nez p1, :cond_0

    goto :goto_2

    .line 1
    :cond_0
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p2

    check-cast p2, Landroidx/recyclerview/widget/LinearLayoutManager;

    if-nez p2, :cond_1

    return-void

    .line 2
    :cond_1
    invoke-virtual {p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastCompletelyVisibleItemPosition()I

    move-result p2

    const/4 v0, 0x0

    .line 3
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-static {p2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    if-gt v0, v1, :cond_3

    .line 4
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/dto/PAPAHomeBeanV7$NgSelectionDTO;

    invoke-virtual {v1}, Lcom/join/mgps/dto/PAPAHomeBeanV7$NgSelectionDTO;->isHasExposure()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    .line 5
    :cond_2
    new-instance v1, Lcom/papa/sim/statistic/Ext;

    invoke-direct {v1}, Lcom/papa/sim/statistic/Ext;-><init>()V

    const-string v3, "home"

    .line 6
    invoke-virtual {v1, v3}, Lcom/papa/sim/statistic/Ext;->setPage(Ljava/lang/String;)V

    const-string v3, "204"

    .line 7
    invoke-virtual {v1, v3}, Lcom/papa/sim/statistic/Ext;->setFrom(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 8
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/join/mgps/dto/PAPAHomeBeanV7$NgSelectionDTO;

    invoke-virtual {v3}, Lcom/join/mgps/dto/PAPAHomeBeanV7$NgSelectionDTO;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/papa/sim/statistic/Ext;->setGameId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 9
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/join/mgps/dto/PAPAHomeBeanV7$NgSelectionDTO;

    invoke-virtual {v3}, Lcom/join/mgps/dto/PAPAHomeBeanV7$NgSelectionDTO;->getPosition()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/papa/sim/statistic/Ext;->setPosition(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 10
    iget-object v3, p0, Lcom/join/mgps/adapter/t4;->b:Landroid/content/Context;

    invoke-static {v3}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object v3

    sget-object v4, Lcom/papa/sim/statistic/Event;->expGameAdPage:Lcom/papa/sim/statistic/Event;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/join/mgps/dto/PAPAHomeBeanV7$NgSelectionDTO;

    invoke-virtual {v5}, Lcom/join/mgps/dto/PAPAHomeBeanV7$NgSelectionDTO;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v1, v5}, Lcom/papa/sim/statistic/p;->h0(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;Ljava/lang/String;)V

    .line 11
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/dto/PAPAHomeBeanV7$NgSelectionDTO;

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/PAPAHomeBeanV7$NgSelectionDTO;->setHasExposure(Z)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    :goto_2
    return-void
.end method

.method private H(Ljava/util/List;Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;",
            ">;",
            "Landroidx/recyclerview/widget/RecyclerView;",
            ")V"
        }
    .end annotation

    if-eqz p2, :cond_3

    if-nez p1, :cond_0

    goto :goto_2

    .line 1
    :cond_0
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p2

    check-cast p2, Landroidx/recyclerview/widget/LinearLayoutManager;

    if-nez p2, :cond_1

    return-void

    .line 2
    :cond_1
    invoke-virtual {p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastCompletelyVisibleItemPosition()I

    move-result p2

    const/4 v0, 0x0

    .line 3
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-static {p2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    if-gt v0, v1, :cond_3

    .line 4
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;

    invoke-virtual {v1}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->isHasExposure()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    .line 5
    :cond_2
    new-instance v1, Lcom/papa/sim/statistic/Ext;

    invoke-direct {v1}, Lcom/papa/sim/statistic/Ext;-><init>()V

    const-string v3, "home"

    .line 6
    invoke-virtual {v1, v3}, Lcom/papa/sim/statistic/Ext;->setPage(Ljava/lang/String;)V

    const-string v3, "206"

    .line 7
    invoke-virtual {v1, v3}, Lcom/papa/sim/statistic/Ext;->setFrom(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 8
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;

    invoke-direct {p0, v3}, Lcom/join/mgps/adapter/t4;->u(Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/papa/sim/statistic/Ext;->setGameId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 9
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;

    invoke-virtual {v3}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->getPosition()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/papa/sim/statistic/Ext;->setPosition(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 10
    iget-object v3, p0, Lcom/join/mgps/adapter/t4;->b:Landroid/content/Context;

    invoke-static {v3}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object v3

    sget-object v4, Lcom/papa/sim/statistic/Event;->expGameAdPage:Lcom/papa/sim/statistic/Event;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;

    invoke-direct {p0, v5}, Lcom/join/mgps/adapter/t4;->u(Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v1, v5}, Lcom/papa/sim/statistic/p;->h0(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;Ljava/lang/String;)V

    .line 11
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->setHasExposure(Z)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    :goto_2
    return-void
.end method

.method private I(Ljava/lang/String;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/t4;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object v0

    sget-object v1, Lcom/papa/sim/statistic/ExtFrom;->home:Lcom/papa/sim/statistic/ExtFrom;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "22-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v2, p0, Lcom/join/mgps/adapter/t4;->b:Landroid/content/Context;

    invoke-static {v2}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v2

    invoke-virtual {v2}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, p1, v2}, Lcom/papa/sim/statistic/p;->s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private J(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/t4;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object v0

    sget-object v1, Lcom/papa/sim/statistic/ExtFrom;->home:Lcom/papa/sim/statistic/ExtFrom;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/join/mgps/adapter/t4;->b:Landroid/content/Context;

    invoke-static {v2}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v2

    invoke-virtual {v2}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, p1, v2}, Lcom/papa/sim/statistic/p;->s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private K(Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;)V
    .locals 13

    if-eqz p1, :cond_6

    .line 1
    invoke-virtual {p1}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->getG_info()Lcom/join/mgps/dto/PAPAHomeBeanV7$GInfoDTO;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->getPosition()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->getG_info()Lcom/join/mgps/dto/PAPAHomeBeanV7$GInfoDTO;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/dto/PAPAHomeBeanV7$GInfoDTO;->getPosition_path()Lcom/psk/eventmodule/StatFactory$VolcanoOther;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 2
    :cond_0
    invoke-virtual {p1}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->getPosition()Ljava/lang/String;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    .line 3
    array-length v2, v0

    const/4 v3, 0x2

    if-le v2, v3, :cond_4

    const/4 v2, 0x0

    .line 4
    aget-object v2, v0, v2

    const-string v4, "22"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    return-void

    :cond_1
    const/4 v2, 0x1

    .line 5
    aget-object v4, v0, v2

    const-string v5, "4"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v1, "\u5927\u5bb6\u90fd\u5728\u73a9"

    goto :goto_0

    .line 6
    :cond_2
    aget-object v2, v0, v2

    const-string v4, "13"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v1, "\u6700\u65b0\u7f51\u6e38"

    .line 7
    :cond_3
    :goto_0
    aget-object v0, v0, v3

    goto :goto_1

    :cond_4
    const-string v0, "0"

    :goto_1
    move-object v6, v0

    move-object v5, v1

    .line 8
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    return-void

    .line 9
    :cond_5
    sget-object v0, Lcom/psk/eventmodule/StatFactory;->Companion:Lcom/psk/eventmodule/StatFactory$Companion;

    iget-object v1, p0, Lcom/join/mgps/adapter/t4;->b:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/psk/eventmodule/StatFactory$Companion;->getInstance(Landroid/content/Context;)Lcom/psk/eventmodule/StatFactory;

    move-result-object v0

    new-instance v1, Lcom/psk/eventmodule/StatFactory$VolcanoEvent;

    sget-object v8, Lcom/psk/eventmodule/Event;->click:Lcom/psk/eventmodule/Event;

    .line 10
    invoke-virtual {p1}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->getG_info()Lcom/join/mgps/dto/PAPAHomeBeanV7$GInfoDTO;

    move-result-object v2

    invoke-virtual {v2}, Lcom/join/mgps/dto/PAPAHomeBeanV7$GInfoDTO;->getId()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Lcom/psk/eventmodule/StatFactory$SpmData;

    const/4 v7, 0x0

    const-string v3, "wufun"

    const-string v4, "home"

    move-object v2, v10

    invoke-direct/range {v2 .. v7}, Lcom/psk/eventmodule/StatFactory$SpmData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 11
    invoke-virtual {p1}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->getG_info()Lcom/join/mgps/dto/PAPAHomeBeanV7$GInfoDTO;

    move-result-object v2

    invoke-virtual {v2}, Lcom/join/mgps/dto/PAPAHomeBeanV7$GInfoDTO;->getPosition_path()Lcom/psk/eventmodule/StatFactory$VolcanoOther;

    move-result-object v11

    invoke-virtual {p1}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->getG_info()Lcom/join/mgps/dto/PAPAHomeBeanV7$GInfoDTO;

    move-result-object p1

    invoke-virtual {p1}, Lcom/join/mgps/dto/PAPAHomeBeanV7$GInfoDTO;->getTag_id()Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lcom/join/mgps/Util/UtilsMy;->G1(Ljava/util/List;)Z

    move-result v12

    move-object v7, v1

    invoke-direct/range {v7 .. v12}, Lcom/psk/eventmodule/StatFactory$VolcanoEvent;-><init>(Lcom/psk/eventmodule/Event;Ljava/lang/String;Lcom/psk/eventmodule/StatFactory$SpmData;Lcom/psk/eventmodule/StatFactory$VolcanoOther;Z)V

    .line 12
    invoke-virtual {v0, v1}, Lcom/psk/eventmodule/StatFactory;->sendEvent(Lcom/psk/eventmodule/StatFactory$VolcanoEvent;)V

    :cond_6
    :goto_2
    return-void
.end method

.method private M(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/t4;->c:Landroidx/fragment/app/Fragment;

    instance-of v1, v0, Lcom/join/mgps/activity/PapaMainV2Fragment;

    if-eqz v1, :cond_0

    .line 2
    check-cast v0, Lcom/join/mgps/activity/PapaMainV2Fragment;

    invoke-virtual {v0, p1}, Lcom/join/mgps/activity/PapaMainV2Fragment;->s1(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private O(Lcom/join/mgps/adapter/t4$l;Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;ZI)V
    .locals 20

    move-object/from16 v0, p1

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p3, :cond_1

    .line 1
    iget-object v1, v0, Lcom/join/mgps/adapter/t4$l;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    goto :goto_0

    :cond_1
    iget-object v1, v0, Lcom/join/mgps/adapter/t4$l;->m:Landroidx/constraintlayout/widget/ConstraintLayout;

    :goto_0
    if-eqz p3, :cond_2

    .line 2
    iget-object v2, v0, Lcom/join/mgps/adapter/t4$l;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    goto :goto_1

    :cond_2
    iget-object v2, v0, Lcom/join/mgps/adapter/t4$l;->n:Lcom/facebook/drawee/view/SimpleDraweeView;

    :goto_1
    if-eqz p3, :cond_3

    .line 3
    iget-object v3, v0, Lcom/join/mgps/adapter/t4$l;->c:Landroid/widget/TextView;

    goto :goto_2

    :cond_3
    iget-object v3, v0, Lcom/join/mgps/adapter/t4$l;->o:Landroid/widget/TextView;

    :goto_2
    move-object v6, v3

    if-eqz p3, :cond_4

    .line 4
    iget-object v3, v0, Lcom/join/mgps/adapter/t4$l;->i:Landroid/widget/TextView;

    goto :goto_3

    :cond_4
    iget-object v3, v0, Lcom/join/mgps/adapter/t4$l;->u:Landroid/widget/TextView;

    :goto_3
    move-object v7, v3

    if-eqz p3, :cond_5

    .line 5
    iget-object v3, v0, Lcom/join/mgps/adapter/t4$l;->j:Landroid/widget/FrameLayout;

    goto :goto_4

    :cond_5
    iget-object v3, v0, Lcom/join/mgps/adapter/t4$l;->v:Landroid/widget/FrameLayout;

    :goto_4
    move-object v8, v3

    if-eqz p3, :cond_6

    .line 6
    iget-object v3, v0, Lcom/join/mgps/adapter/t4$l;->k:Landroid/widget/TextView;

    goto :goto_5

    :cond_6
    iget-object v3, v0, Lcom/join/mgps/adapter/t4$l;->w:Landroid/widget/TextView;

    :goto_5
    if-eqz p3, :cond_7

    .line 7
    iget-object v4, v0, Lcom/join/mgps/adapter/t4$l;->d:Landroid/widget/LinearLayout;

    goto :goto_6

    :cond_7
    iget-object v4, v0, Lcom/join/mgps/adapter/t4$l;->p:Landroid/widget/LinearLayout;

    :goto_6
    move-object v15, v4

    if-eqz p3, :cond_8

    .line 8
    iget-object v4, v0, Lcom/join/mgps/adapter/t4$l;->e:Landroid/widget/TextView;

    goto :goto_7

    :cond_8
    iget-object v4, v0, Lcom/join/mgps/adapter/t4$l;->q:Landroid/widget/TextView;

    :goto_7
    move-object/from16 v16, v4

    if-eqz p3, :cond_9

    .line 9
    iget-object v4, v0, Lcom/join/mgps/adapter/t4$l;->f:Landroid/widget/TextView;

    goto :goto_8

    :cond_9
    iget-object v4, v0, Lcom/join/mgps/adapter/t4$l;->r:Landroid/widget/TextView;

    :goto_8
    move-object/from16 v17, v4

    if-eqz p3, :cond_a

    .line 10
    iget-object v4, v0, Lcom/join/mgps/adapter/t4$l;->g:Landroid/widget/ProgressBar;

    goto :goto_9

    :cond_a
    iget-object v4, v0, Lcom/join/mgps/adapter/t4$l;->s:Landroid/widget/ProgressBar;

    :goto_9
    move-object/from16 v18, v4

    if-eqz p3, :cond_b

    .line 11
    iget-object v4, v0, Lcom/join/mgps/adapter/t4$l;->h:Landroid/widget/ProgressBar;

    goto :goto_a

    :cond_b
    iget-object v4, v0, Lcom/join/mgps/adapter/t4$l;->t:Landroid/widget/ProgressBar;

    :goto_a
    move-object/from16 v19, v4

    if-eqz p3, :cond_c

    .line 12
    iget-object v0, v0, Lcom/join/mgps/adapter/t4$l;->l:Landroid/widget/ProgressBar;

    goto :goto_b

    :cond_c
    iget-object v0, v0, Lcom/join/mgps/adapter/t4$l;->x:Landroid/widget/ProgressBar;

    :goto_b
    move-object v12, v0

    .line 13
    invoke-virtual/range {p2 .. p2}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->getBig_pic()Ljava/lang/String;

    move-result-object v0

    sget-object v4, Lcom/facebook/drawee/drawable/r$c;->g:Lcom/facebook/drawee/drawable/r$c;

    invoke-static {v2, v0, v4}, Lcom/join/android/app/common/utils/MyImageLoader;->i(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;Lcom/facebook/drawee/drawable/r$c;)V

    .line 14
    invoke-virtual/range {p2 .. p2}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->getG_info()Lcom/join/mgps/dto/PAPAHomeBeanV7$GInfoDTO;

    move-result-object v0

    if-nez v0, :cond_d

    .line 15
    invoke-virtual/range {p2 .. p2}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->getTitle()Ljava/lang/String;

    move-result-object v2

    goto :goto_c

    :cond_d
    invoke-virtual {v0}, Lcom/join/mgps/dto/PAPAHomeBeanV7$GInfoDTO;->getName()Ljava/lang/String;

    move-result-object v2

    :goto_c
    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v2, 0x0

    .line 16
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    const/4 v4, 0x4

    .line 17
    invoke-virtual {v12, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    if-eqz v0, :cond_10

    .line 18
    invoke-virtual {v0}, Lcom/join/mgps/dto/PAPAHomeBeanV7$GInfoDTO;->getTag_name()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_10

    .line 19
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 20
    invoke-virtual {v0}, Lcom/join/mgps/dto/PAPAHomeBeanV7$GInfoDTO;->getTag_name()Ljava/lang/String;

    move-result-object v0

    const-string v5, ","

    invoke-virtual {v0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v5, 0x0

    .line 21
    :goto_d
    array-length v9, v0

    if-ge v5, v9, :cond_f

    .line 22
    aget-object v9, v0, v5

    .line 23
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " | "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v9, 0x1

    if-lt v5, v9, :cond_e

    goto :goto_e

    :cond_e
    add-int/lit8 v5, v5, 0x1

    goto :goto_d

    .line 24
    :cond_f
    :goto_e
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x3

    invoke-virtual {v4, v2, v0}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 25
    :cond_10
    new-instance v0, Lcom/join/mgps/adapter/m4;

    move-object/from16 v2, p0

    move-object/from16 v5, p2

    invoke-direct {v0, v2, v5}, Lcom/join/mgps/adapter/m4;-><init>(Lcom/join/mgps/adapter/t4;Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;)V

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 26
    new-instance v0, Lcom/join/mgps/adapter/p4;

    move-object v9, v0

    move-object/from16 v10, p0

    move-object/from16 v11, p2

    move-object v13, v3

    move/from16 v14, p4

    invoke-direct/range {v9 .. v14}, Lcom/join/mgps/adapter/p4;-><init>(Lcom/join/mgps/adapter/t4;Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;Landroid/widget/ProgressBar;Landroid/widget/TextView;I)V

    invoke-virtual {v8, v0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v4, p0

    move-object v9, v3

    move-object v10, v15

    move-object/from16 v11, v16

    move-object/from16 v12, v17

    move-object/from16 v13, v18

    move-object/from16 v14, v19

    .line 27
    invoke-direct/range {v4 .. v14}, Lcom/join/mgps/adapter/t4;->update(Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/FrameLayout;Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/ProgressBar;Landroid/widget/ProgressBar;)V

    return-void
.end method

.method private P(Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/widget/ProgressBar;Landroid/widget/ProgressBar;ZZ)V
    .locals 2

    const/4 v0, 0x0

    const/16 v1, 0x8

    if-eqz p5, :cond_0

    .line 1
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2
    invoke-virtual {p2, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3
    invoke-virtual {p3, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 4
    invoke-virtual {p4, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 6
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    if-eqz p6, :cond_1

    .line 7
    invoke-virtual {p4, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 8
    invoke-virtual {p3, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0

    .line 9
    :cond_1
    invoke-virtual {p3, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 10
    invoke-virtual {p4, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public static synthetic a(Lcom/join/mgps/adapter/t4;Ljava/util/List;ILcom/join/mgps/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/join/mgps/adapter/t4;->D(Ljava/util/List;ILcom/join/mgps/base/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic b(Lcom/join/mgps/adapter/t4;Ljava/util/List;Lcom/join/mgps/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/join/mgps/adapter/t4;->A(Ljava/util/List;Lcom/join/mgps/base/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic c(Lcom/join/mgps/adapter/t4;Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/join/mgps/adapter/t4;->x(Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic d(Lcom/join/mgps/adapter/t4;Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;Lcom/join/mgps/adapter/t4$j;ILandroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/join/mgps/adapter/t4;->y(Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;Lcom/join/mgps/adapter/t4$j;ILandroid/view/View;)V

    return-void
.end method

.method public static synthetic e(Lcom/join/mgps/adapter/t4;Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/join/mgps/adapter/t4;->F(Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic f(Lcom/join/mgps/adapter/t4;Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/join/mgps/adapter/t4;->z(Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic g(Lcom/join/mgps/adapter/t4;Ljava/util/List;Lcom/join/mgps/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/join/mgps/adapter/t4;->C(Ljava/util/List;Lcom/join/mgps/base/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic h(Lcom/join/mgps/adapter/t4;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/join/mgps/adapter/t4;->B(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic i(Lcom/join/mgps/adapter/t4;Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/join/mgps/adapter/t4;->v(Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic j(Lcom/join/mgps/adapter/t4;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/join/mgps/adapter/t4;->w(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic k(Lcom/join/mgps/adapter/t4;Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;Landroid/widget/ProgressBar;Landroid/widget/TextView;ILandroid/view/View;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/join/mgps/adapter/t4;->E(Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;Landroid/widget/ProgressBar;Landroid/widget/TextView;ILandroid/view/View;)V

    return-void
.end method

.method static synthetic l(Lcom/join/mgps/adapter/t4;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/adapter/t4;->I(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic m(Lcom/join/mgps/adapter/t4;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/adapter/t4;->b:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic n(Lcom/join/mgps/adapter/t4;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/adapter/t4;->M(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic o(Lcom/join/mgps/adapter/t4;)Lcom/join/android/app/component/video/c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/adapter/t4;->e:Lcom/join/android/app/component/video/c;

    return-object p0
.end method

.method static synthetic p(Lcom/join/mgps/adapter/t4;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/adapter/t4;->J(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic q(Lcom/join/mgps/adapter/t4;Ljava/util/List;Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/adapter/t4;->G(Ljava/util/List;Landroidx/recyclerview/widget/RecyclerView;)V

    return-void
.end method

.method static synthetic r(Lcom/join/mgps/adapter/t4;)Lcom/join/mgps/adapter/t4$i;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/adapter/t4;->g:Lcom/join/mgps/adapter/t4$i;

    return-object p0
.end method

.method static synthetic s(Lcom/join/mgps/adapter/t4;Ljava/util/List;Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/adapter/t4;->H(Ljava/util/List;Landroidx/recyclerview/widget/RecyclerView;)V

    return-void
.end method

.method private u(Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 1
    :cond_0
    invoke-virtual {p1}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->getG_info()Lcom/join/mgps/dto/PAPAHomeBeanV7$GInfoDTO;

    move-result-object v1

    if-nez v1, :cond_1

    return-object v0

    .line 2
    :cond_1
    invoke-virtual {p1}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->getG_info()Lcom/join/mgps/dto/PAPAHomeBeanV7$GInfoDTO;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/dto/PAPAHomeBeanV7$GInfoDTO;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->getG_info()Lcom/join/mgps/dto/PAPAHomeBeanV7$GInfoDTO;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/dto/PAPAHomeBeanV7$GInfoDTO;->getId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 3
    invoke-virtual {p1}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->getG_info()Lcom/join/mgps/dto/PAPAHomeBeanV7$GInfoDTO;

    move-result-object p1

    invoke-virtual {p1}, Lcom/join/mgps/dto/PAPAHomeBeanV7$GInfoDTO;->getId()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 4
    :cond_2
    invoke-virtual {p1}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->getG_info()Lcom/join/mgps/dto/PAPAHomeBeanV7$GInfoDTO;

    move-result-object p1

    invoke-virtual {p1}, Lcom/join/mgps/dto/PAPAHomeBeanV7$GInfoDTO;->getMod_id()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private update(Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/FrameLayout;Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/ProgressBar;Landroid/widget/ProgressBar;)V
    .locals 20

    move-object/from16 v8, p0

    move-object/from16 v0, p4

    move-object/from16 v9, p5

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    move-object/from16 v12, p9

    move-object/from16 v13, p10

    .line 1
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->getDownloadTask()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v14

    .line 2
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->getGameBean()Lcom/join/mgps/dto/CollectionBeanSub;

    move-result-object v15

    const-wide/16 v16, 0x0

    if-eqz v14, :cond_0

    .line 3
    invoke-virtual {v14}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSize()J

    move-result-wide v1

    move-wide/from16 v18, v1

    goto :goto_0

    :cond_0
    move-wide/from16 v18, v16

    :goto_0
    if-eqz v15, :cond_1

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/join/mgps/enums/ConstantIntEnum;->H5:Lcom/join/mgps/enums/ConstantIntEnum;

    invoke-virtual {v2}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v15}, Lcom/join/mgps/dto/CollectionBeanSub;->getPlugin_num()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v0, "\u5f00\u59cb"

    .line 5
    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v0, 0x8

    move-object/from16 v1, p2

    .line 6
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_5

    :cond_1
    const-string v7, "\u66f4\u65b0"

    const-string v6, "\u542f\u52a8"

    const-string v5, "\u83b7\u53d6"

    if-nez v14, :cond_6

    const/4 v10, 0x1

    const/4 v11, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    move-object/from16 v3, p6

    move-object/from16 v4, p10

    move-object v13, v5

    move-object/from16 v5, p9

    move-object v12, v6

    move v6, v10

    move-object v10, v7

    move v7, v11

    .line 7
    invoke-direct/range {v1 .. v7}, Lcom/join/mgps/adapter/t4;->P(Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/widget/ProgressBar;Landroid/widget/ProgressBar;ZZ)V

    .line 8
    invoke-virtual {v9, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-nez v15, :cond_2

    return-void

    .line 9
    :cond_2
    invoke-virtual {v15}, Lcom/join/mgps/dto/CollectionBeanSub;->getTag_info()Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v1}, Lcom/join/mgps/Util/UtilsMy;->e0(Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 10
    iget-object v1, v8, Lcom/join/mgps/adapter/t4;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/join/android/app/common/utils/a;->g0(Landroid/content/Context;)Lcom/join/android/app/common/utils/a;

    move-result-object v1

    iget-object v2, v8, Lcom/join/mgps/adapter/t4;->b:Landroid/content/Context;

    invoke-virtual {v15}, Lcom/join/mgps/dto/CollectionBeanSub;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/join/android/app/common/utils/APKUtils;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 11
    invoke-virtual {v15}, Lcom/join/mgps/dto/CollectionBeanSub;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    move-result-object v1

    invoke-virtual {v15}, Lcom/join/mgps/dto/CollectionBeanSub;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/join/mgps/Util/UtilsMy;->m0(Lcom/join/mgps/dto/PayTagInfo;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_4

    .line 12
    iget-object v0, v8, Lcom/join/mgps/adapter/t4;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/android/app/common/utils/a;->g0(Landroid/content/Context;)Lcom/join/android/app/common/utils/a;

    move-result-object v0

    iget-object v1, v8, Lcom/join/mgps/adapter/t4;->b:Landroid/content/Context;

    invoke-virtual {v15}, Lcom/join/mgps/dto/CollectionBeanSub;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/join/android/app/common/utils/APKUtils;->k(Landroid/content/Context;Ljava/lang/String;)Lcom/join/android/app/common/utils/APKUtils$a;

    move-result-object v0

    .line 13
    invoke-virtual {v15}, Lcom/join/mgps/dto/CollectionBeanSub;->getVer()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/join/android/app/common/utils/APKUtils$a;->d()I

    move-result v0

    invoke-virtual {v15}, Lcom/join/mgps/dto/CollectionBeanSub;->getVer()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 14
    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    .line 15
    :cond_3
    invoke-virtual {v9, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    .line 16
    :cond_4
    invoke-virtual {v15}, Lcom/join/mgps/dto/CollectionBeanSub;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    move-result-object v1

    invoke-virtual {v15}, Lcom/join/mgps/dto/CollectionBeanSub;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/join/mgps/Util/UtilsMy;->m0(Lcom/join/mgps/dto/PayTagInfo;Ljava/lang/String;)I

    .line 17
    invoke-static {v9, v0, v15}, Lcom/join/mgps/Util/UtilsMy;->t2(Landroid/widget/TextView;Landroid/view/View;Lcom/join/mgps/dto/CollectionBeanSub;)V

    goto/16 :goto_5

    .line 18
    :cond_5
    invoke-virtual {v15}, Lcom/join/mgps/dto/CollectionBeanSub;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    move-result-object v1

    invoke-virtual {v15}, Lcom/join/mgps/dto/CollectionBeanSub;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/join/mgps/Util/UtilsMy;->m0(Lcom/join/mgps/dto/PayTagInfo;Ljava/lang/String;)I

    .line 19
    invoke-static {v9, v0, v15}, Lcom/join/mgps/Util/UtilsMy;->t2(Landroid/widget/TextView;Landroid/view/View;Lcom/join/mgps/dto/CollectionBeanSub;)V

    goto/16 :goto_5

    :cond_6
    move-object v3, v5

    move-object v2, v6

    move-object v1, v7

    .line 20
    invoke-virtual {v14}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v4

    const/16 v5, 0x2b

    if-eqz v15, :cond_7

    .line 21
    invoke-virtual {v15}, Lcom/join/mgps/dto/CollectionBeanSub;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    move-result-object v6

    invoke-virtual {v15}, Lcom/join/mgps/dto/CollectionBeanSub;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/join/mgps/Util/UtilsMy;->m0(Lcom/join/mgps/dto/PayTagInfo;Ljava/lang/String;)I

    move-result v6

    if-lez v6, :cond_7

    const/16 v4, 0x2b

    :cond_7
    if-eqz v4, :cond_f

    const/16 v6, 0x1b

    const-string v7, "\u6682\u505c"

    if-eq v4, v6, :cond_e

    const/16 v6, 0x30

    if-eq v4, v6, :cond_d

    const/4 v6, 0x2

    move-object/from16 p1, v7

    const-string v7, "/"

    if-eq v4, v6, :cond_b

    const/4 v6, 0x3

    if-eq v4, v6, :cond_9

    const/4 v6, 0x5

    if-eq v4, v6, :cond_8

    const/4 v6, 0x6

    if-eq v4, v6, :cond_9

    const/4 v6, 0x7

    if-eq v4, v6, :cond_f

    const/16 v6, 0x2a

    if-eq v4, v6, :cond_8

    if-eq v4, v5, :cond_f

    packed-switch v4, :pswitch_data_0

    goto/16 :goto_5

    :pswitch_0
    const/4 v6, 0x0

    const/4 v0, 0x1

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    move-object/from16 v3, p6

    move-object/from16 v4, p10

    move-object/from16 v5, p9

    move-object v15, v7

    move v7, v0

    .line 22
    invoke-direct/range {v1 .. v7}, Lcom/join/mgps/adapter/t4;->P(Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/widget/ProgressBar;Landroid/widget/ProgressBar;ZZ)V

    .line 23
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static/range {v18 .. v19}, Lcom/join/mgps/Util/UtilsMy;->f(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {v18 .. v19}, Lcom/join/mgps/Util/UtilsMy;->f(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v0, "\u70b9\u51fb\u91cd\u65b0\u89e3\u538b"

    .line 24
    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 25
    invoke-virtual {v14}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    move-result-wide v0

    long-to-int v1, v0

    invoke-virtual {v12, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    const-string v0, "\u89e3\u538b"

    .line 26
    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    :pswitch_1
    move-object v15, v7

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    move-object/from16 v3, p6

    move-object/from16 v4, p10

    move-object/from16 v5, p9

    .line 27
    invoke-direct/range {v1 .. v7}, Lcom/join/mgps/adapter/t4;->P(Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/widget/ProgressBar;Landroid/widget/ProgressBar;ZZ)V

    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static/range {v18 .. v19}, Lcom/join/mgps/Util/UtilsMy;->f(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {v18 .. v19}, Lcom/join/mgps/Util/UtilsMy;->f(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v0, "\u89e3\u538b\u4e2d.."

    .line 29
    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 30
    invoke-virtual {v14}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    move-result-wide v0

    long-to-int v1, v0

    invoke-virtual {v12, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    const-string v0, "\u89e3\u538b\u4e2d"

    .line 31
    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    :pswitch_2
    const-string v0, "\u5b89\u88c5"

    .line 32
    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    move-object/from16 v3, p6

    move-object/from16 v4, p10

    move-object/from16 v5, p9

    .line 33
    invoke-direct/range {v1 .. v7}, Lcom/join/mgps/adapter/t4;->P(Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/widget/ProgressBar;Landroid/widget/ProgressBar;ZZ)V

    goto/16 :goto_5

    :pswitch_3
    move-object v15, v7

    const-string v0, "\u7b49\u5f85"

    .line 34
    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    move-object/from16 v3, p6

    move-object/from16 v4, p10

    move-object/from16 v5, p9

    .line 35
    invoke-direct/range {v1 .. v7}, Lcom/join/mgps/adapter/t4;->P(Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/widget/ProgressBar;Landroid/widget/ProgressBar;ZZ)V

    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCurrentSize()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/join/mgps/Util/UtilsMy;->f(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {v18 .. v19}, Lcom/join/mgps/Util/UtilsMy;->f(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 37
    :try_start_0
    invoke-virtual {v14}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    move-result-wide v0

    long-to-int v1, v0

    invoke-virtual {v13, v1}, Landroid/widget/ProgressBar;->setProgress(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 38
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    const-string v0, "\u7b49\u5f85\u4e2d"

    .line 39
    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    .line 40
    :pswitch_4
    invoke-virtual {v9, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    move-object/from16 v3, p6

    move-object/from16 v4, p10

    move-object/from16 v5, p9

    .line 41
    invoke-direct/range {v1 .. v7}, Lcom/join/mgps/adapter/t4;->P(Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/widget/ProgressBar;Landroid/widget/ProgressBar;ZZ)V

    goto/16 :goto_5

    .line 42
    :cond_8
    invoke-virtual {v9, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v6, 0x1

    const/4 v7, 0x1

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    move-object/from16 v3, p6

    move-object/from16 v4, p10

    move-object/from16 v5, p9

    .line 43
    invoke-direct/range {v1 .. v7}, Lcom/join/mgps/adapter/t4;->P(Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/widget/ProgressBar;Landroid/widget/ProgressBar;ZZ)V

    goto/16 :goto_5

    :cond_9
    const-string v0, "\u7ee7\u7eed"

    .line 44
    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v6, 0x0

    const/4 v0, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    move-object/from16 v3, p6

    move-object/from16 v4, p10

    move-object/from16 v5, p9

    move-object v15, v7

    move v7, v0

    .line 45
    invoke-direct/range {v1 .. v7}, Lcom/join/mgps/adapter/t4;->P(Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/widget/ProgressBar;Landroid/widget/ProgressBar;ZZ)V

    .line 46
    :try_start_1
    invoke-virtual {v14}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSize()J

    move-result-wide v0

    cmp-long v2, v0, v16

    if-nez v2, :cond_a

    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCurrentSize()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/join/mgps/Util/UtilsMy;->f(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {v18 .. v19}, Lcom/join/mgps/Util/UtilsMy;->f(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 48
    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCurrentSize()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/join/mgps/Util/UtilsMy;->f(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {v18 .. v19}, Lcom/join/mgps/Util/UtilsMy;->f(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 49
    :goto_2
    invoke-virtual {v14}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    move-result-wide v0

    long-to-int v1, v0

    invoke-virtual {v13, v1}, Landroid/widget/ProgressBar;->setProgress(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception v0

    .line 50
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_3
    const-string v0, "\u6682\u505c\u4e2d"

    .line 51
    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    :cond_b
    move-object v15, v7

    .line 52
    invoke-static {v14}, Lcom/join/mgps/Util/UtilsMy;->C3(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    move-object/from16 v0, p1

    .line 53
    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    move-object/from16 v3, p6

    move-object/from16 v4, p10

    move-object/from16 v5, p9

    .line 54
    invoke-direct/range {v1 .. v7}, Lcom/join/mgps/adapter/t4;->P(Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/widget/ProgressBar;Landroid/widget/ProgressBar;ZZ)V

    .line 55
    invoke-virtual {v14}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSize()J

    move-result-wide v0

    cmp-long v2, v0, v16

    if-nez v2, :cond_c

    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCurrentSize()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/join/mgps/Util/UtilsMy;->f(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {v18 .. v19}, Lcom/join/mgps/Util/UtilsMy;->f(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 57
    :cond_c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCurrentSize()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/join/mgps/Util/UtilsMy;->f(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {v18 .. v19}, Lcom/join/mgps/Util/UtilsMy;->f(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 58
    :goto_4
    invoke-virtual {v14}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    move-result-wide v0

    long-to-int v1, v0

    invoke-virtual {v13, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 59
    invoke-virtual {v14}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSpeed()Ljava/lang/String;

    move-result-object v0

    .line 60
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/S"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5

    :cond_d
    const-string v0, "\u5b89\u88c5\u4e2d"

    .line 61
    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    move-object/from16 v3, p6

    move-object/from16 v4, p10

    move-object/from16 v5, p9

    .line 62
    invoke-direct/range {v1 .. v7}, Lcom/join/mgps/adapter/t4;->P(Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/widget/ProgressBar;Landroid/widget/ProgressBar;ZZ)V

    goto :goto_5

    :cond_e
    move-object v0, v7

    .line 63
    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5

    .line 64
    :cond_f
    invoke-virtual {v9, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 65
    invoke-virtual {v15}, Lcom/join/mgps/dto/CollectionBeanSub;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    move-result-object v1

    invoke-virtual {v15}, Lcom/join/mgps/dto/CollectionBeanSub;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/join/mgps/Util/UtilsMy;->m0(Lcom/join/mgps/dto/PayTagInfo;Ljava/lang/String;)I

    .line 66
    invoke-static {v9, v0, v15}, Lcom/join/mgps/Util/UtilsMy;->t2(Landroid/widget/TextView;Landroid/view/View;Lcom/join/mgps/dto/CollectionBeanSub;)V

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    move-object/from16 v3, p6

    move-object/from16 v4, p10

    move-object/from16 v5, p9

    .line 67
    invoke-direct/range {v1 .. v7}, Lcom/join/mgps/adapter/t4;->P(Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/widget/ProgressBar;Landroid/widget/ProgressBar;ZZ)V

    :goto_5
    return-void

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private synthetic v(Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->getIntentDataBean()Lcom/join/mgps/Util/IntentDateBean;

    move-result-object p1

    .line 2
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object p2

    iget-object v0, p0, Lcom/join/mgps/adapter/t4;->b:Landroid/content/Context;

    invoke-virtual {p2, v0, p1}, Lcom/join/mgps/Util/IntentUtil;->intentActivity(Landroid/content/Context;Lcom/join/mgps/Util/IntentDateBean;)V

    const/4 p1, 0x0

    .line 3
    invoke-direct {p0, p1}, Lcom/join/mgps/adapter/t4;->M(Ljava/lang/String;)V

    const-string p1, "3-1"

    .line 4
    invoke-direct {p0, p1}, Lcom/join/mgps/adapter/t4;->I(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic w(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/join/mgps/adapter/t4;->b:Landroid/content/Context;

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/join/mgps/adapter/t4;->b:Landroid/content/Context;

    const-class v2, Lcom/join/kotlin/EverdayNewGameActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    const/4 p1, 0x0

    .line 2
    invoke-direct {p0, p1}, Lcom/join/mgps/adapter/t4;->M(Ljava/lang/String;)V

    const-string p1, "3-3"

    .line 3
    invoke-direct {p0, p1}, Lcom/join/mgps/adapter/t4;->I(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic x(Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->getIntentDataBean()Lcom/join/mgps/Util/IntentDateBean;

    move-result-object p1

    .line 2
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object p2

    iget-object v0, p0, Lcom/join/mgps/adapter/t4;->b:Landroid/content/Context;

    invoke-virtual {p2, v0, p1}, Lcom/join/mgps/Util/IntentUtil;->intentActivity(Landroid/content/Context;Lcom/join/mgps/Util/IntentDateBean;)V

    const/4 p1, 0x0

    .line 3
    invoke-direct {p0, p1}, Lcom/join/mgps/adapter/t4;->M(Ljava/lang/String;)V

    const-string p1, "3-2"

    .line 4
    invoke-direct {p0, p1}, Lcom/join/mgps/adapter/t4;->I(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic y(Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;Lcom/join/mgps/adapter/t4$j;ILandroid/view/View;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->getGameBean()Lcom/join/mgps/dto/CollectionBeanSub;

    move-result-object p4

    const/4 v0, 0x0

    if-nez p4, :cond_0

    invoke-virtual {p1}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->getDownloadTask()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object p4

    if-nez p4, :cond_0

    const/4 p4, 0x1

    goto :goto_0

    :cond_0
    const/4 p4, 0x0

    :goto_0
    invoke-virtual {p1, p4}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->setRequesting(Z)V

    .line 2
    iget-object p4, p2, Lcom/join/mgps/adapter/t4$j;->n:Landroid/widget/ProgressBar;

    invoke-virtual {p1}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->isRequesting()Z

    move-result v1

    const/4 v2, 0x4

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    const/4 v1, 0x4

    :goto_1
    invoke-virtual {p4, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 3
    iget-object p2, p2, Lcom/join/mgps/adapter/t4$j;->k:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->isRequesting()Z

    move-result p4

    if-eqz p4, :cond_2

    const/4 v0, 0x4

    :cond_2
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4
    iget-object p2, p0, Lcom/join/mgps/adapter/t4;->g:Lcom/join/mgps/adapter/t4$i;

    if-eqz p2, :cond_3

    invoke-interface {p2, p3, p1}, Lcom/join/mgps/adapter/t4$i;->a(ILcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;)V

    :cond_3
    return-void
.end method

.method private synthetic z(Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object p2

    iget-object v0, p0, Lcom/join/mgps/adapter/t4;->b:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->getIntentDataBean()Lcom/join/mgps/Util/IntentDateBean;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lcom/join/mgps/Util/IntentUtil;->intentActivity(Landroid/content/Context;Lcom/join/mgps/Util/IntentDateBean;)V

    .line 2
    invoke-virtual {p1}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->getPosition()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/join/mgps/adapter/t4;->M(Ljava/lang/String;)V

    .line 3
    invoke-virtual {p1}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->getPosition()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/join/mgps/adapter/t4;->J(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public L(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/MgpapaMainItemBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/t4;->a:Ljava/util/List;

    .line 2
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public N(Lcom/join/mgps/adapter/t4$i;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/t4;->g:Lcom/join/mgps/adapter/t4$i;

    return-void
.end method

.method public getData()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/MgpapaMainItemBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/t4;->a:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    return-object v0
.end method

.method public getItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/t4;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemId(I)J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/t4;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/MgpapaMainItemBean;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 2

    const/4 v0, 0x0

    if-gez p1, :cond_0

    return v0

    .line 1
    :cond_0
    iget-object v1, p0, Lcom/join/mgps/adapter/t4;->a:Ljava/util/List;

    if-nez v1, :cond_1

    return v0

    .line 2
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-gt v1, p1, :cond_2

    return v0

    .line 3
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/adapter/t4;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/MgpapaMainItemBean;

    invoke-virtual {p1}, Lcom/join/mgps/dto/MgpapaMainItemBean;->getShowtype()I

    move-result p1

    return p1
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 12
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    if-ltz p2, :cond_11

    .line 1
    iget-object v1, p0, Lcom/join/mgps/adapter/t4;->a:Ljava/util/List;

    if-eqz v1, :cond_11

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-gt v1, p2, :cond_0

    goto/16 :goto_7

    .line 2
    :cond_0
    invoke-virtual {p0, p2}, Lcom/join/mgps/adapter/t4;->getItemViewType(I)I

    move-result v1

    .line 3
    iget-object v2, p0, Lcom/join/mgps/adapter/t4;->a:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/join/mgps/dto/MgpapaMainItemBean;

    const/4 v3, 0x3

    const-string v4, ","

    const/4 v5, 0x0

    const/16 v6, 0x8

    const/4 v7, 0x2

    const/4 v8, 0x5

    const/4 v9, 0x1

    const/4 v10, 0x0

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_7

    .line 4
    :pswitch_0
    move-object v1, p1

    check-cast v1, Lcom/join/mgps/adapter/t4$p;

    .line 5
    invoke-virtual {v2}, Lcom/join/mgps/dto/MgpapaMainItemBean;->getObject()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    if-eqz v2, :cond_11

    .line 6
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_11

    .line 7
    iget-object v3, v1, Lcom/join/mgps/adapter/t4$p;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v3, v1, Lcom/join/mgps/adapter/t4$p;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v3

    instance-of v3, v3, Lcom/join/mgps/adapter/m2;

    if-eqz v3, :cond_1

    iget-object v3, v1, Lcom/join/mgps/adapter/t4$p;->a:Landroidx/recyclerview/widget/RecyclerView;

    .line 8
    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v3

    check-cast v3, Lcom/join/mgps/adapter/m2;

    invoke-virtual {v3}, Lcom/join/mgps/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 9
    iget-object v0, v1, Lcom/join/mgps/adapter/t4$p;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/adapter/m2;

    .line 10
    invoke-virtual {v0, v2}, Lcom/join/mgps/base/BaseQuickAdapter;->setNewData(Ljava/util/List;)V

    goto/16 :goto_7

    .line 11
    :cond_1
    new-instance v3, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v4, p0, Lcom/join/mgps/adapter/t4;->b:Landroid/content/Context;

    invoke-direct {v3, v4, v10, v10}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 12
    new-instance v4, Lcom/join/mgps/adapter/m2;

    invoke-direct {v4, v2}, Lcom/join/mgps/adapter/m2;-><init>(Ljava/util/List;)V

    .line 13
    iget-object v5, v1, Lcom/join/mgps/adapter/t4$p;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v5}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object v5

    check-cast v5, Landroidx/recyclerview/widget/SimpleItemAnimator;

    invoke-virtual {v5, v10}, Landroidx/recyclerview/widget/SimpleItemAnimator;->setSupportsChangeAnimations(Z)V

    .line 14
    iget-object v5, v1, Lcom/join/mgps/adapter/t4$p;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v5, v9}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 15
    iget-object v5, v1, Lcom/join/mgps/adapter/t4$p;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v5, v3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 16
    iget-object v3, v1, Lcom/join/mgps/adapter/t4$p;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v3, v4}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 17
    new-instance v3, Lcom/join/mgps/adapter/j4;

    invoke-direct {v3, p0, v2}, Lcom/join/mgps/adapter/j4;-><init>(Lcom/join/mgps/adapter/t4;Ljava/util/List;)V

    invoke-virtual {v4, v3}, Lcom/join/mgps/base/BaseQuickAdapter;->setOnItemClickListener(Lcom/join/mgps/base/BaseQuickAdapter$i;)V

    .line 18
    new-instance v3, Lcom/join/mgps/adapter/r4;

    invoke-direct {v3, p0, v2, p2}, Lcom/join/mgps/adapter/r4;-><init>(Lcom/join/mgps/adapter/t4;Ljava/util/List;I)V

    invoke-virtual {v4, v3}, Lcom/join/mgps/base/BaseQuickAdapter;->setOnItemChildClickListener(Lcom/join/mgps/base/BaseQuickAdapter$g;)V

    .line 19
    iget-object v0, v1, Lcom/join/mgps/adapter/t4$p;->a:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v3, Lcom/join/mgps/adapter/t4$g;

    invoke-direct {v3, p0, v2, v1}, Lcom/join/mgps/adapter/t4$g;-><init>(Lcom/join/mgps/adapter/t4;Ljava/util/List;Lcom/join/mgps/adapter/t4$p;)V

    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    goto/16 :goto_7

    .line 20
    :pswitch_1
    move-object v0, p1

    check-cast v0, Lcom/join/mgps/adapter/t4$q;

    .line 21
    invoke-virtual {v2}, Lcom/join/mgps/dto/MgpapaMainItemBean;->getObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 22
    invoke-static {v0}, Lcom/join/mgps/adapter/t4$q;->a(Lcom/join/mgps/adapter/t4$q;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    float-to-int v4, v1

    .line 23
    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 24
    invoke-static {v0}, Lcom/join/mgps/adapter/t4$q;->a(Lcom/join/mgps/adapter/t4$q;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 25
    invoke-virtual {v2}, Lcom/join/mgps/dto/MgpapaMainItemBean;->getMoreType2()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    const/high16 v3, 0x3f800000    # 1.0f

    cmpg-float v1, v1, v3

    if-gtz v1, :cond_2

    .line 26
    :try_start_0
    invoke-static {v0}, Lcom/join/mgps/adapter/t4$q;->a(Lcom/join/mgps/adapter/t4$q;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v2}, Lcom/join/mgps/dto/MgpapaMainItemBean;->getMoreType2()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundColor(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_7

    :catch_0
    move-exception v0

    .line 27
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_7

    .line 28
    :cond_2
    invoke-static {v0}, Lcom/join/mgps/adapter/t4$q;->a(Lcom/join/mgps/adapter/t4$q;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setBackgroundColor(I)V

    goto/16 :goto_7

    .line 29
    :pswitch_2
    move-object v0, p1

    check-cast v0, Lcom/join/mgps/adapter/t4$o;

    .line 30
    invoke-virtual {v2}, Lcom/join/mgps/dto/MgpapaMainItemBean;->getObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/dto/PAPAHomeBeanV7$RankingListDTO;

    if-eqz v1, :cond_6

    .line 31
    invoke-virtual {v1}, Lcom/join/mgps/dto/PAPAHomeBeanV7$RankingListDTO;->getTxt()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    invoke-virtual {v1}, Lcom/join/mgps/dto/PAPAHomeBeanV7$RankingListDTO;->getList()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 32
    invoke-static {v0}, Lcom/join/mgps/adapter/t4$o;->a(Lcom/join/mgps/adapter/t4$o;)Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v2

    invoke-virtual {v2, v10}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 33
    invoke-virtual {v1}, Lcom/join/mgps/dto/PAPAHomeBeanV7$RankingListDTO;->getList()Ljava/util/List;

    move-result-object v2

    .line 34
    iget-object v5, p0, Lcom/join/mgps/adapter/t4;->f:Lcom/join/mgps/customview/d0;

    if-nez v5, :cond_5

    .line 35
    invoke-virtual {v1}, Lcom/join/mgps/dto/PAPAHomeBeanV7$RankingListDTO;->getTxt()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 36
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 37
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 38
    :goto_0
    array-length v6, v1

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    if-ge v10, v6, :cond_4

    .line 39
    aget-object v6, v1, v10

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    invoke-interface {v2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 40
    aget-object v6, v1, v10

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 41
    aget-object v6, v1, v10

    invoke-interface {v2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    add-int/lit16 v8, v10, 0x5015

    invoke-static {v9, v6, v7, v8}, Lcom/join/mgps/fragment/m4;->b0(ZLjava/lang/String;Ljava/util/List;I)Landroidx/fragment/app/Fragment;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 42
    :cond_4
    new-instance v1, Lcom/join/mgps/customview/d0;

    iget-object v6, p0, Lcom/join/mgps/adapter/t4;->c:Landroidx/fragment/app/Fragment;

    invoke-virtual {v6}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v6

    invoke-direct {v1, v6, v5, v4}, Lcom/join/mgps/customview/d0;-><init>(Landroidx/fragment/app/FragmentManager;Ljava/util/ArrayList;Ljava/util/List;)V

    iput-object v1, p0, Lcom/join/mgps/adapter/t4;->f:Lcom/join/mgps/customview/d0;

    .line 43
    invoke-virtual {v1, v5, v4}, Lcom/join/mgps/customview/d0;->d(Ljava/util/List;Ljava/util/List;)V

    .line 44
    invoke-static {v0}, Lcom/join/mgps/adapter/t4$o;->b(Lcom/join/mgps/adapter/t4$o;)Lcom/join/mgps/customview/RecyclerviewViewpager;

    move-result-object v1

    iget-object v4, p0, Lcom/join/mgps/adapter/t4;->f:Lcom/join/mgps/customview/d0;

    invoke-virtual {v1, v4}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 45
    invoke-static {v0}, Lcom/join/mgps/adapter/t4$o;->b(Lcom/join/mgps/adapter/t4$o;)Lcom/join/mgps/customview/RecyclerviewViewpager;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroidx/viewpager/widget/ViewPager;->setOffscreenPageLimit(I)V

    .line 46
    invoke-static {v0}, Lcom/join/mgps/adapter/t4$o;->c(Lcom/join/mgps/adapter/t4$o;)Lcom/join/mgps/customview/SlidingTabLayout6;

    move-result-object v1

    invoke-static {v0}, Lcom/join/mgps/adapter/t4$o;->b(Lcom/join/mgps/adapter/t4$o;)Lcom/join/mgps/customview/RecyclerviewViewpager;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/join/mgps/customview/SlidingTabLayout1;->setViewPager(Landroidx/viewpager/widget/ViewPager;)V

    .line 47
    invoke-static {v0}, Lcom/join/mgps/adapter/t4$o;->d(Lcom/join/mgps/adapter/t4$o;)Landroid/widget/LinearLayout;

    move-result-object v1

    new-instance v3, Lcom/join/mgps/adapter/i4;

    invoke-direct {v3, p0}, Lcom/join/mgps/adapter/i4;-><init>(Lcom/join/mgps/adapter/t4;)V

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 48
    invoke-static {v0}, Lcom/join/mgps/adapter/t4$o;->b(Lcom/join/mgps/adapter/t4$o;)Lcom/join/mgps/customview/RecyclerviewViewpager;

    move-result-object v0

    new-instance v1, Lcom/join/mgps/adapter/t4$f;

    invoke-direct {v1, p0, v2}, Lcom/join/mgps/adapter/t4$f;-><init>(Lcom/join/mgps/adapter/t4;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    goto/16 :goto_7

    .line 49
    :cond_5
    invoke-virtual {v5}, Lcom/join/mgps/customview/d0;->c()Ljava/util/ArrayList;

    move-result-object v0

    .line 50
    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    if-ge v10, v1, :cond_11

    .line 51
    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/fragment/m4;

    invoke-interface {v2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-virtual {v1, v3}, Lcom/join/mgps/fragment/m4;->j0(Ljava/util/List;)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 52
    :cond_6
    invoke-static {v0}, Lcom/join/mgps/adapter/t4$o;->a(Lcom/join/mgps/adapter/t4$o;)Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto/16 :goto_7

    .line 53
    :pswitch_3
    move-object v0, p1

    check-cast v0, Lcom/join/mgps/adapter/t4$n;

    .line 54
    invoke-virtual {v2}, Lcom/join/mgps/dto/MgpapaMainItemBean;->getObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/dto/PAPAItemTitle2;

    if-eqz v1, :cond_11

    .line 55
    invoke-static {v0}, Lcom/join/mgps/adapter/t4$n;->a(Lcom/join/mgps/adapter/t4$n;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v1}, Lcom/join/mgps/dto/PAPAItemTitle2;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 56
    invoke-static {v0}, Lcom/join/mgps/adapter/t4$n;->b(Lcom/join/mgps/adapter/t4$n;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v1}, Lcom/join/mgps/dto/PAPAItemTitle2;->getSubTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 57
    invoke-static {v0}, Lcom/join/mgps/adapter/t4$n;->b(Lcom/join/mgps/adapter/t4$n;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v1}, Lcom/join/mgps/dto/PAPAItemTitle2;->getSubTitle()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    goto :goto_2

    :cond_7
    const/4 v6, 0x0

    :goto_2
    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_7

    .line 58
    :pswitch_4
    move-object v0, p1

    check-cast v0, Lcom/join/mgps/adapter/t4$m;

    .line 59
    invoke-virtual {v2}, Lcom/join/mgps/dto/MgpapaMainItemBean;->getObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 60
    new-instance v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v3, p0, Lcom/join/mgps/adapter/t4;->b:Landroid/content/Context;

    invoke-direct {v2, v3, v10, v10}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 61
    invoke-virtual {v2, v8}, Landroidx/recyclerview/widget/LinearLayoutManager;->setInitialPrefetchItemCount(I)V

    .line 62
    new-instance v3, Lcom/join/mgps/adapter/l2;

    invoke-direct {v3, v1}, Lcom/join/mgps/adapter/l2;-><init>(Ljava/util/List;)V

    .line 63
    new-instance v4, Lcom/join/mgps/adapter/s4;

    invoke-direct {v4, p0, v1}, Lcom/join/mgps/adapter/s4;-><init>(Lcom/join/mgps/adapter/t4;Ljava/util/List;)V

    invoke-virtual {v3, v4}, Lcom/join/mgps/base/BaseQuickAdapter;->setOnItemClickListener(Lcom/join/mgps/base/BaseQuickAdapter$i;)V

    .line 64
    invoke-static {v0}, Lcom/join/mgps/adapter/t4$m;->a(Lcom/join/mgps/adapter/t4$m;)Lcom/join/mgps/customview/HorizontalRecyclerView;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 65
    invoke-static {v0}, Lcom/join/mgps/adapter/t4$m;->a(Lcom/join/mgps/adapter/t4$m;)Lcom/join/mgps/customview/HorizontalRecyclerView;

    move-result-object v4

    const/16 v5, 0xa

    invoke-virtual {v4, v5}, Landroidx/recyclerview/widget/RecyclerView;->setItemViewCacheSize(I)V

    .line 66
    invoke-static {v0}, Lcom/join/mgps/adapter/t4$m;->a(Lcom/join/mgps/adapter/t4$m;)Lcom/join/mgps/customview/HorizontalRecyclerView;

    move-result-object v4

    invoke-virtual {v4, v10}, Landroidx/recyclerview/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    .line 67
    invoke-static {v0}, Lcom/join/mgps/adapter/t4$m;->a(Lcom/join/mgps/adapter/t4$m;)Lcom/join/mgps/customview/HorizontalRecyclerView;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 68
    invoke-static {v0}, Lcom/join/mgps/adapter/t4$m;->a(Lcom/join/mgps/adapter/t4$m;)Lcom/join/mgps/customview/HorizontalRecyclerView;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 69
    invoke-static {v0}, Lcom/join/mgps/adapter/t4$m;->a(Lcom/join/mgps/adapter/t4$m;)Lcom/join/mgps/customview/HorizontalRecyclerView;

    move-result-object v2

    new-instance v3, Lcom/join/mgps/adapter/t4$e;

    invoke-direct {v3, p0, v1, v0}, Lcom/join/mgps/adapter/t4$e;-><init>(Lcom/join/mgps/adapter/t4;Ljava/util/List;Lcom/join/mgps/adapter/t4$m;)V

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    goto/16 :goto_7

    .line 70
    :pswitch_5
    move-object v1, p1

    check-cast v1, Lcom/join/mgps/adapter/t4$j;

    .line 71
    invoke-virtual {v2}, Lcom/join/mgps/dto/MgpapaMainItemBean;->getObject()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;

    .line 72
    invoke-virtual {v2}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->getG_info()Lcom/join/mgps/dto/PAPAHomeBeanV7$GInfoDTO;

    move-result-object v6

    if-eqz v6, :cond_a

    .line 73
    iget-object v7, v1, Lcom/join/mgps/adapter/t4$j;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {v6}, Lcom/join/mgps/dto/PAPAHomeBeanV7$GInfoDTO;->getIco()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/join/android/app/common/utils/MyImageLoader;->h(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 74
    iget-object v7, v1, Lcom/join/mgps/adapter/t4$j;->c:Landroid/widget/TextView;

    invoke-virtual {v6}, Lcom/join/mgps/dto/PAPAHomeBeanV7$GInfoDTO;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 75
    invoke-virtual {v6}, Lcom/join/mgps/dto/PAPAHomeBeanV7$GInfoDTO;->getTag_name()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_a

    .line 76
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 77
    invoke-virtual {v6}, Lcom/join/mgps/dto/PAPAHomeBeanV7$GInfoDTO;->getTag_name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    .line 78
    :goto_3
    array-length v8, v4

    if-ge v6, v8, :cond_9

    .line 79
    aget-object v8, v4, v6

    .line 80
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " | "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-lt v6, v9, :cond_8

    goto :goto_4

    :cond_8
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 81
    :cond_9
    :goto_4
    iget-object v4, v1, Lcom/join/mgps/adapter/t4$j;->i:Landroid/widget/TextView;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    sub-int/2addr v6, v3

    invoke-virtual {v7, v10, v6}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    :cond_a
    invoke-virtual {v2}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->getV_url()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v3

    const v4, 0x7f080168

    if-eqz v3, :cond_b

    add-int/lit8 v3, p2, 0x1

    .line 83
    iget-object v5, v1, Lcom/join/mgps/adapter/t4$j;->l:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {v2}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->getBig_pic()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v4, v6}, Lcom/join/android/app/common/utils/MyImageLoader;->d(Lcom/facebook/drawee/view/SimpleDraweeView;ILjava/lang/String;)V

    .line 84
    iget-object v4, v1, Lcom/join/mgps/adapter/t4$j;->l:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 85
    invoke-virtual {v2}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->getV_url()Ljava/lang/String;

    move-result-object v4

    .line 86
    new-instance v5, Lcom/join/android/app/component/video/c$k;

    invoke-virtual {v2}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->getBig_pic()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->getIntentDataBean()Lcom/join/mgps/Util/IntentDateBean;

    move-result-object v7

    invoke-direct {v5, v3, v4, v6, v7}, Lcom/join/android/app/component/video/c$k;-><init>(ILjava/lang/String;Ljava/lang/String;Lcom/join/mgps/Util/IntentDateBean;)V

    .line 87
    invoke-virtual {v2}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->getPosition()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/join/android/app/component/video/c$k;->g(Ljava/lang/String;)V

    .line 88
    iget-object v4, p0, Lcom/join/mgps/adapter/t4;->e:Lcom/join/android/app/component/video/c;

    new-array v6, v10, [Z

    invoke-virtual {v4, v3, v5, v6}, Lcom/join/android/app/component/video/c;->d(ILcom/join/android/app/component/video/c$k;[Z)V

    .line 89
    iget-object v4, v1, Lcom/join/mgps/adapter/t4$j;->m:Landroid/widget/FrameLayout;

    new-instance v5, Lcom/join/mgps/adapter/t4$b;

    invoke-direct {v5, p0, v3}, Lcom/join/mgps/adapter/t4$b;-><init>(Lcom/join/mgps/adapter/t4;I)V

    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_5

    .line 90
    :cond_b
    iget-object v3, v1, Lcom/join/mgps/adapter/t4$j;->l:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 91
    iget-object v3, v1, Lcom/join/mgps/adapter/t4$j;->l:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {v3, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 92
    iget-object v3, v1, Lcom/join/mgps/adapter/t4$j;->l:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {v2}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->getBig_pic()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/join/android/app/common/utils/MyImageLoader;->d(Lcom/facebook/drawee/view/SimpleDraweeView;ILjava/lang/String;)V

    .line 93
    :goto_5
    iget-object v3, v1, Lcom/join/mgps/adapter/t4$j;->m:Landroid/widget/FrameLayout;

    new-instance v4, Lcom/join/mgps/adapter/t4$c;

    invoke-direct {v4, p0, v2}, Lcom/join/mgps/adapter/t4$c;-><init>(Lcom/join/mgps/adapter/t4;Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;)V

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 94
    iget-object v3, v1, Lcom/join/mgps/adapter/t4$j;->l:Lcom/facebook/drawee/view/SimpleDraweeView;

    new-instance v4, Lcom/join/mgps/adapter/t4$d;

    invoke-direct {v4, p0, v2}, Lcom/join/mgps/adapter/t4$d;-><init>(Lcom/join/mgps/adapter/t4;Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    iget-object v3, v1, Lcom/join/mgps/adapter/t4$j;->j:Landroid/widget/FrameLayout;

    new-instance v4, Lcom/join/mgps/adapter/q4;

    invoke-direct {v4, p0, v2, v1, p2}, Lcom/join/mgps/adapter/q4;-><init>(Lcom/join/mgps/adapter/t4;Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;Lcom/join/mgps/adapter/t4$j;I)V

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    iget-object v0, v1, Lcom/join/mgps/adapter/t4$j;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    new-instance v3, Lcom/join/mgps/adapter/n4;

    invoke-direct {v3, p0, v2}, Lcom/join/mgps/adapter/n4;-><init>(Lcom/join/mgps/adapter/t4;Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;)V

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    iget-object v0, v1, Lcom/join/mgps/adapter/t4$j;->k:Landroid/widget/TextView;

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 98
    iget-object v0, v1, Lcom/join/mgps/adapter/t4$j;->n:Landroid/widget/ProgressBar;

    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 99
    iget-object v3, v1, Lcom/join/mgps/adapter/t4$j;->c:Landroid/widget/TextView;

    iget-object v4, v1, Lcom/join/mgps/adapter/t4$j;->i:Landroid/widget/TextView;

    iget-object v5, v1, Lcom/join/mgps/adapter/t4$j;->j:Landroid/widget/FrameLayout;

    iget-object v6, v1, Lcom/join/mgps/adapter/t4$j;->k:Landroid/widget/TextView;

    iget-object v7, v1, Lcom/join/mgps/adapter/t4$j;->d:Landroid/widget/LinearLayout;

    iget-object v8, v1, Lcom/join/mgps/adapter/t4$j;->e:Landroid/widget/TextView;

    iget-object v9, v1, Lcom/join/mgps/adapter/t4$j;->f:Landroid/widget/TextView;

    iget-object v10, v1, Lcom/join/mgps/adapter/t4$j;->g:Landroid/widget/ProgressBar;

    iget-object v11, v1, Lcom/join/mgps/adapter/t4$j;->h:Landroid/widget/ProgressBar;

    move-object v1, p0

    invoke-direct/range {v1 .. v11}, Lcom/join/mgps/adapter/t4;->update(Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/FrameLayout;Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/ProgressBar;Landroid/widget/ProgressBar;)V

    goto/16 :goto_7

    .line 100
    :pswitch_6
    move-object v1, p1

    check-cast v1, Lcom/join/mgps/adapter/t4$l;

    .line 101
    invoke-virtual {v2}, Lcom/join/mgps/dto/MgpapaMainItemBean;->getObject()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    if-eqz v2, :cond_11

    .line 102
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lt v3, v7, :cond_11

    .line 103
    invoke-interface {v2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;

    invoke-direct {p0, v1, v3, v9, p2}, Lcom/join/mgps/adapter/t4;->O(Lcom/join/mgps/adapter/t4$l;Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;ZI)V

    .line 104
    invoke-interface {v2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;

    invoke-direct {p0, v1, v2, v10, p2}, Lcom/join/mgps/adapter/t4;->O(Lcom/join/mgps/adapter/t4$l;Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;ZI)V

    goto/16 :goto_7

    .line 105
    :pswitch_7
    move-object v0, p1

    check-cast v0, Lcom/join/mgps/adapter/t4$k;

    .line 106
    invoke-virtual {v2}, Lcom/join/mgps/dto/MgpapaMainItemBean;->getObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_11

    .line 107
    invoke-static {v0}, Lcom/join/mgps/adapter/t4$k;->a(Lcom/join/mgps/adapter/t4$k;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v2

    if-eqz v2, :cond_c

    invoke-static {v0}, Lcom/join/mgps/adapter/t4$k;->a(Lcom/join/mgps/adapter/t4$k;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v2

    instance-of v2, v2, Lcom/join/mgps/adapter/s;

    if-eqz v2, :cond_c

    .line 108
    invoke-static {v0}, Lcom/join/mgps/adapter/t4$k;->a(Lcom/join/mgps/adapter/t4$k;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/adapter/s;

    .line 109
    invoke-virtual {v0}, Lcom/join/mgps/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_11

    .line 110
    invoke-virtual {v0, v1}, Lcom/join/mgps/base/BaseQuickAdapter;->setNewData(Ljava/util/List;)V

    goto/16 :goto_7

    .line 111
    :cond_c
    invoke-static {v0}, Lcom/join/mgps/adapter/t4$k;->a(Lcom/join/mgps/adapter/t4$k;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v2

    invoke-virtual {v2, v10}, Landroidx/recyclerview/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    .line 112
    invoke-static {v0}, Lcom/join/mgps/adapter/t4$k;->a(Lcom/join/mgps/adapter/t4$k;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v2

    invoke-virtual {v2, v9}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 113
    new-instance v2, Lcom/join/mgps/adapter/s;

    invoke-direct {v2, v1}, Lcom/join/mgps/adapter/s;-><init>(Ljava/util/List;)V

    .line 114
    new-instance v3, Landroidx/recyclerview/widget/GridLayoutManager;

    iget-object v4, p0, Lcom/join/mgps/adapter/t4;->b:Landroid/content/Context;

    invoke-direct {v3, v4, v8}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 115
    invoke-static {v0}, Lcom/join/mgps/adapter/t4$k;->a(Lcom/join/mgps/adapter/t4$k;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 116
    invoke-static {v0}, Lcom/join/mgps/adapter/t4$k;->a(Lcom/join/mgps/adapter/t4$k;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 117
    new-instance v0, Lcom/join/mgps/adapter/t4$a;

    invoke-direct {v0, p0, v1}, Lcom/join/mgps/adapter/t4$a;-><init>(Lcom/join/mgps/adapter/t4;Ljava/util/List;)V

    invoke-virtual {v2, v0}, Lcom/join/mgps/base/BaseQuickAdapter;->setOnItemClickListener(Lcom/join/mgps/base/BaseQuickAdapter$i;)V

    goto/16 :goto_7

    .line 118
    :pswitch_8
    move-object v0, p1

    check-cast v0, Lcom/join/mgps/adapter/t4$s;

    .line 119
    invoke-virtual {v2}, Lcom/join/mgps/dto/MgpapaMainItemBean;->getObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/dto/PAPAHomeBeanV7$TopChannelDTO;

    if-eqz v1, :cond_11

    .line 120
    invoke-virtual {v1}, Lcom/join/mgps/dto/PAPAHomeBeanV7$TopChannelDTO;->getDiscover()Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;

    move-result-object v2

    if-eqz v2, :cond_d

    .line 121
    invoke-virtual {v1}, Lcom/join/mgps/dto/PAPAHomeBeanV7$TopChannelDTO;->getDiscover()Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;

    move-result-object v2

    .line 122
    invoke-static {v0}, Lcom/join/mgps/adapter/t4$s;->a(Lcom/join/mgps/adapter/t4$s;)Lcom/facebook/drawee/view/SimpleDraweeView;

    move-result-object v3

    invoke-virtual {v2}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->getBig_pic()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/join/android/app/common/utils/MyImageLoader;->h(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 123
    invoke-static {v0}, Lcom/join/mgps/adapter/t4$s;->b(Lcom/join/mgps/adapter/t4$s;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v2}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 124
    invoke-static {v0}, Lcom/join/mgps/adapter/t4$s;->d(Lcom/join/mgps/adapter/t4$s;)Landroid/widget/RelativeLayout;

    move-result-object v3

    new-instance v4, Lcom/join/mgps/adapter/o4;

    invoke-direct {v4, p0, v2}, Lcom/join/mgps/adapter/o4;-><init>(Lcom/join/mgps/adapter/t4;Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;)V

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 125
    :cond_d
    invoke-virtual {v1}, Lcom/join/mgps/dto/PAPAHomeBeanV7$TopChannelDTO;->getTheNew()Lcom/join/mgps/dto/PAPAHomeBeanV7$TheNewDTO;

    move-result-object v2

    if-eqz v2, :cond_e

    .line 126
    invoke-virtual {v1}, Lcom/join/mgps/dto/PAPAHomeBeanV7$TopChannelDTO;->getTheNew()Lcom/join/mgps/dto/PAPAHomeBeanV7$TheNewDTO;

    move-result-object v2

    .line 127
    invoke-static {v0}, Lcom/join/mgps/adapter/t4$s;->e(Lcom/join/mgps/adapter/t4$s;)Landroid/widget/TextView;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/join/mgps/dto/PAPAHomeBeanV7$TheNewDTO;->getCount()Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, "\u6b3e"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 128
    invoke-static {v0}, Lcom/join/mgps/adapter/t4$s;->f(Lcom/join/mgps/adapter/t4$s;)Landroid/widget/RelativeLayout;

    move-result-object v3

    new-instance v4, Lcom/join/mgps/adapter/k4;

    invoke-direct {v4, p0}, Lcom/join/mgps/adapter/k4;-><init>(Lcom/join/mgps/adapter/t4;)V

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 129
    invoke-virtual {v2}, Lcom/join/mgps/dto/PAPAHomeBeanV7$TheNewDTO;->getList()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_e

    .line 130
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_e

    .line 131
    invoke-static {v0}, Lcom/join/mgps/adapter/t4$s;->g(Lcom/join/mgps/adapter/t4$s;)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 132
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/join/mgps/dto/PAPAHomeBeanV7$ListDTO;

    .line 133
    iget-object v4, p0, Lcom/join/mgps/adapter/t4;->b:Landroid/content/Context;

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v6, 0x7f0c047d

    invoke-virtual {v4, v6, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    const v6, 0x7f090af8

    .line 134
    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 135
    invoke-virtual {v3}, Lcom/join/mgps/dto/PAPAHomeBeanV7$ListDTO;->getIco()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Lcom/join/android/app/common/utils/MyImageLoader;->h(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 136
    invoke-static {v0}, Lcom/join/mgps/adapter/t4$s;->g(Lcom/join/mgps/adapter/t4$s;)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_6

    .line 137
    :cond_e
    invoke-virtual {v1}, Lcom/join/mgps/dto/PAPAHomeBeanV7$TopChannelDTO;->getBroadcast()Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;

    move-result-object v2

    if-eqz v2, :cond_f

    .line 138
    invoke-virtual {v1}, Lcom/join/mgps/dto/PAPAHomeBeanV7$TopChannelDTO;->getBroadcast()Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;

    move-result-object v2

    .line 139
    invoke-static {v0}, Lcom/join/mgps/adapter/t4$s;->h(Lcom/join/mgps/adapter/t4$s;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v2}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 140
    invoke-static {v0}, Lcom/join/mgps/adapter/t4$s;->i(Lcom/join/mgps/adapter/t4$s;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v2}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->getSub_title()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 141
    invoke-static {v0}, Lcom/join/mgps/adapter/t4$s;->j(Lcom/join/mgps/adapter/t4$s;)Lcom/facebook/drawee/view/SimpleDraweeView;

    move-result-object v3

    invoke-virtual {v2}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->getBig_pic()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/join/android/app/common/utils/MyImageLoader;->h(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 142
    invoke-static {v0}, Lcom/join/mgps/adapter/t4$s;->k(Lcom/join/mgps/adapter/t4$s;)Landroid/widget/RelativeLayout;

    move-result-object v3

    new-instance v4, Lcom/join/mgps/adapter/l4;

    invoke-direct {v4, p0, v2}, Lcom/join/mgps/adapter/l4;-><init>(Lcom/join/mgps/adapter/t4;Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;)V

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 143
    :cond_f
    invoke-virtual {v1}, Lcom/join/mgps/dto/PAPAHomeBeanV7$TopChannelDTO;->getBg_color()Ljava/lang/String;

    move-result-object v1

    .line 144
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v3, "#F7F8F9"

    if-eqz v2, :cond_10

    move-object v1, v3

    .line 145
    :cond_10
    new-instance v2, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 146
    invoke-virtual {v2, v10}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 147
    sget-object v4, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    invoke-virtual {v2, v4}, Landroid/graphics/drawable/GradientDrawable;->setOrientation(Landroid/graphics/drawable/GradientDrawable$Orientation;)V

    new-array v4, v7, [I

    .line 148
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    aput v1, v4, v10

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    aput v1, v4, v9

    invoke-virtual {v2, v4}, Landroid/graphics/drawable/GradientDrawable;->setColors([I)V

    .line 149
    invoke-virtual {v2, v10}, Landroid/graphics/drawable/GradientDrawable;->setGradientType(I)V

    .line 150
    invoke-static {v0}, Lcom/join/mgps/adapter/t4$s;->c(Lcom/join/mgps/adapter/t4$s;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_11
    :goto_7
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1a
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_6
    .end packed-switch
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 2
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const/4 v0, 0x0

    packed-switch p2, :pswitch_data_0

    const/4 p2, 0x0

    goto/16 :goto_0

    .line 1
    :pswitch_0
    iget-object p2, p0, Lcom/join/mgps/adapter/t4;->b:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v1, 0x7f0c047f

    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 2
    new-instance p2, Lcom/join/mgps/adapter/t4$r;

    invoke-direct {p2, p0, p1}, Lcom/join/mgps/adapter/t4$r;-><init>(Lcom/join/mgps/adapter/t4;Landroid/view/View;)V

    goto/16 :goto_0

    .line 3
    :pswitch_1
    iget-object p2, p0, Lcom/join/mgps/adapter/t4;->b:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v1, 0x7f0c0519

    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 4
    new-instance p2, Lcom/join/mgps/adapter/t4$p;

    invoke-direct {p2, p0, p1}, Lcom/join/mgps/adapter/t4$p;-><init>(Lcom/join/mgps/adapter/t4;Landroid/view/View;)V

    goto/16 :goto_0

    .line 5
    :pswitch_2
    iget-object p2, p0, Lcom/join/mgps/adapter/t4;->b:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v1, 0x7f0c051a

    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 6
    new-instance p2, Lcom/join/mgps/adapter/t4$q;

    invoke-direct {p2, p0, p1}, Lcom/join/mgps/adapter/t4$q;-><init>(Lcom/join/mgps/adapter/t4;Landroid/view/View;)V

    goto/16 :goto_0

    .line 7
    :pswitch_3
    iget-object p2, p0, Lcom/join/mgps/adapter/t4;->b:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v1, 0x7f0c02cc

    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 8
    new-instance p2, Lcom/join/mgps/adapter/t4$o;

    invoke-direct {p2, p0, p1}, Lcom/join/mgps/adapter/t4$o;-><init>(Lcom/join/mgps/adapter/t4;Landroid/view/View;)V

    goto :goto_0

    .line 9
    :pswitch_4
    iget-object p2, p0, Lcom/join/mgps/adapter/t4;->b:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v1, 0x7f0c051b

    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 10
    new-instance p2, Lcom/join/mgps/adapter/t4$n;

    invoke-direct {p2, p0, p1}, Lcom/join/mgps/adapter/t4$n;-><init>(Lcom/join/mgps/adapter/t4;Landroid/view/View;)V

    goto :goto_0

    .line 11
    :pswitch_5
    iget-object p2, p0, Lcom/join/mgps/adapter/t4;->b:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v1, 0x7f0c0518

    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 12
    new-instance p2, Lcom/join/mgps/adapter/t4$m;

    invoke-direct {p2, p0, p1}, Lcom/join/mgps/adapter/t4$m;-><init>(Lcom/join/mgps/adapter/t4;Landroid/view/View;)V

    goto :goto_0

    .line 13
    :pswitch_6
    iget-object p2, p0, Lcom/join/mgps/adapter/t4;->b:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v1, 0x7f0c0522

    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 14
    new-instance p2, Lcom/join/mgps/adapter/t4$j;

    invoke-direct {p2, p0, p1}, Lcom/join/mgps/adapter/t4$j;-><init>(Lcom/join/mgps/adapter/t4;Landroid/view/View;)V

    goto :goto_0

    .line 15
    :pswitch_7
    iget-object p2, p0, Lcom/join/mgps/adapter/t4;->b:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v1, 0x7f0c0512

    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 16
    new-instance p2, Lcom/join/mgps/adapter/t4$l;

    invoke-direct {p2, p0, p1}, Lcom/join/mgps/adapter/t4$l;-><init>(Lcom/join/mgps/adapter/t4;Landroid/view/View;)V

    goto :goto_0

    .line 17
    :pswitch_8
    iget-object p2, p0, Lcom/join/mgps/adapter/t4;->b:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v1, 0x7f0c047a

    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 18
    new-instance p2, Lcom/join/mgps/adapter/t4$k;

    invoke-direct {p2, p0, p1}, Lcom/join/mgps/adapter/t4$k;-><init>(Lcom/join/mgps/adapter/t4;Landroid/view/View;)V

    goto :goto_0

    .line 19
    :pswitch_9
    iget-object p2, p0, Lcom/join/mgps/adapter/t4;->b:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v1, 0x7f0c0482

    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 20
    new-instance p2, Lcom/join/mgps/adapter/t4$s;

    invoke-direct {p2, p0, p1}, Lcom/join/mgps/adapter/t4$s;-><init>(Lcom/join/mgps/adapter/t4;Landroid/view/View;)V

    :goto_0
    return-object p2

    :pswitch_data_0
    .packed-switch 0x1a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_7
        :pswitch_1
        :pswitch_6
        :pswitch_7
        :pswitch_7
        :pswitch_0
    .end packed-switch
.end method

.method public t(I)Lcom/join/mgps/dto/MgpapaMainItemBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/t4;->a:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, p1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/join/mgps/adapter/t4;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/MgpapaMainItemBean;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method
