.class Lcom/join/mgps/activity/arena/NewArenaDownloadActivity$b;
.super Ljava/lang/Object;
.source "NewArenaDownloadActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->i()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity$b;->a:Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity$b;->a:Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->d(Lcom/join/mgps/dto/DetailResultBean;)V

    return-void
.end method
