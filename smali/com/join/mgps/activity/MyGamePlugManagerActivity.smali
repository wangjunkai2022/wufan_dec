.class public Lcom/join/mgps/activity/MyGamePlugManagerActivity;
.super Lcom/BaseActivity;
.source "MyGamePlugManagerActivity.java"

# interfaces
.implements Lcom/join/mgps/adapter/m3$e;
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation build Lorg/androidannotations/annotations/EActivity;
    value = 0x7f0c0064
.end annotation


# instance fields
.field a:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field b:Lcom/join/mgps/customview/XListView2;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field c:Landroid/view/View;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field d:Lcom/join/mgps/pref/PrefDef_;
    .annotation build Lorg/androidannotations/annotations/sharedpreferences/Pref;
    .end annotation
.end field

.field e:Lcom/join/mgps/adapter/m3;

.field f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/github/snowdream/android/app/downloader/DownloadTask;",
            ">;"
        }
    .end annotation
.end field

.field private g:I

.field private h:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/BaseActivity;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/MyGamePlugManagerActivity;->f:Ljava/util/List;

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/join/mgps/activity/MyGamePlugManagerActivity;->g:I

    .line 4
    iput v0, p0, Lcom/join/mgps/activity/MyGamePlugManagerActivity;->h:I

    return-void
.end method

