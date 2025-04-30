.class public final Lcom/sina/weibo/sdk/share/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public D:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/app/Activity;Lcom/sina/weibo/sdk/api/WeiboMultiMessage;)V
    .locals 4

    if-nez p0, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-static {p0, p1}, Lcom/sina/weibo/sdk/share/e;->a(Landroid/content/Context;Lcom/sina/weibo/sdk/api/WeiboMultiMessage;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 2
    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const/4 v1, 0x1

    const-string v2, "_weibo_command_type"

    .line 3
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "_weibo_transaction"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    invoke-virtual {p1, v0}, Lcom/sina/weibo/sdk/api/WeiboMultiMessage;->writeToBundle(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    .line 6
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 7
    new-instance p1, Landroid/content/Intent;

    const-class v1, Lcom/sina/weibo/sdk/share/ShareTransActivity;

    invoke-direct {p1, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v1, 0x3e9

    const-string v2, "start_flag"

    .line 8
    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 9
    invoke-virtual {p1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    const/16 v0, 0x2711

    .line 10
    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private static a(Landroid/content/Context;Lcom/sina/weibo/sdk/api/WeiboMultiMessage;)Z
    .locals 2

    if-eqz p1, :cond_1

    .line 11
    invoke-static {p1}, Lcom/sina/weibo/sdk/share/e;->b(Lcom/sina/weibo/sdk/api/WeiboMultiMessage;)Ljava/util/List;

    move-result-object v0

    .line 12
    iget-object v1, p1, Lcom/sina/weibo/sdk/api/WeiboMultiMessage;->superGroupObject:Lcom/sina/weibo/sdk/api/SuperGroupObject;

    if-eqz v1, :cond_1

    invoke-static {p0}, Lcom/sina/weibo/sdk/b/a;->d(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 13
    iget-object v1, p1, Lcom/sina/weibo/sdk/api/WeiboMultiMessage;->superGroupObject:Lcom/sina/weibo/sdk/api/SuperGroupObject;

    invoke-static {v0, v1}, Lcom/sina/weibo/sdk/share/e;->a(Ljava/util/List;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "\u5fae\u535a\u7248\u672c\u8fc7\u4f4e\uff0c\u4e0d\u652f\u6301\u8d85\u8bdd\u5206\u4eab"

    const/4 v0, 0x0

    .line 14
    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return v0

    :cond_0
    const/4 p0, 0x0

    .line 15
    iput-object p0, p1, Lcom/sina/weibo/sdk/api/WeiboMultiMessage;->superGroupObject:Lcom/sina/weibo/sdk/api/SuperGroupObject;

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method private static a(Ljava/util/List;Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 16
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 17
    :cond_0
    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_1

    return p1

    :cond_1
    :goto_0
    return v0
.end method

.method private static b(Lcom/sina/weibo/sdk/api/WeiboMultiMessage;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sina/weibo/sdk/api/WeiboMultiMessage;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/sina/weibo/sdk/api/WeiboMultiMessage;->textObject:Lcom/sina/weibo/sdk/api/TextObject;

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4
    :cond_0
    iget-object v1, p0, Lcom/sina/weibo/sdk/api/WeiboMultiMessage;->imageObject:Lcom/sina/weibo/sdk/api/ImageObject;

    if-eqz v1, :cond_1

    .line 5
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6
    :cond_1
    iget-object v1, p0, Lcom/sina/weibo/sdk/api/WeiboMultiMessage;->mediaObject:Lcom/sina/weibo/sdk/api/MediaObject;

    if-eqz v1, :cond_2

    .line 7
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8
    :cond_2
    iget-object v1, p0, Lcom/sina/weibo/sdk/api/WeiboMultiMessage;->multiImageObject:Lcom/sina/weibo/sdk/api/MultiImageObject;

    if-eqz v1, :cond_3

    .line 9
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 10
    :cond_3
    iget-object v1, p0, Lcom/sina/weibo/sdk/api/WeiboMultiMessage;->videoSourceObject:Lcom/sina/weibo/sdk/api/VideoSourceObject;

    if-eqz v1, :cond_4

    .line 11
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 12
    :cond_4
    iget-object p0, p0, Lcom/sina/weibo/sdk/api/WeiboMultiMessage;->superGroupObject:Lcom/sina/weibo/sdk/api/SuperGroupObject;

    if-eqz p0, :cond_5

    .line 13
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    return-object v0
.end method
