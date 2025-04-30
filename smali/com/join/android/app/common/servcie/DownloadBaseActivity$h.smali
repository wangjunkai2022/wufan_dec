.class Lcom/join/android/app/common/servcie/DownloadBaseActivity$h;
.super Ljava/lang/Object;
.source "DownloadBaseActivity.java"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/android/app/common/servcie/DownloadBaseActivity;->backH5Downloadgame(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lretrofit2/Callback<",
        "Lcom/join/mgps/dto/ResultMainBean<",
        "Ljava/util/List<",
        "Lcom/join/mgps/dto/SearchDataBean;",
        ">;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/join/android/app/common/servcie/DownloadBaseActivity;


# direct methods
.method constructor <init>(Lcom/join/android/app/common/servcie/DownloadBaseActivity;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/android/app/common/servcie/DownloadBaseActivity$h;->b:Lcom/join/android/app/common/servcie/DownloadBaseActivity;

    iput-object p2, p0, Lcom/join/android/app/common/servcie/DownloadBaseActivity$h;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lretrofit2/Call;Ljava/lang/Throwable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "Lcom/join/mgps/dto/ResultMainBean<",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/SearchDataBean;",
            ">;>;>;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    return-void
.end method

.method public onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "Lcom/join/mgps/dto/ResultMainBean<",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/SearchDataBean;",
            ">;>;>;",
            "Lretrofit2/Response<",
            "Lcom/join/mgps/dto/ResultMainBean<",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/SearchDataBean;",
            ">;>;>;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/ResultMainBean;

    if-eqz p1, :cond_d

    .line 2
    invoke-virtual {p1}, Lcom/join/mgps/dto/ResultMainBean;->getFlag()I

    move-result p2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_d

    .line 3
    invoke-virtual {p1}, Lcom/join/mgps/dto/ResultMainBean;->getMessages()Lcom/join/mgps/dto/ResultMessageBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/join/mgps/dto/ResultMessageBean;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 4
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p2, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "  time"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/join/mgps/Util/t0;->c(Ljava/lang/String;)V

    .line 5
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 6
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/dto/SearchDataBean;

    .line 7
    invoke-virtual {v1}, Lcom/join/mgps/dto/SearchDataBean;->getDownloadtaskDown()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v1

    .line 8
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-void

    .line 9
    :cond_1
    sget-object v2, Lcom/join/mgps/enums/Dtype;->android:Lcom/join/mgps/enums/Dtype;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setFileType(Ljava/lang/String;)V

    .line 10
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPlugin_num()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setRomType(Ljava/lang/String;)V

    .line 11
    invoke-static {}, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->access$200()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/join/android/app/common/utils/a;->g0(Landroid/content/Context;)Lcom/join/android/app/common/utils/a;

    move-result-object v2

    invoke-static {}, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->access$200()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPackageName()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/join/android/app/common/utils/APKUtils$DEVICE_TYPE;->ALL:Lcom/join/android/app/common/utils/APKUtils$DEVICE_TYPE;

    invoke-virtual {v2, v3, v4, v5}, Lcom/join/android/app/common/utils/APKUtils;->d(Landroid/content/Context;Ljava/lang/String;Lcom/join/android/app/common/utils/APKUtils$DEVICE_TYPE;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 12
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    const/4 v4, 0x5

    if-eqz v3, :cond_3

    .line 13
    invoke-static {}, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->access$200()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/join/android/app/common/utils/a;->g0(Landroid/content/Context;)Lcom/join/android/app/common/utils/a;

    move-result-object v3

    invoke-static {}, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->access$200()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7, v5}, Lcom/join/android/app/common/utils/APKUtils;->l(Landroid/content/Context;Ljava/lang/String;Lcom/join/android/app/common/utils/APKUtils$DEVICE_TYPE;)Lcom/join/android/app/common/utils/APKUtils$a;

    move-result-object v3

    .line 14
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getVer()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v3}, Lcom/join/android/app/common/utils/APKUtils$a;->d()I

    move-result v3

    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getVer()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    if-ge v3, v5, :cond_2

    const/16 v3, 0x9

    .line 15
    invoke-virtual {v1, v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStatus(I)V

    goto :goto_1

    .line 16
    :cond_2
    invoke-virtual {v1, v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStatus(I)V

    goto :goto_1

    :cond_3
    const/16 v3, 0xb

    .line 17
    invoke-virtual {v1, v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStatus(I)V

    .line 18
    :goto_1
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v3

    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lg1/f;->B(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v3

    if-nez v3, :cond_0

    .line 19
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 20
    invoke-static {}, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->access$200()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/join/android/app/common/utils/a;->g0(Landroid/content/Context;)Lcom/join/android/app/common/utils/a;

    move-result-object v3

    invoke-static {}, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->access$200()Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcom/join/android/app/common/servcie/DownloadBaseActivity$h;->a:Ljava/lang/String;

    invoke-virtual {v3, v5, v6}, Lcom/join/android/app/common/utils/APKUtils;->k(Landroid/content/Context;Ljava/lang/String;)Lcom/join/android/app/common/utils/APKUtils$a;

    move-result-object v3

    const/4 v5, 0x0

    .line 21
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v6

    const-string v7, "846928650"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    const-string v8, "802190896"

    const-string v9, "752756546"

    const-string v10, "316132861"

    const-string v11, "4279891468"

    const-string v12, "633053817"

    if-nez v6, :cond_5

    .line 22
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 23
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 24
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 25
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 26
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    goto :goto_2

    .line 27
    :cond_4
    invoke-virtual {v1, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setOpen(Z)V

    .line 28
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setOpenTime(J)V

    .line 29
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v2

    invoke-virtual {v2, v1}, Lg1/f;->c0(Lcom/github/snowdream/android/app/downloader/DownloadTask;)I

    .line 30
    invoke-static {v1, v4}, Lcom/join/mgps/Util/UtilsMy;->g2(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    .line 31
    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 32
    :cond_5
    :goto_2
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz v3, :cond_0

    .line 33
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {v3}, Lcom/join/android/app/common/utils/APKUtils$a;->a()Ljava/lang/String;

    move-result-object v2

    const-string v6, "\u7f6a\u6076\u90fd\u5e02"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    :goto_3
    const/4 v5, 0x1

    goto/16 :goto_4

    .line 34
    :cond_6
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-virtual {v3}, Lcom/join/android/app/common/utils/APKUtils$a;->a()Ljava/lang/String;

    move-result-object v2

    const-string v6, "\u4fa0\u76d7\u730e\u8f66\u624b\uff1a\u7f6a\u6076\u90fd\u5e02"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    goto :goto_3

    .line 35
    :cond_7
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-virtual {v3}, Lcom/join/android/app/common/utils/APKUtils$a;->a()Ljava/lang/String;

    move-result-object v2

    const-string v6, "\u4fa0\u76d7\u730e\u8f66\u624b\uff1a\u5723\u5b89\u5730\u5217\u65af"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    goto :goto_3

    .line 36
    :cond_8
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v6, "\u5723\u5b89\u5730\u5217\u65af"

    if-eqz v2, :cond_9

    invoke-virtual {v3}, Lcom/join/android/app/common/utils/APKUtils$a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    goto :goto_3

    .line 37
    :cond_9
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-virtual {v3}, Lcom/join/android/app/common/utils/APKUtils$a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    goto :goto_3

    .line 38
    :cond_a
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v6, "\u6355\u9c7c\u70b8\u7ffb\u5929"

    if-eqz v2, :cond_b

    invoke-virtual {v3}, Lcom/join/android/app/common/utils/APKUtils$a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 39
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v2

    invoke-virtual {v2, v10}, Lg1/f;->B(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v2

    if-nez v2, :cond_c

    goto :goto_3

    .line 40
    :cond_b
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-virtual {v3}, Lcom/join/android/app/common/utils/APKUtils$a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 41
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v2

    invoke-virtual {v2, v11}, Lg1/f;->B(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v2

    if-nez v2, :cond_c

    goto/16 :goto_3

    :cond_c
    :goto_4
    if-eqz v5, :cond_0

    .line 42
    invoke-virtual {v1, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setOpen(Z)V

    .line 43
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setOpenTime(J)V

    .line 44
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v2

    invoke-virtual {v2, v1}, Lg1/f;->c0(Lcom/github/snowdream/android/app/downloader/DownloadTask;)I

    .line 45
    invoke-static {v1, v4}, Lcom/join/mgps/Util/UtilsMy;->g2(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    .line 46
    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_d
    return-void
.end method
