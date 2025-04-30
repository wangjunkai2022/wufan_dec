.class Lcom/join/mgps/dialog/d$c;
.super Ljava/lang/Object;
.source "AndroidPermissDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/dialog/d;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/dialog/d;


# direct methods
.method constructor <init>(Lcom/join/mgps/dialog/d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dialog/d$c;->a:Lcom/join/mgps/dialog/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/join/mgps/dialog/d$c;->a:Lcom/join/mgps/dialog/d;

    invoke-static {p1}, Lcom/join/mgps/dialog/d;->b(Lcom/join/mgps/dialog/d;)Lcom/join/mgps/dialog/d$h;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/join/mgps/dialog/d$c;->a:Lcom/join/mgps/dialog/d;

    invoke-static {p1}, Lcom/join/mgps/dialog/d;->b(Lcom/join/mgps/dialog/d;)Lcom/join/mgps/dialog/d$h;

    move-result-object p1

    invoke-interface {p1}, Lcom/join/mgps/dialog/d$h;->a()V

    :cond_0
    return-void
.end method
