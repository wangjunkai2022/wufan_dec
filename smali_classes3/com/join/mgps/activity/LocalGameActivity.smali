.class public Lcom/join/mgps/activity/LocalGameActivity;
.super Landroidx/fragment/app/FragmentActivity;
.source "LocalGameActivity.java"


# annotations
.annotation build Lorg/androidannotations/annotations/EActivity;
    value = 0x7f0c003c
.end annotation


# static fields
.field public static final o:Ljava/lang/String; = "\u7f51\u6e38"

.field public static final p:Ljava/lang/String; = "\u5355\u673a"

.field public static final q:Ljava/lang/String; = "\u5bf9\u6218"

.field public static final r:Ljava/lang/String; = "\u5168\u90e8"


# instance fields
.field a:Landroid/widget/ImageView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field b:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private c:Z

.field private d:Z

.field e:Lcom/join/mgps/customview/TabPageIndicator;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field f:Landroidx/viewpager/widget/ViewPager;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private g:Lcom/join/mgps/customview/d0;

.field private h:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field private i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private j:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/github/snowdream/android/app/downloader/DownloadTask;",
            ">;>;"
        }
    .end annotation
.end field

.field k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field l:Lcom/join/mgps/rpc/d;

.field m:Lcom/join/mgps/pref/PrefDef_;
    .annotation build Lorg/androidannotations/annotations/sharedpreferences/Pref;
    .end annotation
.end field

.field private n:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/github/snowdream/android/app/downloader/DownloadTask;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/FragmentActivity;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/join/mgps/activity/LocalGameActivity;->c:Z

    .line 3
    iput-boolean v0, p0, Lcom/join/mgps/activity/LocalGameActivity;->d:Z

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/LocalGameActivity;->h:Ljava/util/ArrayList;

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/LocalGameActivity;->i:Ljava/util/List;

    .line 6
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/LocalGameActivity;->j:Ljava/util/Map;

    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Lcom/join/mgps/activity/LocalGameActivity;->k:Ljava/util/List;

    return-void
.end method

