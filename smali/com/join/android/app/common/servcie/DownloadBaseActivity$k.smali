.class Lcom/join/android/app/common/servcie/DownloadBaseActivity$k;
.super Landroid/content/BroadcastReceiver;
.source "DownloadBaseActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/android/app/common/servcie/DownloadBaseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "k"
.end annotation


# instance fields
.field final synthetic a:Lcom/join/android/app/common/servcie/DownloadBaseActivity;


# direct methods
.method private constructor <init>(Lcom/join/android/app/common/servcie/DownloadBaseActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/android/app/common/servcie/DownloadBaseActivity$k;->a:Lcom/join/android/app/common/servcie/DownloadBaseActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/join/android/app/common/servcie/DownloadBaseActivity;Lcom/join/android/app/common/servcie/DownloadBaseActivity$b;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/join/android/app/common/servcie/DownloadBaseActivity$k;-><init>(Lcom/join/android/app/common/servcie/DownloadBaseActivity;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    .line 3
    iget-object v0, p0, Lcom/join/android/app/common/servcie/DownloadBaseActivity$k;->a:Lcom/join/android/app/common/servcie/DownloadBaseActivity;

    iget-wide v1, v0, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->screenOffTime:J

    sub-long/2addr p1, v1

    const-wide/32 v1, 0x3a980

    cmp-long v3, p1, v1

    if-lez v3, :cond_1

    .line 4
    iget-object p1, v0, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->handlerdelay:Landroid/os/Handler;

    const/4 p2, 0x1

    const-wide/16 v0, 0xbb8

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 6
    iget-object p1, p0, Lcom/join/android/app/common/servcie/DownloadBaseActivity$k;->a:Lcom/join/android/app/common/servcie/DownloadBaseActivity;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->screenOffTime:J

    :cond_1
    :goto_0
    return-void
.end method
