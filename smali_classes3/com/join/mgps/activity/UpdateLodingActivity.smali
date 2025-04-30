.class public Lcom/join/mgps/activity/UpdateLodingActivity;
.super Lcom/BaseActivity;
.source "UpdateLodingActivity.java"

# interfaces
.implements Lcom/join/mgps/service/UpdateLodingService$d;


# annotations
.annotation build Lorg/androidannotations/annotations/EActivity;
    value = 0x7f0c05cb
.end annotation


# instance fields
.field a:Landroid/widget/ImageView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field b:Landroid/widget/ProgressBar;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field c:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field d:Landroid/widget/ProgressBar;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field e:Lcom/join/mgps/pref/PrefDef_;
    .annotation build Lorg/androidannotations/annotations/sharedpreferences/Pref;
    .end annotation
.end field

.field f:Lcom/join/mgps/dto/UpdateIntentDataBean;
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field g:Lcom/github/snowdream/android/app/downloader/DownloadTask;

.field h:Z

.field i:Z

.field j:Z

.field k:I

.field l:Lcom/join/mgps/db/tables/EMUApkTable;

.field m:Z

.field n:Z

.field private o:Z

.field private p:Z

.field private q:I

.field private r:Lcom/join/mgps/service/UpdateLodingService;

.field private s:Lcom/join/mgps/service/UpdateLodingService$c;

.field private t:Z

.field private u:Landroid/content/ServiceConnection;

.field private v:Lcom/join/mgps/service/UpdateLodingService$d;

.field w:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/BaseActivity;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/join/mgps/activity/UpdateLodingActivity;->t:Z

    .line 3
    new-instance v0, Lcom/join/mgps/activity/UpdateLodingActivity$a;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/UpdateLodingActivity$a;-><init>(Lcom/join/mgps/activity/UpdateLodingActivity;)V

    iput-object v0, p0, Lcom/join/mgps/activity/UpdateLodingActivity;->u:Landroid/content/ServiceConnection;

    return-void
.end method

.method static synthetic E0(Lcom/join/mgps/activity/UpdateLodingActivity;)Lcom/join/mgps/service/UpdateLodingService$c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/UpdateLodingActivity;->s:Lcom/join/mgps/service/UpdateLodingService$c;

    return-object p0
.end method

.method static synthetic F0(Lcom/join/mgps/activity/UpdateLodingActivity;Lcom/join/mgps/service/UpdateLodingService$c;)Lcom/join/mgps/service/UpdateLodingService$c;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/UpdateLodingActivity;->s:Lcom/join/mgps/service/UpdateLodingService$c;

    return-object p1
.end method

.method static synthetic G0(Lcom/join/mgps/activity/UpdateLodingActivity;)Lcom/join/mgps/service/UpdateLodingService;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/UpdateLodingActivity;->r:Lcom/join/mgps/service/UpdateLodingService;

    return-object p0
.end method

.method static synthetic H0(Lcom/join/mgps/activity/UpdateLodingActivity;Lcom/join/mgps/service/UpdateLodingService;)Lcom/join/mgps/service/UpdateLodingService;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/UpdateLodingActivity;->r:Lcom/join/mgps/service/UpdateLodingService;

    return-object p1
.end method

