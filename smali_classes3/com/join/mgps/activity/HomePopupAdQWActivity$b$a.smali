.class Lcom/join/mgps/activity/HomePopupAdQWActivity$b$a;
.super Ljava/lang/Object;
.source "HomePopupAdQWActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/HomePopupAdQWActivity$b;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/HomePopupAdQWActivity$b;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/HomePopupAdQWActivity$b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/HomePopupAdQWActivity$b$a;->a:Lcom/join/mgps/activity/HomePopupAdQWActivity$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/HomePopupAdQWActivity$b$a;->a:Lcom/join/mgps/activity/HomePopupAdQWActivity$b;

    iget-object p1, p1, Lcom/join/mgps/activity/HomePopupAdQWActivity$b;->a:Lcom/join/mgps/activity/HomePopupAdQWActivity;

    invoke-static {p1}, Lcom/join/android/app/common/utils/a;->g0(Landroid/content/Context;)Lcom/join/android/app/common/utils/a;

    move-result-object p1

    iget-object v0, p0, Lcom/join/mgps/activity/HomePopupAdQWActivity$b$a;->a:Lcom/join/mgps/activity/HomePopupAdQWActivity$b;

    iget-object v0, v0, Lcom/join/mgps/activity/HomePopupAdQWActivity$b;->a:Lcom/join/mgps/activity/HomePopupAdQWActivity;

    iget-object v1, v0, Lcom/join/mgps/activity/HomePopupAdQWActivity;->u:Lcom/github/snowdream/android/app/downloader/c;

    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/c;->j()Ljava/io/File;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/join/android/app/common/utils/APKUtils;->u(Landroid/app/Activity;Ljava/io/File;)V

    return-void
.end method
