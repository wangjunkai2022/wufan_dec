.class Lcom/join/mgps/dialog/y1$e;
.super Ljava/lang/Thread;
.source "UserPermissDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/dialog/y1;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/dialog/y1;


# direct methods
.method constructor <init>(Lcom/join/mgps/dialog/y1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dialog/y1$e;->a:Lcom/join/mgps/dialog/y1;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/join/android/app/common/utils/f;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/join/mgps/dialog/y1$e;->a:Lcom/join/mgps/dialog/y1;

    iget-object v0, v0, Lcom/join/mgps/dialog/y1;->g:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/dialog/y1$e;->a:Lcom/join/mgps/dialog/y1;

    iget-object v0, v0, Lcom/join/mgps/dialog/y1;->g:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_0
    return-void
.end method
