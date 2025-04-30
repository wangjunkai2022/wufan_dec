.class Lcom/join/mgps/Util/z$j;
.super Ljava/lang/Object;
.source "DialogUtil.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/Util/z;->B(Landroid/content/Context;Lcom/join/mgps/Util/z$o0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/customview/t;

.field final synthetic b:Lcom/join/mgps/Util/z$o0;

.field final synthetic c:Lcom/join/mgps/Util/z;


# direct methods
.method constructor <init>(Lcom/join/mgps/Util/z;Lcom/join/mgps/customview/t;Lcom/join/mgps/Util/z$o0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/Util/z$j;->c:Lcom/join/mgps/Util/z;

    iput-object p2, p0, Lcom/join/mgps/Util/z$j;->a:Lcom/join/mgps/customview/t;

    iput-object p3, p0, Lcom/join/mgps/Util/z$j;->b:Lcom/join/mgps/Util/z$o0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/join/mgps/Util/z$j;->a:Lcom/join/mgps/customview/t;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/join/mgps/Util/z$j;->a:Lcom/join/mgps/customview/t;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/Util/z$j;->b:Lcom/join/mgps/Util/z$o0;

    if-eqz p1, :cond_1

    .line 4
    invoke-interface {p1}, Lcom/join/mgps/Util/z$o0;->a()V

    :cond_1
    return-void
.end method
