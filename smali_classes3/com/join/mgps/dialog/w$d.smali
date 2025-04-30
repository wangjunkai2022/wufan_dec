.class Lcom/join/mgps/dialog/w$d;
.super Ljava/lang/Object;
.source "CloudNoticeDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/dialog/w;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/dialog/w;


# direct methods
.method constructor <init>(Lcom/join/mgps/dialog/w;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dialog/w$d;->a:Lcom/join/mgps/dialog/w;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/join/mgps/dialog/w$d;->a:Lcom/join/mgps/dialog/w;

    iget-object v0, p1, Lcom/join/mgps/dialog/w;->n:Lcom/join/mgps/dialog/w$e;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/join/mgps/dialog/w$e;->a(Lcom/join/mgps/dialog/w;)V

    :cond_0
    return-void
.end method
