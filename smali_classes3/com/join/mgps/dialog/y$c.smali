.class Lcom/join/mgps/dialog/y$c;
.super Ljava/lang/Object;
.source "CloudNoticeVipDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/dialog/y;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/dialog/y;


# direct methods
.method constructor <init>(Lcom/join/mgps/dialog/y;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dialog/y$c;->a:Lcom/join/mgps/dialog/y;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/join/mgps/dialog/y$c;->a:Lcom/join/mgps/dialog/y;

    iget-object v0, p1, Lcom/join/mgps/dialog/y;->m:Lcom/join/mgps/dialog/y$e;

    invoke-interface {v0, p1}, Lcom/join/mgps/dialog/y$e;->a(Lcom/join/mgps/dialog/y;)V

    return-void
.end method
