.class public Lcom/join/mgps/activity/a2;
.super Landroidx/fragment/app/Fragment;
.source "MyPapaFragment.java"

# interfaces
.implements Lcom/join/mgps/adapter/r$k;


# annotations
.annotation build Lorg/androidannotations/annotations/EFragment;
    value = 0x7f0c04ca
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Landroid/app/Activity;

.field c:Lcom/join/mgps/dto/DownloadCenterBean;

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/github/snowdream/android/app/downloader/DownloadTask;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/lang/String;

.field f:Lcom/join/mgps/pref/PrefDef_;
    .annotation build Lorg/androidannotations/annotations/sharedpreferences/Pref;
    .end annotation
.end field

.field g:Lcom/join/mgps/customview/XListView2;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field h:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field i:Lcom/join/mgps/adapter/r;

.field private j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/github/snowdream/android/app/downloader/DownloadTask;",
            ">;"
        }
    .end annotation
.end field

.field private k:Landroid/widget/TextView;

.field l:Lcom/join/mgps/pref/f;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    const-string v0, "DownloadMYGameFragment"

    .line 2
    iput-object v0, p0, Lcom/join/mgps/activity/a2;->a:Ljava/lang/String;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/a2;->d:Ljava/util/List;

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/join/mgps/activity/a2;->l:Lcom/join/mgps/pref/f;

    return-void
.end method


