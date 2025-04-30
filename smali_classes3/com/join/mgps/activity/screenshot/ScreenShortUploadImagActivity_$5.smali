.class Lcom/join/mgps/activity/screenshot/ScreenShortUploadImagActivity_$5;
.super Ljava/lang/Object;
.source "ScreenShortUploadImagActivity_.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/screenshot/ScreenShortUploadImagActivity_;->uploadFailed(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/join/mgps/activity/screenshot/ScreenShortUploadImagActivity_;

.field final synthetic val$message:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/screenshot/ScreenShortUploadImagActivity_;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/screenshot/ScreenShortUploadImagActivity_$5;->this$0:Lcom/join/mgps/activity/screenshot/ScreenShortUploadImagActivity_;

    iput-object p2, p0, Lcom/join/mgps/activity/screenshot/ScreenShortUploadImagActivity_$5;->val$message:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/screenshot/ScreenShortUploadImagActivity_$5;->this$0:Lcom/join/mgps/activity/screenshot/ScreenShortUploadImagActivity_;

    iget-object v1, p0, Lcom/join/mgps/activity/screenshot/ScreenShortUploadImagActivity_$5;->val$message:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/join/mgps/activity/screenshot/ScreenShortUploadImagActivity_;->access$101(Lcom/join/mgps/activity/screenshot/ScreenShortUploadImagActivity_;Ljava/lang/String;)V

    return-void
.end method
