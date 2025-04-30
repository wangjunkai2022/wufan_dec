.class public Lcom/join/mgps/adapter/t;
.super Landroid/widget/BaseAdapter;
.source "FightAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/adapter/t$n;,
        Lcom/join/mgps/adapter/t$o;,
        Lcom/join/mgps/adapter/t$p;
    }
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field private b:Landroid/content/Context;

.field private c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/github/snowdream/android/app/downloader/DownloadTask;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/db/tables/FightMainTable;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/db/tables/WarMatchAndLocalTable;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/db/tables/WarMatchAndLocalTable;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/db/tables/WarMatchAndLocalTable;",
            ">;"
        }
    .end annotation
.end field

.field private h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/db/tables/WarMatchAndLocalTable;",
            ">;"
        }
    .end annotation
.end field

.field private i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/db/tables/WarMatchAndLocalTable;",
            ">;"
        }
    .end annotation
.end field

.field private j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/db/tables/WarMatchAndLocalTable;",
            ">;"
        }
    .end annotation
.end field

.field private k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/db/tables/WarMatchAndLocalTable;",
            ">;"
        }
    .end annotation
.end field

.field private l:Lcom/join/mgps/dto/LoadWarCenterBean;

.field private m:I

.field private n:I

.field private o:I

.field private p:I

.field private q:I

.field private r:I

.field private s:I

.field private t:I