# virtual methods
.method public D(ILcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 2

    .line 1
    new-instance p1, Lcom/join/android/app/common/dialog/m;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/activity/a2;->i:Lcom/join/mgps/adapter/r;

    invoke-direct {p1, v0, p2, v1}, Lcom/join/android/app/common/dialog/m;-><init>(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;Lcom/join/mgps/adapter/r;)V

    .line 2
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method M()V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/activity/a2;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/a2;->k:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/a2;->h:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/a2;->k:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 6
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 7
    iget-object v0, p0, Lcom/join/mgps/activity/a2;->k:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u5171"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/join/mgps/activity/a2;->j:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "\u6b3e\u6e38\u620f"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/activity/a2;->h:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_3

    .line 9
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 10
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    :goto_0
    return-void
.end method

.method public N()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/a2;->i:Lcom/join/mgps/adapter/r;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public O(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/github/snowdream/android/app/downloader/DownloadTask;",
            ">;)V"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/a2;->i:Lcom/join/mgps/adapter/r;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/a2;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/a2;->j:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 4
    invoke-virtual {p0}, Lcom/join/mgps/activity/a2;->M()V

    .line 5
    iget-object p1, p0, Lcom/join/mgps/activity/a2;->i:Lcom/join/mgps/adapter/r;

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public P(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/github/snowdream/android/app/downloader/DownloadTask;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/a2;->d:Ljava/util/List;

    return-void
.end method

.method public Q(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/a2;->e:Ljava/lang/String;

    return-void
.end method

.method R(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V
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

    if-eq v0, v1, :cond_c

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    goto/16 :goto_3

    :cond_2
    const/4 v1, 0x5

    if-ne v0, v1, :cond_b

    .line 3
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getFileType()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getFileType()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/join/mgps/enums/Dtype;->chajian:Lcom/join/mgps/enums/Dtype;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    return-void

    .line 4
    :cond_3
    iget-object v0, p0, Lcom/join/mgps/activity/a2;->i:Lcom/join/mgps/adapter/r;

    invoke-virtual {v0}, Lcom/join/mgps/adapter/r;->c()Lcom/join/mgps/dto/DownloadCenterBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/dto/DownloadCenterBean;->getDownloadFiles()Ljava/util/List;

    move-result-object v0

    .line 5
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getFileType()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_7

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getFileType()Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/join/mgps/enums/Dtype;->apk:Lcom/join/mgps/enums/Dtype;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 6
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 7
    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 8
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v1

    invoke-virtual {v3, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStatus(I)V

    const/4 v1, 0x1

    goto :goto_1

    :cond_5
    const/4 v1, 0x0

    :goto_1
    if-nez v1, :cond_6

    .line 9
    invoke-interface {v0, p2, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 10
    :cond_6
    iget-object v1, p0, Lcom/join/mgps/activity/a2;->i:Lcom/join/mgps/adapter/r;

    invoke-virtual {v1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 11
    :cond_7
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getFileType()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_b

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getFileType()Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/join/mgps/enums/Dtype;->android:Lcom/join/mgps/enums/Dtype;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 12
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 13
    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 14
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v1

    invoke-virtual {v3, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStatus(I)V

    goto :goto_2

    :cond_9
    const/4 v2, 0x0

    :goto_2
    if-nez v2, :cond_a

    .line 15
    invoke-interface {v0, p2, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 16
    :cond_a
    iget-object p1, p0, Lcom/join/mgps/activity/a2;->i:Lcom/join/mgps/adapter/r;

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 17
    :cond_b
    invoke-virtual {p0}, Lcom/join/mgps/activity/a2;->M()V

    return-void

    .line 18
    :cond_c
    :goto_3
    iget-object p2, p0, Lcom/join/mgps/activity/a2;->j:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    .line 19
    :cond_d
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 20
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 21
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 22
    invoke-interface {p2}, Ljava/util/Iterator;->remove()V

    .line 23
    iget-object p1, p0, Lcom/join/mgps/activity/a2;->i:Lcom/join/mgps/adapter/r;

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    const-string p1, "\u79fb\u9664\u6570\u636e"

    .line 24
    invoke-static {p1}, Lcom/join/mgps/Util/t0;->c(Ljava/lang/String;)V

    .line 25
    :cond_e
    invoke-virtual {p0}, Lcom/join/mgps/activity/a2;->M()V

    return-void
.end method

.method afterViews()V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "wode item showstart   "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/Util/t0;->c(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/a2;->b:Landroid/app/Activity;

    .line 3
    new-instance v0, Lcom/join/mgps/adapter/r;

    iget-object v1, p0, Lcom/join/mgps/activity/a2;->b:Landroid/app/Activity;

    invoke-direct {v0, v1, p0}, Lcom/join/mgps/adapter/r;-><init>(Landroid/app/Activity;Lcom/join/mgps/adapter/r$k;)V

    iput-object v0, p0, Lcom/join/mgps/activity/a2;->i:Lcom/join/mgps/adapter/r;

    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/a2;->b:Landroid/app/Activity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c01be

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f090fc7

    .line 5
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/join/mgps/activity/a2;->k:Landroid/widget/TextView;

    .line 6
    iget-object v1, p0, Lcom/join/mgps/activity/a2;->g:Lcom/join/mgps/customview/XListView2;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 7
    iget-object v0, p0, Lcom/join/mgps/activity/a2;->i:Lcom/join/mgps/adapter/r;

    invoke-virtual {v0}, Lcom/join/mgps/adapter/r;->c()Lcom/join/mgps/dto/DownloadCenterBean;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/a2;->c:Lcom/join/mgps/dto/DownloadCenterBean;

    .line 8
    invoke-virtual {v0}, Lcom/join/mgps/dto/DownloadCenterBean;->getDownloadFiles()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/a2;->j:Ljava/util/List;

    .line 9
    iget-object v0, p0, Lcom/join/mgps/activity/a2;->g:Lcom/join/mgps/customview/XListView2;

    iget-object v1, p0, Lcom/join/mgps/activity/a2;->i:Lcom/join/mgps/adapter/r;

    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/XListView2;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 10
    iget-object v0, p0, Lcom/join/mgps/activity/a2;->d:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 11
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 12
    iget-object v1, p0, Lcom/join/mgps/activity/a2;->d:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 13
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 14
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getFileType()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 15
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getFileType()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/join/mgps/enums/Dtype;->android:Lcom/join/mgps/enums/Dtype;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 16
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPay_game_amount()I

    move-result v2

    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/join/mgps/Util/UtilsMy;->l0(ILjava/lang/String;)I

    move-result v2

    if-lez v2, :cond_0

    const/16 v2, 0x2b

    .line 17
    invoke-virtual {v1, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStatus(I)V

    .line 18
    iget-object v2, p0, Lcom/join/mgps/activity/a2;->d:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 19
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/a2;->j:Ljava/util/List;

    iget-object v1, p0, Lcom/join/mgps/activity/a2;->d:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 20
    iget-object v0, p0, Lcom/join/mgps/activity/a2;->i:Lcom/join/mgps/adapter/r;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 21
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "hasCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    invoke-virtual {p0}, Lcom/join/mgps/activity/a2;->M()V

    return-void
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/a2;->e:Ljava/lang/String;

    return-object v0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/activity/MGMainActivity;

    iput-object p1, p0, Lcom/join/mgps/activity/a2;->l:Lcom/join/mgps/pref/f;

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
    .locals 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/activity/a2;->M()V

    .line 2
    invoke-virtual {p1}, Lcom/join/mgps/event/l;->a()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v0

    .line 3
    invoke-virtual {p1}, Lcom/join/mgps/event/l;->c()I

    move-result p1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_3

    const/4 v1, 0x5

    if-eq p1, v1, :cond_2

    const/4 v1, 0x7

    if-eq p1, v1, :cond_1

    const/16 v1, 0x8

    if-eq p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x4

    .line 4
    invoke-virtual {p0, v0, p1}, Lcom/join/mgps/activity/a2;->R(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStatus(I)V

    const/4 p1, 0x3

    .line 6
    invoke-virtual {p0, v0, p1}, Lcom/join/mgps/activity/a2;->R(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    goto :goto_0

    .line 7
    :cond_2
    invoke-virtual {p0, v0, v1}, Lcom/join/mgps/activity/a2;->R(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    goto :goto_0

    :cond_3
    const/4 p1, 0x1

    .line 8
    invoke-virtual {p0, v0, p1}, Lcom/join/mgps/activity/a2;->R(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    :goto_0
    return-void
.end method

.method public onResume()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    return-void
.end method

.method relodingimag()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/a2;->l:Lcom/join/mgps/pref/f;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/join/mgps/pref/f;->callbackClassify(Landroid/os/Bundle;)V

    return-void
.end method

.method setNetwork()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/a2;->l:Lcom/join/mgps/pref/f;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/join/mgps/pref/f;->callbackHome(Landroid/os/Bundle;)V

    return-void
.end method
