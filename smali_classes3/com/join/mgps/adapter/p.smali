.class public Lcom/join/mgps/adapter/p;
.super Landroid/widget/BaseAdapter;
.source "DownloadCenterAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/adapter/p$n0;,
        Lcom/join/mgps/adapter/p$p0;,
        Lcom/join/mgps/adapter/p$q0;,
        Lcom/join/mgps/adapter/p$m0;,
        Lcom/join/mgps/adapter/p$o0;,
        Lcom/join/mgps/adapter/p$l0;
    }
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field b:Landroid/app/Activity;

.field c:Landroid/widget/ListView;

.field d:Lcom/join/mgps/dto/DownloadCenterBean;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/adapter/p;->a:Ljava/lang/String;

    .line 3
    new-instance v0, Lcom/join/mgps/dto/DownloadCenterBean;

    invoke-direct {v0}, Lcom/join/mgps/dto/DownloadCenterBean;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/adapter/p;->d:Lcom/join/mgps/dto/DownloadCenterBean;

    .line 4
    iput-object p1, p0, Lcom/join/mgps/adapter/p;->b:Landroid/app/Activity;

    return-void
.end method

.method private e(Lcom/github/snowdream/android/app/downloader/DownloadTask;Lcom/join/mgps/adapter/p$o0;)V
    .locals 11

    const/16 v0, 0x80

    .line 1
    invoke-virtual {p1, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->set_from_type(I)V

    .line 2
    iget-object v0, p2, Lcom/join/mgps/adapter/p$o0;->a:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPortraitURL()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/join/android/app/common/utils/MyImageLoader;->h(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 3
    iget-object v0, p2, Lcom/join/mgps/adapter/p$o0;->c:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getShowName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getGift_package_switch()I

    move-result v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_0

    .line 5
    iget-object v0, p2, Lcom/join/mgps/adapter/p$o0;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p2, Lcom/join/mgps/adapter/p$o0;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 7
    :goto_0
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getRomType()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getFileType()Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/join/mgps/enums/Dtype;->chajian:Lcom/join/mgps/enums/Dtype;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPortraitURL()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8
    iget-object v0, p2, Lcom/join/mgps/adapter/p$o0;->a:Lcom/facebook/drawee/view/SimpleDraweeView;

    const v3, 0x7f08099f

    invoke-virtual {v0, v3}, Lcom/facebook/drawee/view/SimpleDraweeView;->setImageResource(I)V

    .line 9
    :cond_1
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSize()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-nez v0, :cond_2

    .line 10
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v0

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lg1/f;->B(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSize()J

    move-result-wide v3

    invoke-virtual {p1, v3, v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setSize(J)V

    .line 11
    :cond_2
    iget-object v0, p2, Lcom/join/mgps/adapter/p$o0;->j:Landroid/widget/ProgressBar;

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    move-result-wide v3

    long-to-int v4, v3

    invoke-virtual {v0, v4}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 12
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "progressBar="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p2, Lcom/join/mgps/adapter/p$o0;->j:Landroid/widget/ProgressBar;

    invoke-virtual {v3}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ";name="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getShowName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ";"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSize()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 13
    iget-object v0, p2, Lcom/join/mgps/adapter/p$o0;->f:Landroid/widget/LinearLayout;

    new-instance v3, Lcom/join/mgps/adapter/p$z;

    invoke-direct {v3, p0, p1}, Lcom/join/mgps/adapter/p$z;-><init>(Lcom/join/mgps/adapter/p;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 14
    iget-object v0, p2, Lcom/join/mgps/adapter/p$o0;->h:Landroid/widget/LinearLayout;

    new-instance v3, Lcom/join/mgps/adapter/p$a0;

    invoke-direct {v3, p0, p1}, Lcom/join/mgps/adapter/p$a0;-><init>(Lcom/join/mgps/adapter/p;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 15
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getShowSize()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getShowSize()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_3
    const-string v0, "0"

    .line 16
    :goto_1
    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v3

    const-wide/high16 v7, 0x4090000000000000L    # 1024.0

    mul-double v3, v3, v7

    mul-double v3, v3, v7

    double-to-long v3, v3

    .line 17
    iget-object v0, p2, Lcom/join/mgps/adapter/p$o0;->d:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCurrentSize()J

    move-result-wide v8

    invoke-static {v8, v9}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3, v4}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 18
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSize()J

    move-result-wide v9

    const/4 v0, 0x4

    cmp-long v7, v9, v5

    if-nez v7, :cond_6

    .line 19
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getShowSize()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_5

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getShowSize()Ljava/lang/String;

    move-result-object v5

    const-string v6, "-"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4

    goto :goto_2

    .line 20
    :cond_4
    iget-object v0, p2, Lcom/join/mgps/adapter/p$o0;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3

    .line 21
    :cond_5
    :goto_2
    iget-object v5, p2, Lcom/join/mgps/adapter/p$o0;->d:Landroid/widget/TextView;

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3

    .line 22
    :cond_6
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSize()J

    move-result-wide v9

    cmp-long v7, v9, v5

    if-gtz v7, :cond_7

    .line 23
    iget-object v5, p2, Lcom/join/mgps/adapter/p$o0;->d:Landroid/widget/TextView;

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3

    .line 24
    :cond_7
    iget-object v0, p2, Lcom/join/mgps/adapter/p$o0;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 25
    :goto_3
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v0

    const/4 v5, 0x2

    const v6, 0x7f080a62

    const v7, 0x7f06002a

    if-ne v0, v5, :cond_8

    .line 26
    iget-object v0, p2, Lcom/join/mgps/adapter/p$o0;->j:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 27
    iget-object v0, p2, Lcom/join/mgps/adapter/p$o0;->k:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 28
    invoke-static {p1}, Lcom/join/mgps/Util/UtilsMy;->C3(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 29
    iget-object v0, p2, Lcom/join/mgps/adapter/p$o0;->i:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 30
    iget-object v0, p2, Lcom/join/mgps/adapter/p$o0;->i:Landroid/widget/TextView;

    const-string v1, "\u6682\u505c"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 31
    iget-object v0, p2, Lcom/join/mgps/adapter/p$o0;->i:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/join/mgps/adapter/p;->b:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 32
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSpeed()Ljava/lang/String;

    move-result-object v0

    .line 33
    iget-object v1, p2, Lcom/join/mgps/adapter/p$o0;->e:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/S"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 34
    iget-object v0, p2, Lcom/join/mgps/adapter/p$o0;->j:Landroid/widget/ProgressBar;

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    move-result-wide v1

    long-to-int v2, v1

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 35
    iget-object p2, p2, Lcom/join/mgps/adapter/p$o0;->n:Landroid/widget/RelativeLayout;

    new-instance v0, Lcom/join/mgps/adapter/p$b0;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/adapter/p$b0;-><init>(Lcom/join/mgps/adapter/p;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    invoke-virtual {p2, v0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_4

    .line 36
    :cond_8
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v0

    const/16 v5, 0x1b

    const-string v9, "\u6682\u505c\u4e2d"

    if-ne v0, v5, :cond_9

    .line 37
    iget-object p1, p2, Lcom/join/mgps/adapter/p$o0;->i:Landroid/widget/TextView;

    invoke-virtual {p1, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 38
    :cond_9
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v0

    const/16 v5, 0xc

    if-ne v0, v5, :cond_a

    .line 39
    iget-object v0, p2, Lcom/join/mgps/adapter/p$o0;->d:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v3, v4}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3, v4}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 40
    iget-object v0, p2, Lcom/join/mgps/adapter/p$o0;->e:Landroid/widget/TextView;

    const-string v3, "\u89e3\u538b\u4e2d.."

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 41
    iget-object v0, p2, Lcom/join/mgps/adapter/p$o0;->j:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 42
    iget-object v0, p2, Lcom/join/mgps/adapter/p$o0;->k:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 43
    iget-object v0, p2, Lcom/join/mgps/adapter/p$o0;->k:Landroid/widget/ProgressBar;

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    move-result-wide v1

    long-to-int p1, v1

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 44
    iget-object p1, p2, Lcom/join/mgps/adapter/p$o0;->n:Landroid/widget/RelativeLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 45
    iget-object p1, p2, Lcom/join/mgps/adapter/p$o0;->i:Landroid/widget/TextView;

    const v0, 0x7f0803ca

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 46
    iget-object p1, p2, Lcom/join/mgps/adapter/p$o0;->i:Landroid/widget/TextView;

    const-string v0, "\u89e3\u538b\u4e2d"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 47
    iget-object p1, p2, Lcom/join/mgps/adapter/p$o0;->i:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/join/mgps/adapter/p;->b:Landroid/app/Activity;

    invoke-virtual {p2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f060031

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_4

    .line 48
    :cond_a
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v0

    const/16 v5, 0xd

    if-ne v0, v5, :cond_b

    .line 49
    iget-object v0, p2, Lcom/join/mgps/adapter/p$o0;->d:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v3, v4}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3, v4}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 50
    iget-object v0, p2, Lcom/join/mgps/adapter/p$o0;->e:Landroid/widget/TextView;

    const-string v3, "\u8bf7\u70b9\u51fb\u6309\u94ae\u91cd\u65b0\u89e3\u538b"

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 51
    iget-object v0, p2, Lcom/join/mgps/adapter/p$o0;->j:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 52
    iget-object v0, p2, Lcom/join/mgps/adapter/p$o0;->k:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 53
    iget-object v0, p2, Lcom/join/mgps/adapter/p$o0;->k:Landroid/widget/ProgressBar;

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    move-result-wide v1

    long-to-int v2, v1

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 54
    iget-object v0, p2, Lcom/join/mgps/adapter/p$o0;->i:Landroid/widget/TextView;

    const v1, 0x7f080a7b

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 55
    iget-object v0, p2, Lcom/join/mgps/adapter/p$o0;->i:Landroid/widget/TextView;

    const-string v1, "\u89e3\u538b"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 56
    iget-object v0, p2, Lcom/join/mgps/adapter/p$o0;->i:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/join/mgps/adapter/p;->b:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 57
    iget-object p2, p2, Lcom/join/mgps/adapter/p$o0;->n:Landroid/widget/RelativeLayout;

    new-instance v0, Lcom/join/mgps/adapter/p$c0;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/adapter/p$c0;-><init>(Lcom/join/mgps/adapter/p;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    invoke-virtual {p2, v0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_4

    .line 58
    :cond_b
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v0

    const/16 v3, 0xa

    if-ne v0, v3, :cond_c

    .line 59
    iget-object v0, p2, Lcom/join/mgps/adapter/p$o0;->j:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 60
    iget-object v0, p2, Lcom/join/mgps/adapter/p$o0;->k:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 61
    iget-object v0, p2, Lcom/join/mgps/adapter/p$o0;->e:Landroid/widget/TextView;

    const-string v1, "\u7b49\u5f85\u4e2d"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 62
    iget-object v0, p2, Lcom/join/mgps/adapter/p$o0;->i:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 63
    iget-object v0, p2, Lcom/join/mgps/adapter/p$o0;->i:Landroid/widget/TextView;

    const-string v1, "\u7b49\u5f85"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    iget-object v0, p2, Lcom/join/mgps/adapter/p$o0;->i:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/join/mgps/adapter/p;->b:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 65
    iget-object p2, p2, Lcom/join/mgps/adapter/p$o0;->n:Landroid/widget/RelativeLayout;

    new-instance v0, Lcom/join/mgps/adapter/p$d0;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/adapter/p$d0;-><init>(Lcom/join/mgps/adapter/p;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    invoke-virtual {p2, v0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_4

    .line 66
    :cond_c
    iget-object v0, p2, Lcom/join/mgps/adapter/p$o0;->j:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 67
    iget-object v0, p2, Lcom/join/mgps/adapter/p$o0;->k:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 68
    iget-object v0, p2, Lcom/join/mgps/adapter/p$o0;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    iget-object v0, p2, Lcom/join/mgps/adapter/p$o0;->i:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 70
    iget-object v0, p2, Lcom/join/mgps/adapter/p$o0;->i:Landroid/widget/TextView;

    const-string v1, "\u7ee7\u7eed"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    iget-object v0, p2, Lcom/join/mgps/adapter/p$o0;->i:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/join/mgps/adapter/p;->b:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 72
    iget-object v0, p2, Lcom/join/mgps/adapter/p$o0;->j:Landroid/widget/ProgressBar;

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    move-result-wide v1

    long-to-int v2, v1

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 73
    iget-object p2, p2, Lcom/join/mgps/adapter/p$o0;->n:Landroid/widget/RelativeLayout;

    new-instance v0, Lcom/join/mgps/adapter/p$e0;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/adapter/p$e0;-><init>(Lcom/join/mgps/adapter/p;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    invoke-virtual {p2, v0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_4
    return-void
.end method


# virtual methods
.method public a(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 3

    .line 1
    :try_start_0
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v0

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    .line 2
    invoke-static {p1}, Lcom/php25/PDownload/d;->b(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {p1}, Lcom/php25/PDownload/d;->a(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 4
    :goto_0
    :try_start_1
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getRomType()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/join/mgps/enums/Dtype;->androidobb:Lcom/join/mgps/enums/Dtype;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getRomType()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/join/mgps/enums/Dtype;->androiddata:Lcom/join/mgps/enums/Dtype;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getRomType()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/join/mgps/enums/Dtype;->androidobbdata:Lcom/join/mgps/enums/Dtype;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5
    :cond_1
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/join/mgps/Util/u;->o:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/join/mgps/Util/UtilsMy;->delete(Ljava/io/File;)Z

    .line 6
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/join/mgps/Util/u;->p:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/join/mgps/Util/UtilsMy;->delete(Ljava/io/File;)Z

    .line 7
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getGameZipPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/join/mgps/Util/UtilsMy;->delete(Ljava/io/File;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 8
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 9
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/join/mgps/adapter/p;->d:Lcom/join/mgps/dto/DownloadCenterBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/DownloadCenterBean;->getDownloadFiles()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 10
    iget-object p1, p0, Lcom/join/mgps/adapter/p;->d:Lcom/join/mgps/dto/DownloadCenterBean;

    invoke-virtual {p1}, Lcom/join/mgps/dto/DownloadCenterBean;->getDownloadFiles()Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lcom/join/mgps/Util/UtilsMy;->D3(Ljava/util/List;)V

    .line 11
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception p1

    .line 12
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    return-void
.end method

.method b(Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z
    .locals 6

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 1
    :cond_0
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v1

    .line 2
    iget-object v2, p0, Lcom/join/mgps/adapter/p;->b:Landroid/app/Activity;

    invoke-static {v2, v1}, Lcom/join/mgps/Util/UtilsMy;->D1(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    new-instance v1, Lcom/join/mgps/pref/PrefDef_;

    iget-object v2, p0, Lcom/join/mgps/adapter/p;->b:Landroid/app/Activity;

    invoke-direct {v1, v2}, Lcom/join/mgps/pref/PrefDef_;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/join/mgps/pref/PrefDef_;->downloadSpeedUpGameSize()Lorg/androidannotations/api/sharedpreferences/i;

    move-result-object v1

    invoke-virtual {v1}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getActual_size()J

    move-result-wide v3

    cmp-long v5, v1, v3

    if-gtz v5, :cond_2

    .line 3
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getFileType()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getFileType()Ljava/lang/String;

    move-result-object p1

    sget-object v1, Lcom/join/mgps/enums/Dtype;->chajian:Lcom/join/mgps/enums/Dtype;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    :cond_1
    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method public c(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
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
    iget-object v0, p0, Lcom/join/mgps/adapter/p;->d:Lcom/join/mgps/dto/DownloadCenterBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/DownloadCenterBean;->getStayInstalledDownloadTasks()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 8
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public d(Ljava/util/List;Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/github/snowdream/android/app/downloader/DownloadTask;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-string v2, "downloadTask.getStatus()="

    const/4 v3, 0x1

    const/4 v4, 0x5

    const/16 v5, 0x9

    const/16 v6, 0xa

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 2
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v7

    if-ne v7, v6, :cond_0

    .line 3
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v6

    if-ne v6, v5, :cond_1

    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getDownloadType()I

    move-result v5

    if-ne v5, v3, :cond_1

    .line 4
    invoke-static {v1}, Lcom/php25/PDownload/d;->b(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v3

    if-eq v3, v4, :cond_0

    .line 6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 7
    invoke-static {v1}, Lcom/php25/PDownload/d;->a(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto :goto_0

    .line 8
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 9
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v1

    if-ne v1, v5, :cond_4

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getDownloadType()I

    move-result v1

    if-ne v1, v3, :cond_4

    .line 10
    invoke-static {v0}, Lcom/php25/PDownload/d;->b(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto :goto_1

    .line 11
    :cond_4
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v1

    if-eq v1, v4, :cond_3

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v1

    if-eq v1, v6, :cond_3

    .line 12
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 13
    invoke-static {v0}, Lcom/php25/PDownload/d;->a(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto :goto_1

    :cond_5
    const-string p1, "deleteFromRunning"

    .line 14
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 15
    iget-object p1, p0, Lcom/join/mgps/adapter/p;->d:Lcom/join/mgps/dto/DownloadCenterBean;

    invoke-virtual {p1}, Lcom/join/mgps/dto/DownloadCenterBean;->getDownloadFiles()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->clear()V

    goto :goto_2

    :cond_6
    const-string p1, "deleteFromInstall"

    .line 16
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 17
    iget-object p1, p0, Lcom/join/mgps/adapter/p;->d:Lcom/join/mgps/dto/DownloadCenterBean;

    invoke-virtual {p1}, Lcom/join/mgps/dto/DownloadCenterBean;->getStayInstalledDownloadTasks()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 18
    :cond_7
    :goto_2
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public f()Lcom/join/mgps/dto/DownloadCenterBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/p;->d:Lcom/join/mgps/dto/DownloadCenterBean;

    return-object v0
.end method

.method public g()Landroid/widget/ListView;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/p;->c:Landroid/widget/ListView;

    return-object v0
.end method

.method public getCount()I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/p;->d:Lcom/join/mgps/dto/DownloadCenterBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/DownloadCenterBean;->getStayInstalledDownloadTasks()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/join/mgps/adapter/p;->d:Lcom/join/mgps/dto/DownloadCenterBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/DownloadCenterBean;->getDownloadFiles()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 3
    iget-object v2, p0, Lcom/join/mgps/adapter/p;->d:Lcom/join/mgps/dto/DownloadCenterBean;

    invoke-virtual {v2}, Lcom/join/mgps/dto/DownloadCenterBean;->getHistoryDownloadFiles()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    .line 4
    iget-object v3, p0, Lcom/join/mgps/adapter/p;->d:Lcom/join/mgps/dto/DownloadCenterBean;

    invoke-virtual {v3}, Lcom/join/mgps/dto/DownloadCenterBean;->getDownloadUpdateFiles()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/2addr v0, v1

    add-int/2addr v0, v2

    add-int/2addr v0, v3

    add-int/lit8 v0, v0, 0x4

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    if-lez p1, :cond_0

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/p;->d:Lcom/join/mgps/dto/DownloadCenterBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/DownloadCenterBean;->getDownloadFiles()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gt p1, v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/join/mgps/adapter/p;->d:Lcom/join/mgps/dto/DownloadCenterBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/DownloadCenterBean;->getDownloadFiles()Ljava/util/List;

    move-result-object v0

    add-int/lit8 p1, p1, -0x1

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 4

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 1
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/adapter/p;->d:Lcom/join/mgps/dto/DownloadCenterBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/DownloadCenterBean;->getDownloadFiles()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-gt p1, v0, :cond_1

    return v1

    .line 2
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/adapter/p;->d:Lcom/join/mgps/dto/DownloadCenterBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/DownloadCenterBean;->getDownloadFiles()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/2addr v0, v1

    const/4 v1, 0x2

    if-ne p1, v0, :cond_2

    return v1

    .line 3
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/adapter/p;->d:Lcom/join/mgps/dto/DownloadCenterBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/DownloadCenterBean;->getDownloadFiles()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v2, p0, Lcom/join/mgps/adapter/p;->d:Lcom/join/mgps/dto/DownloadCenterBean;

    invoke-virtual {v2}, Lcom/join/mgps/dto/DownloadCenterBean;->getStayInstalledDownloadTasks()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v0, v2

    add-int/2addr v0, v1

    const/4 v2, 0x3

    if-ge p1, v0, :cond_3

    return v2

    .line 4
    :cond_3
    iget-object v0, p0, Lcom/join/mgps/adapter/p;->d:Lcom/join/mgps/dto/DownloadCenterBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/DownloadCenterBean;->getDownloadFiles()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v3, p0, Lcom/join/mgps/adapter/p;->d:Lcom/join/mgps/dto/DownloadCenterBean;

    invoke-virtual {v3}, Lcom/join/mgps/dto/DownloadCenterBean;->getStayInstalledDownloadTasks()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/2addr v0, v3

    add-int/2addr v0, v1

    if-ne p1, v0, :cond_4

    const/4 p1, 0x6

    return p1

    .line 5
    :cond_4
    iget-object v0, p0, Lcom/join/mgps/adapter/p;->d:Lcom/join/mgps/dto/DownloadCenterBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/DownloadCenterBean;->getDownloadFiles()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/join/mgps/adapter/p;->d:Lcom/join/mgps/dto/DownloadCenterBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/DownloadCenterBean;->getStayInstalledDownloadTasks()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v0, v1

    add-int/2addr v0, v2

    iget-object v1, p0, Lcom/join/mgps/adapter/p;->d:Lcom/join/mgps/dto/DownloadCenterBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/DownloadCenterBean;->getDownloadUpdateFiles()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v0, v1

    if-ge p1, v0, :cond_5

    const/4 p1, 0x7

    return p1

    .line 6
    :cond_5
    iget-object v0, p0, Lcom/join/mgps/adapter/p;->d:Lcom/join/mgps/dto/DownloadCenterBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/DownloadCenterBean;->getDownloadFiles()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/join/mgps/adapter/p;->d:Lcom/join/mgps/dto/DownloadCenterBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/DownloadCenterBean;->getStayInstalledDownloadTasks()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v0, v1

    add-int/2addr v0, v2

    iget-object v1, p0, Lcom/join/mgps/adapter/p;->d:Lcom/join/mgps/dto/DownloadCenterBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/DownloadCenterBean;->getDownloadUpdateFiles()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v0, v1

    if-ne p1, v0, :cond_6

    const/4 p1, 0x4

    return p1

    :cond_6
    const/4 p1, 0x5

    return p1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 27

    move-object/from16 v1, p0

    move/from16 v2, p1

    .line 1
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ";total="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/join/mgps/adapter/p;->getCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2
    invoke-virtual/range {p0 .. p1}, Lcom/join/mgps/adapter/p;->getItemViewType(I)I

    move-result v3

    const/4 v4, 0x7

    const/4 v5, 0x4

    const/4 v6, 0x3

    const/4 v7, 0x2

    const/4 v8, 0x5

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-nez p2, :cond_6

    const v11, 0x7f0c03c9

    if-nez v3, :cond_0

    .line 3
    iget-object v12, v1, Lcom/join/mgps/adapter/p;->b:Landroid/app/Activity;

    invoke-static {v12}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v12

    invoke-virtual {v12, v11, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v11
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5

    .line 4
    :try_start_1
    new-instance v12, Lcom/join/mgps/adapter/p$p0;

    invoke-direct {v12, v1}, Lcom/join/mgps/adapter/p$p0;-><init>(Lcom/join/mgps/adapter/p;)V

    const v13, 0x7f09089a

    .line 5
    invoke-virtual {v11, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/LinearLayout;

    iput-object v13, v12, Lcom/join/mgps/adapter/p$p0;->c:Landroid/widget/LinearLayout;

    const v13, 0x7f0910ac

    .line 6
    invoke-virtual {v11, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    iput-object v13, v12, Lcom/join/mgps/adapter/p$p0;->a:Landroid/widget/TextView;

    const v13, 0x7f0903c9

    .line 7
    invoke-virtual {v11, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    iput-object v13, v12, Lcom/join/mgps/adapter/p$p0;->b:Landroid/widget/TextView;

    const v13, 0x7f090397

    .line 8
    invoke-virtual {v11, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/LinearLayout;

    invoke-static {v12, v13}, Lcom/join/mgps/adapter/p$p0;->b(Lcom/join/mgps/adapter/p$p0;Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;

    const v13, 0x7f091098

    .line 9
    invoke-virtual {v11, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    invoke-static {v12, v13}, Lcom/join/mgps/adapter/p$p0;->d(Lcom/join/mgps/adapter/p$p0;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 10
    invoke-virtual {v11, v12}, Landroid/view/View;->setTag(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object v13, v10

    move-object v14, v13

    move-object v15, v14

    move-object v10, v12

    :goto_0
    move-object v12, v15

    goto/16 :goto_5

    :catch_0
    move-exception v0

    goto/16 :goto_21

    :cond_0
    if-ne v3, v9, :cond_1

    .line 11
    :try_start_2
    new-instance v11, Lcom/join/mgps/adapter/p$o0;

    invoke-direct {v11, v1}, Lcom/join/mgps/adapter/p$o0;-><init>(Lcom/join/mgps/adapter/p;)V

    .line 12
    iget-object v12, v1, Lcom/join/mgps/adapter/p;->b:Landroid/app/Activity;

    invoke-static {v12}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v12

    const v13, 0x7f0c01cc

    invoke-virtual {v12, v13, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v12
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5

    const v13, 0x7f090709

    .line 13
    :try_start_3
    invoke-virtual {v12, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object v13, v11, Lcom/join/mgps/adapter/p$o0;->a:Lcom/facebook/drawee/view/SimpleDraweeView;

    const v13, 0x7f0905ef

    .line 14
    invoke-virtual {v12, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/ImageView;

    iput-object v13, v11, Lcom/join/mgps/adapter/p$o0;->b:Landroid/widget/ImageView;

    const v13, 0x7f090acd

    .line 15
    invoke-virtual {v12, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    iput-object v13, v11, Lcom/join/mgps/adapter/p$o0;->c:Landroid/widget/TextView;

    const v13, 0x7f0901a3

    .line 16
    invoke-virtual {v12, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    iput-object v13, v11, Lcom/join/mgps/adapter/p$o0;->i:Landroid/widget/TextView;

    const v13, 0x7f090cac

    .line 17
    invoke-virtual {v12, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/RelativeLayout;

    iput-object v13, v11, Lcom/join/mgps/adapter/p$o0;->n:Landroid/widget/RelativeLayout;

    const v13, 0x7f0909b2

    .line 18
    invoke-virtual {v12, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    iput-object v13, v11, Lcom/join/mgps/adapter/p$o0;->e:Landroid/widget/TextView;

    const v13, 0x7f0900ea

    .line 19
    invoke-virtual {v12, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    iput-object v13, v11, Lcom/join/mgps/adapter/p$o0;->d:Landroid/widget/TextView;

    const v13, 0x7f09033d

    .line 20
    invoke-virtual {v12, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/LinearLayout;

    iput-object v13, v11, Lcom/join/mgps/adapter/p$o0;->f:Landroid/widget/LinearLayout;

    const v13, 0x7f090c59

    .line 21
    invoke-virtual {v12, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/ProgressBar;

    iput-object v13, v11, Lcom/join/mgps/adapter/p$o0;->j:Landroid/widget/ProgressBar;

    const v13, 0x7f090c60

    .line 22
    invoke-virtual {v12, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/ProgressBar;

    iput-object v13, v11, Lcom/join/mgps/adapter/p$o0;->k:Landroid/widget/ProgressBar;

    const v13, 0x7f090a92

    .line 23
    invoke-virtual {v12, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/LinearLayout;

    iput-object v13, v11, Lcom/join/mgps/adapter/p$o0;->g:Landroid/widget/LinearLayout;

    const v13, 0x7f0900a9

    .line 24
    invoke-virtual {v12, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/LinearLayout;

    iput-object v13, v11, Lcom/join/mgps/adapter/p$o0;->h:Landroid/widget/LinearLayout;

    const v13, 0x7f0908e8

    .line 25
    invoke-virtual {v12, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/LinearLayout;

    iput-object v13, v11, Lcom/join/mgps/adapter/p$o0;->l:Landroid/widget/LinearLayout;

    const v13, 0x7f091076

    .line 26
    invoke-virtual {v12, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    iput-object v13, v11, Lcom/join/mgps/adapter/p$o0;->m:Landroid/view/View;

    .line 27
    invoke-virtual {v12, v11}, Landroid/view/View;->setTag(Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-object v13, v10

    move-object v15, v13

    move-object v14, v11

    move-object v11, v12

    goto/16 :goto_0

    :catch_1
    move-exception v0

    move-object v2, v0

    move-object v11, v12

    goto/16 :goto_22

    :cond_1
    if-ne v3, v7, :cond_2

    .line 28
    :try_start_4
    iget-object v12, v1, Lcom/join/mgps/adapter/p;->b:Landroid/app/Activity;

    invoke-static {v12}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v12

    invoke-virtual {v12, v11, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v11
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5

    .line 29
    :try_start_5
    new-instance v12, Lcom/join/mgps/adapter/p$q0;

    invoke-direct {v12, v1}, Lcom/join/mgps/adapter/p$q0;-><init>(Lcom/join/mgps/adapter/p;)V

    const v13, 0x7f09089a

    .line 30
    invoke-virtual {v11, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/LinearLayout;

    iput-object v13, v12, Lcom/join/mgps/adapter/p$q0;->c:Landroid/widget/LinearLayout;

    const v13, 0x7f0910ac

    .line 31
    invoke-virtual {v11, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    iput-object v13, v12, Lcom/join/mgps/adapter/p$q0;->a:Landroid/widget/TextView;

    const v13, 0x7f0903c9

    .line 32
    invoke-virtual {v11, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    iput-object v13, v12, Lcom/join/mgps/adapter/p$q0;->b:Landroid/widget/TextView;

    const v13, 0x7f090397

    .line 33
    invoke-virtual {v11, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/LinearLayout;

    invoke-static {v12, v13}, Lcom/join/mgps/adapter/p$q0;->a(Lcom/join/mgps/adapter/p$q0;Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;

    const v13, 0x7f091098

    .line 34
    invoke-virtual {v11, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    invoke-static {v12, v13}, Lcom/join/mgps/adapter/p$q0;->c(Lcom/join/mgps/adapter/p$q0;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 35
    invoke-virtual {v11, v12}, Landroid/view/View;->setTag(Ljava/lang/Object;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    move-object v14, v10

    move-object v15, v14

    move-object v13, v12

    goto/16 :goto_0

    :cond_2
    if-eq v3, v6, :cond_5

    if-eq v3, v8, :cond_5

    if-ne v3, v4, :cond_3

    goto :goto_1

    :cond_3
    if-eq v3, v5, :cond_4

    const/4 v12, 0x6

    if-ne v3, v12, :cond_b

    .line 36
    :cond_4
    :try_start_6
    iget-object v12, v1, Lcom/join/mgps/adapter/p;->b:Landroid/app/Activity;

    invoke-static {v12}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v12

    invoke-virtual {v12, v11, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v11
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    .line 37
    :try_start_7
    new-instance v12, Lcom/join/mgps/adapter/p$n0;

    invoke-direct {v12, v1}, Lcom/join/mgps/adapter/p$n0;-><init>(Lcom/join/mgps/adapter/p;)V

    const v13, 0x7f09089a

    .line 38
    invoke-virtual {v11, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/LinearLayout;

    iput-object v13, v12, Lcom/join/mgps/adapter/p$n0;->c:Landroid/widget/LinearLayout;

    const v13, 0x7f0910ac

    .line 39
    invoke-virtual {v11, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    iput-object v13, v12, Lcom/join/mgps/adapter/p$n0;->a:Landroid/widget/TextView;

    const v13, 0x7f0903c9

    .line 40
    invoke-virtual {v11, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    iput-object v13, v12, Lcom/join/mgps/adapter/p$n0;->b:Landroid/widget/TextView;

    const v13, 0x7f090397

    .line 41
    invoke-virtual {v11, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/LinearLayout;

    invoke-static {v12, v13}, Lcom/join/mgps/adapter/p$n0;->b(Lcom/join/mgps/adapter/p$n0;Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;

    const v13, 0x7f091098

    .line 42
    invoke-virtual {v11, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    invoke-static {v12, v13}, Lcom/join/mgps/adapter/p$n0;->d(Lcom/join/mgps/adapter/p$n0;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 43
    invoke-virtual {v11, v12}, Landroid/view/View;->setTag(Ljava/lang/Object;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    move-object v13, v10

    move-object v14, v13

    move-object v15, v12

    move-object v12, v14

    goto/16 :goto_5

    .line 44
    :cond_5
    :goto_1
    :try_start_8
    new-instance v11, Lcom/join/mgps/adapter/p$l0;

    invoke-direct {v11, v1}, Lcom/join/mgps/adapter/p$l0;-><init>(Lcom/join/mgps/adapter/p;)V

    .line 45
    iget-object v12, v1, Lcom/join/mgps/adapter/p;->b:Landroid/app/Activity;

    invoke-static {v12}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v12

    const v13, 0x7f0c01ca

    invoke-virtual {v12, v13, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v12
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5

    const v13, 0x7f090709

    .line 46
    :try_start_9
    invoke-virtual {v12, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object v13, v11, Lcom/join/mgps/adapter/p$l0;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    const v13, 0x7f090acd

    .line 47
    invoke-virtual {v12, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    iput-object v13, v11, Lcom/join/mgps/adapter/p$l0;->d:Landroid/widget/TextView;

    const v13, 0x7f0905ef

    .line 48
    invoke-virtual {v12, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/ImageView;

    iput-object v13, v11, Lcom/join/mgps/adapter/p$l0;->c:Landroid/widget/ImageView;

    const v13, 0x7f090ee6

    .line 49
    invoke-virtual {v12, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/LinearLayout;

    iput-object v13, v11, Lcom/join/mgps/adapter/p$l0;->f:Landroid/widget/LinearLayout;

    const v13, 0x7f09033d

    .line 50
    invoke-virtual {v12, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/LinearLayout;

    iput-object v13, v11, Lcom/join/mgps/adapter/p$l0;->g:Landroid/widget/LinearLayout;

    const v13, 0x7f090a3a

    .line 51
    invoke-virtual {v12, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    iput-object v13, v11, Lcom/join/mgps/adapter/p$l0;->j:Landroid/widget/TextView;

    const v13, 0x7f090a92

    .line 52
    invoke-virtual {v12, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/LinearLayout;

    iput-object v13, v11, Lcom/join/mgps/adapter/p$l0;->h:Landroid/widget/LinearLayout;

    const v13, 0x7f0900a9

    .line 53
    invoke-virtual {v12, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/LinearLayout;

    iput-object v13, v11, Lcom/join/mgps/adapter/p$l0;->i:Landroid/widget/LinearLayout;

    const v13, 0x7f0900df

    .line 54
    invoke-virtual {v12, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    iput-object v13, v11, Lcom/join/mgps/adapter/p$l0;->e:Landroid/widget/TextView;

    const v13, 0x7f090cac

    .line 55
    invoke-virtual {v12, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/RelativeLayout;

    iput-object v13, v11, Lcom/join/mgps/adapter/p$l0;->k:Landroid/widget/RelativeLayout;

    const v13, 0x7f0908d3

    .line 56
    invoke-virtual {v12, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/LinearLayout;

    invoke-static {v11, v13}, Lcom/join/mgps/adapter/p$l0;->b(Lcom/join/mgps/adapter/p$l0;Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;

    .line 57
    invoke-virtual {v12, v11}, Landroid/view/View;->setTag(Ljava/lang/Object;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1

    move-object v13, v10

    move-object v14, v13

    move-object v15, v14

    move-object/from16 v26, v12

    move-object v12, v11

    move-object/from16 v11, v26

    goto/16 :goto_5

    :cond_6
    if-nez v3, :cond_7

    .line 58
    :try_start_a
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/join/mgps/adapter/p$p0;

    move-object v12, v10

    move-object v13, v12

    move-object v14, v13

    move-object v15, v14

    move-object v10, v11

    :goto_2
    move-object/from16 v11, p2

    goto/16 :goto_5

    :cond_7
    if-ne v3, v9, :cond_8

    .line 59
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/join/mgps/adapter/p$o0;

    move-object v12, v10

    move-object v13, v12

    move-object v15, v13

    move-object v14, v11

    goto :goto_2

    :cond_8
    if-ne v3, v7, :cond_9

    .line 60
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/join/mgps/adapter/p$q0;

    move-object v12, v10

    move-object v14, v12

    move-object v15, v14

    move-object v13, v11

    goto :goto_2

    :cond_9
    if-eq v3, v6, :cond_d

    if-eq v3, v8, :cond_d

    if-ne v3, v4, :cond_a

    goto :goto_4

    :cond_a
    if-eq v3, v5, :cond_c

    const/4 v11, 0x6

    if-ne v3, v11, :cond_b

    goto :goto_3

    :cond_b
    move-object/from16 v11, p2

    move-object v12, v10

    move-object v13, v12

    move-object v14, v13

    move-object v15, v14

    goto :goto_5

    .line 61
    :cond_c
    :goto_3
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/join/mgps/adapter/p$n0;

    move-object v12, v10

    move-object v13, v12

    move-object v14, v13

    move-object v15, v11

    goto :goto_2

    .line 62
    :cond_d
    :goto_4
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/join/mgps/adapter/p$l0;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_5

    move-object v13, v10

    move-object v14, v13

    move-object v15, v14

    move-object v12, v11

    goto :goto_2

    :goto_5
    const-string v5, ")"

    const-string v4, "("

    const-string v8, ""

    if-nez v3, :cond_f

    .line 63
    :try_start_b
    iget-object v9, v10, Lcom/join/mgps/adapter/p$p0;->a:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Lcom/join/mgps/adapter/p;->d:Lcom/join/mgps/dto/DownloadCenterBean;

    invoke-virtual {v7}, Lcom/join/mgps/dto/DownloadCenterBean;->getDownloadFiles()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v9, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    iget-object v6, v10, Lcom/join/mgps/adapter/p$p0;->b:Landroid/widget/TextView;

    const-string v7, "\u4e0b\u8f7d\u4e2d"

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 65
    invoke-static {v10}, Lcom/join/mgps/adapter/p$p0;->c(Lcom/join/mgps/adapter/p$p0;)Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    invoke-static {v10}, Lcom/join/mgps/adapter/p$p0;->c(Lcom/join/mgps/adapter/p$p0;)Landroid/widget/TextView;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 67
    invoke-static {v10}, Lcom/join/mgps/adapter/p$p0;->a(Lcom/join/mgps/adapter/p$p0;)Landroid/widget/LinearLayout;

    move-result-object v6

    new-instance v7, Lcom/join/mgps/adapter/p$k;

    invoke-direct {v7, v1}, Lcom/join/mgps/adapter/p$k;-><init>(Lcom/join/mgps/adapter/p;)V

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 68
    iget-object v6, v1, Lcom/join/mgps/adapter/p;->d:Lcom/join/mgps/dto/DownloadCenterBean;

    invoke-virtual {v6}, Lcom/join/mgps/dto/DownloadCenterBean;->getDownloadFiles()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-nez v6, :cond_e

    .line 69
    iget-object v6, v10, Lcom/join/mgps/adapter/p$p0;->c:Landroid/widget/LinearLayout;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_6

    .line 70
    :cond_e
    iget-object v6, v10, Lcom/join/mgps/adapter/p$p0;->c:Landroid/widget/LinearLayout;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_f
    :goto_6
    const/4 v6, 0x1

    if-ne v3, v6, :cond_11

    .line 71
    iget-object v6, v1, Lcom/join/mgps/adapter/p;->d:Lcom/join/mgps/dto/DownloadCenterBean;

    invoke-virtual {v6}, Lcom/join/mgps/dto/DownloadCenterBean;->getDownloadFiles()Ljava/util/List;

    move-result-object v6

    add-int/lit8 v7, v2, -0x1

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-direct {v1, v6, v14}, Lcom/join/mgps/adapter/p;->e(Lcom/github/snowdream/android/app/downloader/DownloadTask;Lcom/join/mgps/adapter/p$o0;)V

    .line 72
    iget-object v6, v14, Lcom/join/mgps/adapter/p$o0;->l:Landroid/widget/LinearLayout;

    new-instance v9, Lcom/join/mgps/adapter/p$v;

    invoke-direct {v9, v1, v2}, Lcom/join/mgps/adapter/p$v;-><init>(Lcom/join/mgps/adapter/p;I)V

    invoke-virtual {v6, v9}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    iget-object v6, v14, Lcom/join/mgps/adapter/p$o0;->l:Landroid/widget/LinearLayout;

    new-instance v9, Lcom/join/mgps/adapter/p$w;

    invoke-direct {v9, v1, v2}, Lcom/join/mgps/adapter/p$w;-><init>(Lcom/join/mgps/adapter/p;I)V

    invoke-virtual {v6, v9}, Landroid/widget/LinearLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 74
    iget-object v6, v1, Lcom/join/mgps/adapter/p;->d:Lcom/join/mgps/dto/DownloadCenterBean;

    invoke-virtual {v6}, Lcom/join/mgps/dto/DownloadCenterBean;->getDownloadFiles()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 75
    iget-object v7, v14, Lcom/join/mgps/adapter/p$o0;->m:Landroid/view/View;

    if-eqz v7, :cond_11

    .line 76
    invoke-virtual {v1, v6}, Lcom/join/mgps/adapter/p;->b(Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z

    move-result v7

    if-eqz v7, :cond_10

    .line 77
    iget-object v7, v14, Lcom/join/mgps/adapter/p$o0;->m:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    const/4 v9, 0x0

    invoke-virtual {v7, v9}, Landroid/view/View;->setVisibility(I)V

    .line 78
    iget-object v7, v14, Lcom/join/mgps/adapter/p$o0;->m:Landroid/view/View;

    new-instance v9, Lcom/join/mgps/adapter/p$f0;

    invoke-direct {v9, v1, v6}, Lcom/join/mgps/adapter/p$f0;-><init>(Lcom/join/mgps/adapter/p;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    invoke-virtual {v7, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_7

    .line 79
    :cond_10
    iget-object v6, v14, Lcom/join/mgps/adapter/p$o0;->m:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    :cond_11
    :goto_7
    const/4 v6, 0x2

    if-ne v3, v6, :cond_13

    .line 80
    iget-object v6, v13, Lcom/join/mgps/adapter/p$q0;->a:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v1, Lcom/join/mgps/adapter/p;->d:Lcom/join/mgps/dto/DownloadCenterBean;

    invoke-virtual {v9}, Lcom/join/mgps/dto/DownloadCenterBean;->getStayInstalledDownloadTasks()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    iget-object v6, v13, Lcom/join/mgps/adapter/p$q0;->b:Landroid/widget/TextView;

    const-string v7, "\u5f85\u5b89\u88c5"

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    invoke-static {v13}, Lcom/join/mgps/adapter/p$q0;->b(Lcom/join/mgps/adapter/p$q0;)Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    invoke-static {v13}, Lcom/join/mgps/adapter/p$q0;->b(Lcom/join/mgps/adapter/p$q0;)Landroid/widget/TextView;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 84
    iget-object v6, v1, Lcom/join/mgps/adapter/p;->d:Lcom/join/mgps/dto/DownloadCenterBean;

    invoke-virtual {v6}, Lcom/join/mgps/dto/DownloadCenterBean;->getStayInstalledDownloadTasks()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-nez v6, :cond_12

    .line 85
    iget-object v6, v13, Lcom/join/mgps/adapter/p$q0;->c:Landroid/widget/LinearLayout;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_8

    .line 86
    :cond_12
    iget-object v6, v13, Lcom/join/mgps/adapter/p$q0;->c:Landroid/widget/LinearLayout;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_0

    :cond_13
    :goto_8
    const-string v6, "\u5b89\u88c5"

    const v13, 0x7f08099f

    const-string v7, "\u66f4\u65b0"

    const/4 v9, 0x3

    if-ne v3, v9, :cond_21

    .line 87
    :try_start_c
    iget-object v9, v1, Lcom/join/mgps/adapter/p;->d:Lcom/join/mgps/dto/DownloadCenterBean;

    invoke-virtual {v9}, Lcom/join/mgps/dto/DownloadCenterBean;->getStayInstalledDownloadTasks()Ljava/util/List;

    move-result-object v9

    iget-object v10, v1, Lcom/join/mgps/adapter/p;->d:Lcom/join/mgps/dto/DownloadCenterBean;

    invoke-virtual {v10}, Lcom/join/mgps/dto/DownloadCenterBean;->getDownloadFiles()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    sub-int v10, v2, v10

    const/16 v16, 0x2

    add-int/lit8 v10, v10, -0x2

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    const/16 v10, 0x80

    .line 88
    invoke-virtual {v9, v10}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->set_from_type(I)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_0

    .line 89
    :try_start_d
    iget-object v10, v12, Lcom/join/mgps/adapter/p$l0;->e:Landroid/widget/TextView;

    invoke-virtual {v9}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getDescribe()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v10, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 90
    invoke-virtual {v9}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getShowSize()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 91
    invoke-virtual {v9}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getRomType()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_14

    invoke-virtual {v9}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getRomType()Ljava/lang/String;

    move-result-object v10

    sget-object v14, Lcom/join/mgps/enums/Dtype;->chajian:Lcom/join/mgps/enums/Dtype;

    invoke-virtual {v14}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v10, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_14

    invoke-virtual {v9}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPortraitURL()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_14

    .line 92
    iget-object v10, v12, Lcom/join/mgps/adapter/p$l0;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {v10, v13}, Lcom/facebook/drawee/view/SimpleDraweeView;->setImageResource(I)V

    goto :goto_9

    .line 93
    :cond_14
    iget-object v10, v12, Lcom/join/mgps/adapter/p$l0;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {v9}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPortraitURL()Ljava/lang/String;

    move-result-object v14

    invoke-static {v10, v14}, Lcom/join/android/app/common/utils/MyImageLoader;->h(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 94
    invoke-virtual {v9}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getScore()Ljava/lang/String;

    move-result-object v17

    invoke-virtual {v9}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getDown_count()I

    move-result v18

    invoke-virtual {v9}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getShowSize()Ljava/lang/String;

    move-result-object v19

    invoke-virtual {v9}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSp_tag_info()Lcom/join/mgps/dto/TipNew;

    move-result-object v20

    invoke-virtual {v9}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getTipBeans()Ljava/util/ArrayList;

    move-result-object v21

    iget-object v10, v12, Lcom/join/mgps/adapter/p$l0;->f:Landroid/widget/LinearLayout;

    iget-object v14, v1, Lcom/join/mgps/adapter/p;->b:Landroid/app/Activity;

    move-object/from16 v22, v10

    move-object/from16 v23, v14

    invoke-static/range {v17 .. v23}, Lcom/join/mgps/Util/UtilsMy;->C(Ljava/lang/String;ILjava/lang/String;Lcom/join/mgps/dto/TipNew;Ljava/util/List;Landroid/widget/LinearLayout;Landroid/content/Context;)V

    .line 95
    :goto_9
    iget-object v10, v12, Lcom/join/mgps/adapter/p$l0;->d:Landroid/widget/TextView;

    invoke-virtual {v9}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getShowName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v10, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 96
    invoke-virtual {v9}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getGift_package_switch()I

    move-result v10

    const/4 v14, 0x1

    if-ne v10, v14, :cond_15

    .line 97
    iget-object v10, v12, Lcom/join/mgps/adapter/p$l0;->c:Landroid/widget/ImageView;

    const/4 v14, 0x0

    invoke-virtual {v10, v14}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_a

    .line 98
    :cond_15
    iget-object v10, v12, Lcom/join/mgps/adapter/p$l0;->c:Landroid/widget/ImageView;

    const/16 v14, 0x8

    invoke-virtual {v10, v14}, Landroid/widget/ImageView;->setVisibility(I)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_2

    .line 99
    :catch_2
    :goto_a
    :try_start_e
    iget-object v10, v12, Lcom/join/mgps/adapter/p$l0;->i:Landroid/widget/LinearLayout;

    new-instance v14, Lcom/join/mgps/adapter/p$g0;

    invoke-direct {v14, v1, v9}, Lcom/join/mgps/adapter/p$g0;-><init>(Lcom/join/mgps/adapter/p;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    invoke-virtual {v10, v14}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 100
    invoke-static {v12}, Lcom/join/mgps/adapter/p$l0;->a(Lcom/join/mgps/adapter/p$l0;)Landroid/widget/LinearLayout;

    move-result-object v10

    new-instance v14, Lcom/join/mgps/adapter/p$h0;

    invoke-direct {v14, v1, v9}, Lcom/join/mgps/adapter/p$h0;-><init>(Lcom/join/mgps/adapter/p;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    invoke-virtual {v10, v14}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 101
    invoke-static {v12}, Lcom/join/mgps/adapter/p$l0;->a(Lcom/join/mgps/adapter/p$l0;)Landroid/widget/LinearLayout;

    move-result-object v10

    new-instance v14, Lcom/join/mgps/adapter/p$i0;

    invoke-direct {v14, v1, v2, v9}, Lcom/join/mgps/adapter/p$i0;-><init>(Lcom/join/mgps/adapter/p;ILcom/github/snowdream/android/app/downloader/DownloadTask;)V

    invoke-virtual {v10, v14}, Landroid/widget/LinearLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 102
    invoke-virtual {v9}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPlugin_num()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_16

    invoke-virtual {v9}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPlugin_num()Ljava/lang/String;

    move-result-object v10

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v17, Lcom/join/mgps/enums/ConstantIntEnum;->H5:Lcom/join/mgps/enums/ConstantIntEnum;

    invoke-virtual/range {v17 .. v17}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    move-result v13

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_16

    .line 103
    iget-object v10, v12, Lcom/join/mgps/adapter/p$l0;->j:Landroid/widget/TextView;

    const v13, 0x7f080a62

    .line 104
    invoke-virtual {v10, v13}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 105
    iget-object v10, v12, Lcom/join/mgps/adapter/p$l0;->j:Landroid/widget/TextView;

    const-string v13, "\u5f00\u59cb"

    invoke-virtual {v10, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 106
    iget-object v10, v12, Lcom/join/mgps/adapter/p$l0;->f:Landroid/widget/LinearLayout;

    const/16 v13, 0x8

    invoke-virtual {v10, v13}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 107
    iget-object v10, v12, Lcom/join/mgps/adapter/p$l0;->j:Landroid/widget/TextView;

    iget-object v13, v1, Lcom/join/mgps/adapter/p;->b:Landroid/app/Activity;

    invoke-virtual {v13}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f06002a

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getColor(I)I

    move-result v13

    invoke-virtual {v10, v13}, Landroid/widget/TextView;->setTextColor(I)V

    .line 108
    iget-object v10, v12, Lcom/join/mgps/adapter/p$l0;->k:Landroid/widget/RelativeLayout;

    new-instance v13, Lcom/join/mgps/adapter/p$j0;

    invoke-direct {v13, v1, v9}, Lcom/join/mgps/adapter/p$j0;-><init>(Lcom/join/mgps/adapter/p;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    invoke-virtual {v10, v13}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_10

    .line 109
    :cond_16
    invoke-virtual {v9}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getFileType()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_1b

    invoke-virtual {v9}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getFileType()Ljava/lang/String;

    move-result-object v10

    sget-object v13, Lcom/join/mgps/enums/Dtype;->chajian:Lcom/join/mgps/enums/Dtype;

    invoke-virtual {v13}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1b

    .line 110
    iget-object v10, v12, Lcom/join/mgps/adapter/p$l0;->f:Landroid/widget/LinearLayout;

    const/16 v13, 0x8

    invoke-virtual {v10, v13}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 111
    invoke-virtual {v9}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPortraitURL()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_17

    .line 112
    iget-object v10, v12, Lcom/join/mgps/adapter/p$l0;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    const v13, 0x7f08099f

    invoke-virtual {v10, v13}, Lcom/facebook/drawee/view/SimpleDraweeView;->setImageResource(I)V

    goto :goto_b

    .line 113
    :cond_17
    iget-object v10, v12, Lcom/join/mgps/adapter/p$l0;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {v9}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPortraitURL()Ljava/lang/String;

    move-result-object v13

    invoke-static {v10, v13}, Lcom/join/android/app/common/utils/MyImageLoader;->h(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 114
    invoke-virtual {v9}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getScore()Ljava/lang/String;

    move-result-object v19

    invoke-virtual {v9}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getDown_count()I

    move-result v20

    invoke-virtual {v9}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getShowSize()Ljava/lang/String;

    move-result-object v21

    invoke-virtual {v9}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSp_tag_info()Lcom/join/mgps/dto/TipNew;

    move-result-object v22

    invoke-virtual {v9}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getTipBeans()Ljava/util/ArrayList;

    move-result-object v23

    iget-object v10, v12, Lcom/join/mgps/adapter/p$l0;->f:Landroid/widget/LinearLayout;

    iget-object v13, v1, Lcom/join/mgps/adapter/p;->b:Landroid/app/Activity;

    move-object/from16 v24, v10

    move-object/from16 v25, v13

    invoke-static/range {v19 .. v25}, Lcom/join/mgps/Util/UtilsMy;->C(Ljava/lang/String;ILjava/lang/String;Lcom/join/mgps/dto/TipNew;Ljava/util/List;Landroid/widget/LinearLayout;Landroid/content/Context;)V

    .line 115
    :goto_b
    invoke-virtual {v9}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getDescribe()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v10

    .line 116
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_18

    new-instance v10, Landroid/text/SpannableString;

    invoke-direct {v10, v8}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    goto :goto_c

    .line 117
    :cond_18
    invoke-virtual {v9}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getDescribe()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v10

    .line 118
    :goto_c
    iget-object v13, v12, Lcom/join/mgps/adapter/p$l0;->e:Landroid/widget/TextView;

    sget-object v14, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v13, v10, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 119
    invoke-virtual {v9}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v10

    const/4 v13, 0x5

    if-eq v10, v13, :cond_1a

    const/16 v13, 0x9

    if-eq v10, v13, :cond_19

    const/16 v13, 0xb

    if-eq v10, v13, :cond_1a

    goto :goto_d

    .line 120
    :cond_19
    iget-object v10, v12, Lcom/join/mgps/adapter/p$l0;->j:Landroid/widget/TextView;

    const v13, 0x7f080a67

    invoke-virtual {v10, v13}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 121
    iget-object v10, v12, Lcom/join/mgps/adapter/p$l0;->j:Landroid/widget/TextView;

    invoke-virtual {v10, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 122
    iget-object v10, v12, Lcom/join/mgps/adapter/p$l0;->j:Landroid/widget/TextView;

    iget-object v13, v1, Lcom/join/mgps/adapter/p;->b:Landroid/app/Activity;

    invoke-virtual {v13}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f060030

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getColor(I)I

    move-result v13

    invoke-virtual {v10, v13}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_d

    .line 123
    :cond_1a
    iget-object v10, v12, Lcom/join/mgps/adapter/p$l0;->j:Landroid/widget/TextView;

    const v13, 0x7f080a67

    invoke-virtual {v10, v13}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 124
    iget-object v10, v12, Lcom/join/mgps/adapter/p$l0;->j:Landroid/widget/TextView;

    invoke-virtual {v10, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 125
    iget-object v10, v12, Lcom/join/mgps/adapter/p$l0;->j:Landroid/widget/TextView;

    iget-object v13, v1, Lcom/join/mgps/adapter/p;->b:Landroid/app/Activity;

    invoke-virtual {v13}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f060030

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getColor(I)I

    move-result v13

    invoke-virtual {v10, v13}, Landroid/widget/TextView;->setTextColor(I)V

    .line 126
    :goto_d
    iget-object v10, v12, Lcom/join/mgps/adapter/p$l0;->k:Landroid/widget/RelativeLayout;

    new-instance v13, Lcom/join/mgps/adapter/p$k0;

    invoke-direct {v13, v1, v9}, Lcom/join/mgps/adapter/p$k0;-><init>(Lcom/join/mgps/adapter/p;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    invoke-virtual {v10, v13}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_10

    .line 127
    :cond_1b
    invoke-virtual {v9}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getFileType()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_1f

    invoke-virtual {v9}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getFileType()Ljava/lang/String;

    move-result-object v10

    sget-object v13, Lcom/join/mgps/enums/Dtype;->android:Lcom/join/mgps/enums/Dtype;

    invoke-virtual {v13}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1f

    .line 128
    iget-object v10, v12, Lcom/join/mgps/adapter/p$l0;->f:Landroid/widget/LinearLayout;

    const/4 v13, 0x0

    invoke-virtual {v10, v13}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 129
    invoke-virtual {v9}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v10

    const/4 v13, 0x5

    if-eq v10, v13, :cond_1e

    const/16 v13, 0x9

    if-eq v10, v13, :cond_1d

    const/16 v13, 0xb

    if-eq v10, v13, :cond_1c

    const/16 v13, 0x2a

    if-eq v10, v13, :cond_1e

    goto :goto_e

    .line 130
    :cond_1c
    iget-object v10, v12, Lcom/join/mgps/adapter/p$l0;->j:Landroid/widget/TextView;

    const v13, 0x7f080a67

    invoke-virtual {v10, v13}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 131
    iget-object v10, v12, Lcom/join/mgps/adapter/p$l0;->j:Landroid/widget/TextView;

    invoke-virtual {v10, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 132
    iget-object v10, v12, Lcom/join/mgps/adapter/p$l0;->j:Landroid/widget/TextView;

    iget-object v13, v1, Lcom/join/mgps/adapter/p;->b:Landroid/app/Activity;

    invoke-virtual {v13}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f060030

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getColor(I)I

    move-result v13

    invoke-virtual {v10, v13}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_e

    .line 133
    :cond_1d
    iget-object v10, v12, Lcom/join/mgps/adapter/p$l0;->j:Landroid/widget/TextView;

    const v13, 0x7f080a67

    invoke-virtual {v10, v13}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 134
    iget-object v10, v12, Lcom/join/mgps/adapter/p$l0;->j:Landroid/widget/TextView;

    invoke-virtual {v10, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 135
    iget-object v10, v12, Lcom/join/mgps/adapter/p$l0;->j:Landroid/widget/TextView;

    iget-object v13, v1, Lcom/join/mgps/adapter/p;->b:Landroid/app/Activity;

    invoke-virtual {v13}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f060030

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getColor(I)I

    move-result v13

    invoke-virtual {v10, v13}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_e

    .line 136
    :cond_1e
    iget-object v10, v12, Lcom/join/mgps/adapter/p$l0;->j:Landroid/widget/TextView;

    const v13, 0x7f080a6e

    invoke-virtual {v10, v13}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 137
    iget-object v10, v12, Lcom/join/mgps/adapter/p$l0;->j:Landroid/widget/TextView;

    iget-object v13, v1, Lcom/join/mgps/adapter/p;->b:Landroid/app/Activity;

    invoke-virtual {v13}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f1100d2

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 138
    iget-object v10, v12, Lcom/join/mgps/adapter/p$l0;->j:Landroid/widget/TextView;

    iget-object v13, v1, Lcom/join/mgps/adapter/p;->b:Landroid/app/Activity;

    invoke-virtual {v13}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f060033

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getColor(I)I

    move-result v13

    invoke-virtual {v10, v13}, Landroid/widget/TextView;->setTextColor(I)V

    .line 139
    :goto_e
    iget-object v10, v12, Lcom/join/mgps/adapter/p$l0;->k:Landroid/widget/RelativeLayout;

    new-instance v13, Lcom/join/mgps/adapter/p$a;

    invoke-direct {v13, v1, v9}, Lcom/join/mgps/adapter/p$a;-><init>(Lcom/join/mgps/adapter/p;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    invoke-virtual {v10, v13}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_10

    .line 140
    :cond_1f
    iget-object v10, v12, Lcom/join/mgps/adapter/p$l0;->j:Landroid/widget/TextView;

    const v13, 0x7f080a6e

    invoke-virtual {v10, v13}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 141
    iget-object v10, v12, Lcom/join/mgps/adapter/p$l0;->j:Landroid/widget/TextView;

    iget-object v13, v1, Lcom/join/mgps/adapter/p;->b:Landroid/app/Activity;

    invoke-virtual {v13}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f1100d2

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 142
    iget-object v10, v12, Lcom/join/mgps/adapter/p$l0;->j:Landroid/widget/TextView;

    iget-object v13, v1, Lcom/join/mgps/adapter/p;->b:Landroid/app/Activity;

    invoke-virtual {v13}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f060033

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getColor(I)I

    move-result v13

    invoke-virtual {v10, v13}, Landroid/widget/TextView;->setTextColor(I)V

    .line 143
    invoke-virtual {v9}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v10

    const/16 v13, 0x9

    if-ne v10, v13, :cond_20

    .line 144
    iget-object v10, v12, Lcom/join/mgps/adapter/p$l0;->j:Landroid/widget/TextView;

    const v13, 0x7f080a67

    invoke-virtual {v10, v13}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 145
    iget-object v10, v12, Lcom/join/mgps/adapter/p$l0;->j:Landroid/widget/TextView;

    invoke-virtual {v10, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 146
    iget-object v10, v12, Lcom/join/mgps/adapter/p$l0;->j:Landroid/widget/TextView;

    iget-object v13, v1, Lcom/join/mgps/adapter/p;->b:Landroid/app/Activity;

    invoke-virtual {v13}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f060030

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getColor(I)I

    move-result v13

    invoke-virtual {v10, v13}, Landroid/widget/TextView;->setTextColor(I)V

    .line 147
    iget-object v10, v12, Lcom/join/mgps/adapter/p$l0;->k:Landroid/widget/RelativeLayout;

    new-instance v13, Lcom/join/mgps/adapter/p$b;

    invoke-direct {v13, v1, v9}, Lcom/join/mgps/adapter/p$b;-><init>(Lcom/join/mgps/adapter/p;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    invoke-virtual {v10, v13}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_f

    .line 148
    :cond_20
    iget-object v10, v12, Lcom/join/mgps/adapter/p$l0;->k:Landroid/widget/RelativeLayout;

    new-instance v13, Lcom/join/mgps/adapter/p$c;

    invoke-direct {v13, v1, v9}, Lcom/join/mgps/adapter/p$c;-><init>(Lcom/join/mgps/adapter/p;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    invoke-virtual {v10, v13}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 149
    :goto_f
    iget-object v10, v12, Lcom/join/mgps/adapter/p$l0;->f:Landroid/widget/LinearLayout;

    const/4 v13, 0x0

    invoke-virtual {v10, v13}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 150
    :goto_10
    iget-object v10, v12, Lcom/join/mgps/adapter/p$l0;->g:Landroid/widget/LinearLayout;

    new-instance v13, Lcom/join/mgps/adapter/p$d;

    invoke-direct {v13, v1, v9}, Lcom/join/mgps/adapter/p$d;-><init>(Lcom/join/mgps/adapter/p;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    invoke-virtual {v10, v13}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_21
    const/4 v9, 0x7

    if-ne v3, v9, :cond_29

    .line 151
    iget-object v9, v1, Lcom/join/mgps/adapter/p;->d:Lcom/join/mgps/dto/DownloadCenterBean;

    invoke-virtual {v9}, Lcom/join/mgps/dto/DownloadCenterBean;->getDownloadUpdateFiles()Ljava/util/List;

    move-result-object v9

    iget-object v10, v1, Lcom/join/mgps/adapter/p;->d:Lcom/join/mgps/dto/DownloadCenterBean;

    invoke-virtual {v10}, Lcom/join/mgps/dto/DownloadCenterBean;->getDownloadFiles()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    sub-int v10, v2, v10

    iget-object v13, v1, Lcom/join/mgps/adapter/p;->d:Lcom/join/mgps/dto/DownloadCenterBean;

    invoke-virtual {v13}, Lcom/join/mgps/dto/DownloadCenterBean;->getStayInstalledDownloadTasks()Ljava/util/List;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v13

    sub-int/2addr v10, v13

    const/4 v13, 0x3

    sub-int/2addr v10, v13

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    const/16 v10, 0x80

    .line 152
    invoke-virtual {v9, v10}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->set_from_type(I)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_0

    .line 153
    :try_start_f
    iget-object v10, v12, Lcom/join/mgps/adapter/p$l0;->e:Landroid/widget/TextView;

    invoke-virtual {v9}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getDescribe()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 154
    invoke-virtual {v9}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getShowSize()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 155
    invoke-virtual {v9}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getRomType()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_22

    invoke-virtual {v9}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getRomType()Ljava/lang/String;

    move-result-object v10

    sget-object v13, Lcom/join/mgps/enums/Dtype;->chajian:Lcom/join/mgps/enums/Dtype;

    invoke-virtual {v13}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_22

    invoke-virtual {v9}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPortraitURL()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_22

    .line 156
    iget-object v10, v12, Lcom/join/mgps/adapter/p$l0;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    const v13, 0x7f08099f

    invoke-virtual {v10, v13}, Lcom/facebook/drawee/view/SimpleDraweeView;->setImageResource(I)V

    goto :goto_11

    .line 157
    :cond_22
    iget-object v10, v12, Lcom/join/mgps/adapter/p$l0;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {v9}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPortraitURL()Ljava/lang/String;

    move-result-object v13

    invoke-static {v10, v13}, Lcom/join/android/app/common/utils/MyImageLoader;->h(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 158
    invoke-virtual {v9}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getScore()Ljava/lang/String;

    move-result-object v19

    invoke-virtual {v9}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getDown_count()I

    move-result v20

    invoke-virtual {v9}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getShowSize()Ljava/lang/String;

    move-result-object v21

    invoke-virtual {v9}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSp_tag_info()Lcom/join/mgps/dto/TipNew;

    move-result-object v22

    invoke-virtual {v9}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getTipBeans()Ljava/util/ArrayList;

    move-result-object v23

    iget-object v10, v12, Lcom/join/mgps/adapter/p$l0;->f:Landroid/widget/LinearLayout;

    iget-object v13, v1, Lcom/join/mgps/adapter/p;->b:Landroid/app/Activity;

    move-object/from16 v24, v10

    move-object/from16 v25, v13

    invoke-static/range {v19 .. v25}, Lcom/join/mgps/Util/UtilsMy;->C(Ljava/lang/String;ILjava/lang/String;Lcom/join/mgps/dto/TipNew;Ljava/util/List;Landroid/widget/LinearLayout;Landroid/content/Context;)V

    .line 159
    :goto_11
    iget-object v10, v12, Lcom/join/mgps/adapter/p$l0;->d:Landroid/widget/TextView;

    invoke-virtual {v9}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getShowName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 160
    invoke-virtual {v9}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getGift_package_switch()I

    move-result v10

    const/4 v13, 0x1

    if-ne v10, v13, :cond_23

    .line 161
    iget-object v10, v12, Lcom/join/mgps/adapter/p$l0;->c:Landroid/widget/ImageView;

    const/4 v13, 0x0

    invoke-virtual {v10, v13}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_12

    .line 162
    :cond_23
    iget-object v10, v12, Lcom/join/mgps/adapter/p$l0;->c:Landroid/widget/ImageView;

    const/16 v13, 0x8

    invoke-virtual {v10, v13}, Landroid/widget/ImageView;->setVisibility(I)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_3

    .line 163
    :catch_3
    :goto_12
    :try_start_10
    iget-object v10, v12, Lcom/join/mgps/adapter/p$l0;->i:Landroid/widget/LinearLayout;

    new-instance v13, Lcom/join/mgps/adapter/p$e;

    invoke-direct {v13, v1, v9}, Lcom/join/mgps/adapter/p$e;-><init>(Lcom/join/mgps/adapter/p;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    invoke-virtual {v10, v13}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 164
    invoke-static {v12}, Lcom/join/mgps/adapter/p$l0;->a(Lcom/join/mgps/adapter/p$l0;)Landroid/widget/LinearLayout;

    move-result-object v10

    new-instance v13, Lcom/join/mgps/adapter/p$f;

    invoke-direct {v13, v1, v9}, Lcom/join/mgps/adapter/p$f;-><init>(Lcom/join/mgps/adapter/p;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    invoke-virtual {v10, v13}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 165
    invoke-static {v12}, Lcom/join/mgps/adapter/p$l0;->a(Lcom/join/mgps/adapter/p$l0;)Landroid/widget/LinearLayout;

    move-result-object v10

    new-instance v13, Lcom/join/mgps/adapter/p$g;

    invoke-direct {v13, v1, v2, v9}, Lcom/join/mgps/adapter/p$g;-><init>(Lcom/join/mgps/adapter/p;ILcom/github/snowdream/android/app/downloader/DownloadTask;)V

    invoke-virtual {v10, v13}, Landroid/widget/LinearLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 166
    invoke-virtual {v9}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getFileType()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_26

    invoke-virtual {v9}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getFileType()Ljava/lang/String;

    move-result-object v10

    sget-object v13, Lcom/join/mgps/enums/Dtype;->chajian:Lcom/join/mgps/enums/Dtype;

    invoke-virtual {v13}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_26

    .line 167
    iget-object v10, v12, Lcom/join/mgps/adapter/p$l0;->f:Landroid/widget/LinearLayout;

    const/16 v13, 0x8

    invoke-virtual {v10, v13}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 168
    invoke-virtual {v9}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPortraitURL()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_24

    .line 169
    iget-object v10, v12, Lcom/join/mgps/adapter/p$l0;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    const v13, 0x7f08099f

    invoke-virtual {v10, v13}, Lcom/facebook/drawee/view/SimpleDraweeView;->setImageResource(I)V

    goto :goto_13

    .line 170
    :cond_24
    iget-object v10, v12, Lcom/join/mgps/adapter/p$l0;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {v9}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPortraitURL()Ljava/lang/String;

    move-result-object v13

    invoke-static {v10, v13}, Lcom/join/android/app/common/utils/MyImageLoader;->h(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 171
    invoke-virtual {v9}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getScore()Ljava/lang/String;

    move-result-object v19

    invoke-virtual {v9}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getDown_count()I

    move-result v20

    invoke-virtual {v9}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getShowSize()Ljava/lang/String;

    move-result-object v21

    invoke-virtual {v9}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSp_tag_info()Lcom/join/mgps/dto/TipNew;

    move-result-object v22

    invoke-virtual {v9}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getTipBeans()Ljava/util/ArrayList;

    move-result-object v23

    iget-object v10, v12, Lcom/join/mgps/adapter/p$l0;->f:Landroid/widget/LinearLayout;

    iget-object v13, v1, Lcom/join/mgps/adapter/p;->b:Landroid/app/Activity;

    move-object/from16 v24, v10

    move-object/from16 v25, v13

    invoke-static/range {v19 .. v25}, Lcom/join/mgps/Util/UtilsMy;->C(Ljava/lang/String;ILjava/lang/String;Lcom/join/mgps/dto/TipNew;Ljava/util/List;Landroid/widget/LinearLayout;Landroid/content/Context;)V

    .line 172
    :goto_13
    invoke-virtual {v9}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getDescribe()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v10

    .line 173
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_25

    new-instance v10, Landroid/text/SpannableString;

    invoke-direct {v10, v8}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    goto :goto_14

    .line 174
    :cond_25
    invoke-virtual {v9}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getDescribe()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v10

    .line 175
    :goto_14
    iget-object v13, v12, Lcom/join/mgps/adapter/p$l0;->e:Landroid/widget/TextView;

    sget-object v14, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v13, v10, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 176
    iget-object v10, v12, Lcom/join/mgps/adapter/p$l0;->j:Landroid/widget/TextView;

    const v13, 0x7f080a67

    invoke-virtual {v10, v13}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 177
    iget-object v10, v12, Lcom/join/mgps/adapter/p$l0;->j:Landroid/widget/TextView;

    invoke-virtual {v10, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 178
    iget-object v10, v12, Lcom/join/mgps/adapter/p$l0;->j:Landroid/widget/TextView;

    iget-object v13, v1, Lcom/join/mgps/adapter/p;->b:Landroid/app/Activity;

    invoke-virtual {v13}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f060030

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getColor(I)I

    move-result v13

    invoke-virtual {v10, v13}, Landroid/widget/TextView;->setTextColor(I)V

    .line 179
    iget-object v10, v12, Lcom/join/mgps/adapter/p$l0;->k:Landroid/widget/RelativeLayout;

    new-instance v13, Lcom/join/mgps/adapter/p$h;

    invoke-direct {v13, v1, v9}, Lcom/join/mgps/adapter/p$h;-><init>(Lcom/join/mgps/adapter/p;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    invoke-virtual {v10, v13}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_16

    .line 180
    :cond_26
    invoke-virtual {v9}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getFileType()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_27

    invoke-virtual {v9}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getFileType()Ljava/lang/String;

    move-result-object v10

    sget-object v13, Lcom/join/mgps/enums/Dtype;->android:Lcom/join/mgps/enums/Dtype;

    invoke-virtual {v13}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_27

    .line 181
    iget-object v10, v12, Lcom/join/mgps/adapter/p$l0;->f:Landroid/widget/LinearLayout;

    const/4 v13, 0x0

    invoke-virtual {v10, v13}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 182
    iget-object v10, v12, Lcom/join/mgps/adapter/p$l0;->j:Landroid/widget/TextView;

    const v13, 0x7f080a67

    invoke-virtual {v10, v13}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 183
    iget-object v10, v12, Lcom/join/mgps/adapter/p$l0;->j:Landroid/widget/TextView;

    invoke-virtual {v10, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 184
    iget-object v10, v12, Lcom/join/mgps/adapter/p$l0;->j:Landroid/widget/TextView;

    iget-object v13, v1, Lcom/join/mgps/adapter/p;->b:Landroid/app/Activity;

    invoke-virtual {v13}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f060030

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getColor(I)I

    move-result v13

    invoke-virtual {v10, v13}, Landroid/widget/TextView;->setTextColor(I)V

    .line 185
    iget-object v10, v12, Lcom/join/mgps/adapter/p$l0;->k:Landroid/widget/RelativeLayout;

    new-instance v13, Lcom/join/mgps/adapter/p$i;

    invoke-direct {v13, v1, v9}, Lcom/join/mgps/adapter/p$i;-><init>(Lcom/join/mgps/adapter/p;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    invoke-virtual {v10, v13}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_16

    .line 186
    :cond_27
    iget-object v10, v12, Lcom/join/mgps/adapter/p$l0;->j:Landroid/widget/TextView;

    const v13, 0x7f080a6e

    invoke-virtual {v10, v13}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 187
    iget-object v10, v12, Lcom/join/mgps/adapter/p$l0;->j:Landroid/widget/TextView;

    iget-object v13, v1, Lcom/join/mgps/adapter/p;->b:Landroid/app/Activity;

    invoke-virtual {v13}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f1100d2

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 188
    iget-object v10, v12, Lcom/join/mgps/adapter/p$l0;->j:Landroid/widget/TextView;

    iget-object v13, v1, Lcom/join/mgps/adapter/p;->b:Landroid/app/Activity;

    invoke-virtual {v13}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f060033

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getColor(I)I

    move-result v13

    invoke-virtual {v10, v13}, Landroid/widget/TextView;->setTextColor(I)V

    .line 189
    invoke-virtual {v9}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v10

    const/16 v13, 0x9

    if-ne v10, v13, :cond_28

    .line 190
    iget-object v10, v12, Lcom/join/mgps/adapter/p$l0;->j:Landroid/widget/TextView;

    const v13, 0x7f080a67

    invoke-virtual {v10, v13}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 191
    iget-object v10, v12, Lcom/join/mgps/adapter/p$l0;->j:Landroid/widget/TextView;

    invoke-virtual {v10, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 192
    iget-object v10, v12, Lcom/join/mgps/adapter/p$l0;->j:Landroid/widget/TextView;

    iget-object v13, v1, Lcom/join/mgps/adapter/p;->b:Landroid/app/Activity;

    invoke-virtual {v13}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f060030

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getColor(I)I

    move-result v13

    invoke-virtual {v10, v13}, Landroid/widget/TextView;->setTextColor(I)V

    .line 193
    iget-object v10, v12, Lcom/join/mgps/adapter/p$l0;->k:Landroid/widget/RelativeLayout;

    new-instance v13, Lcom/join/mgps/adapter/p$j;

    invoke-direct {v13, v1, v9}, Lcom/join/mgps/adapter/p$j;-><init>(Lcom/join/mgps/adapter/p;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    invoke-virtual {v10, v13}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_15

    .line 194
    :cond_28
    iget-object v10, v12, Lcom/join/mgps/adapter/p$l0;->k:Landroid/widget/RelativeLayout;

    new-instance v13, Lcom/join/mgps/adapter/p$l;

    invoke-direct {v13, v1, v9}, Lcom/join/mgps/adapter/p$l;-><init>(Lcom/join/mgps/adapter/p;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    invoke-virtual {v10, v13}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 195
    :goto_15
    iget-object v10, v12, Lcom/join/mgps/adapter/p$l0;->f:Landroid/widget/LinearLayout;

    const/4 v13, 0x0

    invoke-virtual {v10, v13}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 196
    :goto_16
    iget-object v10, v12, Lcom/join/mgps/adapter/p$l0;->g:Landroid/widget/LinearLayout;

    new-instance v13, Lcom/join/mgps/adapter/p$m;

    invoke-direct {v13, v1, v9}, Lcom/join/mgps/adapter/p$m;-><init>(Lcom/join/mgps/adapter/p;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    invoke-virtual {v10, v13}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_29
    const/4 v9, 0x4

    if-ne v3, v9, :cond_2b

    .line 197
    iget-object v9, v15, Lcom/join/mgps/adapter/p$n0;->a:Landroid/widget/TextView;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v1, Lcom/join/mgps/adapter/p;->d:Lcom/join/mgps/dto/DownloadCenterBean;

    invoke-virtual {v13}, Lcom/join/mgps/dto/DownloadCenterBean;->getHistoryDownloadFiles()Ljava/util/List;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v13

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 198
    iget-object v9, v15, Lcom/join/mgps/adapter/p$n0;->b:Landroid/widget/TextView;

    const-string v10, "\u4e0b\u8f7d\u5386\u53f2"

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 199
    invoke-static {v15}, Lcom/join/mgps/adapter/p$n0;->c(Lcom/join/mgps/adapter/p$n0;)Landroid/widget/TextView;

    move-result-object v9

    const-string v10, "\u6e05\u9664\u5386\u53f2"

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 200
    invoke-static {v15}, Lcom/join/mgps/adapter/p$n0;->c(Lcom/join/mgps/adapter/p$n0;)Landroid/widget/TextView;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 201
    invoke-static {v15}, Lcom/join/mgps/adapter/p$n0;->a(Lcom/join/mgps/adapter/p$n0;)Landroid/widget/LinearLayout;

    move-result-object v9

    new-instance v10, Lcom/join/mgps/adapter/p$n;

    invoke-direct {v10, v1}, Lcom/join/mgps/adapter/p$n;-><init>(Lcom/join/mgps/adapter/p;)V

    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 202
    iget-object v9, v1, Lcom/join/mgps/adapter/p;->d:Lcom/join/mgps/dto/DownloadCenterBean;

    invoke-virtual {v9}, Lcom/join/mgps/dto/DownloadCenterBean;->getHistoryDownloadFiles()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-nez v9, :cond_2a

    .line 203
    iget-object v9, v15, Lcom/join/mgps/adapter/p$n0;->c:Landroid/widget/LinearLayout;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_17

    .line 204
    :cond_2a
    iget-object v9, v15, Lcom/join/mgps/adapter/p$n0;->c:Landroid/widget/LinearLayout;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_2b
    :goto_17
    const/4 v9, 0x6

    if-ne v3, v9, :cond_2d

    .line 205
    iget-object v9, v15, Lcom/join/mgps/adapter/p$n0;->a:Landroid/widget/TextView;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/join/mgps/adapter/p;->d:Lcom/join/mgps/dto/DownloadCenterBean;

    invoke-virtual {v4}, Lcom/join/mgps/dto/DownloadCenterBean;->getDownloadUpdateFiles()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 206
    iget-object v4, v15, Lcom/join/mgps/adapter/p$n0;->b:Landroid/widget/TextView;

    const-string v5, "\u9700\u66f4\u65b0"

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 207
    invoke-static {v15}, Lcom/join/mgps/adapter/p$n0;->c(Lcom/join/mgps/adapter/p$n0;)Landroid/widget/TextView;

    move-result-object v4

    const-string v5, "\u5168\u90e8\u66f4\u65b0"

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 208
    invoke-static {v15}, Lcom/join/mgps/adapter/p$n0;->c(Lcom/join/mgps/adapter/p$n0;)Landroid/widget/TextView;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 209
    invoke-static {v15}, Lcom/join/mgps/adapter/p$n0;->a(Lcom/join/mgps/adapter/p$n0;)Landroid/widget/LinearLayout;

    move-result-object v4

    new-instance v5, Lcom/join/mgps/adapter/p$o;

    invoke-direct {v5, v1}, Lcom/join/mgps/adapter/p$o;-><init>(Lcom/join/mgps/adapter/p;)V

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 210
    iget-object v4, v1, Lcom/join/mgps/adapter/p;->d:Lcom/join/mgps/dto/DownloadCenterBean;

    invoke-virtual {v4}, Lcom/join/mgps/dto/DownloadCenterBean;->getDownloadUpdateFiles()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_2c

    .line 211
    iget-object v4, v15, Lcom/join/mgps/adapter/p$n0;->c:Landroid/widget/LinearLayout;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_18

    .line 212
    :cond_2c
    iget-object v4, v15, Lcom/join/mgps/adapter/p$n0;->c:Landroid/widget/LinearLayout;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_2d
    :goto_18
    const/4 v4, 0x5

    if-ne v3, v4, :cond_3a

    .line 213
    iget-object v3, v1, Lcom/join/mgps/adapter/p;->d:Lcom/join/mgps/dto/DownloadCenterBean;

    invoke-virtual {v3}, Lcom/join/mgps/dto/DownloadCenterBean;->getHistoryDownloadFiles()Ljava/util/List;

    move-result-object v3

    iget-object v4, v1, Lcom/join/mgps/adapter/p;->d:Lcom/join/mgps/dto/DownloadCenterBean;

    .line 214
    invoke-virtual {v4}, Lcom/join/mgps/dto/DownloadCenterBean;->getDownloadFiles()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v2, v4

    iget-object v4, v1, Lcom/join/mgps/adapter/p;->d:Lcom/join/mgps/dto/DownloadCenterBean;

    invoke-virtual {v4}, Lcom/join/mgps/dto/DownloadCenterBean;->getStayInstalledDownloadTasks()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v2, v4

    iget-object v4, v1, Lcom/join/mgps/adapter/p;->d:Lcom/join/mgps/dto/DownloadCenterBean;

    invoke-virtual {v4}, Lcom/join/mgps/dto/DownloadCenterBean;->getDownloadUpdateFiles()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v2, v4

    const/4 v4, 0x4

    sub-int/2addr v2, v4

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    const/16 v3, 0x80

    .line 215
    invoke-virtual {v2, v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->set_from_type(I)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_0

    .line 216
    :try_start_11
    iget-object v3, v12, Lcom/join/mgps/adapter/p$l0;->e:Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getDescribe()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 217
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getShowSize()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 218
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getRomType()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2e

    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getRomType()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/join/mgps/enums/Dtype;->chajian:Lcom/join/mgps/enums/Dtype;

    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2e

    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPortraitURL()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2e

    .line 219
    iget-object v3, v12, Lcom/join/mgps/adapter/p$l0;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    const v4, 0x7f08099f

    invoke-virtual {v3, v4}, Lcom/facebook/drawee/view/SimpleDraweeView;->setImageResource(I)V

    goto :goto_19

    .line 220
    :cond_2e
    iget-object v3, v12, Lcom/join/mgps/adapter/p$l0;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPortraitURL()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/join/android/app/common/utils/MyImageLoader;->h(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 221
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getScore()Ljava/lang/String;

    move-result-object v19

    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getDown_count()I

    move-result v20

    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getShowSize()Ljava/lang/String;

    move-result-object v21

    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSp_tag_info()Lcom/join/mgps/dto/TipNew;

    move-result-object v22

    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getTipBeans()Ljava/util/ArrayList;

    move-result-object v23

    iget-object v3, v12, Lcom/join/mgps/adapter/p$l0;->f:Landroid/widget/LinearLayout;

    iget-object v4, v1, Lcom/join/mgps/adapter/p;->b:Landroid/app/Activity;

    move-object/from16 v24, v3

    move-object/from16 v25, v4

    invoke-static/range {v19 .. v25}, Lcom/join/mgps/Util/UtilsMy;->C(Ljava/lang/String;ILjava/lang/String;Lcom/join/mgps/dto/TipNew;Ljava/util/List;Landroid/widget/LinearLayout;Landroid/content/Context;)V

    .line 222
    :goto_19
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getGift_package_switch()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2f

    .line 223
    iget-object v3, v12, Lcom/join/mgps/adapter/p$l0;->c:Landroid/widget/ImageView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1a

    .line 224
    :cond_2f
    iget-object v3, v12, Lcom/join/mgps/adapter/p$l0;->c:Landroid/widget/ImageView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 225
    :goto_1a
    iget-object v3, v12, Lcom/join/mgps/adapter/p$l0;->d:Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getShowName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_4

    .line 226
    :catch_4
    :try_start_12
    iget-object v3, v12, Lcom/join/mgps/adapter/p$l0;->i:Landroid/widget/LinearLayout;

    new-instance v4, Lcom/join/mgps/adapter/p$p;

    invoke-direct {v4, v1, v2}, Lcom/join/mgps/adapter/p$p;-><init>(Lcom/join/mgps/adapter/p;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 227
    invoke-static {v12}, Lcom/join/mgps/adapter/p$l0;->a(Lcom/join/mgps/adapter/p$l0;)Landroid/widget/LinearLayout;

    move-result-object v3

    new-instance v4, Lcom/join/mgps/adapter/p$q;

    invoke-direct {v4, v1, v2}, Lcom/join/mgps/adapter/p$q;-><init>(Lcom/join/mgps/adapter/p;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 228
    invoke-static {v12}, Lcom/join/mgps/adapter/p$l0;->a(Lcom/join/mgps/adapter/p$l0;)Landroid/widget/LinearLayout;

    move-result-object v3

    new-instance v4, Lcom/join/mgps/adapter/p$r;

    invoke-direct {v4, v1, v2}, Lcom/join/mgps/adapter/p$r;-><init>(Lcom/join/mgps/adapter/p;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 229
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getFileType()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_34

    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getFileType()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/join/mgps/enums/Dtype;->chajian:Lcom/join/mgps/enums/Dtype;

    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_34

    .line 230
    iget-object v3, v12, Lcom/join/mgps/adapter/p$l0;->f:Landroid/widget/LinearLayout;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 231
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPortraitURL()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_30

    .line 232
    iget-object v3, v12, Lcom/join/mgps/adapter/p$l0;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    const v4, 0x7f08099f

    invoke-virtual {v3, v4}, Lcom/facebook/drawee/view/SimpleDraweeView;->setImageResource(I)V

    goto :goto_1b

    .line 233
    :cond_30
    iget-object v3, v12, Lcom/join/mgps/adapter/p$l0;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPortraitURL()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/join/android/app/common/utils/MyImageLoader;->h(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 234
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getScore()Ljava/lang/String;

    move-result-object v17

    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getDown_count()I

    move-result v18

    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getShowSize()Ljava/lang/String;

    move-result-object v19

    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSp_tag_info()Lcom/join/mgps/dto/TipNew;

    move-result-object v20

    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getTipBeans()Ljava/util/ArrayList;

    move-result-object v21

    iget-object v3, v12, Lcom/join/mgps/adapter/p$l0;->f:Landroid/widget/LinearLayout;

    iget-object v4, v1, Lcom/join/mgps/adapter/p;->b:Landroid/app/Activity;

    move-object/from16 v22, v3

    move-object/from16 v23, v4

    invoke-static/range {v17 .. v23}, Lcom/join/mgps/Util/UtilsMy;->C(Ljava/lang/String;ILjava/lang/String;Lcom/join/mgps/dto/TipNew;Ljava/util/List;Landroid/widget/LinearLayout;Landroid/content/Context;)V

    .line 235
    :goto_1b
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getDescribe()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v3

    .line 236
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_31

    new-instance v3, Landroid/text/SpannableString;

    invoke-direct {v3, v8}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    goto :goto_1c

    .line 237
    :cond_31
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getDescribe()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v3

    .line 238
    :goto_1c
    iget-object v4, v12, Lcom/join/mgps/adapter/p$l0;->e:Landroid/widget/TextView;

    sget-object v5, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v4, v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 239
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v3

    const/4 v4, 0x5

    if-eq v3, v4, :cond_33

    const/16 v4, 0x9

    if-eq v3, v4, :cond_32

    goto :goto_1d

    .line 240
    :cond_32
    iget-object v3, v12, Lcom/join/mgps/adapter/p$l0;->j:Landroid/widget/TextView;

    const v4, 0x7f080a67

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 241
    iget-object v3, v12, Lcom/join/mgps/adapter/p$l0;->j:Landroid/widget/TextView;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 242
    iget-object v3, v12, Lcom/join/mgps/adapter/p$l0;->j:Landroid/widget/TextView;

    iget-object v4, v1, Lcom/join/mgps/adapter/p;->b:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f060030

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1d

    .line 243
    :cond_33
    iget-object v3, v12, Lcom/join/mgps/adapter/p$l0;->j:Landroid/widget/TextView;

    const v4, 0x7f080a67

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 244
    iget-object v3, v12, Lcom/join/mgps/adapter/p$l0;->j:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 245
    iget-object v3, v12, Lcom/join/mgps/adapter/p$l0;->j:Landroid/widget/TextView;

    iget-object v4, v1, Lcom/join/mgps/adapter/p;->b:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f060030

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 246
    :goto_1d
    iget-object v3, v12, Lcom/join/mgps/adapter/p$l0;->k:Landroid/widget/RelativeLayout;

    new-instance v4, Lcom/join/mgps/adapter/p$s;

    invoke-direct {v4, v1, v2}, Lcom/join/mgps/adapter/p$s;-><init>(Lcom/join/mgps/adapter/p;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_20

    .line 247
    :cond_34
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getFileType()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_38

    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getFileType()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/join/mgps/enums/Dtype;->android:Lcom/join/mgps/enums/Dtype;

    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_38

    .line 248
    iget-object v3, v12, Lcom/join/mgps/adapter/p$l0;->f:Landroid/widget/LinearLayout;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 249
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v3

    const/4 v4, 0x5

    if-eq v3, v4, :cond_37

    const/16 v4, 0x9

    if-eq v3, v4, :cond_36

    const/16 v4, 0xb

    if-eq v3, v4, :cond_35

    const/16 v4, 0x2a

    if-eq v3, v4, :cond_37

    goto :goto_1e

    .line 250
    :cond_35
    iget-object v3, v12, Lcom/join/mgps/adapter/p$l0;->j:Landroid/widget/TextView;

    const v4, 0x7f080a67

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 251
    iget-object v3, v12, Lcom/join/mgps/adapter/p$l0;->j:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 252
    iget-object v3, v12, Lcom/join/mgps/adapter/p$l0;->j:Landroid/widget/TextView;

    iget-object v4, v1, Lcom/join/mgps/adapter/p;->b:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f060030

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1e

    .line 253
    :cond_36
    iget-object v3, v12, Lcom/join/mgps/adapter/p$l0;->j:Landroid/widget/TextView;

    const v4, 0x7f080a67

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 254
    iget-object v3, v12, Lcom/join/mgps/adapter/p$l0;->j:Landroid/widget/TextView;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 255
    iget-object v3, v12, Lcom/join/mgps/adapter/p$l0;->j:Landroid/widget/TextView;

    iget-object v4, v1, Lcom/join/mgps/adapter/p;->b:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f060030

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1e

    .line 256
    :cond_37
    iget-object v3, v12, Lcom/join/mgps/adapter/p$l0;->j:Landroid/widget/TextView;

    const v4, 0x7f080a6e

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 257
    iget-object v3, v12, Lcom/join/mgps/adapter/p$l0;->j:Landroid/widget/TextView;

    iget-object v4, v1, Lcom/join/mgps/adapter/p;->b:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f1100d2

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 258
    iget-object v3, v12, Lcom/join/mgps/adapter/p$l0;->j:Landroid/widget/TextView;

    iget-object v4, v1, Lcom/join/mgps/adapter/p;->b:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f060033

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 259
    :goto_1e
    iget-object v3, v12, Lcom/join/mgps/adapter/p$l0;->k:Landroid/widget/RelativeLayout;

    new-instance v4, Lcom/join/mgps/adapter/p$t;

    invoke-direct {v4, v1, v2}, Lcom/join/mgps/adapter/p$t;-><init>(Lcom/join/mgps/adapter/p;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_20

    .line 260
    :cond_38
    iget-object v3, v12, Lcom/join/mgps/adapter/p$l0;->j:Landroid/widget/TextView;

    const v4, 0x7f080a6e

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 261
    iget-object v3, v12, Lcom/join/mgps/adapter/p$l0;->j:Landroid/widget/TextView;

    iget-object v4, v1, Lcom/join/mgps/adapter/p;->b:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f1100d2

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 262
    iget-object v3, v12, Lcom/join/mgps/adapter/p$l0;->j:Landroid/widget/TextView;

    iget-object v4, v1, Lcom/join/mgps/adapter/p;->b:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f060033

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 263
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v3

    const/16 v4, 0x9

    if-ne v3, v4, :cond_39

    .line 264
    iget-object v3, v12, Lcom/join/mgps/adapter/p$l0;->j:Landroid/widget/TextView;

    const v4, 0x7f080a67

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 265
    iget-object v3, v12, Lcom/join/mgps/adapter/p$l0;->k:Landroid/widget/RelativeLayout;

    new-instance v4, Lcom/join/mgps/adapter/p$u;

    invoke-direct {v4, v1, v2}, Lcom/join/mgps/adapter/p$u;-><init>(Lcom/join/mgps/adapter/p;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1f

    .line 266
    :cond_39
    iget-object v3, v12, Lcom/join/mgps/adapter/p$l0;->k:Landroid/widget/RelativeLayout;

    new-instance v4, Lcom/join/mgps/adapter/p$x;

    invoke-direct {v4, v1, v2}, Lcom/join/mgps/adapter/p$x;-><init>(Lcom/join/mgps/adapter/p;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 267
    :goto_1f
    iget-object v3, v12, Lcom/join/mgps/adapter/p$l0;->f:Landroid/widget/LinearLayout;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 268
    :goto_20
    iget-object v3, v12, Lcom/join/mgps/adapter/p$l0;->g:Landroid/widget/LinearLayout;

    new-instance v4, Lcom/join/mgps/adapter/p$y;

    invoke-direct {v4, v1, v2}, Lcom/join/mgps/adapter/p$y;-><init>(Lcom/join/mgps/adapter/p;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_0

    goto :goto_23

    :catch_5
    move-exception v0

    move-object/from16 v11, p2

    :goto_21
    move-object v2, v0

    .line 269
    :goto_22
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3a
    :goto_23
    return-object v11
.end method

.method public getViewTypeCount()I
    .locals 1

    const/16 v0, 0x8

    return v0
.end method

.method public h(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public i(Landroid/widget/ListView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/p;->c:Landroid/widget/ListView;

    return-void
.end method

.method j(Lcom/join/mgps/db/tables/EMUApkTable;)V
    .locals 2

    .line 1
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v0

    invoke-virtual {p1}, Lcom/join/mgps/db/tables/EMUApkTable;->getTag_id()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lg1/f;->V(I)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p1}, Lcom/join/android/app/common/utils/h;->i(Lcom/join/mgps/db/tables/EMUApkTable;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-static {p1, v0}, Lcom/join/android/app/common/utils/h;->e(Lcom/join/mgps/db/tables/EMUApkTable;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/adapter/p;->b:Landroid/app/Activity;

    invoke-static {p1, v0}, Lcom/join/mgps/Util/UtilsMy;->V0(Lcom/join/mgps/db/tables/EMUApkTable;Landroid/content/Context;)V

    return-void
.end method
