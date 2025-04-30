.class Lcom/join/android/app/common/servcie/DownloadBaseActivity$d;
.super Landroid/content/BroadcastReceiver;
.source "DownloadBaseActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/android/app/common/servcie/DownloadBaseActivity;->initRecviver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/android/app/common/servcie/DownloadBaseActivity;


# direct methods
.method constructor <init>(Lcom/join/android/app/common/servcie/DownloadBaseActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/android/app/common/servcie/DownloadBaseActivity$d;->a:Lcom/join/android/app/common/servcie/DownloadBaseActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/join/android/app/common/servcie/DownloadBaseActivity$d;->a:Lcom/join/android/app/common/servcie/DownloadBaseActivity;

    invoke-virtual {p1, p2}, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->downloadbygameRecver(Landroid/content/Intent;)V

    return-void
.end method
