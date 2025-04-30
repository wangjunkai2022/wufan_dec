.class Lcom/join/mgps/Util/z$t;
.super Ljava/lang/Object;
.source "DialogUtil.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/Util/z;->O(Landroid/content/Context;ILl1/a;)Lcom/join/mgps/customview/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ll1/a;

.field final synthetic b:Lcom/join/mgps/customview/t;

.field final synthetic c:Lcom/join/mgps/Util/z;


# direct methods
.method constructor <init>(Lcom/join/mgps/Util/z;Ll1/a;Lcom/join/mgps/customview/t;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/Util/z$t;->c:Lcom/join/mgps/Util/z;

    iput-object p2, p0, Lcom/join/mgps/Util/z$t;->a:Ll1/a;

    iput-object p3, p0, Lcom/join/mgps/Util/z$t;->b:Lcom/join/mgps/customview/t;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/join/mgps/Util/z$t;->a:Ll1/a;

    invoke-interface {p1}, Ll1/a;->onClickOk()V

    .line 2
    iget-object p1, p0, Lcom/join/mgps/Util/z$t;->b:Lcom/join/mgps/customview/t;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/join/mgps/Util/z$t;->b:Lcom/join/mgps/customview/t;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    return-void
.end method
