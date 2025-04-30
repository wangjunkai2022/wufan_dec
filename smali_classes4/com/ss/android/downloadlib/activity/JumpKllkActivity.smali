.class public Lcom/ss/android/downloadlib/activity/JumpKllkActivity;
.super Lcom/ss/android/downloadlib/activity/TTDelegateActivity;
.source "JumpKllkActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ss/android/downloadlib/activity/TTDelegateActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lcom/ss/android/downloadlib/e/c;->a()Lcom/ss/android/downloadlib/e/c;

    move-result-object v0

    const-string v1, "handleIntent is null"

    invoke-virtual {v0, v1}, Lcom/ss/android/downloadlib/e/c;->a(Ljava/lang/String;)V

    .line 3
    invoke-static {p0}, Lcom/ss/android/socialbase/appdownloader/c;->a(Landroid/app/Activity;)V

    .line 4
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "p"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "id"

    const-wide/16 v3, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    .line 6
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    cmp-long v5, v1, v3

    if-nez v5, :cond_2

    .line 7
    :cond_1
    invoke-static {}, Lcom/ss/android/downloadlib/e/c;->a()Lcom/ss/android/downloadlib/e/c;

    move-result-object v3

    const-string v4, "getPackage or id is null"

    invoke-virtual {v3, v4}, Lcom/ss/android/downloadlib/e/c;->a(Ljava/lang/String;)V

    .line 8
    invoke-static {p0}, Lcom/ss/android/socialbase/appdownloader/c;->a(Landroid/app/Activity;)V

    .line 9
    :cond_2
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/j;->i()Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "ab"

    const/4 v5, 0x0

    .line 10
    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3

    const/4 v5, 0x1

    .line 11
    :cond_3
    invoke-static {p0, v0, v1, v2, v5}, Lcom/ss/android/downloadlib/g/h;->a(Landroid/content/Context;Ljava/lang/String;JZ)V

    if-eq v3, v4, :cond_4

    .line 12
    invoke-static {p0}, Lcom/ss/android/socialbase/appdownloader/c;->a(Landroid/app/Activity;)V

    :cond_4
    return-void
.end method

.method protected onPause()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 2
    invoke-static {p0}, Lcom/ss/android/socialbase/appdownloader/c;->a(Landroid/app/Activity;)V

    return-void
.end method
