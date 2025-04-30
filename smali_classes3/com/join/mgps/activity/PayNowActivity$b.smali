.class Lcom/join/mgps/activity/PayNowActivity$b;
.super Landroid/os/Handler;
.source "PayNowActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/activity/PayNowActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/PayNowActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/PayNowActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/PayNowActivity$b;->a:Lcom/join/mgps/activity/PayNowActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/PayNowActivity$b;->a:Lcom/join/mgps/activity/PayNowActivity;

    invoke-virtual {p1}, Lcom/join/mgps/activity/PayNowActivity;->checkToken()V

    return-void
.end method
