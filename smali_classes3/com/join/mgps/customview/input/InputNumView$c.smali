.class Lcom/join/mgps/customview/input/InputNumView$c;
.super Ljava/lang/Object;
.source "InputNumView.java"

# interfaces
.implements Lcom/join/mgps/customview/input/InputView_Num$a;


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
    iput-object p1, p0, Lcom/join/mgps/customview/input/InputNumView$c;->a:Lcom/join/mgps/customview/input/InputNumView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/input/InputNumView$c;->a:Lcom/join/mgps/customview/input/InputNumView;

    invoke-static {v0}, Lcom/join/mgps/customview/input/InputNumView;->a(Lcom/join/mgps/customview/input/InputNumView;)Lcom/join/mgps/customview/input/InputNumView$d;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/join/mgps/customview/input/InputNumView$c;->a:Lcom/join/mgps/customview/input/InputNumView;

    invoke-static {v0}, Lcom/join/mgps/customview/input/InputNumView;->a(Lcom/join/mgps/customview/input/InputNumView;)Lcom/join/mgps/customview/input/InputNumView$d;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/join/mgps/customview/input/InputNumView$d;->b(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
