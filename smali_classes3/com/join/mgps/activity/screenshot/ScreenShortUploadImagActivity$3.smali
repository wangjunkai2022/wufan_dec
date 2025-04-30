.class Lcom/join/mgps/activity/screenshot/ScreenShortUploadImagActivity$3;
.super Ljava/lang/Object;
.source "ScreenShortUploadImagActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/screenshot/ScreenShortUploadImagActivity;->ChangIcon()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/join/mgps/activity/screenshot/ScreenShortUploadImagActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/screenshot/ScreenShortUploadImagActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/screenshot/ScreenShortUploadImagActivity$3;->this$0:Lcom/join/mgps/activity/screenshot/ScreenShortUploadImagActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/screenshot/ScreenShortUploadImagActivity$3;->this$0:Lcom/join/mgps/activity/screenshot/ScreenShortUploadImagActivity;

    invoke-static {p1}, Lcom/join/mgps/activity/screenshot/ScreenShortUploadImagActivity;->access$000(Lcom/join/mgps/activity/screenshot/ScreenShortUploadImagActivity;)Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 2
    iget-object p1, p0, Lcom/join/mgps/activity/screenshot/ScreenShortUploadImagActivity$3;->this$0:Lcom/join/mgps/activity/screenshot/ScreenShortUploadImagActivity;

    iget-object p1, p1, Lcom/join/mgps/activity/screenshot/ScreenShortUploadImagActivity;->activity:Landroid/app/Activity;

    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/join/mgps/activity/screenshot/ScreenShortUploadImagActivity$3;->this$0:Lcom/join/mgps/activity/screenshot/ScreenShortUploadImagActivity;

    iget-object p1, p1, Lcom/join/mgps/activity/screenshot/ScreenShortUploadImagActivity;->activity:Landroid/app/Activity;

    invoke-static {p1, v0}, Lcom/join/mgps/Util/UtilsMy;->c2(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/screenshot/ScreenShortUploadImagActivity$3;->this$0:Lcom/join/mgps/activity/screenshot/ScreenShortUploadImagActivity;

    iget-object p1, p1, Lcom/join/mgps/activity/screenshot/ScreenShortUploadImagActivity;->activity:Landroid/app/Activity;

    const-string v0, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_1

    .line 5
    iget-object p1, p0, Lcom/join/mgps/activity/screenshot/ScreenShortUploadImagActivity$3;->this$0:Lcom/join/mgps/activity/screenshot/ScreenShortUploadImagActivity;

    iget-object p1, p1, Lcom/join/mgps/activity/screenshot/ScreenShortUploadImagActivity;->activity:Landroid/app/Activity;

    invoke-static {p1, v0}, Lcom/join/mgps/Util/UtilsMy;->c2(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 6
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/activity/screenshot/ScreenShortUploadImagActivity$3;->this$0:Lcom/join/mgps/activity/screenshot/ScreenShortUploadImagActivity;

    iget-object p1, p1, Lcom/join/mgps/activity/screenshot/ScreenShortUploadImagActivity;->activity:Landroid/app/Activity;

    const-string v0, "android.permission.CAMERA"

    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_2

    .line 7
    iget-object p1, p0, Lcom/join/mgps/activity/screenshot/ScreenShortUploadImagActivity$3;->this$0:Lcom/join/mgps/activity/screenshot/ScreenShortUploadImagActivity;

    iget-object p1, p1, Lcom/join/mgps/activity/screenshot/ScreenShortUploadImagActivity;->activity:Landroid/app/Activity;

    invoke-static {p1, v0}, Lcom/join/mgps/Util/UtilsMy;->c2(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    :goto_0
    if-eqz v1, :cond_3

    .line 8
    iget-object p1, p0, Lcom/join/mgps/activity/screenshot/ScreenShortUploadImagActivity$3;->this$0:Lcom/join/mgps/activity/screenshot/ScreenShortUploadImagActivity;

    invoke-static {p1}, Lcom/join/mgps/activity/screenshot/ScreenShortUploadImagActivity;->access$100(Lcom/join/mgps/activity/screenshot/ScreenShortUploadImagActivity;)Lcom/join/mgps/Util/n1;

    move-result-object p1

    invoke-virtual {p1}, Lcom/join/mgps/Util/n1;->h()V

    :cond_3
    return-void
.end method
