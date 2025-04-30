.class Lcom/join/mgps/dialog/s$b;
.super Ljava/lang/Object;
.source "CheckGBAPlugDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/dialog/s;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/dialog/s;


# direct methods
.method constructor <init>(Lcom/join/mgps/dialog/s;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dialog/s$b;->a:Lcom/join/mgps/dialog/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dialog/s$b;->a:Lcom/join/mgps/dialog/s;

    invoke-static {v0}, Lcom/join/mgps/dialog/s;->a(Lcom/join/mgps/dialog/s;)Lcom/join/mgps/dialog/s$d;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    invoke-interface {v0, p1}, Lcom/join/mgps/dialog/s$d;->a(I)V

    return-void
.end method