.method private receiveDelete(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/activity/MyGamePlugManagerActivity;->H0()V

    return-void
.end method

.method private receiveError(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MyGamePlugManagerActivity;->f:Ljava/util/List;

    if-eqz v0, :cond_3

    if-nez p1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    :try_start_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 3
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4
    invoke-static {v1}, Lcom/join/mgps/Util/UtilsMy;->C3(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 5
    :cond_2
    invoke-virtual {p0}, Lcom/join/mgps/activity/MyGamePlugManagerActivity;->I0()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 6
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    :goto_0
    return-void
.end method

.method private receiveStart(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/MyGamePlugManagerActivity;->f:Ljava/util/List;

    invoke-static {v0}, Lcom/join/mgps/Util/UtilsMy;->D3(Ljava/util/List;)V

    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Lcom/join/mgps/activity/MyGamePlugManagerActivity;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 3
    iget-object v1, p0, Lcom/join/mgps/activity/MyGamePlugManagerActivity;->f:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 4
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5
    iget-object v1, p0, Lcom/join/mgps/activity/MyGamePlugManagerActivity;->f:Ljava/util/List;

    invoke-interface {v1, v0, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 6
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/join/mgps/activity/MyGamePlugManagerActivity;->I0()V

    return-void
.end method

.method private receiveSuccess(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MyGamePlugManagerActivity;->f:Ljava/util/List;

    if-eqz v0, :cond_3

    if-nez p1, :cond_0

    goto :goto_2

    :cond_0
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Lcom/join/mgps/activity/MyGamePlugManagerActivity;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 3
    iget-object v1, p0, Lcom/join/mgps/activity/MyGamePlugManagerActivity;->f:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 4
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5
    iget-object v2, p0, Lcom/join/mgps/activity/MyGamePlugManagerActivity;->f:Ljava/util/List;

    invoke-interface {v2, v0, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 6
    invoke-static {v1}, Lcom/join/mgps/Util/UtilsMy;->C3(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 7
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/join/mgps/activity/MyGamePlugManagerActivity;->I0()V

    :cond_3
    :goto_2
    return-void
.end method

.method private updateProgressPartly()V
    .locals 14

    .line 1
    iget v0, p0, Lcom/join/mgps/activity/MyGamePlugManagerActivity;->h:I

    if-ltz v0, :cond_7

    iget v0, p0, Lcom/join/mgps/activity/MyGamePlugManagerActivity;->g:I

    iget-object v1, p0, Lcom/join/mgps/activity/MyGamePlugManagerActivity;->b:Lcom/join/mgps/customview/XListView2;

    invoke-virtual {v1}, Landroid/widget/ListView;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_7

    .line 2
    iget v0, p0, Lcom/join/mgps/activity/MyGamePlugManagerActivity;->h:I

    :goto_0
    iget v1, p0, Lcom/join/mgps/activity/MyGamePlugManagerActivity;->g:I

    if-gt v0, v1, :cond_7

    .line 3
    iget-object v1, p0, Lcom/join/mgps/activity/MyGamePlugManagerActivity;->b:Lcom/join/mgps/customview/XListView2;

    invoke-virtual {v1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_6

    .line 4
    iget-object v1, p0, Lcom/join/mgps/activity/MyGamePlugManagerActivity;->b:Lcom/join/mgps/customview/XListView2;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    goto/16 :goto_3

    .line 5
    :cond_0
    iget-object v1, p0, Lcom/join/mgps/activity/MyGamePlugManagerActivity;->b:Lcom/join/mgps/customview/XListView2;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    if-eqz v1, :cond_6

    .line 6
    iget-object v1, p0, Lcom/join/mgps/activity/MyGamePlugManagerActivity;->b:Lcom/join/mgps/customview/XListView2;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    if-eqz v1, :cond_6

    .line 7
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v2

    const/16 v3, 0xc

    const/4 v4, 0x2

    if-eq v2, v4, :cond_1

    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v2

    if-ne v2, v3, :cond_6

    .line 8
    :cond_1
    iget-object v2, p0, Lcom/join/mgps/activity/MyGamePlugManagerActivity;->b:Lcom/join/mgps/customview/XListView2;

    iget v5, p0, Lcom/join/mgps/activity/MyGamePlugManagerActivity;->h:I

    sub-int v5, v0, v5

    invoke-virtual {v2, v5}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 9
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_6

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    instance-of v5, v5, Lcom/join/mgps/adapter/m3$h;

    if-eqz v5, :cond_6

    .line 10
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/join/mgps/adapter/m3$h;

    .line 11
    :try_start_0
    invoke-static {}, Lcom/join/android/app/common/servcie/a;->e()Lcom/join/android/app/common/servcie/a;

    move-result-object v5

    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/join/android/app/common/servcie/a;->f(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v5

    if-nez v5, :cond_2

    return-void

    :cond_2
    const-string v6, ""

    .line 12
    invoke-virtual {v5}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getShowSize()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 13
    invoke-virtual {v5}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getShowSize()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    const-wide/high16 v8, 0x4090000000000000L    # 1024.0

    mul-double v6, v6, v8

    mul-double v6, v6, v8

    double-to-long v6, v6

    .line 14
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSize()J

    move-result-wide v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-wide/16 v10, 0x0

    const-string v12, "/"

    cmp-long v13, v8, v10

    if-nez v13, :cond_3

    .line 15
    :try_start_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCurrentSize()J

    move-result-wide v9

    invoke-static {v9, v10}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6, v7}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    .line 16
    :cond_3
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCurrentSize()J

    move-result-wide v9

    invoke-static {v9, v10}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6, v7}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 17
    :cond_4
    :goto_1
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v7

    if-ne v7, v3, :cond_5

    .line 18
    iget-object v3, v2, Lcom/join/mgps/adapter/m3$h;->b:Landroid/widget/ProgressBar;

    invoke-virtual {v5}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    move-result-wide v7

    long-to-int v8, v7

    invoke-virtual {v3, v8}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto :goto_2

    .line 19
    :cond_5
    iget-object v3, v2, Lcom/join/mgps/adapter/m3$h;->b:Landroid/widget/ProgressBar;

    invoke-virtual {v5}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    move-result-wide v7

    long-to-int v8, v7

    invoke-virtual {v3, v8}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 20
    :goto_2
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v1

    if-ne v1, v4, :cond_6

    .line 21
    iget-object v1, v2, Lcom/join/mgps/adapter/m3$h;->c:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " \u00b7 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSpeed()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/S"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_0
    move-exception v1

    .line 22
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_6
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_7
    return-void
.end method


# virtual methods
.method public E0(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 3

    .line 1
    invoke-static {p1}, Lcom/php25/PDownload/d;->a(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 2
    :try_start_0
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getRomType()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/join/mgps/enums/Dtype;->androidobb:Lcom/join/mgps/enums/Dtype;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getRomType()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/join/mgps/enums/Dtype;->androiddata:Lcom/join/mgps/enums/Dtype;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getRomType()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/join/mgps/enums/Dtype;->androidobbdata:Lcom/join/mgps/enums/Dtype;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    :cond_0
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/join/mgps/Util/u;->o:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/join/mgps/Util/UtilsMy;->delete(Ljava/io/File;)Z

    .line 4
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/join/mgps/Util/u;->p:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/join/mgps/Util/UtilsMy;->delete(Ljava/io/File;)Z

    .line 5
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getGameZipPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/join/mgps/Util/UtilsMy;->delete(Ljava/io/File;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 6
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 7
    :cond_1
    :goto_0
    invoke-static {p1}, Lcom/php25/PDownload/d;->a(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    return-void
.end method

.method F0(Ljava/lang/String;)V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    :try_start_0
    invoke-static {}, Ln1/p;->o()Ln1/p;

    move-result-object v0

    invoke-virtual {v0, p1}, Ln1/p;->n(Ljava/lang/String;)Lcom/join/mgps/db/tables/EMUApkTable;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 3
    :cond_1
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lg1/f;->V(I)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 4
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getDown_type()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_3

    .line 5
    invoke-static {p0}, Lcom/join/android/app/common/utils/a;->g0(Landroid/content/Context;)Lcom/join/android/app/common/utils/a;

    move-result-object p1

    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Lcom/join/android/app/common/utils/APKUtils;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 6
    invoke-static {p0}, Lcom/join/android/app/common/utils/a;->g0(Landroid/content/Context;)Lcom/join/android/app/common/utils/a;

    move-result-object p1

    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Lcom/join/android/app/common/utils/APKUtils;->c0(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 7
    :cond_2
    invoke-virtual {p0, v1}, Lcom/join/mgps/activity/MyGamePlugManagerActivity;->E0(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto :goto_0

    .line 8
    :cond_3
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getGameZipPath()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    .line 9
    invoke-static {v2, v3}, Lcom/join/mgps/Util/g0;->h(Ljava/lang/String;Z)V

    .line 10
    invoke-virtual {p0, v1}, Lcom/join/mgps/activity/MyGamePlugManagerActivity;->E0(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 11
    invoke-static {v0}, Lcom/join/android/app/common/utils/h;->i(Lcom/join/mgps/db/tables/EMUApkTable;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {p1}, Lcom/join/android/app/common/utils/h;->delete(Ljava/lang/String;)V

    .line 12
    :cond_4
    invoke-virtual {v0}, Lcom/join/mgps/db/tables/EMUApkTable;->getApkPath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v3}, Lcom/join/mgps/Util/g0;->h(Ljava/lang/String;Z)V

    const-string p1, ""

    .line 13
    invoke-virtual {v0, p1}, Lcom/join/mgps/db/tables/EMUApkTable;->setApkPath(Ljava/lang/String;)V

    .line 14
    invoke-static {}, Ln1/p;->o()Ln1/p;

    move-result-object p1

    invoke-virtual {p1, v0}, Lg1/b;->m(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 15
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 16
    :cond_5
    :goto_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/MyGamePlugManagerActivity;->I0()V

    return-void
.end method

.method G0(Ljava/lang/String;)V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    :try_start_0
    invoke-static {}, Ln1/p;->o()Ln1/p;

    move-result-object v0

    invoke-virtual {v0, p1}, Ln1/p;->n(Ljava/lang/String;)Lcom/join/mgps/db/tables/EMUApkTable;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    .line 3
    :cond_1
    invoke-static {p1, p0}, Lcom/join/mgps/Util/UtilsMy;->V0(Lcom/join/mgps/db/tables/EMUApkTable;Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 4
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method protected H0()V
    .locals 9

    const/16 v0, 0xf

    new-array v1, v0, [I

    .line 1
    sget-object v2, Lcom/join/mgps/enums/ConstantIntEnum;->FBA:Lcom/join/mgps/enums/ConstantIntEnum;

    .line 2
    invoke-virtual {v2}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    move-result v2

    const/4 v3, 0x0

    aput v2, v1, v3

    sget-object v2, Lcom/join/mgps/enums/ConstantIntEnum;->FC:Lcom/join/mgps/enums/ConstantIntEnum;

    .line 3
    invoke-virtual {v2}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    move-result v2

    const/4 v4, 0x1

    aput v2, v1, v4

    sget-object v2, Lcom/join/mgps/enums/ConstantIntEnum;->GBA:Lcom/join/mgps/enums/ConstantIntEnum;

    .line 4
    invoke-virtual {v2}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    move-result v2

    const/4 v4, 0x2

    aput v2, v1, v4

    sget-object v2, Lcom/join/mgps/enums/ConstantIntEnum;->PSP:Lcom/join/mgps/enums/ConstantIntEnum;

    .line 5
    invoke-virtual {v2}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    move-result v2

    const/4 v4, 0x3

    aput v2, v1, v4

    sget-object v2, Lcom/join/mgps/enums/ConstantIntEnum;->NDS:Lcom/join/mgps/enums/ConstantIntEnum;

    .line 6
    invoke-virtual {v2}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    move-result v2

    const/4 v4, 0x4

    aput v2, v1, v4

    sget-object v2, Lcom/join/mgps/enums/ConstantIntEnum;->SFC:Lcom/join/mgps/enums/ConstantIntEnum;

    .line 7
    invoke-virtual {v2}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    move-result v2

    const/4 v4, 0x5

    aput v2, v1, v4

    sget-object v2, Lcom/join/mgps/enums/ConstantIntEnum;->MD:Lcom/join/mgps/enums/ConstantIntEnum;

    .line 8
    invoke-virtual {v2}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    move-result v2

    const/4 v4, 0x6

    aput v2, v1, v4

    sget-object v2, Lcom/join/mgps/enums/ConstantIntEnum;->PS:Lcom/join/mgps/enums/ConstantIntEnum;

    .line 9
    invoke-virtual {v2}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    move-result v2

    const/4 v4, 0x7

    aput v2, v1, v4

    sget-object v2, Lcom/join/mgps/enums/ConstantIntEnum;->WSC:Lcom/join/mgps/enums/ConstantIntEnum;

    .line 10
    invoke-virtual {v2}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    move-result v2

    const/16 v4, 0x8

    aput v2, v1, v4

    sget-object v2, Lcom/join/mgps/enums/ConstantIntEnum;->GBC:Lcom/join/mgps/enums/ConstantIntEnum;

    .line 11
    invoke-virtual {v2}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    move-result v2

    const/16 v4, 0x9

    aput v2, v1, v4

    sget-object v2, Lcom/join/mgps/enums/ConstantIntEnum;->N64:Lcom/join/mgps/enums/ConstantIntEnum;

    .line 12
    invoke-virtual {v2}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    move-result v2

    const/16 v4, 0xa

    aput v2, v1, v4

    sget-object v2, Lcom/join/mgps/enums/ConstantIntEnum;->ONS:Lcom/join/mgps/enums/ConstantIntEnum;

    .line 13
    invoke-virtual {v2}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    move-result v2

    const/16 v4, 0xb

    aput v2, v1, v4

    sget-object v2, Lcom/join/mgps/enums/ConstantIntEnum;->DC:Lcom/join/mgps/enums/ConstantIntEnum;

    .line 14
    invoke-virtual {v2}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    move-result v2

    const/16 v4, 0xc

    aput v2, v1, v4

    sget-object v2, Lcom/join/mgps/enums/ConstantIntEnum;->PS2:Lcom/join/mgps/enums/ConstantIntEnum;

    .line 15
    invoke-virtual {v2}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    move-result v2

    const/16 v4, 0xd

    aput v2, v1, v4

    .line 16
    sget-object v2, Lcom/join/mgps/va/overmind/e;->n:Lcom/join/mgps/va/overmind/e$a;

    invoke-virtual {v2}, Lcom/join/mgps/va/overmind/e$a;->e()Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lcom/join/mgps/enums/ConstantIntEnum;->VA64:Lcom/join/mgps/enums/ConstantIntEnum;

    goto :goto_0

    :cond_0
    sget-object v2, Lcom/join/mgps/enums/ConstantIntEnum;->VA32:Lcom/join/mgps/enums/ConstantIntEnum;

    :goto_0
    invoke-virtual {v2}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    move-result v2

    const/16 v4, 0xe

    aput v2, v1, v4

    .line 17
    iget-object v2, p0, Lcom/join/mgps/activity/MyGamePlugManagerActivity;->f:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v0, :cond_4

    .line 18
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    aget v5, v1, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 19
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v6

    invoke-virtual {v6, v4}, Lg1/f;->B(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 20
    iget-object v4, p0, Lcom/join/mgps/activity/MyGamePlugManagerActivity;->f:Ljava/util/List;

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_1
    const/4 v6, 0x0

    .line 21
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 22
    invoke-static {}, Ln1/p;->o()Ln1/p;

    move-result-object v6

    invoke-virtual {v6, v4}, Ln1/p;->n(Ljava/lang/String;)Lcom/join/mgps/db/tables/EMUApkTable;

    move-result-object v6

    :cond_2
    if-nez v6, :cond_3

    goto :goto_2

    .line 23
    :cond_3
    new-instance v4, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-direct {v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;-><init>()V

    .line 24
    invoke-virtual {v4, v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStatus(I)V

    .line 25
    invoke-virtual {v6}, Lcom/join/mgps/db/tables/EMUApkTable;->getApk_name()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setShowName(Ljava/lang/String;)V

    .line 26
    invoke-virtual {v6}, Lcom/join/mgps/db/tables/EMUApkTable;->getSize()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setShowSize(Ljava/lang/String;)V

    .line 27
    invoke-virtual {v6}, Lcom/join/mgps/db/tables/EMUApkTable;->getLogo()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setPortraitURL(Ljava/lang/String;)V

    .line 28
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    aget v8, v1, v2

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setPlugin_num(Ljava/lang/String;)V

    .line 29
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    aget v8, v1, v2

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setCrc_link_type_val(Ljava/lang/String;)V

    .line 30
    invoke-virtual {v6}, Lcom/join/mgps/db/tables/EMUApkTable;->getDown_type()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setDown_type(I)V

    .line 31
    sget-object v5, Lcom/join/mgps/enums/Dtype;->chajian:Lcom/join/mgps/enums/Dtype;

    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setFileType(Ljava/lang/String;)V

    .line 32
    iget-object v5, p0, Lcom/join/mgps/activity/MyGamePlugManagerActivity;->f:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    .line 33
    :cond_4
    invoke-virtual {p0}, Lcom/join/mgps/activity/MyGamePlugManagerActivity;->I0()V

    return-void
.end method

.method public I(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method I0()V
    .locals 5
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MyGamePlugManagerActivity;->e:Lcom/join/mgps/adapter/m3;

    invoke-virtual {v0}, Lcom/join/mgps/adapter/m3;->n()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    iget-object v1, p0, Lcom/join/mgps/activity/MyGamePlugManagerActivity;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 4
    new-instance v3, Lcom/join/mgps/adapter/m3$f;

    const/4 v4, 0x4

    invoke-direct {v3, v4, v2}, Lcom/join/mgps/adapter/m3$f;-><init>(ILjava/lang/Object;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 5
    :cond_0
    iget-object v1, p0, Lcom/join/mgps/activity/MyGamePlugManagerActivity;->e:Lcom/join/mgps/adapter/m3;

    invoke-virtual {v1, v0}, Lcom/join/mgps/adapter/m3;->O(Ljava/util/List;)V

    .line 6
    iget-object v0, p0, Lcom/join/mgps/activity/MyGamePlugManagerActivity;->e:Lcom/join/mgps/adapter/m3;

    invoke-virtual {v0}, Lcom/join/mgps/adapter/m3;->notifyDataSetChanged()V

    return-void
.end method

.method J0(Ljava/lang/String;)V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    :try_start_0
    invoke-static {}, Ln1/p;->o()Ln1/p;

    move-result-object v0

    invoke-virtual {v0, p1}, Ln1/p;->n(Ljava/lang/String;)Lcom/join/mgps/db/tables/EMUApkTable;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lg1/f;->V(I)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 3
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getDown_type()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    .line 4
    invoke-virtual {p0, v1}, Lcom/join/mgps/activity/MyGamePlugManagerActivity;->E0(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getGameZipPath()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    .line 6
    invoke-static {v2, v3}, Lcom/join/mgps/Util/g0;->h(Ljava/lang/String;Z)V

    .line 7
    invoke-virtual {p0, v1}, Lcom/join/mgps/activity/MyGamePlugManagerActivity;->E0(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 8
    invoke-static {v0}, Lcom/join/android/app/common/utils/h;->i(Lcom/join/mgps/db/tables/EMUApkTable;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {p1}, Lcom/join/android/app/common/utils/h;->delete(Ljava/lang/String;)V

    .line 9
    :cond_2
    invoke-virtual {v0}, Lcom/join/mgps/db/tables/EMUApkTable;->getApkPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v3}, Lcom/join/mgps/Util/g0;->h(Ljava/lang/String;Z)V

    const-string v1, ""

    .line 10
    invoke-virtual {v0, v1}, Lcom/join/mgps/db/tables/EMUApkTable;->setApkPath(Ljava/lang/String;)V

    .line 11
    invoke-static {}, Ln1/p;->o()Ln1/p;

    move-result-object v1

    invoke-virtual {v1, v0}, Lg1/b;->m(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 12
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 13
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/MyGamePlugManagerActivity;->I0()V

    .line 14
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/MyGamePlugManagerActivity;->G0(Ljava/lang/String;)V

    return-void
.end method

.method public K(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public Y(Ljava/lang/String;)V
    .locals 4

    .line 1
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v0

    invoke-virtual {v0, p1}, Lg1/f;->B(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v1

    if-nez v1, :cond_1

    return-void

    .line 3
    :cond_1
    new-instance v1, Lcom/join/mgps/customview/b0;

    invoke-direct {v1, p0}, Lcom/join/mgps/customview/b0;-><init>(Landroid/content/Context;)V

    .line 4
    new-instance v2, Lcom/join/mgps/activity/MyGamePlugManagerActivity$a;

    invoke-direct {v2, p0}, Lcom/join/mgps/activity/MyGamePlugManagerActivity$a;-><init>(Lcom/join/mgps/activity/MyGamePlugManagerActivity;)V

    invoke-virtual {v1, v2}, Lcom/join/mgps/customview/b0;->b(Lcom/join/mgps/customview/b0$a;)V

    .line 5
    iget-object v2, p0, Lcom/join/mgps/activity/MyGamePlugManagerActivity;->c:Landroid/view/View;

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getDown_type()I

    move-result v0

    const/4 v3, 0x2

    if-eq v0, v3, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v2, p1, v0}, Lcom/join/mgps/customview/b0;->d(Landroid/view/View;Ljava/lang/String;Z)V

    return-void
.end method

.method afterViews()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    .line 1
    invoke-static {}, Lcom/join/mgps/Util/c0;->a()Lcom/join/mgps/Util/c0;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/join/mgps/Util/c0;->d(Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/MyGamePlugManagerActivity;->a:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/MyGamePlugManagerActivity;->a:Landroid/widget/TextView;

    const-string v1, "\u63d2\u4ef6\u7ba1\u7406"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v0, "#ffffff"

    .line 4
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/join/mgps/Util/z1;->o(Landroid/app/Activity;IZ)V

    const-string v0, "AppZipFailed2DialogAcitivity"

    const-string v1, "MyGamePlugManagerActivity"

    .line 5
    invoke-static {v0, v1}, Lcom/join/mgps/Util/t0;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    new-instance v0, Lcom/join/mgps/adapter/m3;

    invoke-direct {v0, p0}, Lcom/join/mgps/adapter/m3;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/join/mgps/activity/MyGamePlugManagerActivity;->e:Lcom/join/mgps/adapter/m3;

    .line 7
    invoke-virtual {v0, p0}, Lcom/join/mgps/adapter/m3;->P(Lcom/join/mgps/adapter/m3$e;)V

    .line 8
    iget-object v0, p0, Lcom/join/mgps/activity/MyGamePlugManagerActivity;->b:Lcom/join/mgps/customview/XListView2;

    iget-object v1, p0, Lcom/join/mgps/activity/MyGamePlugManagerActivity;->e:Lcom/join/mgps/adapter/m3;

    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/XListView2;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 9
    iget-object v0, p0, Lcom/join/mgps/activity/MyGamePlugManagerActivity;->b:Lcom/join/mgps/customview/XListView2;

    invoke-virtual {v0, p0}, Lcom/join/mgps/customview/XListView2;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 10
    invoke-virtual {p0}, Lcom/join/mgps/activity/MyGamePlugManagerActivity;->H0()V

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

.method public n(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/BaseActivity;->onDestroy()V

    .line 2
    invoke-static {}, Lcom/join/mgps/Util/c0;->a()Lcom/join/mgps/Util/c0;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/join/mgps/Util/c0;->e(Ljava/lang/Object;)V

    return-void
.end method

.method onDownloadSpeed(Lcom/join/mgps/event/k;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    if-eqz p1, :cond_1

    .line 1
    invoke-virtual {p1}, Lcom/join/mgps/event/k;->a()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/MyGamePlugManagerActivity;->I0()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onEventMainThread(Lcom/join/mgps/event/l;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/join/mgps/event/l;->a()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Lcom/join/mgps/event/l;->c()I

    move-result p1

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    const/16 p1, 0x9

    .line 3
    invoke-virtual {p0, v0, p1}, Lcom/join/mgps/activity/MyGamePlugManagerActivity;->updateUI(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    goto :goto_0

    :pswitch_2
    const/16 p1, 0x8

    .line 4
    invoke-virtual {p0, v0, p1}, Lcom/join/mgps/activity/MyGamePlugManagerActivity;->updateUI(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    goto :goto_0

    :pswitch_3
    const/4 p1, 0x7

    .line 5
    invoke-virtual {p0, v0, p1}, Lcom/join/mgps/activity/MyGamePlugManagerActivity;->updateUI(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    goto :goto_0

    .line 6
    :pswitch_4
    iget-object p1, p0, Lcom/join/mgps/activity/MyGamePlugManagerActivity;->f:Ljava/util/List;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_0

    .line 7
    invoke-direct {p0}, Lcom/join/mgps/activity/MyGamePlugManagerActivity;->updateProgressPartly()V

    goto :goto_0

    :pswitch_5
    const/4 p1, 0x3

    .line 8
    invoke-virtual {p0, v0, p1}, Lcom/join/mgps/activity/MyGamePlugManagerActivity;->updateUI(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    goto :goto_0

    :pswitch_6
    const/4 p1, 0x6

    .line 9
    invoke-virtual {p0, v0, p1}, Lcom/join/mgps/activity/MyGamePlugManagerActivity;->updateUI(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    goto :goto_0

    :pswitch_7
    const/4 p1, 0x5

    .line 10
    invoke-virtual {p0, v0, p1}, Lcom/join/mgps/activity/MyGamePlugManagerActivity;->updateUI(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    goto :goto_0

    :pswitch_8
    const/4 p1, 0x2

    .line 11
    invoke-virtual {p0, v0, p1}, Lcom/join/mgps/activity/MyGamePlugManagerActivity;->updateUI(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    goto :goto_0

    :pswitch_9
    const/4 p1, 0x1

    .line 12
    invoke-virtual {p0, v0, p1}, Lcom/join/mgps/activity/MyGamePlugManagerActivity;->updateUI(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    :cond_0
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_9
        :pswitch_8
        :pswitch_0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_7
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0

    add-int/2addr p3, p2

    add-int/lit8 p3, p3, -0x1

    .line 1
    iput p3, p0, Lcom/join/mgps/activity/MyGamePlugManagerActivity;->g:I

    .line 2
    iput p2, p0, Lcom/join/mgps/activity/MyGamePlugManagerActivity;->h:I

    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0

    return-void
.end method

.method public s0(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 0

    return-void
.end method

.method updateUI(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V
    .locals 0

    if-eqz p1, :cond_0

    packed-switch p2, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 1
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/MyGamePlugManagerActivity;->receiveError(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto :goto_0

    .line 2
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/MyGamePlugManagerActivity;->receiveSuccess(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto :goto_0

    .line 3
    :pswitch_3
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/MyGamePlugManagerActivity;->receiveDelete(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto :goto_0

    .line 4
    :pswitch_4
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/MyGamePlugManagerActivity;->receiveStart(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    :cond_0
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_4
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method
