.class Lcom/join/mgps/activity/MGMainActivity$n0;
.super Landroid/content/BroadcastReceiver;
.source "MGMainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/activity/MGMainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "n0"
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/MGMainActivity;


# direct methods
.method private constructor <init>(Lcom/join/mgps/activity/MGMainActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/MGMainActivity$n0;->a:Lcom/join/mgps/activity/MGMainActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/join/mgps/activity/MGMainActivity;Lcom/join/mgps/activity/MGMainActivity$k;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/MGMainActivity$n0;-><init>(Lcom/join/mgps/activity/MGMainActivity;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    const-string v0, ""

    const-string v1, "temp_"

    if-eqz p2, :cond_3

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.intent.action.DOWNLOAD_COMPLETE"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    :try_start_0
    const-string v2, "extra_download_id"

    const-wide/16 v3, -0x1

    .line 2
    invoke-virtual {p2, v2, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    const-string p2, "download"

    .line 3
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/DownloadManager;

    .line 4
    invoke-virtual {p2, v2, v3}, Landroid/app/DownloadManager;->getMimeTypeForDownloadedFile(J)Ljava/lang/String;

    move-result-object v4

    .line 5
    invoke-virtual {p2, v2, v3}, Landroid/app/DownloadManager;->getUriForDownloadedFile(J)Landroid/net/Uri;

    move-result-object p2

    .line 6
    invoke-static {p1, p2}, Lcom/join/mgps/Util/g0;->s(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p2

    const-string v2, "/"

    .line 7
    invoke-virtual {p2, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x1

    add-int/2addr v2, v3

    invoke-virtual {p2, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 8
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 9
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 10
    invoke-virtual {v2, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 11
    new-instance v2, Ljava/io/File;

    invoke-virtual {p2, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 12
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 13
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 14
    :cond_0
    new-instance v2, Ljava/io/File;

    invoke-virtual {p2, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    :cond_1
    const-string v0, "application/zip"

    .line 15
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "zip"

    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 16
    :cond_2
    invoke-static {p1}, Lcom/join/mgps/pref/h;->n(Landroid/content/Context;)Lcom/join/mgps/pref/h;

    move-result-object p1

    invoke-virtual {p1}, Lcom/join/mgps/pref/h;->f()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 17
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    move-result-object p1

    new-instance p2, Lcom/join/mgps/event/p;

    invoke-direct {p2, v3}, Lcom/join/mgps/event/p;-><init>(I)V

    invoke-virtual {p1, p2}, Lorg/greenrobot/eventbus/c;->o(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_3
    return-void
.end method
