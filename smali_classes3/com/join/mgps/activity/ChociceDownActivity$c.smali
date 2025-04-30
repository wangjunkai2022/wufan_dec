.class Lcom/join/mgps/activity/ChociceDownActivity$c;
.super Ljava/lang/Object;
.source "ChociceDownActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/ChociceDownActivity;->I0(Lcom/join/mgps/dto/GameDownInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/join/mgps/dto/GameDownInfo$Addr1Bean;

.field final synthetic c:Lcom/join/mgps/activity/ChociceDownActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/ChociceDownActivity;ILcom/join/mgps/dto/GameDownInfo$Addr1Bean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/ChociceDownActivity$c;->c:Lcom/join/mgps/activity/ChociceDownActivity;

    iput p2, p0, Lcom/join/mgps/activity/ChociceDownActivity$c;->a:I

    iput-object p3, p0, Lcom/join/mgps/activity/ChociceDownActivity$c;->b:Lcom/join/mgps/dto/GameDownInfo$Addr1Bean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget p1, p0, Lcom/join/mgps/activity/ChociceDownActivity$c;->a:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 2
    iget-object p1, p0, Lcom/join/mgps/activity/ChociceDownActivity$c;->c:Lcom/join/mgps/activity/ChociceDownActivity;

    iget-object p1, p1, Lcom/join/mgps/activity/ChociceDownActivity;->k:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    iget-object v0, p0, Lcom/join/mgps/activity/ChociceDownActivity$c;->b:Lcom/join/mgps/dto/GameDownInfo$Addr1Bean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/GameDownInfo$Addr1Bean;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setUrl(Ljava/lang/String;)V

    .line 3
    iget-object p1, p0, Lcom/join/mgps/activity/ChociceDownActivity$c;->c:Lcom/join/mgps/activity/ChociceDownActivity;

    iget-object p1, p1, Lcom/join/mgps/activity/ChociceDownActivity;->k:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result p1

    const/16 v0, 0x9

    if-ne p1, v0, :cond_0

    .line 4
    iget-object p1, p0, Lcom/join/mgps/activity/ChociceDownActivity$c;->c:Lcom/join/mgps/activity/ChociceDownActivity;

    iget-object p1, p1, Lcom/join/mgps/activity/ChociceDownActivity;->k:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-static {p1}, Lcom/php25/PDownload/d;->b(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 5
    iget-object p1, p0, Lcom/join/mgps/activity/ChociceDownActivity$c;->c:Lcom/join/mgps/activity/ChociceDownActivity;

    iget-object v0, p1, Lcom/join/mgps/activity/ChociceDownActivity;->k:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    iget-object p1, p1, Lcom/join/mgps/activity/ChociceDownActivity;->n:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/php25/PDownload/d;->c(Lcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/content/Context;)V

    goto/16 :goto_0

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/ChociceDownActivity$c;->c:Lcom/join/mgps/activity/ChociceDownActivity;

    iget-object p1, p1, Lcom/join/mgps/activity/ChociceDownActivity;->k:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getFileType()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/join/mgps/enums/Dtype;->apk:Lcom/join/mgps/enums/Dtype;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/join/mgps/activity/ChociceDownActivity$c;->c:Lcom/join/mgps/activity/ChociceDownActivity;

    iget-object p1, p1, Lcom/join/mgps/activity/ChociceDownActivity;->l:Lcom/join/mgps/dto/UpdateIntentDataBean;

    if-eqz p1, :cond_1

    .line 7
    invoke-static {}, Ln1/q;->o()Ln1/q;

    move-result-object p1

    iget-object v0, p0, Lcom/join/mgps/activity/ChociceDownActivity$c;->c:Lcom/join/mgps/activity/ChociceDownActivity;

    iget-object v0, v0, Lcom/join/mgps/activity/ChociceDownActivity;->k:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ln1/q;->n(Ljava/lang/String;)Lcom/join/mgps/db/tables/EMUUpdateTable;

    move-result-object p1

    .line 8
    iget-object v0, p0, Lcom/join/mgps/activity/ChociceDownActivity$c;->c:Lcom/join/mgps/activity/ChociceDownActivity;

    iget-object v0, v0, Lcom/join/mgps/activity/ChociceDownActivity;->k:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/join/mgps/db/tables/EMUUpdateTable;->setDown_url_remote(Ljava/lang/String;)V

    .line 9
    invoke-static {}, Ln1/q;->o()Ln1/q;

    move-result-object v0

    invoke-virtual {v0, p1}, Lg1/b;->update(Ljava/lang/Object;)I

    .line 10
    iget-object p1, p0, Lcom/join/mgps/activity/ChociceDownActivity$c;->c:Lcom/join/mgps/activity/ChociceDownActivity;

    iget-object p1, p1, Lcom/join/mgps/activity/ChociceDownActivity;->l:Lcom/join/mgps/dto/UpdateIntentDataBean;

    invoke-virtual {p1}, Lcom/join/mgps/dto/UpdateIntentDataBean;->getDownloadTask()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object p1

    iget-object v0, p0, Lcom/join/mgps/activity/ChociceDownActivity$c;->c:Lcom/join/mgps/activity/ChociceDownActivity;

    iget-object v0, v0, Lcom/join/mgps/activity/ChociceDownActivity;->k:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setUrl(Ljava/lang/String;)V

    .line 11
    iget-object p1, p0, Lcom/join/mgps/activity/ChociceDownActivity$c;->c:Lcom/join/mgps/activity/ChociceDownActivity;

    iget-object p1, p1, Lcom/join/mgps/activity/ChociceDownActivity;->n:Landroid/content/Context;

    invoke-static {p1}, Lcom/join/mgps/activity/UpdateLodingActivity_;->M0(Landroid/content/Context;)Lcom/join/mgps/activity/UpdateLodingActivity_$b;

    move-result-object p1

    iget-object v0, p0, Lcom/join/mgps/activity/ChociceDownActivity$c;->c:Lcom/join/mgps/activity/ChociceDownActivity;

    iget-object v0, v0, Lcom/join/mgps/activity/ChociceDownActivity;->l:Lcom/join/mgps/dto/UpdateIntentDataBean;

    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/UpdateLodingActivity_$b;->a(Lcom/join/mgps/dto/UpdateIntentDataBean;)Lcom/join/mgps/activity/UpdateLodingActivity_$b;

    move-result-object p1

    invoke-virtual {p1}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    goto :goto_0

    .line 12
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/activity/ChociceDownActivity$c;->c:Lcom/join/mgps/activity/ChociceDownActivity;

    iget-object v0, p1, Lcom/join/mgps/activity/ChociceDownActivity;->k:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    iget-object p1, p1, Lcom/join/mgps/activity/ChociceDownActivity;->n:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/php25/PDownload/d;->c(Lcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/content/Context;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x2

    if-ne p1, v0, :cond_5

    .line 13
    iget-object p1, p0, Lcom/join/mgps/activity/ChociceDownActivity$c;->c:Lcom/join/mgps/activity/ChociceDownActivity;

    iget-object v0, p1, Lcom/join/mgps/activity/ChociceDownActivity;->l:Lcom/join/mgps/dto/UpdateIntentDataBean;

    if-nez v0, :cond_3

    .line 14
    new-instance v0, Lcom/join/mgps/dto/UpdateIntentDataBean;

    invoke-direct {v0}, Lcom/join/mgps/dto/UpdateIntentDataBean;-><init>()V

    iput-object v0, p1, Lcom/join/mgps/activity/ChociceDownActivity;->l:Lcom/join/mgps/dto/UpdateIntentDataBean;

    .line 15
    iget-object p1, p0, Lcom/join/mgps/activity/ChociceDownActivity$c;->c:Lcom/join/mgps/activity/ChociceDownActivity;

    iget-object v0, p1, Lcom/join/mgps/activity/ChociceDownActivity;->l:Lcom/join/mgps/dto/UpdateIntentDataBean;

    iget-object p1, p1, Lcom/join/mgps/activity/ChociceDownActivity;->k:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v0, p1}, Lcom/join/mgps/dto/UpdateIntentDataBean;->setDownloadTask(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 16
    :cond_3
    new-instance p1, Lcom/join/mgps/Util/IntentDateBean;

    invoke-direct {p1}, Lcom/join/mgps/Util/IntentDateBean;-><init>()V

    const/4 v0, 0x4

    .line 17
    invoke-virtual {p1, v0}, Lcom/join/mgps/Util/IntentDateBean;->setLink_type(I)V

    .line 18
    iget-object v0, p0, Lcom/join/mgps/activity/ChociceDownActivity$c;->b:Lcom/join/mgps/dto/GameDownInfo$Addr1Bean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/GameDownInfo$Addr1Bean;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/join/mgps/Util/IntentDateBean;->setLink_type_val(Ljava/lang/String;)V

    .line 19
    iget-object v0, p0, Lcom/join/mgps/activity/ChociceDownActivity$c;->c:Lcom/join/mgps/activity/ChociceDownActivity;

    iget-object v0, v0, Lcom/join/mgps/activity/ChociceDownActivity;->l:Lcom/join/mgps/dto/UpdateIntentDataBean;

    invoke-virtual {p1, v0}, Lcom/join/mgps/Util/IntentDateBean;->setObject(Ljava/lang/Object;)V

    const-string v0, "10"

    .line 20
    invoke-virtual {p1, v0}, Lcom/join/mgps/Util/IntentDateBean;->setFrom(Ljava/lang/String;)V

    .line 21
    iget-object v0, p0, Lcom/join/mgps/activity/ChociceDownActivity$c;->c:Lcom/join/mgps/activity/ChociceDownActivity;

    iget v0, v0, Lcom/join/mgps/activity/ChociceDownActivity;->m:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_4

    const-string v0, "11"

    .line 22
    invoke-virtual {p1, v0}, Lcom/join/mgps/Util/IntentDateBean;->setFrom(Ljava/lang/String;)V

    .line 23
    :cond_4
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/activity/ChociceDownActivity$c;->c:Lcom/join/mgps/activity/ChociceDownActivity;

    iget-object v1, v1, Lcom/join/mgps/activity/ChociceDownActivity;->n:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lcom/join/mgps/Util/IntentUtil;->intentActivity(Landroid/content/Context;Lcom/join/mgps/Util/IntentDateBean;)V

    goto :goto_0

    :cond_5
    const/4 v0, 0x3

    if-ne p1, v0, :cond_6

    .line 24
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object p1

    iget-object v0, p0, Lcom/join/mgps/activity/ChociceDownActivity$c;->c:Lcom/join/mgps/activity/ChociceDownActivity;

    iget-object v0, v0, Lcom/join/mgps/activity/ChociceDownActivity;->n:Landroid/content/Context;

    iget-object v1, p0, Lcom/join/mgps/activity/ChociceDownActivity$c;->b:Lcom/join/mgps/dto/GameDownInfo$Addr1Bean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/GameDownInfo$Addr1Bean;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/join/mgps/Util/IntentUtil;->goBrowser(Landroid/content/Context;Ljava/lang/String;)V

    .line 25
    :cond_6
    :goto_0
    iget-object p1, p0, Lcom/join/mgps/activity/ChociceDownActivity$c;->c:Lcom/join/mgps/activity/ChociceDownActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method
