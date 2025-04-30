.class Lcom/join/mgps/activity/MGMainActivity$a;
.super Landroid/os/Handler;
.source "MGMainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/activity/MGMainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/MGMainActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/MGMainActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/MGMainActivity$a;->a:Lcom/join/mgps/activity/MGMainActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 1
    :try_start_0
    iget-object p1, p0, Lcom/join/mgps/activity/MGMainActivity$a;->a:Lcom/join/mgps/activity/MGMainActivity;

    invoke-static {p1}, Lcom/join/mgps/activity/MGMainActivity;->access$200(Lcom/join/mgps/activity/MGMainActivity;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/join/android/app/common/utils/a;->g0(Landroid/content/Context;)Lcom/join/android/app/common/utils/a;

    move-result-object p1

    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity$a;->a:Lcom/join/mgps/activity/MGMainActivity;

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/join/mgps/activity/MGMainActivity$a;->a:Lcom/join/mgps/activity/MGMainActivity;

    invoke-static {v2}, Lcom/join/mgps/activity/MGMainActivity;->access$1100(Lcom/join/mgps/activity/MGMainActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Lcom/join/android/app/common/utils/APKUtils;->u(Landroid/app/Activity;Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
