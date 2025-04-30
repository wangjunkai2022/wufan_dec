.class Lcom/join/mgps/customview/AdapterView$g;
.super Landroid/os/Handler;
.source "AdapterView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/customview/AdapterView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "g"
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/customview/AdapterView;


# direct methods
.method private constructor <init>(Lcom/join/mgps/customview/AdapterView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/AdapterView$g;->a:Lcom/join/mgps/customview/AdapterView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/join/mgps/customview/AdapterView;Lcom/join/mgps/customview/AdapterView$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/join/mgps/customview/AdapterView$g;-><init>(Lcom/join/mgps/customview/AdapterView;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/AdapterView$g;->a:Lcom/join/mgps/customview/AdapterView;

    iget-boolean v1, v0, Lcom/join/mgps/customview/AdapterView;->m:Z

    if-eqz v1, :cond_0

    .line 2
    invoke-virtual {p0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {v0}, Lcom/join/mgps/customview/AdapterView;->c(Lcom/join/mgps/customview/AdapterView;)V

    :goto_0
    return-void
.end method
