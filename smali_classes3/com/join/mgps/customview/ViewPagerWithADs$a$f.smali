.class Lcom/join/mgps/customview/ViewPagerWithADs$a$f;
.super Ljava/lang/Object;
.source "ViewPagerWithADs.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/customview/ViewPagerWithADs$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "f"
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/customview/ViewPagerWithADs$a;


# direct methods
.method constructor <init>(Lcom/join/mgps/customview/ViewPagerWithADs$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/ViewPagerWithADs$a$f;->a:Lcom/join/mgps/customview/ViewPagerWithADs$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/ViewPagerWithADs$a$f;->a:Lcom/join/mgps/customview/ViewPagerWithADs$a;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/join/mgps/customview/ViewPagerWithADs$a;->c(Lcom/join/mgps/customview/ViewPagerWithADs$a;I)I

    .line 2
    iget-object v0, p0, Lcom/join/mgps/customview/ViewPagerWithADs$a$f;->a:Lcom/join/mgps/customview/ViewPagerWithADs$a;

    invoke-static {v0}, Lcom/join/mgps/customview/ViewPagerWithADs$a;->d(Lcom/join/mgps/customview/ViewPagerWithADs$a;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
