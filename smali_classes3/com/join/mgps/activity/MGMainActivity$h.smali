.class Lcom/join/mgps/activity/MGMainActivity$h;
.super Ljava/lang/Object;
.source "MGMainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/MGMainActivity;->onResume()V
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
    iput-object p1, p0, Lcom/join/mgps/activity/MGMainActivity$h;->a:Lcom/join/mgps/activity/MGMainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity$h;->a:Lcom/join/mgps/activity/MGMainActivity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/MGMainActivity;->getSNKGameInfo(I)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity$h;->a:Lcom/join/mgps/activity/MGMainActivity;

    invoke-virtual {v0}, Lcom/join/mgps/activity/MGMainActivity;->resetSelfSupportPrmopt()V

    return-void
.end method
