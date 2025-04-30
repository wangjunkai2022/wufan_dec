.class Lcom/join/mgps/customview/input/a$a;
.super Ljava/lang/Object;
.source "InputNumDialog.java"

# interfaces
.implements Lcom/join/mgps/customview/input/InputNumView$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/customview/input/a;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/customview/input/a;


# direct methods
.method constructor <init>(Lcom/join/mgps/customview/input/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/input/a$a;->a:Lcom/join/mgps/customview/input/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/input/a$a;->a:Lcom/join/mgps/customview/input/a;

    invoke-static {v0}, Lcom/join/mgps/customview/input/a;->a(Lcom/join/mgps/customview/input/a;)Lcom/join/mgps/customview/input/InputNumView$d;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/join/mgps/customview/input/a$a;->a:Lcom/join/mgps/customview/input/a;

    invoke-static {v0}, Lcom/join/mgps/customview/input/a;->a(Lcom/join/mgps/customview/input/a;)Lcom/join/mgps/customview/input/InputNumView$d;

    move-result-object v0

    invoke-interface {v0}, Lcom/join/mgps/customview/input/InputNumView$d;->a()V

    :cond_0
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/input/a$a;->a:Lcom/join/mgps/customview/input/a;

    invoke-static {v0}, Lcom/join/mgps/customview/input/a;->a(Lcom/join/mgps/customview/input/a;)Lcom/join/mgps/customview/input/InputNumView$d;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/join/mgps/customview/input/a$a;->a:Lcom/join/mgps/customview/input/a;

    invoke-static {v0}, Lcom/join/mgps/customview/input/a;->a(Lcom/join/mgps/customview/input/a;)Lcom/join/mgps/customview/input/InputNumView$d;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/join/mgps/customview/input/InputNumView$d;->b(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
