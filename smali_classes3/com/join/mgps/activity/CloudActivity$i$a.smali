.class Lcom/join/mgps/activity/CloudActivity$i$a;
.super Ljava/lang/Object;
.source "CloudActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/CloudActivity$i;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/join/mgps/activity/CloudActivity$i;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/CloudActivity$i;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/CloudActivity$i$a;->b:Lcom/join/mgps/activity/CloudActivity$i;

    iput p2, p0, Lcom/join/mgps/activity/CloudActivity$i$a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/CloudActivity$i$a;->b:Lcom/join/mgps/activity/CloudActivity$i;

    iget-object p1, p1, Lcom/join/mgps/activity/CloudActivity$i;->a:Lcom/join/mgps/activity/CloudActivity;

    iget-object p1, p1, Lcom/join/mgps/activity/CloudActivity;->c:Ljava/util/List;

    iget v0, p0, Lcom/join/mgps/activity/CloudActivity$i$a;->a:I

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/CloudInfo;

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/CloudActivity$i$a;->b:Lcom/join/mgps/activity/CloudActivity$i;

    iget-object v0, v0, Lcom/join/mgps/activity/CloudActivity$i;->a:Lcom/join/mgps/activity/CloudActivity;

    invoke-static {v0}, Lcom/join/mgps/activity/CloudRomListActivity_;->E0(Landroid/content/Context;)Lcom/join/mgps/activity/CloudRomListActivity_$a;

    move-result-object v0

    invoke-virtual {p1}, Lcom/join/mgps/dto/CloudInfo;->getDownloadTask()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/join/mgps/activity/CloudRomListActivity_$a;->a(Lcom/github/snowdream/android/app/downloader/DownloadTask;)Lcom/join/mgps/activity/CloudRomListActivity_$a;

    move-result-object p1

    invoke-virtual {p1}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    return-void
.end method
