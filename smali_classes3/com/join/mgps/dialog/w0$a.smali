.class Lcom/join/mgps/dialog/w0$a;
.super Ljava/lang/Object;
.source "InviteDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/dialog/w0;->c(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/dialog/w0;


# direct methods
.method constructor <init>(Lcom/join/mgps/dialog/w0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dialog/w0$a;->a:Lcom/join/mgps/dialog/w0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/join/mgps/dialog/w0$a;->a:Lcom/join/mgps/dialog/w0;

    invoke-static {p1}, Lcom/join/mgps/dialog/w0;->a(Lcom/join/mgps/dialog/w0;)Lcom/join/mgps/dialog/w0$c;

    move-result-object p1

    invoke-interface {p1}, Lcom/join/mgps/dialog/w0$c;->a()V

    .line 2
    iget-object p1, p0, Lcom/join/mgps/dialog/w0$a;->a:Lcom/join/mgps/dialog/w0;

    invoke-virtual {p1}, Lcom/join/mgps/dialog/w0;->b()V

    return-void
.end method
