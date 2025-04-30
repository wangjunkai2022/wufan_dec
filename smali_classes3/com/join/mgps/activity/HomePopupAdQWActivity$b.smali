.class Lcom/join/mgps/activity/HomePopupAdQWActivity$b;
.super Landroid/os/Handler;
.source "HomePopupAdQWActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/activity/HomePopupAdQWActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/HomePopupAdQWActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/HomePopupAdQWActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/HomePopupAdQWActivity$b;->a:Lcom/join/mgps/activity/HomePopupAdQWActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_3

    const/4 v3, 0x2

    if-eq v0, v3, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/HomePopupAdQWActivity$b;->a:Lcom/join/mgps/activity/HomePopupAdQWActivity;

    iget-object v0, v0, Lcom/join/mgps/activity/HomePopupAdQWActivity;->d:Lcom/join/mgps/customview/CustomCircleProgressBar;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, p1}, Lcom/join/mgps/customview/CustomCircleProgressBar;->setProgress(I)V

    goto :goto_0

    .line 3
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/activity/HomePopupAdQWActivity$b;->a:Lcom/join/mgps/activity/HomePopupAdQWActivity;

    iget-object p1, p1, Lcom/join/mgps/activity/HomePopupAdQWActivity;->q:Landroid/content/Context;

    invoke-static {p1}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object p1

    const-string v0, "\u4e0b\u8f7d\u5931\u8d25"

    invoke-virtual {p1, v0}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 4
    :cond_2
    iget-object p1, p0, Lcom/join/mgps/activity/HomePopupAdQWActivity$b;->a:Lcom/join/mgps/activity/HomePopupAdQWActivity;

    iget-object p1, p1, Lcom/join/mgps/activity/HomePopupAdQWActivity;->d:Lcom/join/mgps/customview/CustomCircleProgressBar;

    invoke-virtual {p1, v1}, Lcom/join/mgps/customview/CustomCircleProgressBar;->setProgress(I)V

    .line 5
    iget-object p1, p0, Lcom/join/mgps/activity/HomePopupAdQWActivity$b;->a:Lcom/join/mgps/activity/HomePopupAdQWActivity;

    iget-object p1, p1, Lcom/join/mgps/activity/HomePopupAdQWActivity;->g:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0

    .line 6
    :cond_3
    iget-object p1, p0, Lcom/join/mgps/activity/HomePopupAdQWActivity$b;->a:Lcom/join/mgps/activity/HomePopupAdQWActivity;

    invoke-static {p1}, Lcom/join/android/app/common/utils/a;->g0(Landroid/content/Context;)Lcom/join/android/app/common/utils/a;

    move-result-object p1

    iget-object v0, p0, Lcom/join/mgps/activity/HomePopupAdQWActivity$b;->a:Lcom/join/mgps/activity/HomePopupAdQWActivity;

    iget-object v1, v0, Lcom/join/mgps/activity/HomePopupAdQWActivity;->u:Lcom/github/snowdream/android/app/downloader/c;

    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/c;->j()Ljava/io/File;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/join/android/app/common/utils/APKUtils;->u(Landroid/app/Activity;Ljava/io/File;)V

    .line 7
    iget-object p1, p0, Lcom/join/mgps/activity/HomePopupAdQWActivity$b;->a:Lcom/join/mgps/activity/HomePopupAdQWActivity;

    iget-object p1, p1, Lcom/join/mgps/activity/HomePopupAdQWActivity;->d:Lcom/join/mgps/customview/CustomCircleProgressBar;

    const/16 v0, 0x64

    invoke-virtual {p1, v0}, Lcom/join/mgps/customview/CustomCircleProgressBar;->setProgress(I)V

    .line 8
    iget-object p1, p0, Lcom/join/mgps/activity/HomePopupAdQWActivity$b;->a:Lcom/join/mgps/activity/HomePopupAdQWActivity;

    iget-object p1, p1, Lcom/join/mgps/activity/HomePopupAdQWActivity;->g:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 9
    iget-object p1, p0, Lcom/join/mgps/activity/HomePopupAdQWActivity$b;->a:Lcom/join/mgps/activity/HomePopupAdQWActivity;

    iget-object p1, p1, Lcom/join/mgps/activity/HomePopupAdQWActivity;->f:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 10
    iget-object p1, p0, Lcom/join/mgps/activity/HomePopupAdQWActivity$b;->a:Lcom/join/mgps/activity/HomePopupAdQWActivity;

    iget-object p1, p1, Lcom/join/mgps/activity/HomePopupAdQWActivity;->f:Landroid/widget/TextView;

    new-instance v0, Lcom/join/mgps/activity/HomePopupAdQWActivity$b$a;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/HomePopupAdQWActivity$b$a;-><init>(Lcom/join/mgps/activity/HomePopupAdQWActivity$b;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_0
    return-void
.end method
