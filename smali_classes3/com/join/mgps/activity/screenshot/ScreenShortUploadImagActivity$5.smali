.class Lcom/join/mgps/activity/screenshot/ScreenShortUploadImagActivity$5;
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
    iput-object p1, p0, Lcom/join/mgps/activity/screenshot/ScreenShortUploadImagActivity$5;->this$0:Lcom/join/mgps/activity/screenshot/ScreenShortUploadImagActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/screenshot/ScreenShortUploadImagActivity$5;->this$0:Lcom/join/mgps/activity/screenshot/ScreenShortUploadImagActivity;

    invoke-static {p1}, Lcom/join/mgps/activity/screenshot/ScreenShortUploadImagActivity;->access$000(Lcom/join/mgps/activity/screenshot/ScreenShortUploadImagActivity;)Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method
