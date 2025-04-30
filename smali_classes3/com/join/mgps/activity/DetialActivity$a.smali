.class Lcom/join/mgps/activity/DetialActivity$a;
.super Landroid/os/Handler;
.source "DetialActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/activity/DetialActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/DetialActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/DetialActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/DetialActivity$a;->a:Lcom/join/mgps/activity/DetialActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 0

    const-string p1, "detial  handler finish"

    .line 1
    invoke-static {p1}, Lcom/join/mgps/Util/t0;->c(Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/join/mgps/activity/DetialActivity$a;->a:Lcom/join/mgps/activity/DetialActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method
