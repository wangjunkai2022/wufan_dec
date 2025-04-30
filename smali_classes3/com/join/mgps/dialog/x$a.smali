.class Lcom/join/mgps/dialog/x$a;
.super Ljava/lang/Object;
.source "CloudNoticeProgressDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/dialog/x;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/dialog/x;


# direct methods
.method constructor <init>(Lcom/join/mgps/dialog/x;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dialog/x$a;->a:Lcom/join/mgps/dialog/x;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/join/mgps/dialog/x$a;->a:Lcom/join/mgps/dialog/x;

    iget-object v0, p1, Lcom/join/mgps/dialog/x;->l:Lcom/join/mgps/dialog/x$c;

    invoke-interface {v0, p1}, Lcom/join/mgps/dialog/x$c;->a(Lcom/join/mgps/dialog/x;)V

    return-void
.end method
