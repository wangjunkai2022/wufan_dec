.class Lcom/join/mgps/customview/input/InputNumView$a;
.super Ljava/lang/Object;
.source "InputNumView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/customview/input/InputNumView;->f()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/customview/input/InputNumView;


# direct methods
.method constructor <init>(Lcom/join/mgps/customview/input/InputNumView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/input/InputNumView$a;->a:Lcom/join/mgps/customview/input/InputNumView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/join/mgps/customview/input/InputNumView$a;->a:Lcom/join/mgps/customview/input/InputNumView;

    invoke-static {p1}, Lcom/join/mgps/customview/input/InputNumView;->a(Lcom/join/mgps/customview/input/InputNumView;)Lcom/join/mgps/customview/input/InputNumView$d;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/join/mgps/customview/input/InputNumView$a;->a:Lcom/join/mgps/customview/input/InputNumView;

    invoke-static {p1}, Lcom/join/mgps/customview/input/InputNumView;->a(Lcom/join/mgps/customview/input/InputNumView;)Lcom/join/mgps/customview/input/InputNumView$d;

    move-result-object p1

    invoke-interface {p1}, Lcom/join/mgps/customview/input/InputNumView$d;->a()V

    :cond_0
    return-void
.end method
