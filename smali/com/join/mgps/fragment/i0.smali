.class public Lcom/join/mgps/fragment/i0;
.super Landroidx/fragment/app/Fragment;
.source "DownloadMYGameFragment.java"


# annotations
.annotation build Lorg/androidannotations/annotations/EFragment;
    value = 0x7f0c01c3
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Landroid/app/Activity;

.field c:Lcom/join/mgps/dto/DownloadCenterBean;

.field d:Lcom/join/mgps/pref/PrefDef_;
    .annotation build Lorg/androidannotations/annotations/sharedpreferences/Pref;
    .end annotation
.end field

.field e:Landroid/widget/ListView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field f:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field g:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field h:Lcom/join/mgps/adapter/r;

.field private i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/github/snowdream/android/app/downloader/DownloadTask;",
            ">;"
        }
    .end annotation
.end field

.field private j:Landroid/widget/TextView;

.field k:Lcom/join/mgps/pref/f;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    const-string v0, "DownloadMYGameFragment"

    .line 2
    iput-object v0, p0, Lcom/join/mgps/fragment/i0;->a:Ljava/lang/String;

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/join/mgps/fragment/i0;->k:Lcom/join/mgps/pref/f;

    return-void
.end method


# virtual methods
.method M(Landroid/content/Intent;)V
    .locals 0
    .annotation build Lorg/androidannotations/annotations/Receiver;
        actions = {
            "com.join.android.app.mgsim.wufun.broadcast.backup_game_finish"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/join/mgps/fragment/i0;->O()V

    .line 2
    iget-object p1, p0, Lcom/join/mgps/fragment/i0;->h:Lcom/join/mgps/adapter/r;

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method N()V
    .locals 5
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/i0;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/join/mgps/fragment/i0;->j:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/fragment/i0;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/fragment/i0;->j:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 6
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 7
    iget-object v0, p0, Lcom/join/mgps/fragment/i0;->j:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u5171"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/join/mgps/fragment/i0;->i:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "\u6b3e\u6e38\u620f"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/fragment/i0;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 9
    :goto_0
    iget-object v0, p0, Lcom/join/mgps/fragment/i0;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 10
    iget-object v0, p0, Lcom/join/mgps/fragment/i0;->d:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->FirstShowMYgameTopTip()Lorg/androidannotations/api/sharedpreferences/d;

    move-result-object v0

    invoke-virtual {v0}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 11
    iget-object v0, p0, Lcom/join/mgps/fragment/i0;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_3
    return-void
.end method

.method O()V
    .locals 4

    .line 1
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lg1/f;->N(Lcom/join/mgps/enums/Dtype;)Ljava/util/List;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 3
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 5
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v2

    const/16 v3, 0xb

    if-ne v2, v3, :cond_0

    .line 6
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 7
    :cond_1
    iget-object v1, p0, Lcom/join/mgps/fragment/i0;->i:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 8
    iget-object v1, p0, Lcom/join/mgps/fragment/i0;->i:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 9
    iget-object v0, p0, Lcom/join/mgps/fragment/i0;->h:Lcom/join/mgps/adapter/r;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 10
    invoke-virtual {p0}, Lcom/join/mgps/fragment/i0;->N()V

    return-void
.end method

.method P()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/i0;->g:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/fragment/i0;->d:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->FirstShowMYgameTopTip()Lorg/androidannotations/api/sharedpreferences/d;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    return-void
.end method

.method Q(Ljava/lang/String;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/androidannotations/annotations/Receiver$Extra;
        .end annotation
    .end param
    .annotation build Lorg/androidannotations/annotations/Receiver;
        actions = {
            "com.join.android.app.mgsim.wufun.broadcast.action_unread_notify"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/i0;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 2
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p1, 0x1

    .line 3
    invoke-virtual {v1, p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setOpen(Z)V

    .line 4
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/fragment/i0;->h:Lcom/join/mgps/adapter/r;

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 5
    invoke-virtual {p0}, Lcom/join/mgps/fragment/i0;->N()V

    return-void
.end method

.method R(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p2, v1}, Lg1/f;->e0(Ljava/lang/String;Z)V

    .line 2
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.join.android.app.mgsim.wufun.broadcast.action_unread_notify"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "gameId"

    .line 3
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method S(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "LongLogTag"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "downloadTask:from ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    return-void

    :cond_0
    const/4 p2, 0x0

    if-eqz p1, :cond_1

    .line 2
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x7

    if-ne v0, v1, :cond_4

    .line 3
    iget-object p2, p0, Lcom/join/mgps/fragment/i0;->i:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    .line 4
    :cond_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 5
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 6
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7
    invoke-interface {p2}, Ljava/util/Iterator;->remove()V

    .line 8
    iget-object p1, p0, Lcom/join/mgps/fragment/i0;->h:Lcom/join/mgps/adapter/r;

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    const-string p1, "\u79fb\u9664\u6570\u636e"

    .line 9
    invoke-static {p1}, Lcom/join/mgps/Util/t0;->c(Ljava/lang/String;)V

    .line 10
    :cond_3
    invoke-virtual {p0}, Lcom/join/mgps/fragment/i0;->N()V

    return-void

    :cond_4
    const/4 v1, 0x5

    if-eq v0, v1, :cond_5

    const/16 v1, 0xb

    if-ne v0, v1, :cond_e

    .line 11
    :cond_5
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getFileType()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getFileType()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/join/mgps/enums/Dtype;->chajian:Lcom/join/mgps/enums/Dtype;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    return-void

    .line 12
    :cond_6
    iget-object v0, p0, Lcom/join/mgps/fragment/i0;->h:Lcom/join/mgps/adapter/r;

    invoke-virtual {v0}, Lcom/join/mgps/adapter/r;->c()Lcom/join/mgps/dto/DownloadCenterBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/dto/DownloadCenterBean;->getDownloadFiles()Ljava/util/List;

    move-result-object v0

    .line 13
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getFileType()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_a

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getFileType()Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/join/mgps/enums/Dtype;->apk:Lcom/join/mgps/enums/Dtype;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 14
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 15
    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 16
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v1

    invoke-virtual {v3, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStatus(I)V

    const/4 v1, 0x1

    goto :goto_1

    :cond_8
    const/4 v1, 0x0

    :goto_1
    if-nez v1, :cond_9

    .line 17
    invoke-interface {v0, p2, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 18
    :cond_9
    iget-object v1, p0, Lcom/join/mgps/fragment/i0;->h:Lcom/join/mgps/adapter/r;

    invoke-virtual {v1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 19
    :cond_a
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getFileType()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_e

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getFileType()Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/join/mgps/enums/Dtype;->android:Lcom/join/mgps/enums/Dtype;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 20
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 21
    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 22
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v1

    invoke-virtual {v3, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStatus(I)V

    goto :goto_2

    :cond_c
    const/4 v2, 0x0

    :goto_2
    if-nez v2, :cond_d

    .line 23
    invoke-interface {v0, p2, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 24
    :cond_d
    iget-object p1, p0, Lcom/join/mgps/fragment/i0;->h:Lcom/join/mgps/adapter/r;

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 25
    :cond_e
    invoke-virtual {p0}, Lcom/join/mgps/fragment/i0;->N()V

    return-void
.end method

.method afterViews()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/fragment/i0;->b:Landroid/app/Activity;

    .line 2
    new-instance v0, Lcom/join/mgps/adapter/r;

    iget-object v1, p0, Lcom/join/mgps/fragment/i0;->b:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/join/mgps/adapter/r;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/join/mgps/fragment/i0;->h:Lcom/join/mgps/adapter/r;

    .line 3
    iget-object v0, p0, Lcom/join/mgps/fragment/i0;->b:Landroid/app/Activity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c01be

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f090fc7

    .line 4
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/join/mgps/fragment/i0;->j:Landroid/widget/TextView;

    .line 5
    iget-object v1, p0, Lcom/join/mgps/fragment/i0;->e:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 6
    iget-object v0, p0, Lcom/join/mgps/fragment/i0;->e:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/join/mgps/fragment/i0;->h:Lcom/join/mgps/adapter/r;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 7
    iget-object v0, p0, Lcom/join/mgps/fragment/i0;->h:Lcom/join/mgps/adapter/r;

    iget-object v1, p0, Lcom/join/mgps/fragment/i0;->e:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Lcom/join/mgps/adapter/r;->e(Landroid/widget/ListView;)V

    .line 8
    iget-object v0, p0, Lcom/join/mgps/fragment/i0;->h:Lcom/join/mgps/adapter/r;

    invoke-virtual {v0}, Lcom/join/mgps/adapter/r;->c()Lcom/join/mgps/dto/DownloadCenterBean;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/fragment/i0;->c:Lcom/join/mgps/dto/DownloadCenterBean;

    .line 9
    invoke-virtual {v0}, Lcom/join/mgps/dto/DownloadCenterBean;->getDownloadFiles()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/fragment/i0;->i:Ljava/util/List;

    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "hasCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    invoke-static {}, Lcom/join/mgps/Util/c0;->a()Lcom/join/mgps/Util/c0;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/join/mgps/Util/c0;->d(Ljava/lang/Object;)V

    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/activity/MGMainActivity;

    iput-object p1, p0, Lcom/join/mgps/fragment/i0;->k:Lcom/join/mgps/pref/f;

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/c;->y(Ljava/lang/Object;)V

    .line 2
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    return-void
.end method

.method public onEventMainThread(Lcom/join/mgps/event/l;)V
    .locals 3
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/fragment/i0;->N()V

    .line 2
    invoke-virtual {p1}, Lcom/join/mgps/event/l;->a()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v0

    .line 3
    invoke-virtual {p1}, Lcom/join/mgps/event/l;->c()I

    move-result p1

    const/4 v1, 0x5

    if-eq p1, v1, :cond_2

    const/16 v2, 0xb

    if-eq p1, v2, :cond_2

    const/16 v2, 0x30

    if-eq p1, v2, :cond_2

    const/4 v1, 0x7

    if-eq p1, v1, :cond_1

    const/16 v1, 0x8

    if-eq p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x4

    .line 4
    invoke-virtual {p0, v0, p1}, Lcom/join/mgps/fragment/i0;->S(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStatus(I)V

    const/4 p1, 0x3

    .line 6
    invoke-virtual {p0, v0, p1}, Lcom/join/mgps/fragment/i0;->S(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    goto :goto_0

    .line 7
    :cond_2
    invoke-virtual {p0, v0, v1}, Lcom/join/mgps/fragment/i0;->S(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    :goto_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lcom/join/mgps/fragment/i0;->O()V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/fragment/i0;->h:Lcom/join/mgps/adapter/r;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method relodingimag()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/i0;->k:Lcom/join/mgps/pref/f;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/join/mgps/pref/f;->callbackClassify(Landroid/os/Bundle;)V

    return-void
.end method

.method setNetwork()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/i0;->k:Lcom/join/mgps/pref/f;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/join/mgps/pref/f;->callbackHome(Landroid/os/Bundle;)V

    return-void
.end method
