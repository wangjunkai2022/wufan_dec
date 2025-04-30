.class public Lcom/join/mgps/activity/ChociceDownActivity;
.super Lcom/BaseActivity;
.source "ChociceDownActivity.java"


# annotations
.annotation build Lorg/androidannotations/annotations/EActivity;
    value = 0x7f0c00c5
.end annotation


# instance fields
.field a:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field b:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field c:Landroid/widget/ImageView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field d:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field e:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field f:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field g:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field h:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field i:Landroid/widget/RelativeLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field j:Lcom/join/mgps/rpc/d;

.field k:Lcom/github/snowdream/android/app/downloader/DownloadTask;
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field l:Lcom/join/mgps/dto/UpdateIntentDataBean;
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field m:I
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field n:Landroid/content/Context;

.field o:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field p:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field q:Landroid/widget/ImageView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field r:Landroid/widget/RelativeLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field s:Landroid/widget/RelativeLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/BaseActivity;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/join/mgps/activity/ChociceDownActivity;->m:I

    return-void
.end method

.method private J0(Ljava/lang/String;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/Util/IntentDateBean;

    invoke-direct {v0}, Lcom/join/mgps/Util/IntentDateBean;-><init>()V

    .line 2
    invoke-virtual {v0, p1}, Lcom/join/mgps/Util/IntentDateBean;->setLink_type_val(Ljava/lang/String;)V

    const-string p1, "10"

    .line 3
    invoke-virtual {v0, p1}, Lcom/join/mgps/Util/IntentDateBean;->setFrom(Ljava/lang/String;)V

    .line 4
    iget-object p1, p0, Lcom/join/mgps/activity/ChociceDownActivity;->k:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v0, p1}, Lcom/join/mgps/Util/IntentDateBean;->setObject(Ljava/lang/Object;)V

    .line 5
    iget-object p1, p0, Lcom/join/mgps/activity/ChociceDownActivity;->n:Landroid/content/Context;

    invoke-static {p1}, Lcom/join/mgps/activity/ShareWebActivity_;->O2(Landroid/content/Context;)Lcom/join/mgps/activity/ShareWebActivity_$f0;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/ShareWebActivity_$f0;->b(Lcom/join/mgps/Util/IntentDateBean;)Lcom/join/mgps/activity/ShareWebActivity_$f0;

    move-result-object p1

    invoke-virtual {p1}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    return-void
.end method


