.class Lcom/join/mgps/activity/screenshot/ScreenShortUploadImagActivity$1;
.super Ljava/lang/Object;
.source "ScreenShortUploadImagActivity.java"

# interfaces
.implements Lcom/join/mgps/Util/n1$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/screenshot/ScreenShortUploadImagActivity;->afterview()V
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
    iput-object p1, p0, Lcom/join/mgps/activity/screenshot/ScreenShortUploadImagActivity$1;->this$0:Lcom/join/mgps/activity/screenshot/ScreenShortUploadImagActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinish(Ljava/io/File;Landroid/net/Uri;)V
    .locals 2

    .line 1
    iget-object p2, p0, Lcom/join/mgps/activity/screenshot/ScreenShortUploadImagActivity$1;->this$0:Lcom/join/mgps/activity/screenshot/ScreenShortUploadImagActivity;

    iget-object p2, p2, Lcom/join/mgps/activity/screenshot/ScreenShortUploadImagActivity;->imgUpload:Lcom/facebook/drawee/view/SimpleDraweeView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "file://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/facebook/drawee/drawable/r$c;->g:Lcom/facebook/drawee/drawable/r$c;

    invoke-static {p2, v0, v1}, Lcom/join/android/app/common/utils/MyImageLoader;->i(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;Lcom/facebook/drawee/drawable/r$c;)V

    .line 2
    iget-object p2, p0, Lcom/join/mgps/activity/screenshot/ScreenShortUploadImagActivity$1;->this$0:Lcom/join/mgps/activity/screenshot/ScreenShortUploadImagActivity;

    iput-object p1, p2, Lcom/join/mgps/activity/screenshot/ScreenShortUploadImagActivity;->filePath:Ljava/io/File;

    return-void
.end method
