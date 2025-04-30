.class Lcom/join/mgps/activity/screenshot/ScreenshotTrueListAcvity$1;
.super Ljava/lang/Object;
.source "ScreenshotTrueListAcvity.java"

# interfaces
.implements Lcom/join/mgps/Util/n1$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/screenshot/ScreenshotTrueListAcvity;->upload()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/join/mgps/activity/screenshot/ScreenshotTrueListAcvity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/screenshot/ScreenshotTrueListAcvity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/screenshot/ScreenshotTrueListAcvity$1;->this$0:Lcom/join/mgps/activity/screenshot/ScreenshotTrueListAcvity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinish(Ljava/io/File;Landroid/net/Uri;)V
    .locals 3

    .line 1
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/screenshot/ScreenshotTrueListAcvity$1;->this$0:Lcom/join/mgps/activity/screenshot/ScreenshotTrueListAcvity;

    iget-object v0, v0, Lcom/join/mgps/activity/screenshot/ScreenshotTrueListAcvity;->listTables:Ljava/util/List;

    check-cast v0, Ljava/io/Serializable;

    const-string v1, "datas"

    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/screenshot/ScreenshotTrueListAcvity$1;->this$0:Lcom/join/mgps/activity/screenshot/ScreenshotTrueListAcvity;

    iget-object v0, v0, Lcom/join/mgps/activity/screenshot/ScreenshotTrueListAcvity;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/mgps/activity/screenshot/ScreenShortUploadImagActivity_;->intent(Landroid/content/Context;)Lcom/join/mgps/activity/screenshot/ScreenShortUploadImagActivity_$IntentBuilder_;

    move-result-object v0

    iget-object v2, p0, Lcom/join/mgps/activity/screenshot/ScreenshotTrueListAcvity$1;->this$0:Lcom/join/mgps/activity/screenshot/ScreenshotTrueListAcvity;

    iget-object v2, v2, Lcom/join/mgps/activity/screenshot/ScreenshotTrueListAcvity;->gameId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/join/mgps/activity/screenshot/ScreenShortUploadImagActivity_$IntentBuilder_;->gameId(Ljava/lang/String;)Lcom/join/mgps/activity/screenshot/ScreenShortUploadImagActivity_$IntentBuilder_;

    move-result-object v0

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/join/mgps/activity/screenshot/ScreenShortUploadImagActivity_$IntentBuilder_;->imagepath(Ljava/lang/String;)Lcom/join/mgps/activity/screenshot/ScreenShortUploadImagActivity_$IntentBuilder_;

    move-result-object p1

    iget-object v0, p0, Lcom/join/mgps/activity/screenshot/ScreenshotTrueListAcvity$1;->this$0:Lcom/join/mgps/activity/screenshot/ScreenshotTrueListAcvity;

    iget-object v2, v0, Lcom/join/mgps/activity/screenshot/ScreenshotTrueListAcvity;->listTables:Ljava/util/List;

    iget-object v0, v0, Lcom/join/mgps/activity/screenshot/ScreenshotTrueListAcvity;->viewpager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v0

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/activity/screenshot/ScreenshortTabBean;

    invoke-virtual {v0}, Lcom/join/mgps/activity/screenshot/ScreenshortTabBean;->getId()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/screenshot/ScreenShortUploadImagActivity_$IntentBuilder_;->typeId(I)Lcom/join/mgps/activity/screenshot/ScreenShortUploadImagActivity_$IntentBuilder_;

    move-result-object p1

    invoke-virtual {p1, v1, p2}, Lorg/androidannotations/api/builder/e;->extra(Ljava/lang/String;Landroid/os/Bundle;)Lorg/androidannotations/api/builder/e;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/activity/screenshot/ScreenShortUploadImagActivity_$IntentBuilder_;

    invoke-virtual {p1}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    return-void
.end method