.method static synthetic I0(Lcom/join/mgps/activity/UpdateLodingActivity;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/activity/UpdateLodingActivity;->q:I

    return p1
.end method

.method private K0()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/activity/UpdateLodingActivity;->J0()V

    return-void
.end method


# virtual methods
.method J0()V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/activity/UpdateLodingActivity;->t:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-boolean v0, p0, Lcom/join/mgps/activity/UpdateLodingActivity;->m:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/join/mgps/activity/UpdateLodingActivity;->g:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getDown_status()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/activity/UpdateLodingActivity;->w:Landroid/content/Context;

    iget-object v2, p0, Lcom/join/mgps/activity/UpdateLodingActivity;->g:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v0, v1, v2, v3}, Lcom/join/mgps/Util/IntentUtil;->goGameMainActivity(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    :cond_2
    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method afterView()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    .line 1
    iput-object p0, p0, Lcom/join/mgps/activity/UpdateLodingActivity;->w:Landroid/content/Context;

    .line 2
    iget-boolean v0, p0, Lcom/join/mgps/activity/UpdateLodingActivity;->n:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/join/mgps/activity/UpdateLodingActivity;->o:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/join/mgps/activity/UpdateLodingActivity;->p:Z

    if-eqz v0, :cond_1

    .line 3
    :cond_0
    invoke-static {p0}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object v0

    const-string v1, "\u9700\u8981\u66f4\u65b0\u5b8c\u624d\u80fd\u8fdb\u5165\u6e38\u620f\u3002"

    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/UpdateLodingActivity;->f:Lcom/join/mgps/dto/UpdateIntentDataBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/UpdateIntentDataBean;->getDownloadTask()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/UpdateLodingActivity;->g:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 5
    iget-object v0, p0, Lcom/join/mgps/activity/UpdateLodingActivity;->f:Lcom/join/mgps/dto/UpdateIntentDataBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/UpdateIntentDataBean;->isRomeNewUpdate()Z

    move-result v0

    iput-boolean v0, p0, Lcom/join/mgps/activity/UpdateLodingActivity;->h:Z

    .line 6
    iget-object v0, p0, Lcom/join/mgps/activity/UpdateLodingActivity;->f:Lcom/join/mgps/dto/UpdateIntentDataBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/UpdateIntentDataBean;->isPeizhiNewUpdate()Z

    move-result v0

    iput-boolean v0, p0, Lcom/join/mgps/activity/UpdateLodingActivity;->i:Z

    .line 7
    iget-object v0, p0, Lcom/join/mgps/activity/UpdateLodingActivity;->f:Lcom/join/mgps/dto/UpdateIntentDataBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/UpdateIntentDataBean;->isSourceNewUpdate()Z

    move-result v0

    iput-boolean v0, p0, Lcom/join/mgps/activity/UpdateLodingActivity;->j:Z

    .line 8
    iget-object v0, p0, Lcom/join/mgps/activity/UpdateLodingActivity;->f:Lcom/join/mgps/dto/UpdateIntentDataBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/UpdateIntentDataBean;->getEmuApkTable()Lcom/join/mgps/db/tables/EMUApkTable;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/UpdateLodingActivity;->l:Lcom/join/mgps/db/tables/EMUApkTable;

    .line 9
    iget-object v0, p0, Lcom/join/mgps/activity/UpdateLodingActivity;->f:Lcom/join/mgps/dto/UpdateIntentDataBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/UpdateIntentDataBean;->isFight()Z

    move-result v0

    iput-boolean v0, p0, Lcom/join/mgps/activity/UpdateLodingActivity;->m:Z

    .line 10
    iget-object v0, p0, Lcom/join/mgps/activity/UpdateLodingActivity;->f:Lcom/join/mgps/dto/UpdateIntentDataBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/UpdateIntentDataBean;->isRomeMustUpdate()Z

    move-result v0

    iput-boolean v0, p0, Lcom/join/mgps/activity/UpdateLodingActivity;->n:Z

    .line 11
    iget-object v0, p0, Lcom/join/mgps/activity/UpdateLodingActivity;->f:Lcom/join/mgps/dto/UpdateIntentDataBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/UpdateIntentDataBean;->isPeizhiMustUpdate()Z

    move-result v0

    iput-boolean v0, p0, Lcom/join/mgps/activity/UpdateLodingActivity;->o:Z

    .line 12
    iget-object v0, p0, Lcom/join/mgps/activity/UpdateLodingActivity;->f:Lcom/join/mgps/dto/UpdateIntentDataBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/UpdateIntentDataBean;->isSourceMustUpdate()Z

    move-result v0

    iput-boolean v0, p0, Lcom/join/mgps/activity/UpdateLodingActivity;->p:Z

    .line 13
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/join/mgps/activity/UpdateLodingActivity;->g:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSource_down_path()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/platform_pic_loading.jpg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 14
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 15
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 16
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v2, 0x2

    .line 17
    iput v2, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 18
    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 19
    iget-object v1, p0, Lcom/join/mgps/activity/UpdateLodingActivity;->a:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 20
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/activity/UpdateLodingActivity;->a:Landroid/widget/ImageView;

    const v1, 0x7f080ca4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 21
    :goto_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/join/mgps/activity/UpdateLodingActivity;->w:Landroid/content/Context;

    const-class v2, Lcom/join/mgps/service/UpdateLodingService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 22
    iget-object v1, p0, Lcom/join/mgps/activity/UpdateLodingActivity;->u:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Landroid/app/Activity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/UpdateLodingActivity;->w:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/mgps/Util/a0;->c0(Landroid/content/Context;)Lcom/join/mgps/Util/a0;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/activity/UpdateLodingActivity;->w:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/z;->u(Landroid/content/Context;)Lcom/join/mgps/dialog/l0;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    const-string v1, "\u505c\u6b62\u66f4\u65b0\uff1f"

    .line 3
    invoke-virtual {v0, v1}, Lcom/join/mgps/dialog/l0;->j(Ljava/lang/String;)V

    const-string v1, "\u9000\u51fa\u540e\u9700\u91cd\u65b0\u66f4\u65b0\u6e38\u620f\u3002"

    .line 4
    invoke-virtual {v0, v1}, Lcom/join/mgps/dialog/l0;->f(Ljava/lang/String;)V

    const-string v1, "\u7ee7\u7eed\u66f4\u65b0"

    .line 5
    invoke-virtual {v0, v1}, Lcom/join/mgps/dialog/l0;->i(Ljava/lang/String;)V

    const-string v1, "\u9000\u51fa"

    .line 6
    invoke-virtual {v0, v1}, Lcom/join/mgps/dialog/l0;->e(Ljava/lang/String;)V

    .line 7
    new-instance v1, Lcom/join/mgps/activity/UpdateLodingActivity$h;

    invoke-direct {v1, p0, v0}, Lcom/join/mgps/activity/UpdateLodingActivity$h;-><init>(Lcom/join/mgps/activity/UpdateLodingActivity;Lcom/join/mgps/dialog/l0;)V

    invoke-virtual {v0, v1}, Lcom/join/mgps/dialog/l0;->d(Landroid/view/View$OnClickListener;)V

    .line 8
    new-instance v1, Lcom/join/mgps/activity/UpdateLodingActivity$i;

    invoke-direct {v1, p0, v0}, Lcom/join/mgps/activity/UpdateLodingActivity$i;-><init>(Lcom/join/mgps/activity/UpdateLodingActivity;Lcom/join/mgps/dialog/l0;)V

    invoke-virtual {v0, v1}, Lcom/join/mgps/dialog/l0;->h(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/join/mgps/activity/UpdateLodingActivity;->t:Z

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/UpdateLodingActivity;->u:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->unbindService(Landroid/content/ServiceConnection;)V

    .line 3
    invoke-super {p0}, Lcom/BaseActivity;->onDestroy()V

    return-void
.end method

.method protected onPause()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/BaseActivity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/BaseActivity;->onResume()V

    return-void
.end method

.method public update(ILjava/lang/Object;)V
    .locals 6

    const/4 v0, 0x0

    if-eqz p1, :cond_d

    const/4 v1, 0x1

    if-eq p1, v1, :cond_a

    const/4 v2, 0x2

    if-eq p1, v2, :cond_5

    const/4 v0, 0x3

    if-eq p1, v0, :cond_4

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    goto/16 :goto_2

    .line 1
    :cond_0
    iget p1, p0, Lcom/join/mgps/activity/UpdateLodingActivity;->q:I

    const-string v0, "\u9000\u51fa"

    const-string v3, "\u7f51\u7edc\u8bbe\u7f6e"

    const-string v4, "\u66f4\u65b0\u5931\u8d25"

    if-nez p1, :cond_1

    iget-boolean v5, p0, Lcom/join/mgps/activity/UpdateLodingActivity;->n:Z

    if-eqz v5, :cond_1

    .line 2
    iget-object p1, p0, Lcom/join/mgps/activity/UpdateLodingActivity;->w:Landroid/content/Context;

    invoke-static {p1}, Lcom/join/mgps/Util/a0;->c0(Landroid/content/Context;)Lcom/join/mgps/Util/a0;

    move-result-object p1

    iget-object v1, p0, Lcom/join/mgps/activity/UpdateLodingActivity;->w:Landroid/content/Context;

    invoke-virtual {p1, v1}, Lcom/join/mgps/Util/z;->u(Landroid/content/Context;)Lcom/join/mgps/dialog/l0;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    .line 4
    invoke-virtual {p1, v4}, Lcom/join/mgps/dialog/l0;->j(Ljava/lang/String;)V

    .line 5
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/join/mgps/dialog/l0;->f(Ljava/lang/String;)V

    .line 6
    invoke-virtual {p1, v3}, Lcom/join/mgps/dialog/l0;->i(Ljava/lang/String;)V

    .line 7
    invoke-virtual {p1, v0}, Lcom/join/mgps/dialog/l0;->e(Ljava/lang/String;)V

    .line 8
    new-instance p2, Lcom/join/mgps/activity/UpdateLodingActivity$b;

    invoke-direct {p2, p0, p1}, Lcom/join/mgps/activity/UpdateLodingActivity$b;-><init>(Lcom/join/mgps/activity/UpdateLodingActivity;Lcom/join/mgps/dialog/l0;)V

    invoke-virtual {p1, p2}, Lcom/join/mgps/dialog/l0;->d(Landroid/view/View$OnClickListener;)V

    .line 9
    new-instance p2, Lcom/join/mgps/activity/UpdateLodingActivity$c;

    invoke-direct {p2, p0, p1}, Lcom/join/mgps/activity/UpdateLodingActivity$c;-><init>(Lcom/join/mgps/activity/UpdateLodingActivity;Lcom/join/mgps/dialog/l0;)V

    invoke-virtual {p1, p2}, Lcom/join/mgps/dialog/l0;->h(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_2

    :cond_1
    if-ne p1, v1, :cond_2

    .line 10
    iget-boolean v1, p0, Lcom/join/mgps/activity/UpdateLodingActivity;->o:Z

    if-eqz v1, :cond_2

    .line 11
    iget-object p1, p0, Lcom/join/mgps/activity/UpdateLodingActivity;->w:Landroid/content/Context;

    invoke-static {p1}, Lcom/join/mgps/Util/a0;->c0(Landroid/content/Context;)Lcom/join/mgps/Util/a0;

    move-result-object p1

    iget-object v1, p0, Lcom/join/mgps/activity/UpdateLodingActivity;->w:Landroid/content/Context;

    invoke-virtual {p1, v1}, Lcom/join/mgps/Util/z;->u(Landroid/content/Context;)Lcom/join/mgps/dialog/l0;

    move-result-object p1

    .line 12
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    .line 13
    invoke-virtual {p1, v4}, Lcom/join/mgps/dialog/l0;->j(Ljava/lang/String;)V

    .line 14
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/join/mgps/dialog/l0;->f(Ljava/lang/String;)V

    .line 15
    invoke-virtual {p1, v3}, Lcom/join/mgps/dialog/l0;->i(Ljava/lang/String;)V

    .line 16
    invoke-virtual {p1, v0}, Lcom/join/mgps/dialog/l0;->e(Ljava/lang/String;)V

    .line 17
    new-instance p2, Lcom/join/mgps/activity/UpdateLodingActivity$d;

    invoke-direct {p2, p0, p1}, Lcom/join/mgps/activity/UpdateLodingActivity$d;-><init>(Lcom/join/mgps/activity/UpdateLodingActivity;Lcom/join/mgps/dialog/l0;)V

    invoke-virtual {p1, p2}, Lcom/join/mgps/dialog/l0;->d(Landroid/view/View$OnClickListener;)V

    .line 18
    new-instance p2, Lcom/join/mgps/activity/UpdateLodingActivity$e;

    invoke-direct {p2, p0, p1}, Lcom/join/mgps/activity/UpdateLodingActivity$e;-><init>(Lcom/join/mgps/activity/UpdateLodingActivity;Lcom/join/mgps/dialog/l0;)V

    invoke-virtual {p1, p2}, Lcom/join/mgps/dialog/l0;->h(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_2

    :cond_2
    if-ne p1, v2, :cond_3

    .line 19
    iget-boolean p1, p0, Lcom/join/mgps/activity/UpdateLodingActivity;->p:Z

    if-eqz p1, :cond_3

    .line 20
    iget-object p1, p0, Lcom/join/mgps/activity/UpdateLodingActivity;->w:Landroid/content/Context;

    invoke-static {p1}, Lcom/join/mgps/Util/a0;->c0(Landroid/content/Context;)Lcom/join/mgps/Util/a0;

    move-result-object p1

    iget-object v1, p0, Lcom/join/mgps/activity/UpdateLodingActivity;->w:Landroid/content/Context;

    invoke-virtual {p1, v1}, Lcom/join/mgps/Util/z;->u(Landroid/content/Context;)Lcom/join/mgps/dialog/l0;

    move-result-object p1

    .line 21
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    .line 22
    invoke-virtual {p1, v4}, Lcom/join/mgps/dialog/l0;->j(Ljava/lang/String;)V

    .line 23
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/join/mgps/dialog/l0;->f(Ljava/lang/String;)V

    .line 24
    invoke-virtual {p1, v3}, Lcom/join/mgps/dialog/l0;->i(Ljava/lang/String;)V

    .line 25
    invoke-virtual {p1, v0}, Lcom/join/mgps/dialog/l0;->e(Ljava/lang/String;)V

    .line 26
    new-instance p2, Lcom/join/mgps/activity/UpdateLodingActivity$f;

    invoke-direct {p2, p0, p1}, Lcom/join/mgps/activity/UpdateLodingActivity$f;-><init>(Lcom/join/mgps/activity/UpdateLodingActivity;Lcom/join/mgps/dialog/l0;)V

    invoke-virtual {p1, p2}, Lcom/join/mgps/dialog/l0;->d(Landroid/view/View$OnClickListener;)V

    .line 27
    new-instance p2, Lcom/join/mgps/activity/UpdateLodingActivity$g;

    invoke-direct {p2, p0, p1}, Lcom/join/mgps/activity/UpdateLodingActivity$g;-><init>(Lcom/join/mgps/activity/UpdateLodingActivity;Lcom/join/mgps/dialog/l0;)V

    invoke-virtual {p1, p2}, Lcom/join/mgps/dialog/l0;->h(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_2

    .line 28
    :cond_3
    invoke-direct {p0}, Lcom/join/mgps/activity/UpdateLodingActivity;->K0()V

    goto/16 :goto_2

    .line 29
    :cond_4
    check-cast p2, Landroid/os/Bundle;

    const-string p1, "percent"

    .line 30
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    const-string v0, "totalSize"

    .line 31
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    const-string v2, "completeSize"

    .line 32
    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 33
    iget-object p2, p0, Lcom/join/mgps/activity/UpdateLodingActivity;->b:Landroid/widget/ProgressBar;

    invoke-virtual {p2, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 34
    :try_start_0
    iget-object p1, p0, Lcom/join/mgps/activity/UpdateLodingActivity;->c:Landroid/widget/TextView;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u6b63\u5728\u66f4\u65b0\u6e38\u620f\u8d44\u6e90("

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2, v3}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0, v1}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    :catch_0
    move-exception p1

    .line 35
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2

    .line 36
    :cond_5
    iget-object p1, p0, Lcom/join/mgps/activity/UpdateLodingActivity;->b:Landroid/widget/ProgressBar;

    const/16 p2, 0x64

    invoke-virtual {p1, p2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 37
    iget p1, p0, Lcom/join/mgps/activity/UpdateLodingActivity;->q:I

    const-string p2, "\u66f4\u65b0\u5b8c\u6210"

    if-eqz p1, :cond_9

    if-eq p1, v1, :cond_7

    if-eq p1, v2, :cond_6

    goto :goto_1

    .line 38
    :cond_6
    iget-object p1, p0, Lcom/join/mgps/activity/UpdateLodingActivity;->w:Landroid/content/Context;

    invoke-static {p1}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 39
    :cond_7
    iget-boolean p1, p0, Lcom/join/mgps/activity/UpdateLodingActivity;->j:Z

    if-eqz p1, :cond_8

    .line 40
    iput v2, p0, Lcom/join/mgps/activity/UpdateLodingActivity;->q:I

    .line 41
    iget-object p1, p0, Lcom/join/mgps/activity/UpdateLodingActivity;->s:Lcom/join/mgps/service/UpdateLodingService$c;

    iget-object p2, p0, Lcom/join/mgps/activity/UpdateLodingActivity;->g:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, v2}, Lcom/join/mgps/service/UpdateLodingService$c;->setDownData(Ljava/lang/String;I)V

    goto :goto_1

    .line 42
    :cond_8
    iget-object p1, p0, Lcom/join/mgps/activity/UpdateLodingActivity;->w:Landroid/content/Context;

    invoke-static {p1}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 43
    :cond_9
    iget-object p1, p0, Lcom/join/mgps/activity/UpdateLodingActivity;->w:Landroid/content/Context;

    invoke-static {p1}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_e

    .line 44
    invoke-direct {p0}, Lcom/join/mgps/activity/UpdateLodingActivity;->K0()V

    goto :goto_2

    .line 45
    :cond_a
    check-cast p2, Landroid/os/Bundle;

    const-string p1, "startOrEnd"

    .line 46
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    const-string v2, "message"

    .line 47
    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p1, :cond_c

    if-eq p1, v1, :cond_b

    goto :goto_2

    .line 48
    :cond_b
    iget-object p1, p0, Lcom/join/mgps/activity/UpdateLodingActivity;->d:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 49
    iget-object p1, p0, Lcom/join/mgps/activity/UpdateLodingActivity;->c:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 50
    :cond_c
    iget-object p1, p0, Lcom/join/mgps/activity/UpdateLodingActivity;->d:Landroid/widget/ProgressBar;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 51
    iget-object p1, p0, Lcom/join/mgps/activity/UpdateLodingActivity;->c:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 52
    :cond_d
    iget-object p1, p0, Lcom/join/mgps/activity/UpdateLodingActivity;->w:Landroid/content/Context;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_e
    :goto_2
    return-void
.end method
