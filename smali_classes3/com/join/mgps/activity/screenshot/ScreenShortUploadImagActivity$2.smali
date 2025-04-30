.class Lcom/join/mgps/activity/screenshot/ScreenShortUploadImagActivity$2;
.super Landroidx/viewpager/widget/PagerAdapter;
.source "ScreenShortUploadImagActivity.java"


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
    iput-object p1, p0, Lcom/join/mgps/activity/screenshot/ScreenShortUploadImagActivity$2;->this$0:Lcom/join/mgps/activity/screenshot/ScreenShortUploadImagActivity;

    invoke-direct {p0}, Landroidx/viewpager/widget/PagerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/screenshot/ScreenShortUploadImagActivity$2;->this$0:Lcom/join/mgps/activity/screenshot/ScreenShortUploadImagActivity;

    iget-object v0, v0, Lcom/join/mgps/activity/screenshot/ScreenShortUploadImagActivity;->listTables:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getPageTitle(I)Ljava/lang/CharSequence;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/screenshot/ScreenShortUploadImagActivity$2;->this$0:Lcom/join/mgps/activity/screenshot/ScreenShortUploadImagActivity;

    iget-object v0, v0, Lcom/join/mgps/activity/screenshot/ScreenShortUploadImagActivity;->listTables:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/activity/screenshot/ScreenshortTabBean;

    invoke-virtual {p1}, Lcom/join/mgps/activity/screenshot/ScreenshortTabBean;->getTitle()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 p1, 0x0

    return p1
.end method
