.class Lcom/join/mgps/Util/z$c0;
.super Lcom/join/mgps/dialog/e;
.source "DialogUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/Util/z;->I(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic f:Lcom/join/mgps/Util/z;


# direct methods
.method constructor <init>(Lcom/join/mgps/Util/z;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/Util/z$c0;->f:Lcom/join/mgps/Util/z;

    invoke-direct {p0, p2}, Lcom/join/mgps/dialog/e;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/dialog/e;->onDismiss(Landroid/content/DialogInterface;)V

    .line 2
    iget-object p1, p0, Lcom/join/mgps/Util/z$c0;->f:Lcom/join/mgps/Util/z;

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/join/mgps/Util/z;->g:Lcom/join/mgps/dialog/e;

    return-void
.end method
