.class public Lcom/ss/android/socialbase/appdownloader/a/c;
.super Lcom/ss/android/socialbase/appdownloader/a/a;
.source "CustomJumpDevicePlan.java"


# instance fields
.field private final d:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/ss/android/socialbase/downloader/g/a;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/ss/android/socialbase/appdownloader/a/a;-><init>(Landroid/content/Context;Lcom/ss/android/socialbase/downloader/g/a;Ljava/lang/String;)V

    .line 2
    iput-object p4, p0, Lcom/ss/android/socialbase/appdownloader/a/c;->d:Lorg/json/JSONObject;

    return-void
.end method

.method private static a(Landroid/content/Intent;Lorg/json/JSONObject;Lorg/json/JSONObject;)V
    .locals 3
    .param p0    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    .line 1
    invoke-virtual {p1}, Lorg/json/JSONObject;->length()I

    move-result v0

    invoke-virtual {p2}, Lorg/json/JSONObject;->length()I

    move-result v1

    if-ne v0, v1, :cond_2

    if-nez p0, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 3
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 5
    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 6
    invoke-static {p1, v1, v2, p0}, Lcom/ss/android/socialbase/appdownloader/a/c;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)V

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method private static a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)V
    .locals 2

    .line 7
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "boolean"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x4

    goto :goto_0

    :sswitch_1
    const-string v0, "long"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x3

    goto :goto_0

    :sswitch_2
    const-string v0, "int"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_3
    const-string v0, "string"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_4
    const-string v0, "double"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_4

    goto :goto_0

    :cond_4
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    goto :goto_1

    .line 8
    :pswitch_0
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result p0

    invoke-virtual {p3, p1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_1

    .line 9
    :pswitch_1
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-virtual {p3, p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    goto :goto_1

    .line 10
    :pswitch_2
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {p3, p1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_1

    .line 11
    :pswitch_3
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 12
    :pswitch_4
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-virtual {p3, p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;D)Landroid/content/Intent;

    :goto_1
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x4f08842f -> :sswitch_4
        -0x352a9fef -> :sswitch_3
        0x197ef -> :sswitch_2
        0x32c67c -> :sswitch_1
        0x3db6c28 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public b()Landroid/content/Intent;
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/a/c;->d:Lorg/json/JSONObject;

    const-string v1, "action"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/ss/android/socialbase/appdownloader/a/c;->d:Lorg/json/JSONObject;

    const-string v2, "category"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3
    iget-object v2, p0, Lcom/ss/android/socialbase/appdownloader/a/c;->d:Lorg/json/JSONObject;

    const-string v3, "flags"

    const v4, 0x50008000

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    .line 4
    iget-object v3, p0, Lcom/ss/android/socialbase/appdownloader/a/c;->d:Lorg/json/JSONObject;

    const-string v4, "path_extra_key"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 5
    iget-object v4, p0, Lcom/ss/android/socialbase/appdownloader/a/c;->d:Lorg/json/JSONObject;

    const-string v5, "path_data_key"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 6
    iget-object v5, p0, Lcom/ss/android/socialbase/appdownloader/a/c;->d:Lorg/json/JSONObject;

    const-string v6, "extra"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    .line 7
    iget-object v6, p0, Lcom/ss/android/socialbase/appdownloader/a/c;->d:Lorg/json/JSONObject;

    const-string v7, "extra_type"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    .line 8
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 9
    :cond_0
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 10
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 11
    invoke-virtual {v7, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 12
    :cond_1
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :try_start_0
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 13
    iget-object v8, p0, Lcom/ss/android/socialbase/appdownloader/a/a;->c:Ljava/lang/String;

    aput-object v8, v0, v1

    invoke-static {v4, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    nop

    .line 14
    :cond_2
    :goto_0
    invoke-virtual {v7, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 15
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 16
    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/a/a;->c:Ljava/lang/String;

    invoke-virtual {v7, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 17
    :cond_3
    invoke-static {v7, v5, v6}, Lcom/ss/android/socialbase/appdownloader/a/c;->a(Landroid/content/Intent;Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    return-object v7
.end method
