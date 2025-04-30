.class Lcom/bda/controller/Controller$c;
.super Ljava/lang/Object;
.source "Controller.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bda/controller/Controller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation


# instance fields
.field final a:Lcom/bda/controller/KeyEvent;

.field final synthetic b:Lcom/bda/controller/Controller;


# direct methods
.method public constructor <init>(Lcom/bda/controller/Controller;Lcom/bda/controller/KeyEvent;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bda/controller/Controller$c;->b:Lcom/bda/controller/Controller;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/bda/controller/Controller$c;->a:Lcom/bda/controller/KeyEvent;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bda/controller/Controller$c;->b:Lcom/bda/controller/Controller;

    iget-object v0, v0, Lcom/bda/controller/Controller;->mListener:Lcom/bda/controller/b;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lcom/bda/controller/Controller$c;->a:Lcom/bda/controller/KeyEvent;

    invoke-interface {v0, v1}, Lcom/bda/controller/b;->onKeyEvent(Lcom/bda/controller/KeyEvent;)V

    :cond_0
    return-void
.end method