# virtual methods
.method E0()V
    .locals 0
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method F0()V
    .locals 0
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method G0()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ChociceDownActivity;->k:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/join/mgps/activity/ChociceDownActivity;->l:Lcom/join/mgps/dto/UpdateIntentDataBean;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/join/mgps/dto/UpdateIntentDataBean;->getDownloadTask()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/ChociceDownActivity;->k:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 4
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.wufun.finish.activity"

    .line 5
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 6
    iget-object v1, p0, Lcom/join/mgps/activity/ChociceDownActivity;->n:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 7
    iget v0, p0, Lcom/join/mgps/activity/ChociceDownActivity;->m:I

    const/16 v1, 0xc

    if-ne v0, v1, :cond_2

    .line 8
    iget-object v0, p0, Lcom/join/mgps/activity/ChociceDownActivity;->k:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getFileType()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/join/mgps/enums/Dtype;->apk:Lcom/join/mgps/enums/Dtype;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/join/mgps/activity/ChociceDownActivity;->l:Lcom/join/mgps/dto/UpdateIntentDataBean;

    if-eqz v0, :cond_1

    .line 9
    invoke-virtual {v0}, Lcom/join/mgps/dto/UpdateIntentDataBean;->getDownloadTask()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/activity/ChociceDownActivity;->k:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setUrl(Ljava/lang/String;)V

    .line 10
    iget-object v0, p0, Lcom/join/mgps/activity/ChociceDownActivity;->n:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/mgps/activity/UpdateLodingActivity_;->M0(Landroid/content/Context;)Lcom/join/mgps/activity/UpdateLodingActivity_$b;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/activity/ChociceDownActivity;->l:Lcom/join/mgps/dto/UpdateIntentDataBean;

    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/UpdateLodingActivity_$b;->a(Lcom/join/mgps/dto/UpdateIntentDataBean;)Lcom/join/mgps/activity/UpdateLodingActivity_$b;

    move-result-object v0

    invoke-virtual {v0}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    goto :goto_0

    .line 11
    :cond_1
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/activity/ChociceDownActivity;->k:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lg1/f;->B(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v0

    .line 12
    invoke-static {v0}, Lcom/join/mgps/Util/UtilsMy;->A0(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 13
    iget-object v0, p0, Lcom/join/mgps/activity/ChociceDownActivity;->k:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    iget-object v1, p0, Lcom/join/mgps/activity/ChociceDownActivity;->n:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/php25/PDownload/d;->c(Lcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/content/Context;)V

    goto :goto_0

    .line 14
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/activity/ChociceDownActivity;->k:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-static {v0, p0}, Lcom/php25/PDownload/d;->c(Lcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/content/Context;)V

    :goto_0
    return-void
.end method

.method H0()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 2
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.wufun.finish.activity"

    .line 3
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 4
    iget-object v1, p0, Lcom/join/mgps/activity/ChociceDownActivity;->n:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 5
    iget-object v0, p0, Lcom/join/mgps/activity/ChociceDownActivity;->k:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/join/mgps/activity/ChociceDownActivity;->l:Lcom/join/mgps/dto/UpdateIntentDataBean;

    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {v0}, Lcom/join/mgps/dto/UpdateIntentDataBean;->getDownloadTask()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/ChociceDownActivity;->k:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 7
    :cond_0
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/activity/ChociceDownActivity;->n:Landroid/content/Context;

    iget-object v2, p0, Lcom/join/mgps/activity/ChociceDownActivity;->k:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/join/mgps/Util/IntentUtil;->goBrowser(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 8
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method I0(Lcom/join/mgps/dto/GameDownInfo;)V
    .locals 6
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/activity/ChociceDownActivity;->p:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/ChociceDownActivity;->o:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/ChociceDownActivity;->r:Landroid/widget/RelativeLayout;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/ChociceDownActivity;->a:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/join/mgps/dto/GameDownInfo;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    iget-object v0, p0, Lcom/join/mgps/activity/ChociceDownActivity;->b:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/join/mgps/dto/GameDownInfo;->getSub_title()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    invoke-virtual {p1}, Lcom/join/mgps/dto/GameDownInfo;->getLv_type()I

    move-result v0

    .line 7
    invoke-virtual {p1}, Lcom/join/mgps/dto/GameDownInfo;->getDown_url()Ljava/util/List;

    move-result-object p1

    .line 8
    iget-object v3, p0, Lcom/join/mgps/activity/ChociceDownActivity;->d:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 9
    iget-object v3, p0, Lcom/join/mgps/activity/ChociceDownActivity;->e:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 10
    iget-object v3, p0, Lcom/join/mgps/activity/ChociceDownActivity;->h:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setVisibility(I)V

    const/4 v1, 0x0

    .line 11
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_3

    .line 12
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/join/mgps/dto/GameDownInfo$Addr1Bean;

    if-nez v1, :cond_0

    .line 13
    iget-object v4, p0, Lcom/join/mgps/activity/ChociceDownActivity;->d:Landroid/widget/TextView;

    invoke-virtual {v3}, Lcom/join/mgps/dto/GameDownInfo$Addr1Bean;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 14
    iget-object v4, p0, Lcom/join/mgps/activity/ChociceDownActivity;->d:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 15
    iget-object v4, p0, Lcom/join/mgps/activity/ChociceDownActivity;->d:Landroid/widget/TextView;

    new-instance v5, Lcom/join/mgps/activity/ChociceDownActivity$a;

    invoke-direct {v5, p0, v0, v3}, Lcom/join/mgps/activity/ChociceDownActivity$a;-><init>(Lcom/join/mgps/activity/ChociceDownActivity;ILcom/join/mgps/dto/GameDownInfo$Addr1Bean;)V

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    const/4 v4, 0x1

    if-ne v1, v4, :cond_1

    .line 16
    iget-object v4, p0, Lcom/join/mgps/activity/ChociceDownActivity;->e:Landroid/widget/TextView;

    invoke-virtual {v3}, Lcom/join/mgps/dto/GameDownInfo$Addr1Bean;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 17
    iget-object v4, p0, Lcom/join/mgps/activity/ChociceDownActivity;->e:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 18
    iget-object v4, p0, Lcom/join/mgps/activity/ChociceDownActivity;->e:Landroid/widget/TextView;

    new-instance v5, Lcom/join/mgps/activity/ChociceDownActivity$b;

    invoke-direct {v5, p0, v0, v3}, Lcom/join/mgps/activity/ChociceDownActivity$b;-><init>(Lcom/join/mgps/activity/ChociceDownActivity;ILcom/join/mgps/dto/GameDownInfo$Addr1Bean;)V

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    const/4 v4, 0x2

    if-ne v1, v4, :cond_2

    .line 19
    iget-object v4, p0, Lcom/join/mgps/activity/ChociceDownActivity;->h:Landroid/widget/TextView;

    invoke-virtual {v3}, Lcom/join/mgps/dto/GameDownInfo$Addr1Bean;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 20
    iget-object v4, p0, Lcom/join/mgps/activity/ChociceDownActivity;->h:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 21
    iget-object v4, p0, Lcom/join/mgps/activity/ChociceDownActivity;->h:Landroid/widget/TextView;

    new-instance v5, Lcom/join/mgps/activity/ChociceDownActivity$c;

    invoke-direct {v5, p0, v0, v3}, Lcom/join/mgps/activity/ChociceDownActivity$c;-><init>(Lcom/join/mgps/activity/ChociceDownActivity;ILcom/join/mgps/dto/GameDownInfo$Addr1Bean;)V

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    :cond_3
    return-void
.end method

.method afterviews()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    .line 1
    iput-object p0, p0, Lcom/join/mgps/activity/ChociceDownActivity;->n:Landroid/content/Context;

    .line 2
    invoke-static {}, Lcom/join/mgps/rpc/impl/c;->P1()Lcom/join/mgps/rpc/impl/c;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/ChociceDownActivity;->j:Lcom/join/mgps/rpc/d;

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/ChociceDownActivity;->k:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/join/mgps/activity/ChociceDownActivity;->l:Lcom/join/mgps/dto/UpdateIntentDataBean;

    if-nez v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/ChociceDownActivity;->n:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object v0

    const-string v1, "\u4e0b\u8f7d\u6570\u636e\u4e3a\u7a7a"

    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    return-void

    .line 5
    :cond_0
    :try_start_0
    iget v0, p0, Lcom/join/mgps/activity/ChociceDownActivity;->m:I

    const/16 v1, 0xc

    if-ne v0, v1, :cond_1

    .line 6
    invoke-static {}, Ln1/q;->o()Ln1/q;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/activity/ChociceDownActivity;->k:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ln1/q;->n(Ljava/lang/String;)Lcom/join/mgps/db/tables/EMUUpdateTable;

    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/join/mgps/activity/ChociceDownActivity;->k:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/db/tables/EMUUpdateTable;->setDown_url_remote(Ljava/lang/String;)V

    .line 8
    invoke-static {}, Ln1/q;->o()Ln1/q;

    move-result-object v1

    invoke-virtual {v1, v0}, Lg1/b;->update(Ljava/lang/Object;)I

    .line 9
    iget-object v1, p0, Lcom/join/mgps/activity/ChociceDownActivity;->k:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v0}, Lcom/join/mgps/db/tables/EMUUpdateTable;->getVer()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setVer(Ljava/lang/String;)V

    .line 10
    iget-object v1, p0, Lcom/join/mgps/activity/ChociceDownActivity;->k:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v0}, Lcom/join/mgps/db/tables/EMUUpdateTable;->getVer_name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setVer_name(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 11
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 12
    :cond_1
    :goto_0
    iget v0, p0, Lcom/join/mgps/activity/ChociceDownActivity;->m:I

    if-eqz v0, :cond_3

    const/16 v1, 0xb

    if-ne v0, v1, :cond_2

    goto :goto_1

    .line 13
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/activity/ChociceDownActivity;->s:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 14
    iget-object v0, p0, Lcom/join/mgps/activity/ChociceDownActivity;->p:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 15
    iget-object v0, p0, Lcom/join/mgps/activity/ChociceDownActivity;->o:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 16
    iget-object v0, p0, Lcom/join/mgps/activity/ChociceDownActivity;->r:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_2

    .line 17
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/join/mgps/activity/ChociceDownActivity;->showLoding()V

    .line 18
    invoke-virtual {p0}, Lcom/join/mgps/activity/ChociceDownActivity;->getData()V

    :goto_2
    return-void
.end method

.method getData()V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ChociceDownActivity;->n:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/activity/ChociceDownActivity;->n:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/mgps/Util/RequestBeanUtil;->getInstance(Landroid/content/Context;)Lcom/join/mgps/Util/RequestBeanUtil;

    move-result-object v0

    const-string v1, ""

    iget-object v2, p0, Lcom/join/mgps/activity/ChociceDownActivity;->k:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/join/mgps/Util/RequestBeanUtil;->getSimulatorRequest(Ljava/lang/String;Ljava/lang/String;I)Lcom/join/mgps/dto/CommonRequestBean;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/join/mgps/activity/ChociceDownActivity;->j:Lcom/join/mgps/rpc/d;

    invoke-interface {v1, v0}, Lcom/join/mgps/rpc/d;->C0(Lcom/join/mgps/dto/CommonRequestBean;)Lcom/join/mgps/dto/ResultMainBean;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResultMainBean;->getFlag()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    invoke-virtual {v0}, Lcom/join/mgps/dto/ResultMainBean;->getMessages()Lcom/join/mgps/dto/ResultMessageBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/mgps/dto/ResultMessageBean;->getData()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 5
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResultMainBean;->getMessages()Lcom/join/mgps/dto/ResultMessageBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/dto/ResultMessageBean;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/GameDownInfo;

    .line 6
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/ChociceDownActivity;->I0(Lcom/join/mgps/dto/GameDownInfo;)V

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/ChociceDownActivity;->showLodingFailed()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 8
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 9
    invoke-virtual {p0}, Lcom/join/mgps/activity/ChociceDownActivity;->showLodingFailed()V

    goto :goto_0

    .line 10
    :cond_1
    invoke-virtual {p0}, Lcom/join/mgps/activity/ChociceDownActivity;->showLodingFailed()V

    :goto_0
    return-void
.end method

.method relodingimag()V
    .locals 0
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/activity/ChociceDownActivity;->showLoding()V

    .line 2
    invoke-virtual {p0}, Lcom/join/mgps/activity/ChociceDownActivity;->getData()V

    return-void
.end method

.method showLoding()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/activity/ChociceDownActivity;->o:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/ChociceDownActivity;->p:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method showLodingFailed()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/activity/ChociceDownActivity;->p:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/ChociceDownActivity;->o:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/ChociceDownActivity;->r:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V
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
