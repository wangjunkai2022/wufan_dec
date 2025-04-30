.class Lcom/join/mgps/activity/MyGameUpdateManagerActivity$a;
.super Ljava/lang/Object;
.source "MyGameUpdateManagerActivity.java"

# interfaces
.implements Lcom/join/mgps/customview/a0$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/MyGameUpdateManagerActivity;->I(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/join/mgps/activity/MyGameUpdateManagerActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/MyGameUpdateManagerActivity;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/MyGameUpdateManagerActivity$a;->b:Lcom/join/mgps/activity/MyGameUpdateManagerActivity;

    iput-object p2, p0, Lcom/join/mgps/activity/MyGameUpdateManagerActivity$a;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object p1

    iget-object v0, p0, Lcom/join/mgps/activity/MyGameUpdateManagerActivity$a;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lg1/f;->B(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object p1

    .line 2
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getFileType()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getFileType()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/join/mgps/enums/Dtype;->chajian:Lcom/join/mgps/enums/Dtype;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/activity/MyGameUpdateManagerActivity$a;->b:Lcom/join/mgps/activity/MyGameUpdateManagerActivity;

    invoke-virtual {v1}, Lcom/join/mgps/activity/MyGameUpdateManagerActivity;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/join/mgps/Util/IntentUtil;->goGameDetialActivityBYDownloadTAsk(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    :goto_0
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v0

    invoke-virtual {v0, p1}, Lg1/f;->B(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object p1

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/MyGameUpdateManagerActivity$a;->b:Lcom/join/mgps/activity/MyGameUpdateManagerActivity;

    invoke-virtual {v0, p1}, Lcom/join/mgps/activity/MyGameUpdateManagerActivity;->Z0(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/MyGameUpdateManagerActivity$a;->b:Lcom/join/mgps/activity/MyGameUpdateManagerActivity;

    iget-object v0, p0, Lcom/join/mgps/activity/MyGameUpdateManagerActivity$a;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/MyGameUpdateManagerActivity;->U0(Ljava/lang/String;)V

    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    return-void
.end method
