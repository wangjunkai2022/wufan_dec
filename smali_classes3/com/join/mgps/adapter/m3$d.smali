.class Lcom/join/mgps/adapter/m3$d;
.super Ljava/lang/Object;
.source "MyGameAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/adapter/m3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "d"
.end annotation


# instance fields
.field a:Lcom/github/snowdream/android/app/downloader/DownloadTask;

.field final synthetic b:Lcom/join/mgps/adapter/m3;


# direct methods
.method public constructor <init>(Lcom/join/mgps/adapter/m3;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/m3$d;->b:Lcom/join/mgps/adapter/m3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/join/mgps/adapter/m3$d;->a:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .line 1
    iget-object p1, p0, Lcom/join/mgps/adapter/m3$d;->a:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPlugin_num()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/join/mgps/adapter/m3$d;->a:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPlugin_num()Ljava/lang/String;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/join/mgps/enums/ConstantIntEnum;->H5:Lcom/join/mgps/enums/ConstantIntEnum;

    invoke-virtual {v3}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 3
    :goto_0
    iget-object v2, p0, Lcom/join/mgps/adapter/m3$d;->a:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getFileType()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/join/mgps/adapter/m3$d;->a:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getFileType()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/join/mgps/enums/Dtype;->chajian:Lcom/join/mgps/enums/Dtype;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    .line 4
    :goto_1
    iget-object v2, p0, Lcom/join/mgps/adapter/m3$d;->a:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getFileType()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/join/mgps/adapter/m3$d;->a:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getFileType()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/join/mgps/enums/Dtype;->android:Lcom/join/mgps/enums/Dtype;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    :cond_3
    if-eqz p1, :cond_4

    .line 5
    new-instance p1, Lcom/join/mgps/Util/IntentDateBean;

    invoke-direct {p1}, Lcom/join/mgps/Util/IntentDateBean;-><init>()V

    const/4 v0, 0x4

    .line 6
    invoke-virtual {p1, v0}, Lcom/join/mgps/Util/IntentDateBean;->setLink_type(I)V

    .line 7
    iget-object v0, p0, Lcom/join/mgps/adapter/m3$d;->a:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getDown_url_remote()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/join/mgps/Util/IntentDateBean;->setLink_type_val(Ljava/lang/String;)V

    .line 8
    iget-object v0, p0, Lcom/join/mgps/adapter/m3$d;->a:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    iget-object v1, p0, Lcom/join/mgps/adapter/m3$d;->b:Lcom/join/mgps/adapter/m3;

    iget-object v1, v1, Lcom/join/mgps/adapter/m3;->a:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/join/mgps/Util/UtilsMy;->h2(Lcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/content/Context;)V

    .line 9
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/adapter/m3$d;->b:Lcom/join/mgps/adapter/m3;

    iget-object v1, v1, Lcom/join/mgps/adapter/m3;->a:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lcom/join/mgps/Util/IntentUtil;->intentActivity(Landroid/content/Context;Lcom/join/mgps/Util/IntentDateBean;)V

    return-void

    .line 10
    :cond_4
    iget-object p1, p0, Lcom/join/mgps/adapter/m3$d;->a:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v1

    .line 11
    :cond_5
    iget-object p1, p0, Lcom/join/mgps/adapter/m3$d;->a:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPay_game_amount()I

    move-result p1

    iget-object v2, p0, Lcom/join/mgps/adapter/m3$d;->a:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/join/mgps/Util/UtilsMy;->l0(ILjava/lang/String;)I

    move-result p1

    const/16 v2, 0x2b

    if-lez p1, :cond_6

    const/16 v1, 0x2b

    :cond_6
    const/4 p1, 0x5

    if-eqz v1, :cond_17

    const/16 v3, 0xd

    if-eq v1, v3, :cond_16

    const/4 v3, 0x2

    if-eq v1, v3, :cond_15

    const/4 v4, 0x3

    if-eq v1, v4, :cond_14

    if-eq v1, p1, :cond_13

    const/4 v4, 0x6

    if-eq v1, v4, :cond_14

    const/4 v4, 0x7

    if-eq v1, v4, :cond_17

    const/16 v4, 0x2a

    if-eq v1, v4, :cond_10

    if-eq v1, v2, :cond_17

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_3

    :pswitch_0
    if-eqz v0, :cond_9

    .line 12
    iget-object p1, p0, Lcom/join/mgps/adapter/m3$d;->a:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getDown_type()I

    move-result p1

    if-ne p1, v3, :cond_9

    sget-object p1, Lcom/join/mgps/enums/ConstantIntEnum;->PS2:Lcom/join/mgps/enums/ConstantIntEnum;

    invoke-virtual {p1}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    move-result p1

    iget-object v0, p0, Lcom/join/mgps/adapter/m3$d;->a:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPlugin_num()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-ne p1, v0, :cond_7

    goto :goto_2

    .line 13
    :cond_7
    invoke-static {}, Ln1/p;->o()Ln1/p;

    move-result-object p1

    iget-object v0, p0, Lcom/join/mgps/adapter/m3$d;->a:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPlugin_num()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ln1/p;->n(Ljava/lang/String;)Lcom/join/mgps/db/tables/EMUApkTable;

    move-result-object p1

    if-eqz p1, :cond_1c

    .line 14
    invoke-static {p1}, Lcom/join/android/app/common/utils/h;->C(Lcom/join/mgps/db/tables/EMUApkTable;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 15
    iget-object v0, p0, Lcom/join/mgps/adapter/m3$d;->b:Lcom/join/mgps/adapter/m3;

    iget-object v0, v0, Lcom/join/mgps/adapter/m3;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/mgps/dialog/PlugInstallDialog_;->I0(Landroid/content/Context;)Lcom/join/mgps/dialog/PlugInstallDialog_$a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/join/mgps/dialog/PlugInstallDialog_$a;->c(Lcom/join/mgps/db/tables/EMUApkTable;)Lcom/join/mgps/dialog/PlugInstallDialog_$a;

    move-result-object p1

    iget-object v0, p0, Lcom/join/mgps/adapter/m3$d;->a:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {p1, v0}, Lcom/join/mgps/dialog/PlugInstallDialog_$a;->a(Lcom/github/snowdream/android/app/downloader/DownloadTask;)Lcom/join/mgps/dialog/PlugInstallDialog_$a;

    move-result-object p1

    invoke-virtual {p1}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    .line 16
    invoke-static {}, Lcom/join/android/app/common/servcie/a;->e()Lcom/join/android/app/common/servcie/a;

    move-result-object p1

    iget-object v0, p0, Lcom/join/mgps/adapter/m3$d;->b:Lcom/join/mgps/adapter/m3;

    iget-object v0, v0, Lcom/join/mgps/adapter/m3;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/join/mgps/adapter/m3$d;->a:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {p1, v0, v1}, Lcom/join/android/app/common/servcie/a;->q(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto/16 :goto_3

    .line 17
    :cond_8
    iget-object v0, p0, Lcom/join/mgps/adapter/m3$d;->b:Lcom/join/mgps/adapter/m3;

    iget-object v0, v0, Lcom/join/mgps/adapter/m3;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/mgps/dialog/PlugInstallDialog_;->I0(Landroid/content/Context;)Lcom/join/mgps/dialog/PlugInstallDialog_$a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/join/mgps/dialog/PlugInstallDialog_$a;->c(Lcom/join/mgps/db/tables/EMUApkTable;)Lcom/join/mgps/dialog/PlugInstallDialog_$a;

    move-result-object p1

    iget-object v0, p0, Lcom/join/mgps/adapter/m3$d;->a:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {p1, v0}, Lcom/join/mgps/dialog/PlugInstallDialog_$a;->a(Lcom/github/snowdream/android/app/downloader/DownloadTask;)Lcom/join/mgps/dialog/PlugInstallDialog_$a;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/join/mgps/dialog/PlugInstallDialog_$a;->b(I)Lcom/join/mgps/dialog/PlugInstallDialog_$a;

    move-result-object p1

    invoke-virtual {p1}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    goto/16 :goto_3

    .line 18
    :cond_9
    :goto_2
    iget-object p1, p0, Lcom/join/mgps/adapter/m3$d;->a:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    iget-object v0, p0, Lcom/join/mgps/adapter/m3$d;->b:Lcom/join/mgps/adapter/m3;

    iget-object v0, v0, Lcom/join/mgps/adapter/m3;->a:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/join/mgps/Util/UtilsMy;->j3(Lcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/content/Context;)V

    goto/16 :goto_3

    .line 19
    :pswitch_1
    iget-object v1, p0, Lcom/join/mgps/adapter/m3$d;->b:Lcom/join/mgps/adapter/m3;

    iget-object v1, v1, Lcom/join/mgps/adapter/m3;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 20
    iget-object p1, p0, Lcom/join/mgps/adapter/m3$d;->b:Lcom/join/mgps/adapter/m3;

    iget-object p1, p1, Lcom/join/mgps/adapter/m3;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object p1

    const-string v0, "\u65e0\u7f51\u7edc\u8fde\u63a5"

    invoke-virtual {p1, v0}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    return-void

    .line 21
    :cond_a
    iget-object v1, p0, Lcom/join/mgps/adapter/m3$d;->b:Lcom/join/mgps/adapter/m3;

    iget-object v1, v1, Lcom/join/mgps/adapter/m3;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/join/mgps/adapter/m3$d;->a:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-static {v1, v2}, Lcom/join/mgps/Util/UtilsMy;->T0(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z

    move-result v1

    if-eqz v1, :cond_b

    return-void

    .line 22
    :cond_b
    iget-object v1, p0, Lcom/join/mgps/adapter/m3$d;->a:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getDown_status()I

    move-result v1

    if-ne v1, p1, :cond_c

    .line 23
    iget-object p1, p0, Lcom/join/mgps/adapter/m3$d;->b:Lcom/join/mgps/adapter/m3;

    iget-object p1, p1, Lcom/join/mgps/adapter/m3;->a:Landroid/content/Context;

    iget-object v0, p0, Lcom/join/mgps/adapter/m3$d;->a:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-static {p1, v0}, Lcom/join/mgps/Util/UtilsMy;->R0(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    return-void

    .line 24
    :cond_c
    iget-object p1, p0, Lcom/join/mgps/adapter/m3$d;->a:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_d

    return-void

    .line 25
    :cond_d
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object p1

    iget-object v1, p0, Lcom/join/mgps/adapter/m3$d;->a:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lg1/f;->B(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object p1

    if-eqz p1, :cond_e

    .line 26
    iget-object v1, p0, Lcom/join/mgps/adapter/m3$d;->a:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getId()I

    move-result p1

    invoke-virtual {v1, p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setId(I)V

    .line 27
    iget-object p1, p0, Lcom/join/mgps/adapter/m3$d;->a:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-static {p1}, Lcom/php25/PDownload/d;->b(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    :cond_e
    if-eqz v0, :cond_f

    .line 28
    iget-object p1, p0, Lcom/join/mgps/adapter/m3$d;->a:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getDown_type()I

    move-result p1

    if-ne p1, v3, :cond_f

    .line 29
    invoke-static {}, Ln1/p;->o()Ln1/p;

    move-result-object p1

    iget-object v0, p0, Lcom/join/mgps/adapter/m3$d;->a:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPlugin_num()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ln1/p;->n(Ljava/lang/String;)Lcom/join/mgps/db/tables/EMUApkTable;

    move-result-object p1

    .line 30
    iget-object v0, p0, Lcom/join/mgps/adapter/m3$d;->b:Lcom/join/mgps/adapter/m3;

    iget-object v0, v0, Lcom/join/mgps/adapter/m3;->a:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/join/mgps/Util/UtilsMy;->V0(Lcom/join/mgps/db/tables/EMUApkTable;Landroid/content/Context;)V

    goto/16 :goto_3

    .line 31
    :cond_f
    iget-object p1, p0, Lcom/join/mgps/adapter/m3$d;->a:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    iget-object v0, p0, Lcom/join/mgps/adapter/m3$d;->b:Lcom/join/mgps/adapter/m3;

    iget-object v0, v0, Lcom/join/mgps/adapter/m3;->a:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/php25/PDownload/d;->c(Lcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/content/Context;)V

    goto/16 :goto_3

    .line 32
    :cond_10
    iget-object p1, p0, Lcom/join/mgps/adapter/m3$d;->a:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_11

    return-void

    .line 33
    :cond_11
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object p1

    iget-object v0, p0, Lcom/join/mgps/adapter/m3$d;->a:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lg1/f;->B(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object p1

    if-eqz p1, :cond_12

    .line 34
    iget-object v0, p0, Lcom/join/mgps/adapter/m3$d;->a:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getId()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setId(I)V

    .line 35
    :cond_12
    iget-object p1, p0, Lcom/join/mgps/adapter/m3$d;->a:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getVer()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setVer(Ljava/lang/String;)V

    .line 36
    iget-object p1, p0, Lcom/join/mgps/adapter/m3$d;->a:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getVer_name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setVer_name(Ljava/lang/String;)V

    .line 37
    iget-object p1, p0, Lcom/join/mgps/adapter/m3$d;->a:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getDown_url_remote()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setUrl(Ljava/lang/String;)V

    .line 38
    iget-object p1, p0, Lcom/join/mgps/adapter/m3$d;->b:Lcom/join/mgps/adapter/m3;

    iget-object p1, p1, Lcom/join/mgps/adapter/m3;->a:Landroid/content/Context;

    iget-object v0, p0, Lcom/join/mgps/adapter/m3$d;->a:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-static {p1, v0}, Lcom/join/mgps/Util/UtilsMy;->w3(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto/16 :goto_3

    :cond_13
    if-nez v0, :cond_1c

    .line 39
    iget-object p1, p0, Lcom/join/mgps/adapter/m3$d;->b:Lcom/join/mgps/adapter/m3;

    iget-object p1, p1, Lcom/join/mgps/adapter/m3;->a:Landroid/content/Context;

    iget-object v0, p0, Lcom/join/mgps/adapter/m3$d;->a:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-static {p1, v0}, Lcom/join/mgps/Util/UtilsMy;->c3(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto/16 :goto_3

    .line 40
    :cond_14
    iget-object p1, p0, Lcom/join/mgps/adapter/m3$d;->a:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    iget-object v0, p0, Lcom/join/mgps/adapter/m3$d;->b:Lcom/join/mgps/adapter/m3;

    iget-object v0, v0, Lcom/join/mgps/adapter/m3;->a:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/php25/PDownload/d;->c(Lcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/content/Context;)V

    goto/16 :goto_3

    .line 41
    :cond_15
    :pswitch_2
    iget-object p1, p0, Lcom/join/mgps/adapter/m3$d;->a:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-static {p1}, Lcom/php25/PDownload/d;->h(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto/16 :goto_3

    .line 42
    :cond_16
    iget-object p1, p0, Lcom/join/mgps/adapter/m3$d;->b:Lcom/join/mgps/adapter/m3;

    iget-object p1, p1, Lcom/join/mgps/adapter/m3;->a:Landroid/content/Context;

    iget-object v0, p0, Lcom/join/mgps/adapter/m3$d;->a:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-static {p1, v0}, Lcom/php25/PDownload/d;->k(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto :goto_3

    :cond_17
    if-eqz v0, :cond_18

    .line 43
    invoke-static {}, Ln1/p;->o()Ln1/p;

    move-result-object p1

    iget-object v0, p0, Lcom/join/mgps/adapter/m3$d;->a:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPlugin_num()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ln1/p;->n(Ljava/lang/String;)Lcom/join/mgps/db/tables/EMUApkTable;

    move-result-object p1

    .line 44
    iget-object v0, p0, Lcom/join/mgps/adapter/m3$d;->b:Lcom/join/mgps/adapter/m3;

    iget-object v0, v0, Lcom/join/mgps/adapter/m3;->a:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/join/mgps/Util/UtilsMy;->W0(Lcom/join/mgps/db/tables/EMUApkTable;Landroid/content/Context;)V

    return-void

    .line 45
    :cond_18
    iget-object v0, p0, Lcom/join/mgps/adapter/m3$d;->a:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPay_game_amount()I

    move-result v0

    iget-object v1, p0, Lcom/join/mgps/adapter/m3$d;->a:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/join/mgps/Util/UtilsMy;->n0(ILjava/lang/String;)I

    move-result v0

    if-lez v0, :cond_19

    .line 46
    iget-object p1, p0, Lcom/join/mgps/adapter/m3$d;->b:Lcom/join/mgps/adapter/m3;

    iget-object p1, p1, Lcom/join/mgps/adapter/m3;->a:Landroid/content/Context;

    iget-object v0, p0, Lcom/join/mgps/adapter/m3$d;->a:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/join/mgps/Util/UtilsMy;->m3(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_3

    .line 47
    :cond_19
    iget-object v0, p0, Lcom/join/mgps/adapter/m3$d;->b:Lcom/join/mgps/adapter/m3;

    iget-object v0, v0, Lcom/join/mgps/adapter/m3;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/join/mgps/adapter/m3$d;->a:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-static {v0, v1}, Lcom/join/mgps/Util/UtilsMy;->T0(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z

    move-result v0

    if-eqz v0, :cond_1a

    goto :goto_3

    .line 48
    :cond_1a
    iget-object v0, p0, Lcom/join/mgps/adapter/m3$d;->a:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getDown_status()I

    move-result v0

    if-ne v0, p1, :cond_1b

    .line 49
    iget-object p1, p0, Lcom/join/mgps/adapter/m3$d;->b:Lcom/join/mgps/adapter/m3;

    iget-object p1, p1, Lcom/join/mgps/adapter/m3;->a:Landroid/content/Context;

    iget-object v0, p0, Lcom/join/mgps/adapter/m3$d;->a:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-static {p1, v0}, Lcom/join/mgps/Util/UtilsMy;->R0(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto :goto_3

    .line 50
    :cond_1b
    iget-object p1, p0, Lcom/join/mgps/adapter/m3$d;->b:Lcom/join/mgps/adapter/m3;

    iget-object p1, p1, Lcom/join/mgps/adapter/m3;->a:Landroid/content/Context;

    iget-object v0, p0, Lcom/join/mgps/adapter/m3$d;->a:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getTp_down_url()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/join/mgps/adapter/m3$d;->a:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getOther_down_switch()I

    move-result v2

    iget-object v3, p0, Lcom/join/mgps/adapter/m3$d;->a:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCdn_down_switch()I

    move-result v3

    invoke-static {p1, v0, v1, v2, v3}, Lcom/join/mgps/Util/UtilsMy;->F0(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;Ljava/util/List;II)V

    :cond_1c
    :goto_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method
