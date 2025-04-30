.class Lcom/papa/gsyvideoplayer/utils/k$b;
.super Landroid/content/BroadcastReceiver;
.source "NetInfoModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/papa/gsyvideoplayer/utils/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field private a:Z

.field final synthetic b:Lcom/papa/gsyvideoplayer/utils/k;


# direct methods
.method private constructor <init>(Lcom/papa/gsyvideoplayer/utils/k;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/gsyvideoplayer/utils/k$b;->b:Lcom/papa/gsyvideoplayer/utils/k;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/papa/gsyvideoplayer/utils/k$b;->a:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/papa/gsyvideoplayer/utils/k;Lcom/papa/gsyvideoplayer/utils/k$a;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/papa/gsyvideoplayer/utils/k$b;-><init>(Lcom/papa/gsyvideoplayer/utils/k;)V

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/papa/gsyvideoplayer/utils/k$b;->a:Z

    return v0
.end method

.method public b(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/papa/gsyvideoplayer/utils/k$b;->a:Z

    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/papa/gsyvideoplayer/utils/k$b;->b:Lcom/papa/gsyvideoplayer/utils/k;

    invoke-static {p1}, Lcom/papa/gsyvideoplayer/utils/k;->a(Lcom/papa/gsyvideoplayer/utils/k;)V

    :cond_0
    return-void
.end method
