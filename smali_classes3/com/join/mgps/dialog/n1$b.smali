.class Lcom/join/mgps/dialog/n1$b;
.super Ljava/lang/Object;
.source "NoticeDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/dialog/n1;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/dialog/n1;


# direct methods
.method constructor <init>(Lcom/join/mgps/dialog/n1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dialog/n1$b;->a:Lcom/join/mgps/dialog/n1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/join/mgps/dialog/n1$b;->a:Lcom/join/mgps/dialog/n1;

    invoke-static {p1}, Lcom/join/mgps/dialog/n1;->b(Lcom/join/mgps/dialog/n1;)Lcom/join/mgps/dialog/n1$f;

    move-result-object p1

    invoke-interface {p1}, Lcom/join/mgps/dialog/n1$f;->a()V

    return-void
.end method
