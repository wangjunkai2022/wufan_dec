.class Lcom/join/mgps/activity/ShareWebActivity$g;
.super Ljava/lang/Object;
.source "ShareWebActivity.java"

# interfaces
.implements Lw2/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/ShareWebActivity;->A1(Ljava/lang/String;Lcom/join/mgps/Util/IntentDateBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lw2/g<",
        "Lcom/tbruyelle/rxpermissions2/b;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/Util/IntentDateBean;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/join/mgps/activity/ShareWebActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/ShareWebActivity;Lcom/join/mgps/Util/IntentDateBean;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/ShareWebActivity$g;->c:Lcom/join/mgps/activity/ShareWebActivity;

    iput-object p2, p0, Lcom/join/mgps/activity/ShareWebActivity$g;->a:Lcom/join/mgps/Util/IntentDateBean;

    iput-object p3, p0, Lcom/join/mgps/activity/ShareWebActivity$g;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/tbruyelle/rxpermissions2/b;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-boolean v0, p1, Lcom/tbruyelle/rxpermissions2/b;->b:Z

    if-eqz v0, :cond_7

    .line 2
    iget-object p1, p0, Lcom/join/mgps/activity/ShareWebActivity$g;->a:Lcom/join/mgps/Util/IntentDateBean;

    invoke-virtual {p1}, Lcom/join/mgps/Util/IntentDateBean;->getObject()Ljava/lang/Object;

    move-result-object p1

    const/4 v0, 0x0

    .line 3
    :try_start_0
    instance-of v1, p1, Lcom/join/mgps/dto/UpdateIntentDataBean;

    if-eqz v1, :cond_0

    .line 4
    check-cast p1, Lcom/join/mgps/dto/UpdateIntentDataBean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, p1

    goto :goto_0

    :catch_0
    nop

    :cond_0
    :goto_0
    if-eqz v0, :cond_2

    .line 5
    iget-object p1, p0, Lcom/join/mgps/activity/ShareWebActivity$g;->a:Lcom/join/mgps/Util/IntentDateBean;

    invoke-virtual {p1}, Lcom/join/mgps/Util/IntentDateBean;->getFrom()Ljava/lang/String;

    move-result-object p1

    const-string v1, "10"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 6
    invoke-virtual {v0}, Lcom/join/mgps/dto/UpdateIntentDataBean;->getDownloadTask()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object p1

    iget-object v1, p0, Lcom/join/mgps/activity/ShareWebActivity$g;->b:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setUrl(Ljava/lang/String;)V

    .line 7
    iget-object p1, p0, Lcom/join/mgps/activity/ShareWebActivity$g;->c:Lcom/join/mgps/activity/ShareWebActivity;

    invoke-static {p1}, Lcom/join/mgps/activity/ShareWebActivity;->D0(Lcom/join/mgps/activity/ShareWebActivity;)Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {v0}, Lcom/join/mgps/dto/UpdateIntentDataBean;->getDownloadTask()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/join/mgps/Util/UtilsMy;->T0(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto/16 :goto_4

    .line 8
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/activity/ShareWebActivity$g;->c:Lcom/join/mgps/activity/ShareWebActivity;

    invoke-static {p1}, Lcom/join/mgps/activity/ShareWebActivity;->D0(Lcom/join/mgps/activity/ShareWebActivity;)Landroid/app/Activity;

    move-result-object p1

    invoke-static {p1}, Lcom/join/mgps/activity/ChociceDownActivity_;->O0(Landroid/content/Context;)Lcom/join/mgps/activity/ChociceDownActivity_$j;

    move-result-object p1

    invoke-virtual {v0}, Lcom/join/mgps/dto/UpdateIntentDataBean;->getDownloadTask()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/join/mgps/activity/ChociceDownActivity_$j;->a(Lcom/github/snowdream/android/app/downloader/DownloadTask;)Lcom/join/mgps/activity/ChociceDownActivity_$j;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/ChociceDownActivity_$j;->c(Lcom/join/mgps/dto/UpdateIntentDataBean;)Lcom/join/mgps/activity/ChociceDownActivity_$j;

    move-result-object p1

    const/16 v0, 0xa

    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/ChociceDownActivity_$j;->b(I)Lcom/join/mgps/activity/ChociceDownActivity_$j;

    move-result-object p1

    invoke-virtual {p1}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    goto/16 :goto_4

    :cond_2
    if-eqz v0, :cond_4

    .line 9
    iget-object p1, p0, Lcom/join/mgps/activity/ShareWebActivity$g;->a:Lcom/join/mgps/Util/IntentDateBean;

    invoke-virtual {p1}, Lcom/join/mgps/Util/IntentDateBean;->getFrom()Ljava/lang/String;

    move-result-object p1

    const-string v1, "11"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 10
    invoke-virtual {v0}, Lcom/join/mgps/dto/UpdateIntentDataBean;->getDownloadTask()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object p1

    iget-object v1, p0, Lcom/join/mgps/activity/ShareWebActivity$g;->b:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setUrl(Ljava/lang/String;)V

    .line 11
    iget-object p1, p0, Lcom/join/mgps/activity/ShareWebActivity$g;->c:Lcom/join/mgps/activity/ShareWebActivity;

    invoke-static {p1}, Lcom/join/mgps/activity/ShareWebActivity;->D0(Lcom/join/mgps/activity/ShareWebActivity;)Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {v0}, Lcom/join/mgps/dto/UpdateIntentDataBean;->getDownloadTask()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/join/mgps/Util/UtilsMy;->T0(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto/16 :goto_4

    .line 12
    :cond_3
    iget-object p1, p0, Lcom/join/mgps/activity/ShareWebActivity$g;->c:Lcom/join/mgps/activity/ShareWebActivity;

    invoke-static {p1}, Lcom/join/mgps/activity/ShareWebActivity;->D0(Lcom/join/mgps/activity/ShareWebActivity;)Landroid/app/Activity;

    move-result-object p1

    invoke-static {p1}, Lcom/join/mgps/activity/ChociceDownActivity_;->O0(Landroid/content/Context;)Lcom/join/mgps/activity/ChociceDownActivity_$j;

    move-result-object p1

    invoke-virtual {v0}, Lcom/join/mgps/dto/UpdateIntentDataBean;->getDownloadTask()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/join/mgps/activity/ChociceDownActivity_$j;->a(Lcom/github/snowdream/android/app/downloader/DownloadTask;)Lcom/join/mgps/activity/ChociceDownActivity_$j;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/ChociceDownActivity_$j;->c(Lcom/join/mgps/dto/UpdateIntentDataBean;)Lcom/join/mgps/activity/ChociceDownActivity_$j;

    move-result-object p1

    const/16 v0, 0xc

    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/ChociceDownActivity_$j;->b(I)Lcom/join/mgps/activity/ChociceDownActivity_$j;

    move-result-object p1

    invoke-virtual {p1}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    goto/16 :goto_4

    .line 13
    :cond_4
    iget-object p1, p0, Lcom/join/mgps/activity/ShareWebActivity$g;->c:Lcom/join/mgps/activity/ShareWebActivity;

    iget-object p1, p1, Lcom/join/mgps/activity/ShareWebActivity;->H:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {p1}, Lcom/join/mgps/pref/PrefDef_;->firstShowUserPermiss()Lorg/androidannotations/api/sharedpreferences/d;

    move-result-object p1

    invoke-virtual {p1}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_5

    .line 14
    iget-object p1, p0, Lcom/join/mgps/activity/ShareWebActivity$g;->c:Lcom/join/mgps/activity/ShareWebActivity;

    invoke-static {p1}, Lcom/join/mgps/activity/ShareWebActivity;->D0(Lcom/join/mgps/activity/ShareWebActivity;)Landroid/app/Activity;

    move-result-object p1

    const-string v0, "onSourceDownloadBegin"

    invoke-static {p1, v0}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 15
    :cond_5
    iget-object p1, p0, Lcom/join/mgps/activity/ShareWebActivity$g;->b:Ljava/lang/String;

    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 16
    sget-object v0, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-static {v0}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 17
    iget-object v0, p0, Lcom/join/mgps/activity/ShareWebActivity$g;->c:Lcom/join/mgps/activity/ShareWebActivity;

    invoke-static {v0, p1}, Lcom/join/mgps/activity/ShareWebActivity;->E0(Lcom/join/mgps/activity/ShareWebActivity;Ljava/lang/String;)V

    .line 18
    iget-object v0, p0, Lcom/join/mgps/activity/ShareWebActivity$g;->c:Lcom/join/mgps/activity/ShareWebActivity;

    invoke-static {v0}, Lcom/join/mgps/activity/ShareWebActivity;->R0(Lcom/join/mgps/activity/ShareWebActivity;)Lcom/join/mgps/dialog/e0;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 19
    iget-object v0, p0, Lcom/join/mgps/activity/ShareWebActivity$g;->c:Lcom/join/mgps/activity/ShareWebActivity;

    invoke-static {v0}, Lcom/join/mgps/activity/ShareWebActivity;->R0(Lcom/join/mgps/activity/ShareWebActivity;)Lcom/join/mgps/dialog/e0;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 20
    :cond_6
    iget-object v0, p0, Lcom/join/mgps/activity/ShareWebActivity$g;->c:Lcom/join/mgps/activity/ShareWebActivity;

    new-instance v1, Lcom/join/mgps/dialog/e0;

    iget-object v2, p0, Lcom/join/mgps/activity/ShareWebActivity$g;->c:Lcom/join/mgps/activity/ShareWebActivity;

    invoke-static {v2}, Lcom/join/mgps/activity/ShareWebActivity;->D0(Lcom/join/mgps/activity/ShareWebActivity;)Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/join/mgps/dialog/e0;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/join/mgps/activity/ShareWebActivity;->T0(Lcom/join/mgps/activity/ShareWebActivity;Lcom/join/mgps/dialog/e0;)Lcom/join/mgps/dialog/e0;

    .line 21
    iget-object v0, p0, Lcom/join/mgps/activity/ShareWebActivity$g;->c:Lcom/join/mgps/activity/ShareWebActivity;

    invoke-static {v0}, Lcom/join/mgps/activity/ShareWebActivity;->R0(Lcom/join/mgps/activity/ShareWebActivity;)Lcom/join/mgps/dialog/e0;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 22
    iget-object v0, p0, Lcom/join/mgps/activity/ShareWebActivity$g;->c:Lcom/join/mgps/activity/ShareWebActivity;

    invoke-static {v0}, Lcom/join/mgps/activity/ShareWebActivity;->R0(Lcom/join/mgps/activity/ShareWebActivity;)Lcom/join/mgps/dialog/e0;

    move-result-object v0

    new-instance v1, Lcom/join/mgps/activity/ShareWebActivity$g$a;

    invoke-direct {v1, p0, p1}, Lcom/join/mgps/activity/ShareWebActivity$g$a;-><init>(Lcom/join/mgps/activity/ShareWebActivity$g;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/join/mgps/dialog/e0;->a(Landroid/view/View$OnClickListener;)V

    .line 23
    iget-object p1, p0, Lcom/join/mgps/activity/ShareWebActivity$g;->c:Lcom/join/mgps/activity/ShareWebActivity;

    invoke-static {p1}, Lcom/join/mgps/activity/ShareWebActivity;->R0(Lcom/join/mgps/activity/ShareWebActivity;)Lcom/join/mgps/dialog/e0;

    move-result-object p1

    new-instance v0, Lcom/join/mgps/activity/ShareWebActivity$g$b;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/ShareWebActivity$g$b;-><init>(Lcom/join/mgps/activity/ShareWebActivity$g;)V

    invoke-virtual {p1, v0}, Lcom/join/mgps/dialog/e0;->b(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_4

    .line 24
    :cond_7
    iget-boolean v0, p1, Lcom/tbruyelle/rxpermissions2/b;->c:Z

    if-eqz v0, :cond_8

    goto :goto_4

    .line 25
    :cond_8
    iget-object v0, p0, Lcom/join/mgps/activity/ShareWebActivity$g;->c:Lcom/join/mgps/activity/ShareWebActivity;

    iget-object v1, v0, Lcom/join/mgps/activity/ShareWebActivity;->p0:Landroid/app/Dialog;

    if-nez v1, :cond_9

    .line 26
    new-instance v1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-static {v0}, Lcom/join/mgps/activity/ShareWebActivity;->D0(Lcom/join/mgps/activity/ShareWebActivity;)Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f12000c

    invoke-direct {v1, v2, v3}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    iput-object v1, v0, Lcom/join/mgps/activity/ShareWebActivity;->q0:Landroidx/appcompat/app/AlertDialog$Builder;

    goto :goto_1

    .line 27
    :cond_9
    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_a

    return-void

    .line 28
    :cond_a
    :goto_1
    iget-object v0, p1, Lcom/tbruyelle/rxpermissions2/b;->a:Ljava/lang/String;

    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    return-void

    .line 29
    :cond_b
    iget-object v0, p0, Lcom/join/mgps/activity/ShareWebActivity$g;->c:Lcom/join/mgps/activity/ShareWebActivity;

    iget-object v0, v0, Lcom/join/mgps/activity/ShareWebActivity;->n0:Lcom/join/mgps/dialog/x0;

    const-string v1, "\u63d0\u793a"

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 30
    iget-object v0, p1, Lcom/tbruyelle/rxpermissions2/b;->a:Ljava/lang/String;

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    iget-object p1, p1, Lcom/tbruyelle/rxpermissions2/b;->a:Ljava/lang/String;

    const-string v0, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_c

    goto :goto_2

    .line 31
    :cond_c
    iget-object p1, p0, Lcom/join/mgps/activity/ShareWebActivity$g;->c:Lcom/join/mgps/activity/ShareWebActivity;

    iget-object p1, p1, Lcom/join/mgps/activity/ShareWebActivity;->q0:Landroidx/appcompat/app/AlertDialog$Builder;

    const-string v0, "\u8bf7\u53bb\u8bbe\u7f6e\u4e2d\u5f00\u542f\u6743\u9650"

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    goto :goto_3

    .line 32
    :cond_d
    :goto_2
    iget-object p1, p0, Lcom/join/mgps/activity/ShareWebActivity$g;->c:Lcom/join/mgps/activity/ShareWebActivity;

    iget-object p1, p1, Lcom/join/mgps/activity/ShareWebActivity;->q0:Landroidx/appcompat/app/AlertDialog$Builder;

    const-string v0, "\u9700\u8981\u6253\u5f00\u8bfb\u5199\u5b58\u50a8\u6743\u9650\uff0c\u8bf7\u53bb\u8bbe\u7f6e\u4e2d\u5f00\u542f\u6743\u9650"

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 33
    :goto_3
    iget-object p1, p0, Lcom/join/mgps/activity/ShareWebActivity$g;->c:Lcom/join/mgps/activity/ShareWebActivity;

    iget-object p1, p1, Lcom/join/mgps/activity/ShareWebActivity;->q0:Landroidx/appcompat/app/AlertDialog$Builder;

    new-instance v0, Lcom/join/mgps/activity/ShareWebActivity$g$c;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/ShareWebActivity$g$c;-><init>(Lcom/join/mgps/activity/ShareWebActivity$g;)V

    const-string v1, "\u53bb\u6253\u5f00"

    invoke-virtual {p1, v1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 34
    iget-object p1, p0, Lcom/join/mgps/activity/ShareWebActivity$g;->c:Lcom/join/mgps/activity/ShareWebActivity;

    iget-object v0, p1, Lcom/join/mgps/activity/ShareWebActivity;->q0:Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    iput-object v0, p1, Lcom/join/mgps/activity/ShareWebActivity;->p0:Landroid/app/Dialog;

    :goto_4
    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    check-cast p1, Lcom/tbruyelle/rxpermissions2/b;

    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/ShareWebActivity$g;->a(Lcom/tbruyelle/rxpermissions2/b;)V

    return-void
.end method
