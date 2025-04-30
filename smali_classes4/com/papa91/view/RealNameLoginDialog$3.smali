.class Lcom/papa91/view/RealNameLoginDialog$3;
.super Ljava/lang/Object;
.source "RealNameLoginDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/papa91/view/RealNameLoginDialog;->initData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/papa91/view/RealNameLoginDialog;


# direct methods
.method constructor <init>(Lcom/papa91/view/RealNameLoginDialog;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa91/view/RealNameLoginDialog$3;->this$0:Lcom/papa91/view/RealNameLoginDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/papa91/view/RealNameLoginDialog$3;->this$0:Lcom/papa91/view/RealNameLoginDialog;

    invoke-static {p1}, Lcom/papa91/view/RealNameLoginDialog;->access$100(Lcom/papa91/view/RealNameLoginDialog;)Lcom/papa91/view/RealNameLoginDialog$OnButnClickLienster;

    move-result-object p1

    iget-object v0, p0, Lcom/papa91/view/RealNameLoginDialog$3;->this$0:Lcom/papa91/view/RealNameLoginDialog;

    iget-object v1, v0, Lcom/papa91/view/RealNameLoginDialog;->realNameCheckInfo:Lcom/papa91/arc/bean/PopwindowBean;

    invoke-virtual {v1}, Lcom/papa91/arc/bean/PopwindowBean;->getButtonLeft()Lcom/papa91/arc/bean/ButtonBean;

    move-result-object v1

    const/4 v2, 0x2

    invoke-interface {p1, v0, v2, v1}, Lcom/papa91/view/RealNameLoginDialog$OnButnClickLienster;->clickAnydButn(Lcom/papa91/view/RealNameLoginDialog;ILcom/papa91/arc/bean/ButtonBean;)V

    return-void
.end method