.method private C0(Lcom/github/snowdream/android/app/downloader/DownloadTask;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/snowdream/android/app/downloader/DownloadTask;",
            "Ljava/util/List<",
            "Lcom/github/snowdream/android/app/downloader/DownloadTask;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 2
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStatus(I)V

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    .line 4
    invoke-interface {p2, v2, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_2
    return-void
.end method

.method private D0(Lcom/github/snowdream/android/app/downloader/DownloadTask;ILjava/lang/String;Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/snowdream/android/app/downloader/DownloadTask;",
            "I",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/github/snowdream/android/app/downloader/DownloadTask;",
            ">;)V"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/activity/LocalGameActivity;->h:Ljava/util/ArrayList;

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gt v0, p2, :cond_0

    goto/16 :goto_5

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 2
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 3
    :goto_0
    iget-object v2, p0, Lcom/join/mgps/activity/LocalGameActivity;->h:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lcom/join/mgps/fragment/u3;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_e

    const/4 v2, 0x5

    const/4 v3, -0x1

    const/4 v4, 0x1

    const-string v5, "\u5168\u90e8"

    const-string v6, "\u5bf9\u6218"

    if-ne v1, v2, :cond_5

    .line 4
    :try_start_1
    iget-boolean p3, p0, Lcom/join/mgps/activity/LocalGameActivity;->c:Z

    if-eqz p3, :cond_2

    .line 5
    iget-object p3, p0, Lcom/join/mgps/activity/LocalGameActivity;->j:Ljava/util/Map;

    invoke-interface {p3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/List;

    invoke-direct {p0, p1, p3}, Lcom/join/mgps/activity/LocalGameActivity;->C0(Lcom/github/snowdream/android/app/downloader/DownloadTask;Ljava/util/List;)V

    .line 6
    :cond_2
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->isIs_fight()I

    move-result p3

    if-ne p3, v4, :cond_4

    iget-boolean p3, p0, Lcom/join/mgps/activity/LocalGameActivity;->d:Z

    if-eqz p3, :cond_4

    .line 7
    iget-object p3, p0, Lcom/join/mgps/activity/LocalGameActivity;->i:Ljava/util/List;

    invoke-interface {p3, v6}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p3

    if-eq p3, v3, :cond_3

    .line 8
    iget-object p3, p0, Lcom/join/mgps/activity/LocalGameActivity;->j:Ljava/util/Map;

    invoke-interface {p3, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/List;

    .line 9
    invoke-direct {p0, p1, p3}, Lcom/join/mgps/activity/LocalGameActivity;->C0(Lcom/github/snowdream/android/app/downloader/DownloadTask;Ljava/util/List;)V

    .line 10
    iget-object p1, p0, Lcom/join/mgps/activity/LocalGameActivity;->h:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/join/mgps/activity/LocalGameActivity;->i:Ljava/util/List;

    invoke-interface {v1, v6}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/fragment/u3;

    invoke-virtual {p1, p3}, Lcom/join/mgps/fragment/u3;->O(Ljava/util/List;)V

    goto :goto_1

    .line 11
    :cond_3
    iget-object p2, p0, Lcom/join/mgps/activity/LocalGameActivity;->k:Ljava/util/List;

    invoke-interface {p2, v6}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p2

    .line 12
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 13
    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 14
    new-instance p1, Lcom/join/mgps/fragment/v3;

    invoke-direct {p1}, Lcom/join/mgps/fragment/v3;-><init>()V

    .line 15
    invoke-virtual {p1, p3}, Lcom/join/mgps/fragment/u3;->P(Ljava/util/List;)V

    .line 16
    iget-object p4, p0, Lcom/join/mgps/activity/LocalGameActivity;->j:Ljava/util/Map;

    invoke-interface {p4, v6, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    invoke-direct {p0, p2}, Lcom/join/mgps/activity/LocalGameActivity;->G0(I)I

    move-result p2

    .line 18
    iget-object p3, p0, Lcom/join/mgps/activity/LocalGameActivity;->i:Ljava/util/List;

    invoke-interface {p3, p2, v6}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 19
    iget-object p3, p0, Lcom/join/mgps/activity/LocalGameActivity;->h:Ljava/util/ArrayList;

    invoke-virtual {p3, p2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 20
    invoke-virtual {p0}, Lcom/join/mgps/activity/LocalGameActivity;->K0()V

    return-void

    .line 21
    :cond_4
    :goto_1
    iget-object p1, p0, Lcom/join/mgps/activity/LocalGameActivity;->h:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/fragment/u3;

    invoke-virtual {p1, p4}, Lcom/join/mgps/fragment/u3;->O(Ljava/util/List;)V

    .line 22
    iget-boolean p1, p0, Lcom/join/mgps/activity/LocalGameActivity;->c:Z

    if-eqz p1, :cond_e

    .line 23
    iget-object p1, p0, Lcom/join/mgps/activity/LocalGameActivity;->h:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/fragment/u3;

    iget-object p2, p0, Lcom/join/mgps/activity/LocalGameActivity;->j:Ljava/util/Map;

    invoke-interface {p2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    invoke-virtual {p1, p2}, Lcom/join/mgps/fragment/u3;->O(Ljava/util/List;)V

    goto/16 :goto_6

    :cond_5
    const/4 v2, 0x7

    if-eq v1, v2, :cond_6

    const/4 v2, 0x2

    if-ne v1, v2, :cond_e

    .line 24
    :cond_6
    iget-boolean v1, p0, Lcom/join/mgps/activity/LocalGameActivity;->c:Z

    if-eqz v1, :cond_8

    .line 25
    iget-object v1, p0, Lcom/join/mgps/activity/LocalGameActivity;->j:Ljava/util/Map;

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-direct {p0, p1, v1}, Lcom/join/mgps/activity/LocalGameActivity;->L0(Lcom/github/snowdream/android/app/downloader/DownloadTask;Ljava/util/List;)V

    .line 26
    iget-object v1, p0, Lcom/join/mgps/activity/LocalGameActivity;->j:Ljava/util/Map;

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_7

    .line 27
    iget-object v1, p0, Lcom/join/mgps/activity/LocalGameActivity;->i:Ljava/util/List;

    invoke-interface {v1, v5}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 28
    iget-object v2, p0, Lcom/join/mgps/activity/LocalGameActivity;->i:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 29
    iget-object v2, p0, Lcom/join/mgps/activity/LocalGameActivity;->h:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_2

    .line 30
    :cond_7
    iget-boolean v1, p0, Lcom/join/mgps/activity/LocalGameActivity;->c:Z

    if-eqz v1, :cond_8

    .line 31
    iget-object v1, p0, Lcom/join/mgps/activity/LocalGameActivity;->h:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/fragment/u3;

    iget-object v2, p0, Lcom/join/mgps/activity/LocalGameActivity;->j:Ljava/util/Map;

    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-virtual {v1, v2}, Lcom/join/mgps/fragment/u3;->O(Ljava/util/List;)V

    .line 32
    :cond_8
    :goto_2
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_a

    .line 33
    iget-object p2, p0, Lcom/join/mgps/activity/LocalGameActivity;->i:Ljava/util/List;

    invoke-interface {p2, p3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p2

    if-eq p2, v3, :cond_9

    .line 34
    iget-object p4, p0, Lcom/join/mgps/activity/LocalGameActivity;->i:Ljava/util/List;

    invoke-interface {p4, p2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 35
    iget-object p4, p0, Lcom/join/mgps/activity/LocalGameActivity;->h:Ljava/util/ArrayList;

    invoke-virtual {p4, p2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 36
    iget-object p2, p0, Lcom/join/mgps/activity/LocalGameActivity;->j:Ljava/util/Map;

    invoke-interface {p2, p3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9
    const/4 v0, 0x1

    goto :goto_3

    .line 37
    :cond_a
    iget-object p3, p0, Lcom/join/mgps/activity/LocalGameActivity;->h:Ljava/util/ArrayList;

    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/join/mgps/fragment/u3;

    invoke-virtual {p2, p4}, Lcom/join/mgps/fragment/u3;->O(Ljava/util/List;)V

    .line 38
    :goto_3
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->isIs_fight()I

    move-result p2

    if-ne p2, v4, :cond_c

    iget-boolean p2, p0, Lcom/join/mgps/activity/LocalGameActivity;->d:Z

    if-eqz p2, :cond_c

    .line 39
    iget-object p2, p0, Lcom/join/mgps/activity/LocalGameActivity;->j:Ljava/util/Map;

    invoke-interface {p2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    .line 40
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/activity/LocalGameActivity;->L0(Lcom/github/snowdream/android/app/downloader/DownloadTask;Ljava/util/List;)V

    .line 41
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_b

    .line 42
    iget-object p1, p0, Lcom/join/mgps/activity/LocalGameActivity;->h:Ljava/util/ArrayList;

    iget-object p2, p0, Lcom/join/mgps/activity/LocalGameActivity;->i:Ljava/util/List;

    invoke-interface {p2, v6}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 43
    iget-object p1, p0, Lcom/join/mgps/activity/LocalGameActivity;->i:Ljava/util/List;

    invoke-interface {p1, v6}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 44
    iget-object p1, p0, Lcom/join/mgps/activity/LocalGameActivity;->j:Ljava/util/Map;

    invoke-interface {p1, v6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 45
    :cond_b
    iget-object p1, p0, Lcom/join/mgps/activity/LocalGameActivity;->h:Ljava/util/ArrayList;

    iget-object p3, p0, Lcom/join/mgps/activity/LocalGameActivity;->i:Ljava/util/List;

    invoke-interface {p3, v6}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p3

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/fragment/u3;

    invoke-virtual {p1, p2}, Lcom/join/mgps/fragment/u3;->O(Ljava/util/List;)V

    :cond_c
    move v4, v0

    :goto_4
    if-eqz v4, :cond_e

    .line 46
    invoke-virtual {p0}, Lcom/join/mgps/activity/LocalGameActivity;->K0()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_6

    :cond_d
    :goto_5
    return-void

    :catch_0
    move-exception p1

    .line 47
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_e
    :goto_6
    return-void
.end method

.method private E0(Lcom/github/snowdream/android/app/downloader/DownloadTask;ILjava/lang/String;)V
    .locals 5

    .line 1
    iget-boolean p2, p0, Lcom/join/mgps/activity/LocalGameActivity;->c:Z

    const/4 v0, -0x1

    if-eqz p2, :cond_1

    .line 2
    iget-object p2, p0, Lcom/join/mgps/activity/LocalGameActivity;->i:Ljava/util/List;

    const-string v1, "\u5168\u90e8"

    invoke-interface {p2, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p2

    if-eq p2, v0, :cond_0

    .line 3
    iget-object p2, p0, Lcom/join/mgps/activity/LocalGameActivity;->j:Ljava/util/Map;

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    const/4 v1, 0x0

    .line 4
    invoke-interface {p2, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 5
    iget-object v2, p0, Lcom/join/mgps/activity/LocalGameActivity;->h:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/fragment/u3;

    invoke-virtual {v1, p2}, Lcom/join/mgps/fragment/u3;->O(Ljava/util/List;)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object p2, p0, Lcom/join/mgps/activity/LocalGameActivity;->k:Ljava/util/List;

    invoke-interface {p2, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p2

    .line 7
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 8
    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9
    new-instance v3, Lcom/join/mgps/fragment/v3;

    invoke-direct {v3}, Lcom/join/mgps/fragment/v3;-><init>()V

    .line 10
    invoke-virtual {v3, v2}, Lcom/join/mgps/fragment/u3;->P(Ljava/util/List;)V

    .line 11
    invoke-direct {p0, p2}, Lcom/join/mgps/activity/LocalGameActivity;->G0(I)I

    move-result p2

    .line 12
    iget-object v4, p0, Lcom/join/mgps/activity/LocalGameActivity;->i:Ljava/util/List;

    invoke-interface {v4, p2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 13
    iget-object v4, p0, Lcom/join/mgps/activity/LocalGameActivity;->h:Ljava/util/ArrayList;

    invoke-virtual {v4, p2, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 14
    iget-object p2, p0, Lcom/join/mgps/activity/LocalGameActivity;->j:Ljava/util/Map;

    invoke-interface {p2, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    :cond_1
    :goto_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/join/mgps/enums/ConstantIntEnum;->CHOICENESS:Lcom/join/mgps/enums/ConstantIntEnum;

    invoke-virtual {v1}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    move-result v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 16
    invoke-virtual {p0}, Lcom/join/mgps/activity/LocalGameActivity;->K0()V

    return-void

    .line 17
    :cond_2
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->isIs_fight()I

    move-result p2

    const/4 v1, 0x1

    if-ne p2, v1, :cond_4

    iget-boolean p2, p0, Lcom/join/mgps/activity/LocalGameActivity;->d:Z

    if-eqz p2, :cond_4

    .line 18
    iget-object p2, p0, Lcom/join/mgps/activity/LocalGameActivity;->i:Ljava/util/List;

    const-string v1, "\u5bf9\u6218"

    invoke-interface {p2, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p2

    if-eq p2, v0, :cond_3

    .line 19
    iget-object p2, p0, Lcom/join/mgps/activity/LocalGameActivity;->j:Ljava/util/Map;

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    .line 20
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/activity/LocalGameActivity;->C0(Lcom/github/snowdream/android/app/downloader/DownloadTask;Ljava/util/List;)V

    .line 21
    iget-object v0, p0, Lcom/join/mgps/activity/LocalGameActivity;->h:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/join/mgps/activity/LocalGameActivity;->i:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/fragment/u3;

    invoke-virtual {v0, p2}, Lcom/join/mgps/fragment/u3;->O(Ljava/util/List;)V

    goto :goto_1

    .line 22
    :cond_3
    iget-object p2, p0, Lcom/join/mgps/activity/LocalGameActivity;->k:Ljava/util/List;

    invoke-interface {p2, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p2

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 24
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 25
    new-instance v2, Lcom/join/mgps/fragment/v3;

    invoke-direct {v2}, Lcom/join/mgps/fragment/v3;-><init>()V

    .line 26
    invoke-virtual {v2, v0}, Lcom/join/mgps/fragment/u3;->P(Ljava/util/List;)V

    .line 27
    iget-object v3, p0, Lcom/join/mgps/activity/LocalGameActivity;->j:Ljava/util/Map;

    invoke-interface {v3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    invoke-direct {p0, p2}, Lcom/join/mgps/activity/LocalGameActivity;->G0(I)I

    move-result p2

    .line 29
    iget-object v0, p0, Lcom/join/mgps/activity/LocalGameActivity;->i:Ljava/util/List;

    invoke-interface {v0, p2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 30
    iget-object v0, p0, Lcom/join/mgps/activity/LocalGameActivity;->h:Ljava/util/ArrayList;

    invoke-virtual {v0, p2, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 31
    :cond_4
    :goto_1
    iget-object p2, p0, Lcom/join/mgps/activity/LocalGameActivity;->k:Ljava/util/List;

    invoke-interface {p2, p3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p2

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 33
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 34
    new-instance p1, Lcom/join/mgps/fragment/v3;

    invoke-direct {p1}, Lcom/join/mgps/fragment/v3;-><init>()V

    .line 35
    invoke-virtual {p1, v0}, Lcom/join/mgps/fragment/u3;->P(Ljava/util/List;)V

    .line 36
    invoke-direct {p0, p2}, Lcom/join/mgps/activity/LocalGameActivity;->G0(I)I

    move-result p2

    .line 37
    iget-object v1, p0, Lcom/join/mgps/activity/LocalGameActivity;->i:Ljava/util/List;

    invoke-interface {v1, p2, p3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 38
    iget-object v1, p0, Lcom/join/mgps/activity/LocalGameActivity;->h:Ljava/util/ArrayList;

    invoke-virtual {v1, p2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 39
    iget-object p1, p0, Lcom/join/mgps/activity/LocalGameActivity;->j:Ljava/util/Map;

    invoke-interface {p1, p3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    invoke-virtual {p0}, Lcom/join/mgps/activity/LocalGameActivity;->K0()V

    return-void
.end method

.method private F0(Lcom/github/snowdream/android/app/downloader/DownloadTask;)Ljava/lang/String;
    .locals 5

    .line 1
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getRomType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPlugin_num()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setRomType(Ljava/lang/String;)V

    .line 3
    :cond_0
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getRomType()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/join/mgps/enums/ConstantIntEnum;->FBA:Lcom/join/mgps/enums/ConstantIntEnum;

    invoke-virtual {v2}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v2}, Lcom/join/mgps/enums/ConstantIntEnum;->nickName()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 5
    :cond_1
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getRomType()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/join/mgps/enums/ConstantIntEnum;->FC:Lcom/join/mgps/enums/ConstantIntEnum;

    invoke-virtual {v2}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6
    invoke-virtual {v2}, Lcom/join/mgps/enums/ConstantIntEnum;->nickName()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 7
    :cond_2
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getRomType()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/join/mgps/enums/ConstantIntEnum;->GBA:Lcom/join/mgps/enums/ConstantIntEnum;

    invoke-virtual {v2}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 8
    invoke-virtual {v2}, Lcom/join/mgps/enums/ConstantIntEnum;->nickName()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 9
    :cond_3
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getRomType()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/join/mgps/enums/ConstantIntEnum;->PSP:Lcom/join/mgps/enums/ConstantIntEnum;

    invoke-virtual {v2}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 10
    invoke-virtual {v2}, Lcom/join/mgps/enums/ConstantIntEnum;->nickName()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 11
    :cond_4
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getRomType()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/join/mgps/enums/ConstantIntEnum;->NDS:Lcom/join/mgps/enums/ConstantIntEnum;

    invoke-virtual {v2}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 12
    invoke-virtual {v2}, Lcom/join/mgps/enums/ConstantIntEnum;->nickName()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 13
    :cond_5
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getRomType()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/join/mgps/enums/ConstantIntEnum;->PS2:Lcom/join/mgps/enums/ConstantIntEnum;

    invoke-virtual {v2}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 14
    invoke-virtual {v2}, Lcom/join/mgps/enums/ConstantIntEnum;->nickName()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 15
    :cond_6
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getRomType()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/join/mgps/enums/ConstantIntEnum;->GBC:Lcom/join/mgps/enums/ConstantIntEnum;

    invoke-virtual {v2}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 16
    invoke-virtual {v2}, Lcom/join/mgps/enums/ConstantIntEnum;->nickName()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 17
    :cond_7
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getRomType()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/join/mgps/enums/ConstantIntEnum;->MD:Lcom/join/mgps/enums/ConstantIntEnum;

    invoke-virtual {v2}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 18
    invoke-virtual {v2}, Lcom/join/mgps/enums/ConstantIntEnum;->nickName()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 19
    :cond_8
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getRomType()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/join/mgps/enums/ConstantIntEnum;->PS:Lcom/join/mgps/enums/ConstantIntEnum;

    invoke-virtual {v2}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 20
    invoke-virtual {v2}, Lcom/join/mgps/enums/ConstantIntEnum;->nickName()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 21
    :cond_9
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getRomType()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/join/mgps/enums/ConstantIntEnum;->SFC:Lcom/join/mgps/enums/ConstantIntEnum;

    invoke-virtual {v2}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 22
    invoke-virtual {v2}, Lcom/join/mgps/enums/ConstantIntEnum;->nickName()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 23
    :cond_a
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getRomType()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/join/mgps/enums/ConstantIntEnum;->WSC:Lcom/join/mgps/enums/ConstantIntEnum;

    invoke-virtual {v2}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 24
    invoke-virtual {v2}, Lcom/join/mgps/enums/ConstantIntEnum;->nickName()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 25
    :cond_b
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getRomType()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/join/mgps/enums/ConstantIntEnum;->N64:Lcom/join/mgps/enums/ConstantIntEnum;

    invoke-virtual {v2}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 26
    invoke-virtual {v2}, Lcom/join/mgps/enums/ConstantIntEnum;->nickName()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 27
    :cond_c
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getRomType()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/join/mgps/enums/ConstantIntEnum;->ONS:Lcom/join/mgps/enums/ConstantIntEnum;

    invoke-virtual {v2}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 28
    invoke-virtual {v2}, Lcom/join/mgps/enums/ConstantIntEnum;->nickName()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 29
    :cond_d
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getRomType()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/join/mgps/enums/ConstantIntEnum;->DC:Lcom/join/mgps/enums/ConstantIntEnum;

    invoke-virtual {v2}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 30
    invoke-virtual {v2}, Lcom/join/mgps/enums/ConstantIntEnum;->nickName()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 31
    :cond_e
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getTipBeans()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_f
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/TipBean;

    .line 32
    invoke-virtual {v0}, Lcom/join/mgps/dto/TipBean;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\u7f51\u6e38"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v4, -0x1

    if-eq v1, v4, :cond_10

    return-object v2

    .line 33
    :cond_10
    invoke-virtual {v0}, Lcom/join/mgps/dto/TipBean;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\u5355\u673a"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v4, :cond_11

    return-object v2

    .line 34
    :cond_11
    invoke-virtual {v0}, Lcom/join/mgps/dto/TipBean;->getId()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/join/mgps/enums/ConstantIntEnum;->CHOICENESS:Lcom/join/mgps/enums/ConstantIntEnum;

    invoke-virtual {v2}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 35
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_12
    const/4 p1, 0x0

    return-object p1
.end method

.method private G0(I)I
    .locals 2

    add-int/lit8 p1, p1, -0x1

    :goto_0
    if-ltz p1, :cond_1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/LocalGameActivity;->i:Ljava/util/List;

    iget-object v1, p0, Lcom/join/mgps/activity/LocalGameActivity;->k:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/LocalGameActivity;->i:Ljava/util/List;

    iget-object v1, p0, Lcom/join/mgps/activity/LocalGameActivity;->k:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    return p1

    :cond_0
    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private I0(Ljava/util/List;)V
    .locals 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v1, p0

    const-string v0, "\u5355\u673a"

    const-string v2, "\u7f51\u6e38"

    const-string v3, ""

    .line 1
    :try_start_0
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lg1/f;->N(Lcom/join/mgps/enums/Dtype;)Ljava/util/List;

    move-result-object v4

    iput-object v4, v1, Lcom/join/mgps/activity/LocalGameActivity;->n:Ljava/util/List;

    .line 2
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_16

    .line 3
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 4
    iget-object v5, v1, Lcom/join/mgps/activity/LocalGameActivity;->n:Ljava/util/List;

    invoke-interface {v4, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 5
    iget-object v5, v1, Lcom/join/mgps/activity/LocalGameActivity;->j:Ljava/util/Map;

    const-string v6, "\u5168\u90e8"

    invoke-interface {v5, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 7
    iget-object v5, v1, Lcom/join/mgps/activity/LocalGameActivity;->j:Ljava/util/Map;

    invoke-interface {v5, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 9
    iget-object v6, v1, Lcom/join/mgps/activity/LocalGameActivity;->j:Ljava/util/Map;

    invoke-interface {v6, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 11
    iget-object v7, v1, Lcom/join/mgps/activity/LocalGameActivity;->j:Ljava/util/Map;

    const-string v8, "\u5bf9\u6218"

    invoke-interface {v7, v8, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 13
    iget-object v8, v1, Lcom/join/mgps/activity/LocalGameActivity;->j:Ljava/util/Map;

    const-string v9, "FC"

    invoke-interface {v8, v9, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 15
    iget-object v9, v1, Lcom/join/mgps/activity/LocalGameActivity;->j:Ljava/util/Map;

    const-string v10, "\u8857\u673a"

    invoke-interface {v9, v10, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 17
    iget-object v10, v1, Lcom/join/mgps/activity/LocalGameActivity;->j:Ljava/util/Map;

    const-string v11, "GBA"

    invoke-interface {v10, v11, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 19
    iget-object v11, v1, Lcom/join/mgps/activity/LocalGameActivity;->j:Ljava/util/Map;

    const-string v12, "PSP"

    invoke-interface {v11, v12, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 21
    iget-object v12, v1, Lcom/join/mgps/activity/LocalGameActivity;->j:Ljava/util/Map;

    const-string v13, "NDS"

    invoke-interface {v12, v13, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 23
    iget-object v13, v1, Lcom/join/mgps/activity/LocalGameActivity;->j:Ljava/util/Map;

    const-string v14, "GBC"

    invoke-interface {v13, v14, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 25
    iget-object v14, v1, Lcom/join/mgps/activity/LocalGameActivity;->j:Ljava/util/Map;

    const-string v15, "MD"

    invoke-interface {v14, v15, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 27
    iget-object v15, v1, Lcom/join/mgps/activity/LocalGameActivity;->j:Ljava/util/Map;

    move-object/from16 v16, v5

    const-string v5, "PS"

    invoke-interface {v15, v5, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 29
    iget-object v15, v1, Lcom/join/mgps/activity/LocalGameActivity;->j:Ljava/util/Map;

    move-object/from16 v17, v0

    const-string v0, "SFC"

    invoke-interface {v15, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 31
    iget-object v15, v1, Lcom/join/mgps/activity/LocalGameActivity;->j:Ljava/util/Map;

    move-object/from16 v18, v4

    const-string v4, "WSC"

    invoke-interface {v15, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 33
    iget-object v15, v1, Lcom/join/mgps/activity/LocalGameActivity;->j:Ljava/util/Map;

    move-object/from16 v19, v2

    const-string v2, "N64"

    invoke-interface {v15, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 35
    iget-object v15, v1, Lcom/join/mgps/activity/LocalGameActivity;->j:Ljava/util/Map;

    move-object/from16 v20, v4

    const-string v4, "ONS"

    invoke-interface {v15, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 37
    iget-object v15, v1, Lcom/join/mgps/activity/LocalGameActivity;->j:Ljava/util/Map;

    move-object/from16 v21, v2

    const-string v2, "DC"

    invoke-interface {v15, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    iget-object v2, v1, Lcom/join/mgps/activity/LocalGameActivity;->n:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v15
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    if-eqz v15, :cond_13

    :try_start_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-object/from16 v22, v2

    .line 39
    invoke-virtual {v15}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->isIs_fight()I

    move-result v2

    const/4 v1, 0x1

    if-ne v2, v1, :cond_0

    .line 40
    invoke-interface {v6, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 41
    :cond_0
    invoke-virtual {v15}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getRomType()Ljava/lang/String;

    move-result-object v1

    .line 42
    invoke-static {v1}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 43
    invoke-virtual {v15}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPlugin_num()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v15, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setRomType(Ljava/lang/String;)V

    .line 44
    :cond_1
    invoke-virtual {v15}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getRomType()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v23, Lcom/join/mgps/enums/ConstantIntEnum;->FBA:Lcom/join/mgps/enums/ConstantIntEnum;

    move-object/from16 v24, v6

    invoke-virtual/range {v23 .. v23}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    move-result v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 45
    invoke-interface {v8, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    move-object/from16 v1, p0

    move-object/from16 v2, v22

    move-object/from16 v6, v24

    goto :goto_0

    .line 46
    :cond_2
    invoke-virtual {v15}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getRomType()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/join/mgps/enums/ConstantIntEnum;->FC:Lcom/join/mgps/enums/ConstantIntEnum;

    invoke-virtual {v6}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    move-result v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 47
    invoke-interface {v7, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 48
    :cond_3
    invoke-virtual {v15}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getRomType()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/join/mgps/enums/ConstantIntEnum;->GBA:Lcom/join/mgps/enums/ConstantIntEnum;

    invoke-virtual {v6}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    move-result v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 49
    invoke-interface {v9, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 50
    :cond_4
    invoke-virtual {v15}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getRomType()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/join/mgps/enums/ConstantIntEnum;->PSP:Lcom/join/mgps/enums/ConstantIntEnum;

    invoke-virtual {v6}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    move-result v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 51
    invoke-interface {v10, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 52
    :cond_5
    invoke-virtual {v15}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getRomType()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/join/mgps/enums/ConstantIntEnum;->NDS:Lcom/join/mgps/enums/ConstantIntEnum;

    invoke-virtual {v6}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    move-result v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 53
    invoke-interface {v11, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 54
    :cond_6
    invoke-virtual {v15}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getRomType()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/join/mgps/enums/ConstantIntEnum;->PS2:Lcom/join/mgps/enums/ConstantIntEnum;

    invoke-virtual {v6}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    move-result v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 55
    invoke-interface {v11, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 56
    :cond_7
    invoke-virtual {v15}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getRomType()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/join/mgps/enums/ConstantIntEnum;->GBC:Lcom/join/mgps/enums/ConstantIntEnum;

    invoke-virtual {v6}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    move-result v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 57
    invoke-interface {v12, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 58
    :cond_8
    invoke-virtual {v15}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getRomType()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/join/mgps/enums/ConstantIntEnum;->MD:Lcom/join/mgps/enums/ConstantIntEnum;

    invoke-virtual {v6}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    move-result v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 59
    invoke-interface {v13, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 60
    :cond_9
    invoke-virtual {v15}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getRomType()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/join/mgps/enums/ConstantIntEnum;->PS:Lcom/join/mgps/enums/ConstantIntEnum;

    invoke-virtual {v6}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    move-result v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 61
    invoke-interface {v14, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 62
    :cond_a
    invoke-virtual {v15}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getRomType()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/join/mgps/enums/ConstantIntEnum;->SFC:Lcom/join/mgps/enums/ConstantIntEnum;

    invoke-virtual {v6}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    move-result v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 63
    invoke-interface {v5, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 64
    :cond_b
    invoke-virtual {v15}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getRomType()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/join/mgps/enums/ConstantIntEnum;->WSC:Lcom/join/mgps/enums/ConstantIntEnum;

    invoke-virtual {v6}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    move-result v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 65
    invoke-interface {v0, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 66
    :cond_c
    invoke-virtual {v15}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getRomType()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/join/mgps/enums/ConstantIntEnum;->N64:Lcom/join/mgps/enums/ConstantIntEnum;

    invoke-virtual {v6}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    move-result v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    move-object/from16 v1, v20

    .line 67
    invoke-interface {v1, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v20, v1

    move-object/from16 v2, v22

    :goto_2
    move-object/from16 v6, v24

    move-object/from16 v1, p0

    goto/16 :goto_0

    :cond_d
    move-object/from16 v1, v20

    .line 68
    invoke-virtual {v15}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getRomType()Ljava/lang/String;

    move-result-object v2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v20, Lcom/join/mgps/enums/ConstantIntEnum;->ONS:Lcom/join/mgps/enums/ConstantIntEnum;

    move-object/from16 v23, v0

    invoke-virtual/range {v20 .. v20}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    move-result v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    move-object/from16 v0, v21

    .line 69
    invoke-interface {v0, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v21, v0

    :goto_3
    move-object/from16 v20, v1

    :goto_4
    move-object/from16 v2, v22

    move-object/from16 v0, v23

    goto :goto_2

    :cond_e
    move-object/from16 v0, v21

    .line 70
    invoke-virtual {v15}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getRomType()Ljava/lang/String;

    move-result-object v2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v20, Lcom/join/mgps/enums/ConstantIntEnum;->DC:Lcom/join/mgps/enums/ConstantIntEnum;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v20}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    move-result v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 71
    invoke-interface {v4, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 72
    :cond_f
    invoke-virtual {v15}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getTipBeans()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_12

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/join/mgps/dto/TipBean;

    .line 73
    invoke-virtual {v2}, Lcom/join/mgps/dto/TipBean;->getName()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    move-object/from16 v19, v0

    const/4 v0, -0x1

    if-eq v6, v0, :cond_10

    move-object/from16 v6, v18

    .line 74
    invoke-interface {v6, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, v16

    goto :goto_6

    :cond_10
    move-object/from16 v6, v18

    .line 75
    invoke-virtual {v2}, Lcom/join/mgps/dto/TipBean;->getName()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v17, v0

    const/4 v0, -0x1

    if-eq v2, v0, :cond_11

    move-object/from16 v0, v16

    .line 76
    invoke-interface {v0, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_11
    move-object/from16 v18, v6

    move-object/from16 v0, v20

    goto :goto_5

    :cond_12
    move-object/from16 v0, v16

    move-object/from16 v6, v18

    :goto_6
    move-object/from16 v16, v0

    move-object/from16 v20, v1

    move-object/from16 v18, v6

    goto :goto_4

    .line 77
    :cond_13
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_14
    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_15

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object/from16 v2, p0

    .line 78
    :try_start_2
    iget-object v3, v2, Lcom/join/mgps/activity/LocalGameActivity;->j:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    iget-object v3, v2, Lcom/join/mgps/activity/LocalGameActivity;->j:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_14

    .line 79
    new-instance v3, Lcom/join/mgps/fragment/v3;

    invoke-direct {v3}, Lcom/join/mgps/fragment/v3;-><init>()V

    .line 80
    iget-object v4, v2, Lcom/join/mgps/activity/LocalGameActivity;->j:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-virtual {v3, v4}, Lcom/join/mgps/fragment/u3;->P(Ljava/util/List;)V

    .line 81
    iget-object v4, v2, Lcom/join/mgps/activity/LocalGameActivity;->h:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 82
    iget-object v3, v2, Lcom/join/mgps/activity/LocalGameActivity;->i:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_15
    move-object/from16 v2, p0

    .line 83
    invoke-virtual/range {p0 .. p0}, Lcom/join/mgps/activity/LocalGameActivity;->N0()V

    goto :goto_9

    :catch_0
    move-exception v0

    move-object/from16 v2, p0

    goto :goto_8

    :cond_16
    move-object v2, v1

    .line 84
    invoke-virtual/range {p0 .. p0}, Lcom/join/mgps/activity/LocalGameActivity;->M0()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_9

    :catch_1
    move-exception v0

    goto :goto_8

    :catch_2
    move-exception v0

    move-object v2, v1

    .line 85
    :goto_8
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 86
    invoke-virtual/range {p0 .. p0}, Lcom/join/mgps/activity/LocalGameActivity;->M0()V

    :goto_9
    return-void
.end method

.method private L0(Lcom/github/snowdream/android/app/downloader/DownloadTask;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/snowdream/android/app/downloader/DownloadTask;",
            "Ljava/util/List<",
            "Lcom/github/snowdream/android/app/downloader/DownloadTask;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    .line 2
    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 4
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    invoke-interface {p2}, Ljava/util/Iterator;->remove()V

    :cond_1
    return-void
.end method


# virtual methods
.method H0()V
    .locals 5
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    const-string v0, "\u5355\u673a"

    .line 1
    :try_start_0
    iget-object v1, p0, Lcom/join/mgps/activity/LocalGameActivity;->l:Lcom/join/mgps/rpc/d;

    invoke-static {p0}, Lcom/join/mgps/Util/RequestBeanUtil;->getInstance(Landroid/content/Context;)Lcom/join/mgps/Util/RequestBeanUtil;

    move-result-object v2

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/join/android/app/common/utils/j;->n(Landroid/content/Context;)Lcom/join/android/app/common/utils/j;

    move-result-object v3

    invoke-virtual {v3}, Lcom/join/android/app/common/utils/j;->z()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Lcom/join/mgps/Util/RequestBeanUtil;->getGameSortRequestBean(Ljava/lang/String;Ljava/lang/String;)Lcom/join/mgps/dto/CommonRequestBean;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/join/mgps/rpc/d;->B0(Lcom/join/mgps/dto/CommonRequestBean;)Lcom/join/mgps/dto/ResultMainBean;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 2
    invoke-virtual {v1}, Lcom/join/mgps/dto/ResultMainBean;->getFlag()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    invoke-virtual {v1}, Lcom/join/mgps/dto/ResultMainBean;->getMessages()Lcom/join/mgps/dto/ResultMessageBean;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 3
    invoke-virtual {v1}, Lcom/join/mgps/dto/ResultMainBean;->getMessages()Lcom/join/mgps/dto/ResultMessageBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/mgps/dto/ResultMessageBean;->getData()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_2

    .line 4
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 5
    iget-object v2, p0, Lcom/join/mgps/activity/LocalGameActivity;->k:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 6
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/join/mgps/dto/GameSortBean;

    .line 7
    invoke-virtual {v2}, Lcom/join/mgps/dto/GameSortBean;->getName()Ljava/lang/String;

    move-result-object v3

    .line 8
    invoke-virtual {v2}, Lcom/join/mgps/dto/GameSortBean;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v4, -0x1

    if-eq v2, v4, :cond_0

    move-object v3, v0

    .line 9
    :cond_0
    iget-object v2, p0, Lcom/join/mgps/activity/LocalGameActivity;->k:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 10
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/LocalGameActivity;->k:Ljava/util/List;

    const-string v1, "\u5168\u90e8"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/join/mgps/activity/LocalGameActivity;->c:Z

    .line 11
    iget-object v0, p0, Lcom/join/mgps/activity/LocalGameActivity;->k:Ljava/util/List;

    const-string v1, "\u5bf9\u6218"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/join/mgps/activity/LocalGameActivity;->d:Z

    .line 12
    :cond_2
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/activity/LocalGameActivity;->k:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/join/android/app/common/utils/JsonMapper;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 13
    iget-object v1, p0, Lcom/join/mgps/activity/LocalGameActivity;->m:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v1}, Lcom/join/mgps/pref/PrefDef_;->myGameAllTabSort()Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 14
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

.method protected J0()V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/LocalGameActivity;->m:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->myGameAllTabSort()Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object v0

    invoke-virtual {v0}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2
    invoke-static {v0}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/LocalGameActivity;->k:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/join/mgps/activity/LocalGameActivity;->I0(Ljava/util/List;)V

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    .line 4
    :try_start_0
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    move-result-object v2

    const-class v3, Ljava/util/List;

    invoke-virtual {v2, v0, v3}, Lcom/join/android/app/common/utils/JsonMapper;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    if-eqz v1, :cond_1

    .line 6
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 7
    :cond_1
    iget-object v1, p0, Lcom/join/mgps/activity/LocalGameActivity;->k:Ljava/util/List;

    .line 8
    :cond_2
    invoke-direct {p0, v1}, Lcom/join/mgps/activity/LocalGameActivity;->I0(Ljava/util/List;)V

    :goto_1
    return-void
.end method

.method K0()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/LocalGameActivity;->g:Lcom/join/mgps/customview/d0;

    iget-object v1, p0, Lcom/join/mgps/activity/LocalGameActivity;->h:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/join/mgps/activity/LocalGameActivity;->i:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lcom/join/mgps/customview/d0;->d(Ljava/util/List;Ljava/util/List;)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/LocalGameActivity;->g:Lcom/join/mgps/customview/d0;

    invoke-virtual {v0}, Landroidx/viewpager/widget/PagerAdapter;->notifyDataSetChanged()V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/LocalGameActivity;->e:Lcom/join/mgps/customview/TabPageIndicator;

    invoke-virtual {v0}, Lcom/join/mgps/customview/TabPageIndicator;->notifyDataSetChanged()V

    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/LocalGameActivity;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/join/mgps/activity/LocalGameActivity;->e:Lcom/join/mgps/customview/TabPageIndicator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/HorizontalScrollView;->setVisibility(I)V

    .line 6
    iget-object v0, p0, Lcom/join/mgps/activity/LocalGameActivity;->f:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 7
    iget-object v0, p0, Lcom/join/mgps/activity/LocalGameActivity;->f:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/LocalGameActivity;->M0()V

    .line 9
    :goto_0
    iget-object v0, p0, Lcom/join/mgps/activity/LocalGameActivity;->f:Landroidx/viewpager/widget/ViewPager;

    iget-object v1, p0, Lcom/join/mgps/activity/LocalGameActivity;->h:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setOffscreenPageLimit(I)V

    return-void
.end method

.method M0()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/LocalGameActivity;->e:Lcom/join/mgps/customview/TabPageIndicator;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/HorizontalScrollView;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/LocalGameActivity;->f:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method

.method N0()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/LocalGameActivity;->e:Lcom/join/mgps/customview/TabPageIndicator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/HorizontalScrollView;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/LocalGameActivity;->f:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/LocalGameActivity;->f:Landroidx/viewpager/widget/ViewPager;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setOffscreenPageLimit(I)V

    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/LocalGameActivity;->g:Lcom/join/mgps/customview/d0;

    iget-object v1, p0, Lcom/join/mgps/activity/LocalGameActivity;->h:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/join/mgps/activity/LocalGameActivity;->i:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lcom/join/mgps/customview/d0;->d(Ljava/util/List;Ljava/util/List;)V

    .line 5
    iget-object v0, p0, Lcom/join/mgps/activity/LocalGameActivity;->g:Lcom/join/mgps/customview/d0;

    invoke-virtual {v0}, Landroidx/viewpager/widget/PagerAdapter;->notifyDataSetChanged()V

    .line 6
    iget-object v0, p0, Lcom/join/mgps/activity/LocalGameActivity;->e:Lcom/join/mgps/customview/TabPageIndicator;

    invoke-virtual {v0}, Lcom/join/mgps/customview/TabPageIndicator;->notifyDataSetChanged()V

    return-void
.end method

.method afterViews()V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    .line 1
    invoke-static {}, Lcom/join/mgps/rpc/impl/c;->P1()Lcom/join/mgps/rpc/impl/c;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/LocalGameActivity;->l:Lcom/join/mgps/rpc/d;

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/LocalGameActivity;->b:Landroid/widget/TextView;

    const-string v1, "\u672c\u5730\u6e38\u620f"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/LocalGameActivity;->k:Ljava/util/List;

    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f030004

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 5
    new-instance v0, Lcom/join/mgps/customview/d0;

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    iget-object v2, p0, Lcom/join/mgps/activity/LocalGameActivity;->h:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/join/mgps/activity/LocalGameActivity;->i:Ljava/util/List;

    invoke-direct {v0, v1, v2, v3}, Lcom/join/mgps/customview/d0;-><init>(Landroidx/fragment/app/FragmentManager;Ljava/util/ArrayList;Ljava/util/List;)V

    iput-object v0, p0, Lcom/join/mgps/activity/LocalGameActivity;->g:Lcom/join/mgps/customview/d0;

    .line 6
    iget-object v1, p0, Lcom/join/mgps/activity/LocalGameActivity;->f:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v1, v0}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 7
    iget-object v0, p0, Lcom/join/mgps/activity/LocalGameActivity;->e:Lcom/join/mgps/customview/TabPageIndicator;

    iget-object v1, p0, Lcom/join/mgps/activity/LocalGameActivity;->f:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/TabPageIndicator;->setViewPager(Landroidx/viewpager/widget/ViewPager;)V

    .line 8
    iget-object v0, p0, Lcom/join/mgps/activity/LocalGameActivity;->k:Ljava/util/List;

    const-string v1, "\u5168\u90e8"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/join/mgps/activity/LocalGameActivity;->c:Z

    .line 9
    iget-object v0, p0, Lcom/join/mgps/activity/LocalGameActivity;->k:Ljava/util/List;

    const-string v1, "\u5bf9\u6218"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/join/mgps/activity/LocalGameActivity;->d:Z

    .line 10
    invoke-virtual {p0}, Lcom/join/mgps/activity/LocalGameActivity;->J0()V

    .line 11
    invoke-virtual {p0}, Lcom/join/mgps/activity/LocalGameActivity;->H0()V

    return-void
.end method

.method back_image()V
    .locals 0
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method declared-synchronized updateUI(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V
    .locals 9
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "LongLogTag"
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    .line 1
    monitor-exit p0

    return-void

    .line 2
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getFileType()Ljava/lang/String;

    move-result-object p2

    sget-object v0, Lcom/join/mgps/enums/Dtype;->chajian:Lcom/join/mgps/enums/Dtype;

    invoke-virtual {v0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, -0x1

    if-eq p2, v0, :cond_1

    .line 3
    monitor-exit p0

    return-void

    .line 4
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result p2

    const/4 v1, 0x0

    .line 5
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/LocalGameActivity;->F0(Lcom/github/snowdream/android/app/downloader/DownloadTask;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    .line 6
    iget-object v1, p0, Lcom/join/mgps/activity/LocalGameActivity;->j:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 7
    iget-object v4, p0, Lcom/join/mgps/activity/LocalGameActivity;->i:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v4

    .line 8
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/join/mgps/enums/ConstantIntEnum;->CHOICENESS:Lcom/join/mgps/enums/ConstantIntEnum;

    invoke-virtual {v6}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 9
    iget-object v5, p0, Lcom/join/mgps/activity/LocalGameActivity;->i:Ljava/util/List;

    const-string v6, "\u5168\u90e8"

    invoke-interface {v5, v6}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v5

    if-eq v5, v0, :cond_3

    const-string v2, "\u5168\u90e8"

    .line 10
    iget-object v0, p0, Lcom/join/mgps/activity/LocalGameActivity;->j:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/util/List;

    .line 11
    iget-object v0, p0, Lcom/join/mgps/activity/LocalGameActivity;->i:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v4

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    :cond_3
    :goto_0
    const/4 v0, 0x5

    if-eqz v1, :cond_13

    .line 12
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_13

    const/4 v5, 0x7

    if-eq p2, v5, :cond_e

    const/4 v5, 0x2

    if-ne p2, v5, :cond_4

    goto/16 :goto_4

    .line 13
    :cond_4
    iget-object v5, p0, Lcom/join/mgps/activity/LocalGameActivity;->n:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const/4 v7, 0x1

    if-eqz v6, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 14
    invoke-virtual {v6}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    const/4 v5, 0x0

    goto :goto_1

    :cond_6
    const/4 v5, 0x1

    :goto_1
    if-eqz v5, :cond_7

    .line 15
    iget-object v5, p0, Lcom/join/mgps/activity/LocalGameActivity;->n:Ljava/util/List;

    invoke-interface {v5, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7
    if-ne p2, v0, :cond_12

    .line 16
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getFileType()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_8

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getFileType()Ljava/lang/String;

    move-result-object p2

    sget-object v0, Lcom/join/mgps/enums/Dtype;->chajian:Lcom/join/mgps/enums/Dtype;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p2, :cond_8

    .line 17
    monitor-exit p0

    return-void

    .line 18
    :cond_8
    :try_start_2
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getFileType()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_b

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getFileType()Ljava/lang/String;

    move-result-object p2

    sget-object v0, Lcom/join/mgps/enums/Dtype;->apk:Lcom/join/mgps/enums/Dtype;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_b

    .line 19
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_9
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 20
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 21
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result p2

    invoke-virtual {v0, p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStatus(I)V

    .line 22
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getGameZipPath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setGameZipPath(Ljava/lang/String;)V

    .line 23
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getVer()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setVer(Ljava/lang/String;)V

    .line 24
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getVer_name()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setVer_name(Ljava/lang/String;)V

    .line 25
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCfg_ver()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setCfg_ver(Ljava/lang/String;)V

    .line 26
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSource_ver()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setSource_ver(Ljava/lang/String;)V

    const/4 p2, 0x1

    goto :goto_2

    :cond_a
    const/4 p2, 0x0

    :goto_2
    if-nez p2, :cond_b

    .line 27
    invoke-interface {v1, v3, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 28
    :cond_b
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getFileType()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_12

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getFileType()Ljava/lang/String;

    move-result-object p2

    sget-object v0, Lcom/join/mgps/enums/Dtype;->android:Lcom/join/mgps/enums/Dtype;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_12

    .line 29
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_c
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 30
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 31
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result p2

    invoke-virtual {v0, p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStatus(I)V

    goto :goto_3

    :cond_d
    const/4 v7, 0x0

    :goto_3
    if-nez v7, :cond_12

    .line 32
    invoke-interface {v1, v3, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_5

    .line 33
    :cond_e
    :goto_4
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    .line 34
    :cond_f
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 35
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 36
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 37
    invoke-interface {p2}, Ljava/util/Iterator;->remove()V

    .line 38
    :cond_10
    iget-object p2, p0, Lcom/join/mgps/activity/LocalGameActivity;->n:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    .line 39
    :cond_11
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 40
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 41
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 42
    invoke-interface {p2}, Ljava/util/Iterator;->remove()V

    .line 43
    :cond_12
    :goto_5
    invoke-direct {p0, p1, v4, v2, v1}, Lcom/join/mgps/activity/LocalGameActivity;->D0(Lcom/github/snowdream/android/app/downloader/DownloadTask;ILjava/lang/String;Ljava/util/List;)V

    goto :goto_6

    :cond_13
    if-ne p2, v0, :cond_14

    .line 44
    iget-object p2, p0, Lcom/join/mgps/activity/LocalGameActivity;->n:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 45
    invoke-direct {p0, p1, v4, v2}, Lcom/join/mgps/activity/LocalGameActivity;->E0(Lcom/github/snowdream/android/app/downloader/DownloadTask;ILjava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 46
    :cond_14
    :goto_6
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    goto :goto_8

    :goto_7
    throw p1

    :goto_8
    goto :goto_7
.end method