# direct methods
.method public constructor <init>(Landroidx/fragment/app/Fragment;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/adapter/t;->a:Ljava/lang/String;

    .line 3
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/adapter/t;->c:Ljava/util/Map;

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/adapter/t;->d:Ljava/util/List;

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/adapter/t;->e:Ljava/util/List;

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/adapter/t;->f:Ljava/util/List;

    .line 7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/adapter/t;->g:Ljava/util/List;

    .line 8
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/adapter/t;->h:Ljava/util/List;

    .line 9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/adapter/t;->i:Ljava/util/List;

    .line 10
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/adapter/t;->j:Ljava/util/List;

    .line 11
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/adapter/t;->k:Ljava/util/List;

    .line 12
    new-instance v0, Lcom/join/mgps/dto/LoadWarCenterBean;

    invoke-direct {v0}, Lcom/join/mgps/dto/LoadWarCenterBean;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/adapter/t;->l:Lcom/join/mgps/dto/LoadWarCenterBean;

    const/4 v0, 0x0

    .line 13
    iput v0, p0, Lcom/join/mgps/adapter/t;->m:I

    .line 14
    iput v0, p0, Lcom/join/mgps/adapter/t;->n:I

    .line 15
    iput v0, p0, Lcom/join/mgps/adapter/t;->o:I

    .line 16
    iput v0, p0, Lcom/join/mgps/adapter/t;->p:I

    .line 17
    iput v0, p0, Lcom/join/mgps/adapter/t;->q:I

    .line 18
    iput v0, p0, Lcom/join/mgps/adapter/t;->r:I

    .line 19
    iput v0, p0, Lcom/join/mgps/adapter/t;->s:I

    .line 20
    iput v0, p0, Lcom/join/mgps/adapter/t;->t:I

    .line 21
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iput-object p1, p0, Lcom/join/mgps/adapter/t;->b:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lcom/join/mgps/adapter/t;Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/adapter/t;->d(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    return-void
.end method

.method static synthetic b(Lcom/join/mgps/adapter/t;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/adapter/t;->b:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic c(Lcom/join/mgps/adapter/t;Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/adapter/t;->g(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    return-void
.end method

.method private d(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V
    .locals 4

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2
    :goto_0
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPay_game_amount()I

    move-result v1

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/join/mgps/Util/UtilsMy;->n0(ILjava/lang/String;)I

    move-result v1

    const/16 v2, 0x2b

    if-lez v1, :cond_1

    const/16 v0, 0x2b

    :cond_1
    const/4 v1, 0x5

    if-eqz v0, :cond_b

    if-eq v0, v2, :cond_b

    const/4 v2, 0x2

    if-eq v0, v2, :cond_a

    const/4 v3, 0x3

    if-eq v0, v3, :cond_9

    if-eq v0, v1, :cond_8

    const/4 v3, 0x6

    if-eq v0, v3, :cond_9

    const/4 v3, 0x7

    if-eq v0, v3, :cond_b

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_2

    .line 3
    :pswitch_0
    iget-object p2, p0, Lcom/join/mgps/adapter/t;->b:Landroid/content/Context;

    invoke-static {p1, p2}, Lcom/join/mgps/Util/UtilsMy;->j3(Lcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/content/Context;)V

    goto/16 :goto_2

    .line 4
    :pswitch_1
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getDownloadType()I

    move-result v0

    if-eqz v0, :cond_3

    const/4 v3, 0x1

    if-eq v0, v3, :cond_3

    if-eq v0, v2, :cond_2

    goto/16 :goto_2

    .line 5
    :cond_2
    invoke-static {p1}, Lcom/join/mgps/Util/UtilsMy;->z3(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto/16 :goto_2

    .line 6
    :cond_3
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v0

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_1

    .line 7
    :cond_4
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v0

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lg1/f;->B(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v0

    .line 8
    iget-object v2, p0, Lcom/join/mgps/adapter/t;->b:Landroid/content/Context;

    invoke-static {v2, p1}, Lcom/join/mgps/Util/UtilsMy;->T0(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z

    move-result v2

    if-eqz v2, :cond_5

    return-void

    :cond_5
    if-ne p2, v1, :cond_6

    .line 9
    iget-object p2, p0, Lcom/join/mgps/adapter/t;->b:Landroid/content/Context;

    invoke-static {p2, p1}, Lcom/join/mgps/Util/UtilsMy;->R0(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    return-void

    .line 10
    :cond_6
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getId()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setId(I)V

    .line 11
    invoke-static {}, Ln1/q;->o()Ln1/q;

    move-result-object p2

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ln1/q;->n(Ljava/lang/String;)Lcom/join/mgps/db/tables/EMUUpdateTable;

    move-result-object p2

    .line 12
    invoke-virtual {p2}, Lcom/join/mgps/db/tables/EMUUpdateTable;->getVer()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setVer(Ljava/lang/String;)V

    .line 13
    invoke-virtual {p2}, Lcom/join/mgps/db/tables/EMUUpdateTable;->getVer_name()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setVer_name(Ljava/lang/String;)V

    .line 14
    invoke-static {p1}, Lcom/php25/PDownload/d;->b(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 15
    iget-object p2, p0, Lcom/join/mgps/adapter/t;->b:Landroid/content/Context;

    invoke-static {p1, p2}, Lcom/php25/PDownload/d;->c(Lcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/content/Context;)V

    goto/16 :goto_2

    :cond_7
    :goto_1
    return-void

    .line 16
    :cond_8
    iget-object p2, p0, Lcom/join/mgps/adapter/t;->b:Landroid/content/Context;

    invoke-static {p2, p1}, Lcom/join/mgps/Util/UtilsMy;->c3(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto/16 :goto_2

    .line 17
    :cond_9
    iget-object p2, p0, Lcom/join/mgps/adapter/t;->b:Landroid/content/Context;

    invoke-static {p1, p2}, Lcom/php25/PDownload/d;->c(Lcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/content/Context;)V

    goto/16 :goto_2

    .line 18
    :cond_a
    :pswitch_2
    iget-object p2, p0, Lcom/join/mgps/adapter/t;->b:Landroid/content/Context;

    invoke-static {p2}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getShowName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\u6b63\u5728\u4e0b\u8f7d"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    goto :goto_2

    .line 19
    :cond_b
    iget-object v0, p0, Lcom/join/mgps/adapter/t;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getShowName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\u5f00\u59cb\u4e0b\u8f7d"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    .line 20
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPay_game_amount()I

    move-result v0

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/join/mgps/Util/UtilsMy;->n0(ILjava/lang/String;)I

    move-result v0

    if-lez v0, :cond_c

    .line 21
    iget-object p2, p0, Lcom/join/mgps/adapter/t;->b:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/join/mgps/Util/UtilsMy;->m3(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_2

    .line 22
    :cond_c
    iget-object v0, p0, Lcom/join/mgps/adapter/t;->b:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/join/mgps/Util/UtilsMy;->T0(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_2

    :cond_d
    if-ne p2, v1, :cond_e

    .line 23
    iget-object p2, p0, Lcom/join/mgps/adapter/t;->b:Landroid/content/Context;

    invoke-static {p2, p1}, Lcom/join/mgps/Util/UtilsMy;->R0(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto :goto_2

    .line 24
    :cond_e
    iget-object p2, p0, Lcom/join/mgps/adapter/t;->b:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getTp_down_url()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getOther_down_switch()I

    move-result v1

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCdn_down_switch()I

    move-result v2

    invoke-static {p2, p1, v0, v1, v2}, Lcom/join/mgps/Util/UtilsMy;->F0(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;Ljava/util/List;II)V

    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method private e(IILjava/util/List;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Lcom/join/mgps/db/tables/WarMatchAndLocalTable;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/github/snowdream/android/app/downloader/DownloadTask;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    add-int/lit8 p2, p2, 0x1

    sub-int/2addr p1, p2

    mul-int/lit8 p1, p1, 0x3

    .line 2
    :try_start_0
    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;

    .line 3
    iget-object v1, p0, Lcom/join/mgps/adapter/t;->c:Ljava/util/Map;

    invoke-virtual {p2}, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    iget-object v1, p0, Lcom/join/mgps/adapter/t;->c:Ljava/util/Map;

    invoke-virtual {p2}, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    if-eqz p2, :cond_0

    const-string v1, "Left"

    .line 5
    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 p2, p1, 0x1

    .line 6
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v1

    if-ge p2, v1, :cond_1

    .line 7
    invoke-interface {p3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;

    .line 8
    iget-object v1, p0, Lcom/join/mgps/adapter/t;->c:Ljava/util/Map;

    invoke-virtual {p2}, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 9
    iget-object v1, p0, Lcom/join/mgps/adapter/t;->c:Ljava/util/Map;

    invoke-virtual {p2}, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    if-eqz p2, :cond_1

    const-string v1, "Mid"

    .line 10
    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    add-int/lit8 p1, p1, 0x2

    .line 11
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p2

    if-ge p1, p2, :cond_2

    .line 12
    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;

    .line 13
    iget-object p2, p0, Lcom/join/mgps/adapter/t;->c:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p2, p3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 14
    iget-object p2, p0, Lcom/join/mgps/adapter/t;->c:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    if-eqz p1, :cond_2

    const-string p2, "Right"

    .line 15
    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 16
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_0
    return-object v0
.end method

.method private g(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V
    .locals 3

    if-eqz p1, :cond_b

    .line 1
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v0

    .line 2
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPay_game_amount()I

    move-result v1

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/join/mgps/Util/UtilsMy;->n0(ILjava/lang/String;)I

    move-result v1

    if-lez v1, :cond_0

    const/16 v0, 0x2b

    :cond_0
    const/4 v1, 0x5

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_1

    .line 3
    :pswitch_1
    iget-object p2, p0, Lcom/join/mgps/adapter/t;->b:Landroid/content/Context;

    invoke-static {p1, p2}, Lcom/join/mgps/Util/UtilsMy;->j3(Lcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/content/Context;)V

    goto/16 :goto_1

    .line 4
    :pswitch_2
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getDownloadType()I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    const/4 p2, 0x2

    if-eq v0, p2, :cond_1

    goto/16 :goto_1

    .line 5
    :cond_1
    invoke-static {p1}, Lcom/join/mgps/Util/UtilsMy;->z3(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto/16 :goto_1

    .line 6
    :cond_2
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v0

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    .line 7
    :cond_3
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v0

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lg1/f;->B(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v0

    .line 8
    iget-object v2, p0, Lcom/join/mgps/adapter/t;->b:Landroid/content/Context;

    invoke-static {v2, p1}, Lcom/join/mgps/Util/UtilsMy;->T0(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z

    move-result v2

    if-eqz v2, :cond_4

    return-void

    :cond_4
    if-ne p2, v1, :cond_5

    .line 9
    iget-object p2, p0, Lcom/join/mgps/adapter/t;->b:Landroid/content/Context;

    invoke-static {p2, p1}, Lcom/join/mgps/Util/UtilsMy;->R0(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    return-void

    .line 10
    :cond_5
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getId()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setId(I)V

    .line 11
    invoke-static {}, Ln1/q;->o()Ln1/q;

    move-result-object p2

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ln1/q;->n(Ljava/lang/String;)Lcom/join/mgps/db/tables/EMUUpdateTable;

    move-result-object p2

    .line 12
    invoke-virtual {p2}, Lcom/join/mgps/db/tables/EMUUpdateTable;->getVer()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setVer(Ljava/lang/String;)V

    .line 13
    invoke-virtual {p2}, Lcom/join/mgps/db/tables/EMUUpdateTable;->getVer_name()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setVer_name(Ljava/lang/String;)V

    .line 14
    invoke-static {p1}, Lcom/php25/PDownload/d;->b(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 15
    iget-object p2, p0, Lcom/join/mgps/adapter/t;->b:Landroid/content/Context;

    invoke-static {p1, p2}, Lcom/php25/PDownload/d;->c(Lcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/content/Context;)V

    goto/16 :goto_1

    :cond_6
    :goto_0
    return-void

    .line 16
    :pswitch_3
    iget-object p2, p0, Lcom/join/mgps/adapter/t;->b:Landroid/content/Context;

    invoke-static {p1, p2}, Lcom/php25/PDownload/d;->c(Lcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/content/Context;)V

    goto/16 :goto_1

    .line 17
    :pswitch_4
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getGameZipPath()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_b

    .line 18
    new-instance p2, Ljava/io/File;

    .line 19
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getGameZipPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 20
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result p2

    if-eqz p2, :cond_7

    .line 21
    iget-object p2, p0, Lcom/join/mgps/adapter/t;->b:Landroid/content/Context;

    invoke-static {p2, p1}, Lcom/join/mgps/Util/UtilsMy;->c3(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto :goto_1

    .line 22
    :cond_7
    invoke-static {p1}, Lcom/php25/PDownload/d;->a(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 23
    iget-object p2, p0, Lcom/join/mgps/adapter/t;->b:Landroid/content/Context;

    invoke-static {p1, p2}, Lcom/php25/PDownload/d;->c(Lcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/content/Context;)V

    const/4 p2, 0x3

    .line 24
    invoke-virtual {p1, p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStatus(I)V

    goto :goto_1

    .line 25
    :pswitch_5
    invoke-static {p1}, Lcom/php25/PDownload/d;->h(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto :goto_1

    .line 26
    :pswitch_6
    iget-object p2, p0, Lcom/join/mgps/adapter/t;->b:Landroid/content/Context;

    invoke-static {p1, p2}, Lcom/php25/PDownload/d;->c(Lcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/content/Context;)V

    goto :goto_1

    .line 27
    :pswitch_7
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPay_game_amount()I

    move-result v0

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/join/mgps/Util/UtilsMy;->n0(ILjava/lang/String;)I

    move-result v0

    if-lez v0, :cond_8

    .line 28
    iget-object p2, p0, Lcom/join/mgps/adapter/t;->b:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/join/mgps/Util/UtilsMy;->m3(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    .line 29
    :cond_8
    iget-object v0, p0, Lcom/join/mgps/adapter/t;->b:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/join/mgps/Util/UtilsMy;->T0(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_1

    :cond_9
    if-ne p2, v1, :cond_a

    .line 30
    iget-object p2, p0, Lcom/join/mgps/adapter/t;->b:Landroid/content/Context;

    invoke-static {p2, p1}, Lcom/join/mgps/Util/UtilsMy;->R0(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto :goto_1

    .line 31
    :cond_a
    iget-object p2, p0, Lcom/join/mgps/adapter/t;->b:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getTp_down_url()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getOther_down_switch()I

    move-result v1

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCdn_down_switch()I

    move-result v2

    invoke-static {p2, p1, v0, v1, v2}, Lcom/join/mgps/Util/UtilsMy;->F0(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;Ljava/util/List;II)V

    :cond_b
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_4
        :pswitch_6
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_5
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public f()Lcom/join/mgps/dto/LoadWarCenterBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/t;->l:Lcom/join/mgps/dto/LoadWarCenterBean;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/adapter/t;->t:I

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 4

    .line 1
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/t;->getItemViewType(I)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_5

    .line 2
    iget v0, p0, Lcom/join/mgps/adapter/t;->n:I

    if-lez v0, :cond_0

    iget-object v3, p0, Lcom/join/mgps/adapter/t;->f:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/2addr v3, v2

    div-int/lit8 v3, v3, 0x3

    add-int/2addr v0, v3

    if-gt p1, v0, :cond_0

    .line 3
    iget v0, p0, Lcom/join/mgps/adapter/t;->n:I

    iget-object v1, p0, Lcom/join/mgps/adapter/t;->f:Ljava/util/List;

    invoke-direct {p0, p1, v0, v1}, Lcom/join/mgps/adapter/t;->e(IILjava/util/List;)Ljava/util/Map;

    move-result-object p1

    return-object p1

    .line 4
    :cond_0
    iget v0, p0, Lcom/join/mgps/adapter/t;->o:I

    if-lez v0, :cond_1

    iget-object v3, p0, Lcom/join/mgps/adapter/t;->g:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/2addr v3, v2

    div-int/lit8 v3, v3, 0x3

    add-int/2addr v0, v3

    if-gt p1, v0, :cond_1

    .line 5
    iget v0, p0, Lcom/join/mgps/adapter/t;->o:I

    iget-object v1, p0, Lcom/join/mgps/adapter/t;->g:Ljava/util/List;

    invoke-direct {p0, p1, v0, v1}, Lcom/join/mgps/adapter/t;->e(IILjava/util/List;)Ljava/util/Map;

    move-result-object p1

    return-object p1

    .line 6
    :cond_1
    iget v0, p0, Lcom/join/mgps/adapter/t;->p:I

    if-lez v0, :cond_2

    iget-object v3, p0, Lcom/join/mgps/adapter/t;->h:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/2addr v3, v2

    div-int/lit8 v3, v3, 0x3

    add-int/2addr v0, v3

    if-gt p1, v0, :cond_2

    .line 7
    iget v0, p0, Lcom/join/mgps/adapter/t;->p:I

    iget-object v1, p0, Lcom/join/mgps/adapter/t;->h:Ljava/util/List;

    invoke-direct {p0, p1, v0, v1}, Lcom/join/mgps/adapter/t;->e(IILjava/util/List;)Ljava/util/Map;

    move-result-object p1

    return-object p1

    .line 8
    :cond_2
    iget v0, p0, Lcom/join/mgps/adapter/t;->q:I

    if-lez v0, :cond_3

    iget-object v3, p0, Lcom/join/mgps/adapter/t;->i:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/2addr v3, v2

    div-int/lit8 v3, v3, 0x3

    add-int/2addr v0, v3

    if-gt p1, v0, :cond_3

    .line 9
    iget v0, p0, Lcom/join/mgps/adapter/t;->q:I

    iget-object v1, p0, Lcom/join/mgps/adapter/t;->i:Ljava/util/List;

    invoke-direct {p0, p1, v0, v1}, Lcom/join/mgps/adapter/t;->e(IILjava/util/List;)Ljava/util/Map;

    move-result-object p1

    return-object p1

    .line 10
    :cond_3
    iget v0, p0, Lcom/join/mgps/adapter/t;->r:I

    if-lez v0, :cond_4

    iget-object v3, p0, Lcom/join/mgps/adapter/t;->j:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/2addr v3, v2

    div-int/lit8 v3, v3, 0x3

    add-int/2addr v0, v3

    if-gt p1, v0, :cond_4

    .line 11
    iget v0, p0, Lcom/join/mgps/adapter/t;->r:I

    iget-object v1, p0, Lcom/join/mgps/adapter/t;->j:Ljava/util/List;

    invoke-direct {p0, p1, v0, v1}, Lcom/join/mgps/adapter/t;->e(IILjava/util/List;)Ljava/util/Map;

    move-result-object p1

    return-object p1

    .line 12
    :cond_4
    iget v0, p0, Lcom/join/mgps/adapter/t;->s:I

    if-lez v0, :cond_5

    iget-object v3, p0, Lcom/join/mgps/adapter/t;->k:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/2addr v3, v2

    div-int/lit8 v3, v3, 0x3

    add-int/2addr v0, v3

    if-gt p1, v0, :cond_5

    .line 13
    iget v0, p0, Lcom/join/mgps/adapter/t;->s:I

    iget-object v1, p0, Lcom/join/mgps/adapter/t;->k:Ljava/util/List;

    invoke-direct {p0, p1, v0, v1}, Lcom/join/mgps/adapter/t;->e(IILjava/util/List;)Ljava/util/Map;

    move-result-object p1

    return-object p1

    :cond_5
    return-object v1
.end method

.method public getItemId(I)J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/adapter/t;->n:I

    if-ge p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    if-eq p1, v0, :cond_2

    .line 2
    iget v0, p0, Lcom/join/mgps/adapter/t;->o:I

    if-eq p1, v0, :cond_2

    iget v0, p0, Lcom/join/mgps/adapter/t;->p:I

    if-eq p1, v0, :cond_2

    iget v0, p0, Lcom/join/mgps/adapter/t;->q:I

    if-eq p1, v0, :cond_2

    iget v0, p0, Lcom/join/mgps/adapter/t;->r:I

    if-eq p1, v0, :cond_2

    iget v0, p0, Lcom/join/mgps/adapter/t;->s:I

    if-ne p1, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x2

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9

    .line 1
    :try_start_0
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ";total="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/join/mgps/adapter/t;->getCount()I

    move-result v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/t;->getItemViewType(I)I

    move-result p3

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-nez p2, :cond_3

    const v3, 0x7f09049e

    const v4, 0x7f09049b

    const v5, 0x7f090499

    if-eqz p3, :cond_2

    if-eq p3, v0, :cond_1

    if-eq p3, v2, :cond_0

    move-object v3, v1

    move-object v6, v3

    goto/16 :goto_0

    .line 3
    :cond_0
    new-instance v6, Lcom/join/mgps/adapter/t$n;

    invoke-direct {v6, p0}, Lcom/join/mgps/adapter/t$n;-><init>(Lcom/join/mgps/adapter/t;)V

    .line 4
    iget-object v7, p0, Lcom/join/mgps/adapter/t;->b:Landroid/content/Context;

    invoke-static {v7}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v7

    const v8, 0x7f0c01de

    invoke-virtual {v7, v8, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    const v7, 0x7f09049c

    .line 5
    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    iput-object v7, v6, Lcom/join/mgps/adapter/t$n;->a:Landroid/widget/LinearLayout;

    const v7, 0x7f09049d

    .line 6
    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    iput-object v7, v6, Lcom/join/mgps/adapter/t$n;->b:Landroid/widget/LinearLayout;

    .line 7
    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, v6, Lcom/join/mgps/adapter/t$n;->c:Landroid/widget/LinearLayout;

    .line 8
    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object v3, v6, Lcom/join/mgps/adapter/t$n;->d:Lcom/facebook/drawee/view/SimpleDraweeView;

    const v3, 0x7f09049a

    .line 9
    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object v3, v6, Lcom/join/mgps/adapter/t$n;->e:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 10
    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object v3, v6, Lcom/join/mgps/adapter/t$n;->f:Lcom/facebook/drawee/view/SimpleDraweeView;

    const v3, 0x7f090eea

    .line 11
    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v6, Lcom/join/mgps/adapter/t$n;->g:Landroid/widget/ImageView;

    const v3, 0x7f090eeb

    .line 12
    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v6, Lcom/join/mgps/adapter/t$n;->h:Landroid/widget/ImageView;

    const v3, 0x7f090eec

    .line 13
    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v6, Lcom/join/mgps/adapter/t$n;->i:Landroid/widget/ImageView;

    const v3, 0x7f090f1c

    .line 14
    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v6, Lcom/join/mgps/adapter/t$n;->j:Landroid/widget/ImageView;

    const v3, 0x7f090f1d

    .line 15
    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v6, Lcom/join/mgps/adapter/t$n;->k:Landroid/widget/ImageView;

    const v3, 0x7f090f1e

    .line 16
    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v6, Lcom/join/mgps/adapter/t$n;->l:Landroid/widget/ImageView;

    const v3, 0x7f0903c6

    .line 17
    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, v6, Lcom/join/mgps/adapter/t$n;->m:Landroid/widget/LinearLayout;

    const v3, 0x7f0903c7

    .line 18
    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, v6, Lcom/join/mgps/adapter/t$n;->n:Landroid/widget/LinearLayout;

    const v3, 0x7f0903c8

    .line 19
    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, v6, Lcom/join/mgps/adapter/t$n;->o:Landroid/widget/LinearLayout;

    const v3, 0x7f090ee7

    .line 20
    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v6, Lcom/join/mgps/adapter/t$n;->p:Landroid/widget/TextView;

    const v3, 0x7f090ee8

    .line 21
    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v6, Lcom/join/mgps/adapter/t$n;->q:Landroid/widget/TextView;

    const v3, 0x7f090ee9

    .line 22
    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v6, Lcom/join/mgps/adapter/t$n;->r:Landroid/widget/TextView;

    const v3, 0x7f0900ee

    .line 23
    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v6, Lcom/join/mgps/adapter/t$n;->s:Landroid/widget/TextView;

    const v3, 0x7f0900ef

    .line 24
    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v6, Lcom/join/mgps/adapter/t$n;->t:Landroid/widget/TextView;

    const v3, 0x7f0900f0

    .line 25
    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v6, Lcom/join/mgps/adapter/t$n;->u:Landroid/widget/TextView;

    const v3, 0x7f090ea2

    .line 26
    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v6, Lcom/join/mgps/adapter/t$n;->v:Landroid/widget/TextView;

    const v3, 0x7f090ea3

    .line 27
    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v6, Lcom/join/mgps/adapter/t$n;->w:Landroid/widget/TextView;

    const v3, 0x7f090ea4

    .line 28
    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v6, Lcom/join/mgps/adapter/t$n;->x:Landroid/widget/TextView;

    const v3, 0x7f0904a2

    .line 29
    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v6, Lcom/join/mgps/adapter/t$n;->E:Landroid/widget/TextView;

    const v3, 0x7f0904a3

    .line 30
    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v6, Lcom/join/mgps/adapter/t$n;->F:Landroid/widget/TextView;

    const v3, 0x7f0904a1

    .line 31
    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v6, Lcom/join/mgps/adapter/t$n;->G:Landroid/widget/TextView;

    const v3, 0x7f090c63

    .line 32
    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ProgressBar;

    iput-object v3, v6, Lcom/join/mgps/adapter/t$n;->y:Landroid/widget/ProgressBar;

    const v3, 0x7f090c64

    .line 33
    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ProgressBar;

    iput-object v3, v6, Lcom/join/mgps/adapter/t$n;->z:Landroid/widget/ProgressBar;

    const v3, 0x7f090c65

    .line 34
    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ProgressBar;

    iput-object v3, v6, Lcom/join/mgps/adapter/t$n;->A:Landroid/widget/ProgressBar;

    const v3, 0x7f090c5c

    .line 35
    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ProgressBar;

    iput-object v3, v6, Lcom/join/mgps/adapter/t$n;->B:Landroid/widget/ProgressBar;

    const v3, 0x7f090c5d

    .line 36
    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ProgressBar;

    iput-object v3, v6, Lcom/join/mgps/adapter/t$n;->C:Landroid/widget/ProgressBar;

    const v3, 0x7f090c5e

    .line 37
    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ProgressBar;

    iput-object v3, v6, Lcom/join/mgps/adapter/t$n;->D:Landroid/widget/ProgressBar;

    .line 38
    invoke-virtual {p2, v6}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v3, v1

    goto/16 :goto_0

    .line 39
    :cond_1
    new-instance v3, Lcom/join/mgps/adapter/t$p;

    invoke-direct {v3, p0}, Lcom/join/mgps/adapter/t$p;-><init>(Lcom/join/mgps/adapter/t;)V

    .line 40
    iget-object v4, p0, Lcom/join/mgps/adapter/t;->b:Landroid/content/Context;

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f0c01e1

    invoke-virtual {v4, v5, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    const v4, 0x7f0904a9

    .line 41
    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v3, Lcom/join/mgps/adapter/t$p;->b:Landroid/widget/TextView;

    const v4, 0x7f0904a7

    .line 42
    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v3, Lcom/join/mgps/adapter/t$p;->c:Landroid/widget/TextView;

    const v4, 0x7f0908d4

    .line 43
    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, v3, Lcom/join/mgps/adapter/t$p;->a:Landroid/widget/LinearLayout;

    .line 44
    invoke-virtual {p2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v6, v1

    move-object v1, v3

    move-object v3, v6

    goto :goto_0

    .line 45
    :cond_2
    new-instance v6, Lcom/join/mgps/adapter/t$o;

    invoke-direct {v6, p0}, Lcom/join/mgps/adapter/t$o;-><init>(Lcom/join/mgps/adapter/t;)V

    .line 46
    iget-object v7, p0, Lcom/join/mgps/adapter/t;->b:Landroid/content/Context;

    invoke-static {v7}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v7

    const v8, 0x7f0c01df

    invoke-virtual {v7, v8, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 47
    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object v5, v6, Lcom/join/mgps/adapter/t$o;->a:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 48
    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object v4, v6, Lcom/join/mgps/adapter/t$o;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    const v4, 0x7f090496

    .line 49
    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, v6, Lcom/join/mgps/adapter/t$o;->c:Landroid/widget/ImageView;

    const v4, 0x7f090497

    .line 50
    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, v6, Lcom/join/mgps/adapter/t$o;->d:Landroid/widget/ImageView;

    .line 51
    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    iput-object v3, v6, Lcom/join/mgps/adapter/t$o;->e:Landroid/widget/RelativeLayout;

    .line 52
    invoke-virtual {p2, v6}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v3, v6

    move-object v6, v1

    :goto_0
    move-object v4, v3

    move-object v3, v6

    goto :goto_1

    :cond_3
    if-eqz p3, :cond_6

    if-eq p3, v0, :cond_5

    if-eq p3, v2, :cond_4

    move-object v3, v1

    move-object v4, v3

    goto :goto_1

    .line 53
    :cond_4
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/join/mgps/adapter/t$n;

    move-object v4, v1

    goto :goto_1

    .line 54
    :cond_5
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/join/mgps/adapter/t$p;

    move-object v4, v1

    move-object v1, v3

    move-object v3, v4

    goto :goto_1

    .line 55
    :cond_6
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/join/mgps/adapter/t$o;

    move-object v4, v3

    move-object v3, v1

    :goto_1
    const/16 v5, 0x8

    const/4 v6, 0x0

    if-eqz p3, :cond_15

    if-eq p3, v0, :cond_d

    if-eq p3, v2, :cond_7

    goto/16 :goto_7

    .line 56
    :cond_7
    iget p3, p0, Lcom/join/mgps/adapter/t;->n:I

    if-lez p3, :cond_8

    iget-object v0, p0, Lcom/join/mgps/adapter/t;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/2addr v0, v2

    div-int/lit8 v0, v0, 0x3

    add-int/2addr p3, v0

    if-gt p1, p3, :cond_8

    .line 57
    iget p3, p0, Lcom/join/mgps/adapter/t;->n:I

    iget-object v0, p0, Lcom/join/mgps/adapter/t;->f:Ljava/util/List;

    invoke-virtual {p0, p1, p3, v0, v3}, Lcom/join/mgps/adapter/t;->i(IILjava/util/List;Lcom/join/mgps/adapter/t$n;)V

    .line 58
    :cond_8
    iget p3, p0, Lcom/join/mgps/adapter/t;->o:I

    if-lez p3, :cond_9

    iget-object v0, p0, Lcom/join/mgps/adapter/t;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/2addr v0, v2

    div-int/lit8 v0, v0, 0x3

    add-int/2addr p3, v0

    if-gt p1, p3, :cond_9

    .line 59
    iget p3, p0, Lcom/join/mgps/adapter/t;->o:I

    iget-object v0, p0, Lcom/join/mgps/adapter/t;->g:Ljava/util/List;

    invoke-virtual {p0, p1, p3, v0, v3}, Lcom/join/mgps/adapter/t;->i(IILjava/util/List;Lcom/join/mgps/adapter/t$n;)V

    .line 60
    :cond_9
    iget p3, p0, Lcom/join/mgps/adapter/t;->p:I

    if-lez p3, :cond_a

    iget-object v0, p0, Lcom/join/mgps/adapter/t;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/2addr v0, v2

    div-int/lit8 v0, v0, 0x3

    add-int/2addr p3, v0

    if-gt p1, p3, :cond_a

    .line 61
    iget p3, p0, Lcom/join/mgps/adapter/t;->p:I

    iget-object v0, p0, Lcom/join/mgps/adapter/t;->h:Ljava/util/List;

    invoke-virtual {p0, p1, p3, v0, v3}, Lcom/join/mgps/adapter/t;->i(IILjava/util/List;Lcom/join/mgps/adapter/t$n;)V

    .line 62
    :cond_a
    iget p3, p0, Lcom/join/mgps/adapter/t;->q:I

    if-lez p3, :cond_b

    iget-object v0, p0, Lcom/join/mgps/adapter/t;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/2addr v0, v2

    div-int/lit8 v0, v0, 0x3

    add-int/2addr p3, v0

    if-gt p1, p3, :cond_b

    .line 63
    iget p3, p0, Lcom/join/mgps/adapter/t;->q:I

    iget-object v0, p0, Lcom/join/mgps/adapter/t;->i:Ljava/util/List;

    invoke-virtual {p0, p1, p3, v0, v3}, Lcom/join/mgps/adapter/t;->i(IILjava/util/List;Lcom/join/mgps/adapter/t$n;)V

    .line 64
    :cond_b
    iget p3, p0, Lcom/join/mgps/adapter/t;->r:I

    if-lez p3, :cond_c

    iget-object v0, p0, Lcom/join/mgps/adapter/t;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/2addr v0, v2

    div-int/lit8 v0, v0, 0x3

    add-int/2addr p3, v0

    if-gt p1, p3, :cond_c

    .line 65
    iget p3, p0, Lcom/join/mgps/adapter/t;->r:I

    iget-object v0, p0, Lcom/join/mgps/adapter/t;->j:Ljava/util/List;

    invoke-virtual {p0, p1, p3, v0, v3}, Lcom/join/mgps/adapter/t;->i(IILjava/util/List;Lcom/join/mgps/adapter/t$n;)V

    .line 66
    :cond_c
    iget p3, p0, Lcom/join/mgps/adapter/t;->s:I

    if-lez p3, :cond_1e

    iget-object v0, p0, Lcom/join/mgps/adapter/t;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/2addr v0, v2

    div-int/lit8 v0, v0, 0x3

    add-int/2addr p3, v0

    if-gt p1, p3, :cond_1e

    .line 67
    iget p3, p0, Lcom/join/mgps/adapter/t;->s:I

    iget-object v0, p0, Lcom/join/mgps/adapter/t;->k:Ljava/util/List;

    invoke-virtual {p0, p1, p3, v0, v3}, Lcom/join/mgps/adapter/t;->i(IILjava/util/List;Lcom/join/mgps/adapter/t$n;)V

    goto/16 :goto_7

    .line 68
    :cond_d
    iget p3, p0, Lcom/join/mgps/adapter/t;->n:I

    if-ne p3, p1, :cond_e

    .line 69
    iget-object p1, v1, Lcom/join/mgps/adapter/t$p;->a:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 70
    iget-object p1, p0, Lcom/join/mgps/adapter/t;->f:Ljava/util/List;

    if-eqz p1, :cond_1e

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_1e

    .line 71
    iget-object p1, v1, Lcom/join/mgps/adapter/t$p;->b:Landroid/widget/TextView;

    iget-object p3, p0, Lcom/join/mgps/adapter/t;->f:Ljava/util/List;

    invoke-interface {p3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;

    invoke-virtual {p3}, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;->getMain_title()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    iget-object p1, v1, Lcom/join/mgps/adapter/t$p;->c:Landroid/widget/TextView;

    iget-object p3, p0, Lcom/join/mgps/adapter/t;->f:Ljava/util/List;

    invoke-interface {p3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;

    invoke-virtual {p3}, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;->getMain_sub_title()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_7

    .line 73
    :cond_e
    iget v0, p0, Lcom/join/mgps/adapter/t;->o:I

    if-ne v0, p1, :cond_f

    .line 74
    iget-object p1, v1, Lcom/join/mgps/adapter/t$p;->a:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 75
    iget-object p1, p0, Lcom/join/mgps/adapter/t;->g:Ljava/util/List;

    if-eqz p1, :cond_1e

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_1e

    .line 76
    iget-object p1, v1, Lcom/join/mgps/adapter/t$p;->b:Landroid/widget/TextView;

    iget-object p3, p0, Lcom/join/mgps/adapter/t;->g:Ljava/util/List;

    invoke-interface {p3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;

    invoke-virtual {p3}, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;->getMain_title()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 77
    iget-object p1, v1, Lcom/join/mgps/adapter/t$p;->c:Landroid/widget/TextView;

    iget-object p3, p0, Lcom/join/mgps/adapter/t;->g:Ljava/util/List;

    invoke-interface {p3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;

    invoke-virtual {p3}, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;->getMain_sub_title()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_7

    .line 78
    :cond_f
    iget v2, p0, Lcom/join/mgps/adapter/t;->p:I

    if-ne v2, p1, :cond_10

    .line 79
    iget-object p1, v1, Lcom/join/mgps/adapter/t$p;->a:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 80
    iget-object p1, p0, Lcom/join/mgps/adapter/t;->h:Ljava/util/List;

    if-eqz p1, :cond_1e

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_1e

    .line 81
    iget-object p1, v1, Lcom/join/mgps/adapter/t$p;->b:Landroid/widget/TextView;

    iget-object p3, p0, Lcom/join/mgps/adapter/t;->h:Ljava/util/List;

    invoke-interface {p3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;

    invoke-virtual {p3}, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;->getMain_title()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    iget-object p1, v1, Lcom/join/mgps/adapter/t$p;->c:Landroid/widget/TextView;

    iget-object p3, p0, Lcom/join/mgps/adapter/t;->h:Ljava/util/List;

    invoke-interface {p3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;

    invoke-virtual {p3}, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;->getMain_sub_title()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_7

    .line 83
    :cond_10
    iget v3, p0, Lcom/join/mgps/adapter/t;->q:I

    if-ne v3, p1, :cond_11

    .line 84
    iget-object p1, v1, Lcom/join/mgps/adapter/t$p;->a:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 85
    iget-object p1, p0, Lcom/join/mgps/adapter/t;->i:Ljava/util/List;

    if-eqz p1, :cond_1e

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_1e

    .line 86
    iget-object p1, v1, Lcom/join/mgps/adapter/t$p;->b:Landroid/widget/TextView;

    iget-object p3, p0, Lcom/join/mgps/adapter/t;->i:Ljava/util/List;

    invoke-interface {p3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;

    invoke-virtual {p3}, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;->getMain_title()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    iget-object p1, v1, Lcom/join/mgps/adapter/t$p;->c:Landroid/widget/TextView;

    iget-object p3, p0, Lcom/join/mgps/adapter/t;->i:Ljava/util/List;

    invoke-interface {p3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;

    invoke-virtual {p3}, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;->getMain_sub_title()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_7

    .line 88
    :cond_11
    iget v4, p0, Lcom/join/mgps/adapter/t;->r:I

    if-ne v4, p1, :cond_12

    .line 89
    iget-object p1, v1, Lcom/join/mgps/adapter/t$p;->a:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 90
    iget-object p1, p0, Lcom/join/mgps/adapter/t;->j:Ljava/util/List;

    if-eqz p1, :cond_1e

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_1e

    .line 91
    iget-object p1, v1, Lcom/join/mgps/adapter/t$p;->b:Landroid/widget/TextView;

    iget-object p3, p0, Lcom/join/mgps/adapter/t;->j:Ljava/util/List;

    invoke-interface {p3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;

    invoke-virtual {p3}, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;->getMain_title()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    iget-object p1, v1, Lcom/join/mgps/adapter/t$p;->c:Landroid/widget/TextView;

    iget-object p3, p0, Lcom/join/mgps/adapter/t;->j:Ljava/util/List;

    invoke-interface {p3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;

    invoke-virtual {p3}, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;->getMain_sub_title()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_7

    .line 93
    :cond_12
    iget v7, p0, Lcom/join/mgps/adapter/t;->s:I

    if-ne v7, p1, :cond_13

    .line 94
    iget-object p1, v1, Lcom/join/mgps/adapter/t$p;->a:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 95
    iget-object p1, p0, Lcom/join/mgps/adapter/t;->k:Ljava/util/List;

    if-eqz p1, :cond_1e

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_1e

    .line 96
    iget-object p1, v1, Lcom/join/mgps/adapter/t$p;->b:Landroid/widget/TextView;

    iget-object p3, p0, Lcom/join/mgps/adapter/t;->k:Ljava/util/List;

    invoke-interface {p3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;

    invoke-virtual {p3}, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;->getMain_title()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    iget-object p1, v1, Lcom/join/mgps/adapter/t$p;->c:Landroid/widget/TextView;

    iget-object p3, p0, Lcom/join/mgps/adapter/t;->k:Ljava/util/List;

    invoke-interface {p3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;

    invoke-virtual {p3}, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;->getMain_sub_title()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_7

    :cond_13
    if-eqz p3, :cond_14

    if-eqz v0, :cond_14

    if-eqz v2, :cond_14

    if-eqz v3, :cond_14

    if-eqz v4, :cond_14

    if-nez v7, :cond_1e

    .line 98
    :cond_14
    iget-object p1, v1, Lcom/join/mgps/adapter/t$p;->a:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_7

    .line 99
    :cond_15
    iget-object p3, p0, Lcom/join/mgps/adapter/t;->d:Ljava/util/List;

    if-eqz p3, :cond_1e

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    if-lez p3, :cond_1e

    .line 100
    iget-object p3, p0, Lcom/join/mgps/adapter/t;->d:Ljava/util/List;

    mul-int/lit8 p1, p1, 0x2

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/join/mgps/db/tables/FightMainTable;

    .line 101
    invoke-virtual {p3}, Lcom/join/mgps/db/tables/FightMainTable;->getPic_remote()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v1

    const v2, 0x7f0807b1

    if-eqz v1, :cond_16

    .line 102
    iget-object v1, v4, Lcom/join/mgps/adapter/t$o;->a:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {p3}, Lcom/join/mgps/db/tables/FightMainTable;->getPic_remote()Ljava/lang/String;

    move-result-object v3

    iget-object v7, p0, Lcom/join/mgps/adapter/t;->b:Landroid/content/Context;

    invoke-static {v7}, Lcom/join/android/app/common/utils/MyImageLoader;->C(Landroid/content/Context;)Lcom/facebook/drawee/generic/RoundingParams;

    move-result-object v7

    invoke-static {v1, v2, v3, v7}, Lcom/join/android/app/common/utils/MyImageLoader;->f(Lcom/facebook/drawee/view/SimpleDraweeView;ILjava/lang/String;Lcom/facebook/drawee/generic/RoundingParams;)V

    goto :goto_2

    .line 103
    :cond_16
    iget-object v1, v4, Lcom/join/mgps/adapter/t$o;->a:Lcom/facebook/drawee/view/SimpleDraweeView;

    iget-object v3, p0, Lcom/join/mgps/adapter/t;->b:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/facebook/drawee/view/DraweeView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 104
    :goto_2
    invoke-virtual {p3}, Lcom/join/mgps/db/tables/FightMainTable;->getLink_type()I

    move-result v1

    const/4 v3, 0x5

    if-ne v1, v0, :cond_19

    .line 105
    iget-object v1, p0, Lcom/join/mgps/adapter/t;->c:Ljava/util/Map;

    invoke-virtual {p3}, Lcom/join/mgps/db/tables/FightMainTable;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v1, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 106
    iget-object v1, p0, Lcom/join/mgps/adapter/t;->c:Ljava/util/Map;

    invoke-virtual {p3}, Lcom/join/mgps/db/tables/FightMainTable;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    if-eqz v1, :cond_17

    .line 107
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v7

    if-ne v7, v3, :cond_17

    .line 108
    iget-object v7, v4, Lcom/join/mgps/adapter/t$o;->c:Landroid/widget/ImageView;

    invoke-virtual {v7, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_3

    .line 109
    :cond_17
    iget-object v7, v4, Lcom/join/mgps/adapter/t$o;->c:Landroid/widget/ImageView;

    invoke-virtual {v7, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 110
    :goto_3
    invoke-static {v1, p3}, Lcom/join/mgps/Util/UtilsMy;->Z0(Lcom/github/snowdream/android/app/downloader/DownloadTask;Lcom/join/mgps/db/tables/FightMainTable;)V

    .line 111
    iget-object v7, v4, Lcom/join/mgps/adapter/t$o;->a:Lcom/facebook/drawee/view/SimpleDraweeView;

    new-instance v8, Lcom/join/mgps/adapter/t$e;

    invoke-direct {v8, p0, v1, p3}, Lcom/join/mgps/adapter/t$e;-><init>(Lcom/join/mgps/adapter/t;Lcom/github/snowdream/android/app/downloader/DownloadTask;Lcom/join/mgps/db/tables/FightMainTable;)V

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_4

    .line 112
    :cond_18
    iget-object v1, v4, Lcom/join/mgps/adapter/t$o;->c:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_4

    .line 113
    :cond_19
    iget-object v1, v4, Lcom/join/mgps/adapter/t$o;->a:Lcom/facebook/drawee/view/SimpleDraweeView;

    new-instance v7, Lcom/join/mgps/adapter/t$f;

    invoke-direct {v7, p0, p3}, Lcom/join/mgps/adapter/t$f;-><init>(Lcom/join/mgps/adapter/t;Lcom/join/mgps/db/tables/FightMainTable;)V

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_4
    add-int/2addr p1, v0

    .line 114
    iget-object v1, p0, Lcom/join/mgps/adapter/t;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_1d

    .line 115
    iget-object v1, v4, Lcom/join/mgps/adapter/t$o;->e:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v6}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 116
    iget-object v1, v4, Lcom/join/mgps/adapter/t$o;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    iget-object v7, p0, Lcom/join/mgps/adapter/t;->b:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/facebook/drawee/view/DraweeView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 117
    iget-object v1, p0, Lcom/join/mgps/adapter/t;->d:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/db/tables/FightMainTable;

    .line 118
    invoke-virtual {p1}, Lcom/join/mgps/db/tables/FightMainTable;->getPic_remote()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 119
    iget-object v1, v4, Lcom/join/mgps/adapter/t$o;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {p1}, Lcom/join/mgps/db/tables/FightMainTable;->getPic_remote()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/join/mgps/adapter/t;->b:Landroid/content/Context;

    invoke-static {v8}, Lcom/join/android/app/common/utils/MyImageLoader;->C(Landroid/content/Context;)Lcom/facebook/drawee/generic/RoundingParams;

    move-result-object v8

    invoke-static {v1, v2, v7, v8}, Lcom/join/android/app/common/utils/MyImageLoader;->f(Lcom/facebook/drawee/view/SimpleDraweeView;ILjava/lang/String;Lcom/facebook/drawee/generic/RoundingParams;)V

    goto :goto_5

    .line 120
    :cond_1a
    iget-object v1, v4, Lcom/join/mgps/adapter/t$o;->a:Lcom/facebook/drawee/view/SimpleDraweeView;

    iget-object v7, p0, Lcom/join/mgps/adapter/t;->b:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/facebook/drawee/view/DraweeView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 121
    :goto_5
    invoke-virtual {p1}, Lcom/join/mgps/db/tables/FightMainTable;->getLink_type()I

    move-result v1

    if-ne v1, v0, :cond_1c

    .line 122
    iget-object v0, p0, Lcom/join/mgps/adapter/t;->c:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/join/mgps/db/tables/FightMainTable;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    if-eqz p1, :cond_1b

    .line 123
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v0

    if-ne v0, v3, :cond_1b

    .line 124
    iget-object v0, v4, Lcom/join/mgps/adapter/t$o;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_6

    .line 125
    :cond_1b
    iget-object v0, v4, Lcom/join/mgps/adapter/t$o;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 126
    :goto_6
    invoke-static {p1, p3}, Lcom/join/mgps/Util/UtilsMy;->Z0(Lcom/github/snowdream/android/app/downloader/DownloadTask;Lcom/join/mgps/db/tables/FightMainTable;)V

    .line 127
    iget-object v0, v4, Lcom/join/mgps/adapter/t$o;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    new-instance v1, Lcom/join/mgps/adapter/t$g;

    invoke-direct {v1, p0, p1, p3}, Lcom/join/mgps/adapter/t$g;-><init>(Lcom/join/mgps/adapter/t;Lcom/github/snowdream/android/app/downloader/DownloadTask;Lcom/join/mgps/db/tables/FightMainTable;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_7

    .line 128
    :cond_1c
    iget-object p3, v4, Lcom/join/mgps/adapter/t$o;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    new-instance v0, Lcom/join/mgps/adapter/t$h;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/adapter/t$h;-><init>(Lcom/join/mgps/adapter/t;Lcom/join/mgps/db/tables/FightMainTable;)V

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_7

    .line 129
    :cond_1d
    iget-object p1, v4, Lcom/join/mgps/adapter/t$o;->e:Landroid/widget/RelativeLayout;

    const/4 p3, 0x4

    invoke-virtual {p1, p3}, Landroid/widget/RelativeLayout;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_7

    :catch_0
    move-exception p1

    .line 130
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1e
    :goto_7
    return-object p2
.end method

.method public getViewTypeCount()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method public h(Lcom/join/mgps/dto/LoadWarCenterBean;)V
    .locals 3

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/t;->l:Lcom/join/mgps/dto/LoadWarCenterBean;

    .line 2
    invoke-virtual {p1}, Lcom/join/mgps/dto/LoadWarCenterBean;->getDownloadTasksMap()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/join/mgps/adapter/t;->c:Ljava/util/Map;

    .line 3
    iget-object p1, p0, Lcom/join/mgps/adapter/t;->l:Lcom/join/mgps/dto/LoadWarCenterBean;

    invoke-virtual {p1}, Lcom/join/mgps/dto/LoadWarCenterBean;->getFightMainTables()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/join/mgps/adapter/t;->d:Ljava/util/List;

    .line 4
    iget-object p1, p0, Lcom/join/mgps/adapter/t;->l:Lcom/join/mgps/dto/LoadWarCenterBean;

    invoke-virtual {p1}, Lcom/join/mgps/dto/LoadWarCenterBean;->getWaradInfoDataBeans()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/join/mgps/adapter/t;->e:Ljava/util/List;

    .line 5
    iget-object p1, p0, Lcom/join/mgps/adapter/t;->l:Lcom/join/mgps/dto/LoadWarCenterBean;

    invoke-virtual {p1}, Lcom/join/mgps/dto/LoadWarCenterBean;->getHotGameInfoDataBeans()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/join/mgps/adapter/t;->f:Ljava/util/List;

    .line 6
    iget-object p1, p0, Lcom/join/mgps/adapter/t;->l:Lcom/join/mgps/dto/LoadWarCenterBean;

    invoke-virtual {p1}, Lcom/join/mgps/dto/LoadWarCenterBean;->getPkGameInfoDataBeans()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/join/mgps/adapter/t;->g:Ljava/util/List;

    .line 7
    iget-object p1, p0, Lcom/join/mgps/adapter/t;->l:Lcom/join/mgps/dto/LoadWarCenterBean;

    invoke-virtual {p1}, Lcom/join/mgps/dto/LoadWarCenterBean;->getPkPassInfoDataBeans()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/join/mgps/adapter/t;->h:Ljava/util/List;

    .line 8
    iget-object p1, p0, Lcom/join/mgps/adapter/t;->l:Lcom/join/mgps/dto/LoadWarCenterBean;

    invoke-virtual {p1}, Lcom/join/mgps/dto/LoadWarCenterBean;->getPkMatchingInfoDataBeans()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/join/mgps/adapter/t;->i:Ljava/util/List;

    .line 9
    iget-object p1, p0, Lcom/join/mgps/adapter/t;->l:Lcom/join/mgps/dto/LoadWarCenterBean;

    invoke-virtual {p1}, Lcom/join/mgps/dto/LoadWarCenterBean;->getPkLocalInfoDataBeans()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/join/mgps/adapter/t;->j:Ljava/util/List;

    .line 10
    iget-object p1, p0, Lcom/join/mgps/adapter/t;->l:Lcom/join/mgps/dto/LoadWarCenterBean;

    invoke-virtual {p1}, Lcom/join/mgps/dto/LoadWarCenterBean;->getPkRoomInfoDataBeans()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/join/mgps/adapter/t;->k:Ljava/util/List;

    const/4 p1, 0x0

    .line 11
    iput p1, p0, Lcom/join/mgps/adapter/t;->t:I

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x7

    if-ge v0, v1, :cond_7

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_1

    .line 12
    :pswitch_0
    iget-object v1, p0, Lcom/join/mgps/adapter/t;->k:Ljava/util/List;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 13
    iget v1, p0, Lcom/join/mgps/adapter/t;->t:I

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lcom/join/mgps/adapter/t;->k:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, 0x2

    div-int/lit8 v2, v2, 0x3

    add-int/2addr v1, v2

    iput v1, p0, Lcom/join/mgps/adapter/t;->t:I

    goto/16 :goto_1

    .line 14
    :cond_0
    iput p1, p0, Lcom/join/mgps/adapter/t;->s:I

    goto/16 :goto_1

    .line 15
    :pswitch_1
    iget-object v1, p0, Lcom/join/mgps/adapter/t;->j:Ljava/util/List;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 16
    iget v1, p0, Lcom/join/mgps/adapter/t;->t:I

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lcom/join/mgps/adapter/t;->j:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, 0x2

    div-int/lit8 v2, v2, 0x3

    add-int/2addr v1, v2

    iput v1, p0, Lcom/join/mgps/adapter/t;->s:I

    .line 17
    iput v1, p0, Lcom/join/mgps/adapter/t;->t:I

    goto/16 :goto_1

    .line 18
    :cond_1
    iput p1, p0, Lcom/join/mgps/adapter/t;->r:I

    goto/16 :goto_1

    .line 19
    :pswitch_2
    iget-object v1, p0, Lcom/join/mgps/adapter/t;->i:Ljava/util/List;

    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 20
    iget v1, p0, Lcom/join/mgps/adapter/t;->t:I

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lcom/join/mgps/adapter/t;->i:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, 0x2

    div-int/lit8 v2, v2, 0x3

    add-int/2addr v1, v2

    iput v1, p0, Lcom/join/mgps/adapter/t;->r:I

    .line 21
    iput v1, p0, Lcom/join/mgps/adapter/t;->t:I

    goto/16 :goto_1

    .line 22
    :cond_2
    iput p1, p0, Lcom/join/mgps/adapter/t;->q:I

    goto/16 :goto_1

    .line 23
    :pswitch_3
    iget-object v1, p0, Lcom/join/mgps/adapter/t;->h:Ljava/util/List;

    if-eqz v1, :cond_3

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 24
    iget v1, p0, Lcom/join/mgps/adapter/t;->t:I

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lcom/join/mgps/adapter/t;->h:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, 0x2

    div-int/lit8 v2, v2, 0x3

    add-int/2addr v1, v2

    iput v1, p0, Lcom/join/mgps/adapter/t;->q:I

    .line 25
    iput v1, p0, Lcom/join/mgps/adapter/t;->t:I

    goto :goto_1

    .line 26
    :cond_3
    iput p1, p0, Lcom/join/mgps/adapter/t;->p:I

    goto :goto_1

    .line 27
    :pswitch_4
    iget-object v1, p0, Lcom/join/mgps/adapter/t;->g:Ljava/util/List;

    if-eqz v1, :cond_4

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_4

    .line 28
    iget v1, p0, Lcom/join/mgps/adapter/t;->t:I

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lcom/join/mgps/adapter/t;->g:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, 0x2

    div-int/lit8 v2, v2, 0x3

    add-int/2addr v1, v2

    iput v1, p0, Lcom/join/mgps/adapter/t;->p:I

    .line 29
    iput v1, p0, Lcom/join/mgps/adapter/t;->t:I

    goto :goto_1

    .line 30
    :cond_4
    iput p1, p0, Lcom/join/mgps/adapter/t;->o:I

    goto :goto_1

    .line 31
    :pswitch_5
    iget-object v1, p0, Lcom/join/mgps/adapter/t;->f:Ljava/util/List;

    if-eqz v1, :cond_5

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_5

    .line 32
    iget v1, p0, Lcom/join/mgps/adapter/t;->t:I

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lcom/join/mgps/adapter/t;->f:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, 0x2

    div-int/lit8 v2, v2, 0x3

    add-int/2addr v1, v2

    iput v1, p0, Lcom/join/mgps/adapter/t;->o:I

    .line 33
    iput v1, p0, Lcom/join/mgps/adapter/t;->t:I

    goto :goto_1

    .line 34
    :cond_5
    iput p1, p0, Lcom/join/mgps/adapter/t;->n:I

    goto :goto_1

    .line 35
    :pswitch_6
    iget-object v1, p0, Lcom/join/mgps/adapter/t;->d:Ljava/util/List;

    if-eqz v1, :cond_6

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_6

    .line 36
    iget v1, p0, Lcom/join/mgps/adapter/t;->t:I

    iget-object v2, p0, Lcom/join/mgps/adapter/t;->d:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/join/mgps/adapter/t;->n:I

    .line 37
    iput v1, p0, Lcom/join/mgps/adapter/t;->m:I

    .line 38
    iput v1, p0, Lcom/join/mgps/adapter/t;->t:I

    :cond_6
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 39
    :cond_7
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method i(IILjava/util/List;Lcom/join/mgps/adapter/t$n;)V
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Lcom/join/mgps/db/tables/WarMatchAndLocalTable;",
            ">;",
            "Lcom/join/mgps/adapter/t$n;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    add-int/lit8 v4, p2, 0x1

    if-ge v1, v4, :cond_0

    return-void

    :cond_0
    sub-int/2addr v1, v4

    const/4 v4, 0x3

    mul-int/lit8 v1, v1, 0x3

    .line 1
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;

    .line 2
    iget-object v6, v0, Lcom/join/mgps/adapter/t;->c:Ljava/util/Map;

    invoke-virtual {v5}, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    const-string v7, "\u66f4\u65b0"

    const-string v9, "\u7ee7\u7eed"

    const-string v10, "/S"

    const-string v11, "\u6682\u505c"

    const-string v8, "\u6682\u505c\u4e2d"

    const-wide/high16 v16, 0x4090000000000000L    # 1024.0

    const v12, 0x7f0807b1

    const-string v4, "/"

    if-eqz v6, :cond_c

    .line 3
    iget-object v6, v0, Lcom/join/mgps/adapter/t;->c:Ljava/util/Map;

    invoke-virtual {v5}, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v6, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    if-eqz v6, :cond_c

    .line 4
    invoke-static {v6, v5}, Lcom/join/mgps/Util/UtilsMy;->a1(Lcom/github/snowdream/android/app/downloader/DownloadTask;Lcom/join/mgps/db/tables/WarMatchAndLocalTable;)V

    .line 5
    invoke-virtual {v6}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getFight_screenshot_pic()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_1

    .line 6
    iget-object v15, v3, Lcom/join/mgps/adapter/t$n;->d:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {v6}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getFight_screenshot_pic()Ljava/lang/String;

    move-result-object v13

    iget-object v14, v0, Lcom/join/mgps/adapter/t;->b:Landroid/content/Context;

    invoke-static {v14}, Lcom/join/android/app/common/utils/MyImageLoader;->C(Landroid/content/Context;)Lcom/facebook/drawee/generic/RoundingParams;

    move-result-object v14

    invoke-static {v15, v12, v13, v14}, Lcom/join/android/app/common/utils/MyImageLoader;->f(Lcom/facebook/drawee/view/SimpleDraweeView;ILjava/lang/String;Lcom/facebook/drawee/generic/RoundingParams;)V

    goto :goto_0

    .line 7
    :cond_1
    iget-object v13, v3, Lcom/join/mgps/adapter/t$n;->d:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {v6}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getScreenshot_pic()Ljava/lang/String;

    move-result-object v14

    iget-object v15, v0, Lcom/join/mgps/adapter/t;->b:Landroid/content/Context;

    invoke-static {v15}, Lcom/join/android/app/common/utils/MyImageLoader;->C(Landroid/content/Context;)Lcom/facebook/drawee/generic/RoundingParams;

    move-result-object v15

    invoke-static {v13, v12, v14, v15}, Lcom/join/android/app/common/utils/MyImageLoader;->f(Lcom/facebook/drawee/view/SimpleDraweeView;ILjava/lang/String;Lcom/facebook/drawee/generic/RoundingParams;)V

    .line 8
    :goto_0
    iget-object v13, v3, Lcom/join/mgps/adapter/t$n;->E:Landroid/widget/TextView;

    invoke-virtual {v6}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getShowName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9
    invoke-virtual {v6}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v13

    const/4 v14, 0x5

    if-ne v13, v14, :cond_2

    .line 10
    iget-object v13, v3, Lcom/join/mgps/adapter/t$n;->m:Landroid/widget/LinearLayout;

    const/16 v14, 0x8

    invoke-virtual {v13, v14}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 11
    iget-object v13, v3, Lcom/join/mgps/adapter/t$n;->g:Landroid/widget/ImageView;

    invoke-virtual {v13, v14}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 12
    iget-object v13, v3, Lcom/join/mgps/adapter/t$n;->j:Landroid/widget/ImageView;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 13
    iget-object v13, v3, Lcom/join/mgps/adapter/t$n;->a:Landroid/widget/LinearLayout;

    new-instance v14, Lcom/join/mgps/adapter/t$i;

    invoke-direct {v14, v0, v6, v5}, Lcom/join/mgps/adapter/t$i;-><init>(Lcom/join/mgps/adapter/t;Lcom/github/snowdream/android/app/downloader/DownloadTask;Lcom/join/mgps/db/tables/WarMatchAndLocalTable;)V

    invoke-virtual {v13, v14}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_2

    .line 14
    :cond_2
    invoke-virtual {v6}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v13

    const/4 v14, 0x7

    if-eq v13, v14, :cond_b

    invoke-virtual {v6}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v13

    if-nez v13, :cond_3

    goto/16 :goto_1

    .line 15
    :cond_3
    iget-object v13, v3, Lcom/join/mgps/adapter/t$n;->m:Landroid/widget/LinearLayout;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 16
    iget-object v13, v3, Lcom/join/mgps/adapter/t$n;->g:Landroid/widget/ImageView;

    invoke-virtual {v13, v14}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 17
    iget-object v13, v3, Lcom/join/mgps/adapter/t$n;->j:Landroid/widget/ImageView;

    const/16 v14, 0x8

    invoke-virtual {v13, v14}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 18
    iget-object v13, v3, Lcom/join/mgps/adapter/t$n;->p:Landroid/widget/TextView;

    new-instance v14, Lcom/join/mgps/adapter/t$k;

    invoke-direct {v14, v0, v6, v5}, Lcom/join/mgps/adapter/t$k;-><init>(Lcom/join/mgps/adapter/t;Lcom/github/snowdream/android/app/downloader/DownloadTask;Lcom/join/mgps/db/tables/WarMatchAndLocalTable;)V

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 19
    invoke-virtual {v5}, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;->getAppSize()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v13

    mul-double v13, v13, v16

    mul-double v13, v13, v16

    double-to-long v13, v13

    .line 20
    invoke-virtual {v6}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v15

    const/4 v12, 0x2

    if-eq v15, v12, :cond_a

    const/4 v12, 0x3

    if-eq v15, v12, :cond_9

    const/4 v12, 0x6

    if-eq v15, v12, :cond_9

    const/16 v12, 0x1b

    if-eq v15, v12, :cond_8

    const/16 v12, 0x9

    if-eq v15, v12, :cond_7

    const/16 v12, 0xa

    if-eq v15, v12, :cond_6

    const/16 v12, 0xc

    if-eq v15, v12, :cond_5

    const/16 v12, 0xd

    if-eq v15, v12, :cond_4

    goto/16 :goto_2

    .line 21
    :cond_4
    iget-object v12, v3, Lcom/join/mgps/adapter/t$n;->p:Landroid/widget/TextView;

    const v15, 0x7f0803f8

    invoke-virtual {v12, v15}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 22
    iget-object v12, v3, Lcom/join/mgps/adapter/t$n;->p:Landroid/widget/TextView;

    const-string v15, "\u89e3\u538b"

    invoke-virtual {v12, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 23
    iget-object v12, v3, Lcom/join/mgps/adapter/t$n;->s:Landroid/widget/TextView;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v13, v14}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v13, v14}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 24
    iget-object v2, v3, Lcom/join/mgps/adapter/t$n;->v:Landroid/widget/TextView;

    const-string v12, "\u70b9\u51fb\u91cd\u65b0\u89e3\u538b"

    invoke-virtual {v2, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 25
    iget-object v2, v3, Lcom/join/mgps/adapter/t$n;->B:Landroid/widget/ProgressBar;

    const/16 v12, 0x8

    invoke-virtual {v2, v12}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 26
    iget-object v2, v3, Lcom/join/mgps/adapter/t$n;->y:Landroid/widget/ProgressBar;

    const/4 v12, 0x0

    invoke-virtual {v2, v12}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 27
    iget-object v2, v3, Lcom/join/mgps/adapter/t$n;->y:Landroid/widget/ProgressBar;

    invoke-virtual {v6}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    move-result-wide v12

    long-to-int v6, v12

    invoke-virtual {v2, v6}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto/16 :goto_2

    .line 28
    :cond_5
    iget-object v2, v3, Lcom/join/mgps/adapter/t$n;->p:Landroid/widget/TextView;

    const v12, 0x7f080409

    invoke-virtual {v2, v12}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 29
    iget-object v2, v3, Lcom/join/mgps/adapter/t$n;->p:Landroid/widget/TextView;

    const-string v12, "\u89e3\u538b\u4e2d"

    invoke-virtual {v2, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 30
    iget-object v2, v3, Lcom/join/mgps/adapter/t$n;->s:Landroid/widget/TextView;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v13, v14}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v13, v14}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 31
    iget-object v2, v3, Lcom/join/mgps/adapter/t$n;->v:Landroid/widget/TextView;

    const-string v12, "\u89e3\u538b\u4e2d.."

    invoke-virtual {v2, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 32
    iget-object v2, v3, Lcom/join/mgps/adapter/t$n;->B:Landroid/widget/ProgressBar;

    const/16 v12, 0x8

    invoke-virtual {v2, v12}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 33
    iget-object v2, v3, Lcom/join/mgps/adapter/t$n;->y:Landroid/widget/ProgressBar;

    const/4 v12, 0x0

    invoke-virtual {v2, v12}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 34
    iget-object v2, v3, Lcom/join/mgps/adapter/t$n;->y:Landroid/widget/ProgressBar;

    invoke-virtual {v6}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    move-result-wide v12

    long-to-int v6, v12

    invoke-virtual {v2, v6}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto/16 :goto_2

    .line 35
    :cond_6
    iget-object v2, v3, Lcom/join/mgps/adapter/t$n;->p:Landroid/widget/TextView;

    const v12, 0x7f0803f8

    invoke-virtual {v2, v12}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 36
    iget-object v2, v3, Lcom/join/mgps/adapter/t$n;->p:Landroid/widget/TextView;

    const-string v12, "\u7b49\u5f85"

    invoke-virtual {v2, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 37
    iget-object v2, v3, Lcom/join/mgps/adapter/t$n;->s:Landroid/widget/TextView;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCurrentSize()J

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v13, v14}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 38
    iget-object v2, v3, Lcom/join/mgps/adapter/t$n;->v:Landroid/widget/TextView;

    const-string v12, "\u7b49\u5f85\u4e2d"

    invoke-virtual {v2, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 39
    iget-object v2, v3, Lcom/join/mgps/adapter/t$n;->B:Landroid/widget/ProgressBar;

    const/4 v12, 0x0

    invoke-virtual {v2, v12}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 40
    iget-object v2, v3, Lcom/join/mgps/adapter/t$n;->y:Landroid/widget/ProgressBar;

    const/16 v12, 0x8

    invoke-virtual {v2, v12}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 41
    iget-object v2, v3, Lcom/join/mgps/adapter/t$n;->B:Landroid/widget/ProgressBar;

    invoke-virtual {v6}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    move-result-wide v13

    long-to-int v6, v13

    invoke-virtual {v2, v6}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto/16 :goto_2

    :cond_7
    const/16 v12, 0x8

    .line 42
    iget-object v2, v3, Lcom/join/mgps/adapter/t$n;->p:Landroid/widget/TextView;

    const v6, 0x7f080406

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 43
    iget-object v2, v3, Lcom/join/mgps/adapter/t$n;->p:Landroid/widget/TextView;

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 44
    iget-object v2, v3, Lcom/join/mgps/adapter/t$n;->s:Landroid/widget/TextView;

    invoke-virtual {v2, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 45
    iget-object v2, v3, Lcom/join/mgps/adapter/t$n;->v:Landroid/widget/TextView;

    invoke-virtual {v2, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 46
    iget-object v2, v3, Lcom/join/mgps/adapter/t$n;->B:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v12}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 47
    iget-object v2, v3, Lcom/join/mgps/adapter/t$n;->y:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v12}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto/16 :goto_2

    .line 48
    :cond_8
    iget-object v2, v3, Lcom/join/mgps/adapter/t$n;->p:Landroid/widget/TextView;

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 49
    :cond_9
    iget-object v2, v3, Lcom/join/mgps/adapter/t$n;->p:Landroid/widget/TextView;

    const v12, 0x7f0803f8

    invoke-virtual {v2, v12}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 50
    iget-object v2, v3, Lcom/join/mgps/adapter/t$n;->p:Landroid/widget/TextView;

    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 51
    iget-object v2, v3, Lcom/join/mgps/adapter/t$n;->s:Landroid/widget/TextView;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCurrentSize()J

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v13, v14}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 52
    iget-object v2, v3, Lcom/join/mgps/adapter/t$n;->v:Landroid/widget/TextView;

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 53
    iget-object v2, v3, Lcom/join/mgps/adapter/t$n;->B:Landroid/widget/ProgressBar;

    const/4 v12, 0x0

    invoke-virtual {v2, v12}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 54
    iget-object v2, v3, Lcom/join/mgps/adapter/t$n;->y:Landroid/widget/ProgressBar;

    const/16 v12, 0x8

    invoke-virtual {v2, v12}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 55
    iget-object v2, v3, Lcom/join/mgps/adapter/t$n;->B:Landroid/widget/ProgressBar;

    invoke-virtual {v6}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    move-result-wide v12

    long-to-int v6, v12

    invoke-virtual {v2, v6}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto/16 :goto_2

    .line 56
    :cond_a
    iget-object v2, v3, Lcom/join/mgps/adapter/t$n;->p:Landroid/widget/TextView;

    const v12, 0x7f0803f8

    invoke-virtual {v2, v12}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 57
    iget-object v2, v3, Lcom/join/mgps/adapter/t$n;->p:Landroid/widget/TextView;

    invoke-virtual {v2, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 58
    iget-object v2, v3, Lcom/join/mgps/adapter/t$n;->s:Landroid/widget/TextView;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCurrentSize()J

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v13, v14}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 59
    iget-object v2, v3, Lcom/join/mgps/adapter/t$n;->v:Landroid/widget/TextView;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSpeed()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    iget-object v2, v3, Lcom/join/mgps/adapter/t$n;->B:Landroid/widget/ProgressBar;

    const/4 v12, 0x0

    invoke-virtual {v2, v12}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 61
    iget-object v2, v3, Lcom/join/mgps/adapter/t$n;->y:Landroid/widget/ProgressBar;

    const/16 v12, 0x8

    invoke-virtual {v2, v12}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 62
    iget-object v2, v3, Lcom/join/mgps/adapter/t$n;->B:Landroid/widget/ProgressBar;

    invoke-virtual {v6}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    move-result-wide v13

    long-to-int v6, v13

    invoke-virtual {v2, v6}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto :goto_2

    :cond_b
    :goto_1
    const/16 v12, 0x8

    .line 63
    iget-object v2, v3, Lcom/join/mgps/adapter/t$n;->m:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v12}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 64
    iget-object v2, v3, Lcom/join/mgps/adapter/t$n;->g:Landroid/widget/ImageView;

    invoke-virtual {v2, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 65
    iget-object v2, v3, Lcom/join/mgps/adapter/t$n;->j:Landroid/widget/ImageView;

    invoke-virtual {v2, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 66
    iget-object v2, v3, Lcom/join/mgps/adapter/t$n;->a:Landroid/widget/LinearLayout;

    new-instance v12, Lcom/join/mgps/adapter/t$j;

    invoke-direct {v12, v0, v6, v5}, Lcom/join/mgps/adapter/t$j;-><init>(Lcom/join/mgps/adapter/t;Lcom/github/snowdream/android/app/downloader/DownloadTask;Lcom/join/mgps/db/tables/WarMatchAndLocalTable;)V

    invoke-virtual {v2, v12}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_c
    :goto_2
    add-int/lit8 v2, v1, 0x1

    .line 67
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v6

    if-ge v2, v6, :cond_18

    .line 68
    iget-object v6, v3, Lcom/join/mgps/adapter/t$n;->b:Landroid/widget/LinearLayout;

    const/4 v12, 0x0

    invoke-virtual {v6, v12}, Landroid/widget/LinearLayout;->setVisibility(I)V

    move-object/from16 v6, p3

    .line 69
    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;

    .line 70
    iget-object v12, v0, Lcom/join/mgps/adapter/t;->c:Ljava/util/Map;

    invoke-virtual {v2}, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v12, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    if-eqz v12, :cond_19

    .line 71
    invoke-virtual {v12}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getFight_screenshot_pic()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_d

    .line 72
    iget-object v13, v3, Lcom/join/mgps/adapter/t$n;->e:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {v12}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getFight_screenshot_pic()Ljava/lang/String;

    move-result-object v14

    iget-object v15, v0, Lcom/join/mgps/adapter/t;->b:Landroid/content/Context;

    invoke-static {v15}, Lcom/join/android/app/common/utils/MyImageLoader;->C(Landroid/content/Context;)Lcom/facebook/drawee/generic/RoundingParams;

    move-result-object v15

    const v6, 0x7f0807b1

    invoke-static {v13, v6, v14, v15}, Lcom/join/android/app/common/utils/MyImageLoader;->f(Lcom/facebook/drawee/view/SimpleDraweeView;ILjava/lang/String;Lcom/facebook/drawee/generic/RoundingParams;)V

    goto :goto_3

    :cond_d
    const v6, 0x7f0807b1

    .line 73
    iget-object v13, v3, Lcom/join/mgps/adapter/t$n;->e:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {v12}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getScreenshot_pic()Ljava/lang/String;

    move-result-object v14

    iget-object v15, v0, Lcom/join/mgps/adapter/t;->b:Landroid/content/Context;

    invoke-static {v15}, Lcom/join/android/app/common/utils/MyImageLoader;->C(Landroid/content/Context;)Lcom/facebook/drawee/generic/RoundingParams;

    move-result-object v15

    invoke-static {v13, v6, v14, v15}, Lcom/join/android/app/common/utils/MyImageLoader;->f(Lcom/facebook/drawee/view/SimpleDraweeView;ILjava/lang/String;Lcom/facebook/drawee/generic/RoundingParams;)V

    .line 74
    :goto_3
    invoke-virtual {v2}, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;->getAppSize()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v13

    mul-double v13, v13, v16

    mul-double v13, v13, v16

    double-to-long v13, v13

    .line 75
    iget-object v2, v3, Lcom/join/mgps/adapter/t$n;->F:Landroid/widget/TextView;

    invoke-virtual {v12}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getShowName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 76
    invoke-virtual {v12}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v2

    const/4 v6, 0x5

    if-ne v2, v6, :cond_e

    .line 77
    iget-object v2, v3, Lcom/join/mgps/adapter/t$n;->n:Landroid/widget/LinearLayout;

    const/16 v6, 0x8

    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 78
    iget-object v2, v3, Lcom/join/mgps/adapter/t$n;->h:Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 79
    iget-object v2, v3, Lcom/join/mgps/adapter/t$n;->k:Landroid/widget/ImageView;

    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 80
    iget-object v2, v3, Lcom/join/mgps/adapter/t$n;->b:Landroid/widget/LinearLayout;

    new-instance v6, Lcom/join/mgps/adapter/t$l;

    invoke-direct {v6, v0, v12, v5}, Lcom/join/mgps/adapter/t$l;-><init>(Lcom/join/mgps/adapter/t;Lcom/github/snowdream/android/app/downloader/DownloadTask;Lcom/join/mgps/db/tables/WarMatchAndLocalTable;)V

    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_5

    .line 81
    :cond_e
    invoke-virtual {v12}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v2

    const/4 v6, 0x7

    if-eq v2, v6, :cond_17

    invoke-virtual {v12}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v2

    if-nez v2, :cond_f

    goto/16 :goto_4

    .line 82
    :cond_f
    iget-object v2, v3, Lcom/join/mgps/adapter/t$n;->n:Landroid/widget/LinearLayout;

    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 83
    iget-object v2, v3, Lcom/join/mgps/adapter/t$n;->h:Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 84
    iget-object v2, v3, Lcom/join/mgps/adapter/t$n;->k:Landroid/widget/ImageView;

    const/16 v6, 0x8

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 85
    iget-object v2, v3, Lcom/join/mgps/adapter/t$n;->q:Landroid/widget/TextView;

    new-instance v6, Lcom/join/mgps/adapter/t$a;

    invoke-direct {v6, v0, v12, v5}, Lcom/join/mgps/adapter/t$a;-><init>(Lcom/join/mgps/adapter/t;Lcom/github/snowdream/android/app/downloader/DownloadTask;Lcom/join/mgps/db/tables/WarMatchAndLocalTable;)V

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    invoke-virtual {v12}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v2

    const/4 v6, 0x2

    if-eq v2, v6, :cond_16

    const/4 v6, 0x3

    if-eq v2, v6, :cond_15

    const/4 v6, 0x6

    if-eq v2, v6, :cond_15

    const/16 v6, 0x1b

    if-eq v2, v6, :cond_14

    const/16 v6, 0x9

    if-eq v2, v6, :cond_13

    const/16 v6, 0xa

    if-eq v2, v6, :cond_12

    const/16 v6, 0xc

    if-eq v2, v6, :cond_11

    const/16 v6, 0xd

    if-eq v2, v6, :cond_10

    goto/16 :goto_5

    .line 87
    :cond_10
    iget-object v2, v3, Lcom/join/mgps/adapter/t$n;->q:Landroid/widget/TextView;

    const v6, 0x7f0803f8

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 88
    iget-object v2, v3, Lcom/join/mgps/adapter/t$n;->q:Landroid/widget/TextView;

    const-string v6, "\u89e3\u538b"

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    iget-object v2, v3, Lcom/join/mgps/adapter/t$n;->t:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v13, v14}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v13, v14}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 90
    iget-object v2, v3, Lcom/join/mgps/adapter/t$n;->w:Landroid/widget/TextView;

    const-string v6, "\u70b9\u51fb\u91cd\u65b0\u89e3\u538b"

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    iget-object v2, v3, Lcom/join/mgps/adapter/t$n;->C:Landroid/widget/ProgressBar;

    const/16 v6, 0x8

    invoke-virtual {v2, v6}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 92
    iget-object v2, v3, Lcom/join/mgps/adapter/t$n;->z:Landroid/widget/ProgressBar;

    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 93
    iget-object v2, v3, Lcom/join/mgps/adapter/t$n;->z:Landroid/widget/ProgressBar;

    invoke-virtual {v12}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    move-result-wide v12

    long-to-int v6, v12

    invoke-virtual {v2, v6}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto/16 :goto_5

    .line 94
    :cond_11
    iget-object v2, v3, Lcom/join/mgps/adapter/t$n;->q:Landroid/widget/TextView;

    const v6, 0x7f080409

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 95
    iget-object v2, v3, Lcom/join/mgps/adapter/t$n;->q:Landroid/widget/TextView;

    const-string v6, "\u89e3\u538b\u4e2d"

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 96
    iget-object v2, v3, Lcom/join/mgps/adapter/t$n;->t:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v13, v14}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v13, v14}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    iget-object v2, v3, Lcom/join/mgps/adapter/t$n;->w:Landroid/widget/TextView;

    const-string v6, "\u89e3\u538b\u4e2d.."

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 98
    iget-object v2, v3, Lcom/join/mgps/adapter/t$n;->C:Landroid/widget/ProgressBar;

    const/16 v6, 0x8

    invoke-virtual {v2, v6}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 99
    iget-object v2, v3, Lcom/join/mgps/adapter/t$n;->z:Landroid/widget/ProgressBar;

    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 100
    iget-object v2, v3, Lcom/join/mgps/adapter/t$n;->z:Landroid/widget/ProgressBar;

    invoke-virtual {v12}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    move-result-wide v12

    long-to-int v6, v12

    invoke-virtual {v2, v6}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto/16 :goto_5

    .line 101
    :cond_12
    iget-object v2, v3, Lcom/join/mgps/adapter/t$n;->q:Landroid/widget/TextView;

    const v6, 0x7f0803f8

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 102
    iget-object v2, v3, Lcom/join/mgps/adapter/t$n;->q:Landroid/widget/TextView;

    const-string v6, "\u7b49\u5f85"

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 103
    iget-object v2, v3, Lcom/join/mgps/adapter/t$n;->t:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCurrentSize()J

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v13, v14}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 104
    iget-object v2, v3, Lcom/join/mgps/adapter/t$n;->w:Landroid/widget/TextView;

    const-string v6, "\u7b49\u5f85\u4e2d"

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 105
    iget-object v2, v3, Lcom/join/mgps/adapter/t$n;->C:Landroid/widget/ProgressBar;

    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 106
    iget-object v2, v3, Lcom/join/mgps/adapter/t$n;->z:Landroid/widget/ProgressBar;

    const/16 v6, 0x8

    invoke-virtual {v2, v6}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 107
    iget-object v2, v3, Lcom/join/mgps/adapter/t$n;->C:Landroid/widget/ProgressBar;

    invoke-virtual {v12}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    move-result-wide v12

    long-to-int v13, v12

    invoke-virtual {v2, v13}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto/16 :goto_5

    :cond_13
    const/16 v6, 0x8

    .line 108
    iget-object v2, v3, Lcom/join/mgps/adapter/t$n;->q:Landroid/widget/TextView;

    const v12, 0x7f080406

    invoke-virtual {v2, v12}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 109
    iget-object v2, v3, Lcom/join/mgps/adapter/t$n;->q:Landroid/widget/TextView;

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 110
    iget-object v2, v3, Lcom/join/mgps/adapter/t$n;->t:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 111
    iget-object v2, v3, Lcom/join/mgps/adapter/t$n;->w:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 112
    iget-object v2, v3, Lcom/join/mgps/adapter/t$n;->C:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v6}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 113
    iget-object v2, v3, Lcom/join/mgps/adapter/t$n;->z:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v6}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto/16 :goto_5

    .line 114
    :cond_14
    iget-object v2, v3, Lcom/join/mgps/adapter/t$n;->q:Landroid/widget/TextView;

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    .line 115
    :cond_15
    iget-object v2, v3, Lcom/join/mgps/adapter/t$n;->q:Landroid/widget/TextView;

    const v6, 0x7f0803f8

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 116
    iget-object v2, v3, Lcom/join/mgps/adapter/t$n;->q:Landroid/widget/TextView;

    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 117
    iget-object v2, v3, Lcom/join/mgps/adapter/t$n;->t:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCurrentSize()J

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v13, v14}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 118
    iget-object v2, v3, Lcom/join/mgps/adapter/t$n;->w:Landroid/widget/TextView;

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 119
    iget-object v2, v3, Lcom/join/mgps/adapter/t$n;->C:Landroid/widget/ProgressBar;

    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 120
    iget-object v2, v3, Lcom/join/mgps/adapter/t$n;->z:Landroid/widget/ProgressBar;

    const/16 v6, 0x8

    invoke-virtual {v2, v6}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 121
    iget-object v2, v3, Lcom/join/mgps/adapter/t$n;->C:Landroid/widget/ProgressBar;

    invoke-virtual {v12}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    move-result-wide v12

    long-to-int v6, v12

    invoke-virtual {v2, v6}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto/16 :goto_5

    .line 122
    :cond_16
    iget-object v2, v3, Lcom/join/mgps/adapter/t$n;->q:Landroid/widget/TextView;

    const v6, 0x7f0803f8

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 123
    iget-object v2, v3, Lcom/join/mgps/adapter/t$n;->q:Landroid/widget/TextView;

    invoke-virtual {v2, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 124
    iget-object v2, v3, Lcom/join/mgps/adapter/t$n;->t:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCurrentSize()J

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v13, v14}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 125
    iget-object v2, v3, Lcom/join/mgps/adapter/t$n;->w:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSpeed()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 126
    iget-object v2, v3, Lcom/join/mgps/adapter/t$n;->C:Landroid/widget/ProgressBar;

    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 127
    iget-object v2, v3, Lcom/join/mgps/adapter/t$n;->z:Landroid/widget/ProgressBar;

    const/16 v6, 0x8

    invoke-virtual {v2, v6}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 128
    iget-object v2, v3, Lcom/join/mgps/adapter/t$n;->C:Landroid/widget/ProgressBar;

    invoke-virtual {v12}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    move-result-wide v12

    long-to-int v13, v12

    invoke-virtual {v2, v13}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto :goto_5

    :cond_17
    :goto_4
    const/16 v6, 0x8

    .line 129
    iget-object v2, v3, Lcom/join/mgps/adapter/t$n;->n:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 130
    iget-object v2, v3, Lcom/join/mgps/adapter/t$n;->h:Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 131
    iget-object v2, v3, Lcom/join/mgps/adapter/t$n;->k:Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 132
    iget-object v2, v3, Lcom/join/mgps/adapter/t$n;->b:Landroid/widget/LinearLayout;

    new-instance v6, Lcom/join/mgps/adapter/t$m;

    invoke-direct {v6, v0, v12, v5}, Lcom/join/mgps/adapter/t$m;-><init>(Lcom/join/mgps/adapter/t;Lcom/github/snowdream/android/app/downloader/DownloadTask;Lcom/join/mgps/db/tables/WarMatchAndLocalTable;)V

    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_5

    .line 133
    :cond_18
    iget-object v2, v3, Lcom/join/mgps/adapter/t$n;->b:Landroid/widget/LinearLayout;

    const/4 v6, 0x4

    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_19
    :goto_5
    const/4 v2, 0x2

    add-int/2addr v1, v2

    .line 134
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_25

    .line 135
    iget-object v2, v3, Lcom/join/mgps/adapter/t$n;->c:Landroid/widget/LinearLayout;

    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    move-object/from16 v2, p3

    .line 136
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;

    .line 137
    iget-object v2, v0, Lcom/join/mgps/adapter/t;->c:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    if-eqz v2, :cond_26

    .line 138
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getFight_screenshot_pic()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1a

    .line 139
    iget-object v6, v3, Lcom/join/mgps/adapter/t$n;->f:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getFight_screenshot_pic()Ljava/lang/String;

    move-result-object v12

    iget-object v13, v0, Lcom/join/mgps/adapter/t;->b:Landroid/content/Context;

    invoke-static {v13}, Lcom/join/android/app/common/utils/MyImageLoader;->C(Landroid/content/Context;)Lcom/facebook/drawee/generic/RoundingParams;

    move-result-object v13

    const v14, 0x7f0807b1

    invoke-static {v6, v14, v12, v13}, Lcom/join/android/app/common/utils/MyImageLoader;->f(Lcom/facebook/drawee/view/SimpleDraweeView;ILjava/lang/String;Lcom/facebook/drawee/generic/RoundingParams;)V

    goto :goto_6

    :cond_1a
    const v14, 0x7f0807b1

    .line 140
    iget-object v6, v3, Lcom/join/mgps/adapter/t$n;->f:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getScreenshot_pic()Ljava/lang/String;

    move-result-object v12

    iget-object v13, v0, Lcom/join/mgps/adapter/t;->b:Landroid/content/Context;

    invoke-static {v13}, Lcom/join/android/app/common/utils/MyImageLoader;->C(Landroid/content/Context;)Lcom/facebook/drawee/generic/RoundingParams;

    move-result-object v13

    invoke-static {v6, v14, v12, v13}, Lcom/join/android/app/common/utils/MyImageLoader;->f(Lcom/facebook/drawee/view/SimpleDraweeView;ILjava/lang/String;Lcom/facebook/drawee/generic/RoundingParams;)V

    .line 141
    :goto_6
    invoke-virtual {v1}, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;->getAppSize()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v12

    mul-double v12, v12, v16

    mul-double v12, v12, v16

    double-to-long v12, v12

    .line 142
    iget-object v1, v3, Lcom/join/mgps/adapter/t$n;->G:Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getShowName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 143
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v1

    const/4 v6, 0x5

    if-ne v1, v6, :cond_1b

    .line 144
    iget-object v1, v3, Lcom/join/mgps/adapter/t$n;->o:Landroid/widget/LinearLayout;

    const/16 v4, 0x8

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 145
    iget-object v1, v3, Lcom/join/mgps/adapter/t$n;->i:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 146
    iget-object v1, v3, Lcom/join/mgps/adapter/t$n;->l:Landroid/widget/ImageView;

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 147
    iget-object v1, v3, Lcom/join/mgps/adapter/t$n;->c:Landroid/widget/LinearLayout;

    new-instance v3, Lcom/join/mgps/adapter/t$b;

    invoke-direct {v3, v0, v2, v5}, Lcom/join/mgps/adapter/t$b;-><init>(Lcom/join/mgps/adapter/t;Lcom/github/snowdream/android/app/downloader/DownloadTask;Lcom/join/mgps/db/tables/WarMatchAndLocalTable;)V

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_8

    .line 148
    :cond_1b
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v1

    const/4 v6, 0x7

    if-eq v1, v6, :cond_24

    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v1

    if-nez v1, :cond_1c

    goto/16 :goto_7

    .line 149
    :cond_1c
    iget-object v1, v3, Lcom/join/mgps/adapter/t$n;->o:Landroid/widget/LinearLayout;

    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 150
    iget-object v1, v3, Lcom/join/mgps/adapter/t$n;->i:Landroid/widget/ImageView;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 151
    iget-object v1, v3, Lcom/join/mgps/adapter/t$n;->l:Landroid/widget/ImageView;

    const/16 v6, 0x8

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 152
    iget-object v1, v3, Lcom/join/mgps/adapter/t$n;->r:Landroid/widget/TextView;

    new-instance v6, Lcom/join/mgps/adapter/t$d;

    invoke-direct {v6, v0, v2, v5}, Lcom/join/mgps/adapter/t$d;-><init>(Lcom/join/mgps/adapter/t;Lcom/github/snowdream/android/app/downloader/DownloadTask;Lcom/join/mgps/db/tables/WarMatchAndLocalTable;)V

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 153
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v1

    const/4 v5, 0x2

    if-eq v1, v5, :cond_23

    const/4 v5, 0x3

    if-eq v1, v5, :cond_22

    const/4 v5, 0x6

    if-eq v1, v5, :cond_22

    const/16 v5, 0x1b

    if-eq v1, v5, :cond_21

    const/16 v5, 0x9

    if-eq v1, v5, :cond_20

    const/16 v5, 0xa

    if-eq v1, v5, :cond_1f

    const/16 v5, 0xc

    if-eq v1, v5, :cond_1e

    const/16 v5, 0xd

    if-eq v1, v5, :cond_1d

    goto/16 :goto_8

    .line 154
    :cond_1d
    iget-object v1, v3, Lcom/join/mgps/adapter/t$n;->r:Landroid/widget/TextView;

    const v5, 0x7f0803f8

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 155
    iget-object v1, v3, Lcom/join/mgps/adapter/t$n;->r:Landroid/widget/TextView;

    const-string v5, "\u89e3\u538b"

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 156
    iget-object v1, v3, Lcom/join/mgps/adapter/t$n;->u:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v12, v13}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v12, v13}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 157
    iget-object v1, v3, Lcom/join/mgps/adapter/t$n;->x:Landroid/widget/TextView;

    const-string v4, "\u70b9\u51fb\u91cd\u65b0\u89e3\u538b"

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 158
    iget-object v1, v3, Lcom/join/mgps/adapter/t$n;->D:Landroid/widget/ProgressBar;

    const/16 v4, 0x8

    invoke-virtual {v1, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 159
    iget-object v1, v3, Lcom/join/mgps/adapter/t$n;->A:Landroid/widget/ProgressBar;

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 160
    iget-object v1, v3, Lcom/join/mgps/adapter/t$n;->A:Landroid/widget/ProgressBar;

    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    move-result-wide v2

    long-to-int v3, v2

    invoke-virtual {v1, v3}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto/16 :goto_8

    .line 161
    :cond_1e
    iget-object v1, v3, Lcom/join/mgps/adapter/t$n;->r:Landroid/widget/TextView;

    const v5, 0x7f080409

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 162
    iget-object v1, v3, Lcom/join/mgps/adapter/t$n;->r:Landroid/widget/TextView;

    const-string v5, "\u89e3\u538b\u4e2d"

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 163
    iget-object v1, v3, Lcom/join/mgps/adapter/t$n;->u:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v12, v13}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v12, v13}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 164
    iget-object v1, v3, Lcom/join/mgps/adapter/t$n;->x:Landroid/widget/TextView;

    const-string v4, "\u89e3\u538b\u4e2d.."

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 165
    iget-object v1, v3, Lcom/join/mgps/adapter/t$n;->D:Landroid/widget/ProgressBar;

    const/16 v4, 0x8

    invoke-virtual {v1, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 166
    iget-object v1, v3, Lcom/join/mgps/adapter/t$n;->A:Landroid/widget/ProgressBar;

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 167
    iget-object v1, v3, Lcom/join/mgps/adapter/t$n;->A:Landroid/widget/ProgressBar;

    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    move-result-wide v2

    long-to-int v3, v2

    invoke-virtual {v1, v3}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto/16 :goto_8

    .line 168
    :cond_1f
    iget-object v1, v3, Lcom/join/mgps/adapter/t$n;->r:Landroid/widget/TextView;

    const v5, 0x7f0803f8

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 169
    iget-object v1, v3, Lcom/join/mgps/adapter/t$n;->r:Landroid/widget/TextView;

    const-string v5, "\u7b49\u5f85"

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 170
    iget-object v1, v3, Lcom/join/mgps/adapter/t$n;->u:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCurrentSize()J

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v12, v13}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 171
    iget-object v1, v3, Lcom/join/mgps/adapter/t$n;->x:Landroid/widget/TextView;

    const-string v4, "\u7b49\u5f85\u4e2d"

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 172
    iget-object v1, v3, Lcom/join/mgps/adapter/t$n;->D:Landroid/widget/ProgressBar;

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 173
    iget-object v1, v3, Lcom/join/mgps/adapter/t$n;->A:Landroid/widget/ProgressBar;

    const/16 v4, 0x8

    invoke-virtual {v1, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 174
    iget-object v1, v3, Lcom/join/mgps/adapter/t$n;->D:Landroid/widget/ProgressBar;

    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    move-result-wide v2

    long-to-int v3, v2

    invoke-virtual {v1, v3}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto/16 :goto_8

    :cond_20
    const/16 v4, 0x8

    .line 175
    iget-object v1, v3, Lcom/join/mgps/adapter/t$n;->r:Landroid/widget/TextView;

    const v2, 0x7f080406

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 176
    iget-object v1, v3, Lcom/join/mgps/adapter/t$n;->r:Landroid/widget/TextView;

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 177
    iget-object v1, v3, Lcom/join/mgps/adapter/t$n;->u:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 178
    iget-object v1, v3, Lcom/join/mgps/adapter/t$n;->x:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 179
    iget-object v1, v3, Lcom/join/mgps/adapter/t$n;->D:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 180
    iget-object v1, v3, Lcom/join/mgps/adapter/t$n;->A:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto/16 :goto_8

    .line 181
    :cond_21
    iget-object v1, v3, Lcom/join/mgps/adapter/t$n;->r:Landroid/widget/TextView;

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_8

    .line 182
    :cond_22
    iget-object v1, v3, Lcom/join/mgps/adapter/t$n;->r:Landroid/widget/TextView;

    const v5, 0x7f0803f8

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 183
    iget-object v1, v3, Lcom/join/mgps/adapter/t$n;->r:Landroid/widget/TextView;

    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 184
    iget-object v1, v3, Lcom/join/mgps/adapter/t$n;->u:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCurrentSize()J

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v12, v13}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 185
    iget-object v1, v3, Lcom/join/mgps/adapter/t$n;->x:Landroid/widget/TextView;

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 186
    iget-object v1, v3, Lcom/join/mgps/adapter/t$n;->D:Landroid/widget/ProgressBar;

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 187
    iget-object v1, v3, Lcom/join/mgps/adapter/t$n;->A:Landroid/widget/ProgressBar;

    const/16 v4, 0x8

    invoke-virtual {v1, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 188
    iget-object v1, v3, Lcom/join/mgps/adapter/t$n;->D:Landroid/widget/ProgressBar;

    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    move-result-wide v2

    long-to-int v3, v2

    invoke-virtual {v1, v3}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto/16 :goto_8

    .line 189
    :cond_23
    iget-object v1, v3, Lcom/join/mgps/adapter/t$n;->r:Landroid/widget/TextView;

    const v5, 0x7f0803f8

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 190
    iget-object v1, v3, Lcom/join/mgps/adapter/t$n;->r:Landroid/widget/TextView;

    invoke-virtual {v1, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 191
    iget-object v1, v3, Lcom/join/mgps/adapter/t$n;->u:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCurrentSize()J

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v12, v13}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 192
    iget-object v1, v3, Lcom/join/mgps/adapter/t$n;->x:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSpeed()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 193
    iget-object v1, v3, Lcom/join/mgps/adapter/t$n;->D:Landroid/widget/ProgressBar;

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 194
    iget-object v1, v3, Lcom/join/mgps/adapter/t$n;->A:Landroid/widget/ProgressBar;

    const/16 v4, 0x8

    invoke-virtual {v1, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 195
    iget-object v1, v3, Lcom/join/mgps/adapter/t$n;->D:Landroid/widget/ProgressBar;

    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    move-result-wide v2

    long-to-int v3, v2

    invoke-virtual {v1, v3}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto :goto_8

    :cond_24
    :goto_7
    const/16 v4, 0x8

    .line 196
    iget-object v1, v3, Lcom/join/mgps/adapter/t$n;->o:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 197
    iget-object v1, v3, Lcom/join/mgps/adapter/t$n;->i:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 198
    iget-object v1, v3, Lcom/join/mgps/adapter/t$n;->l:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 199
    iget-object v1, v3, Lcom/join/mgps/adapter/t$n;->c:Landroid/widget/LinearLayout;

    new-instance v3, Lcom/join/mgps/adapter/t$c;

    invoke-direct {v3, v0, v2, v5}, Lcom/join/mgps/adapter/t$c;-><init>(Lcom/join/mgps/adapter/t;Lcom/github/snowdream/android/app/downloader/DownloadTask;Lcom/join/mgps/db/tables/WarMatchAndLocalTable;)V

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_8

    .line 200
    :cond_25
    iget-object v1, v3, Lcom/join/mgps/adapter/t$n;->c:Landroid/widget/LinearLayout;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_26
    :goto_8
    return-void
.end method
