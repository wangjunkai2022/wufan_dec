.class Lcom/join/mgps/ptr/header/MaterialHeader$b;
.super Lcom/join/mgps/ptr/e;
.source "MaterialHeader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/ptr/header/MaterialHeader;->setPtrFrameLayout(Lcom/join/mgps/ptr/PtrFrameLayout;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic f:Lcom/join/mgps/ptr/header/MaterialHeader;


# direct methods
.method constructor <init>(Lcom/join/mgps/ptr/header/MaterialHeader;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/ptr/header/MaterialHeader$b;->f:Lcom/join/mgps/ptr/header/MaterialHeader;

    invoke-direct {p0}, Lcom/join/mgps/ptr/e;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/ptr/header/MaterialHeader$b;->f:Lcom/join/mgps/ptr/header/MaterialHeader;

    invoke-static {v0}, Lcom/join/mgps/ptr/header/MaterialHeader;->i(Lcom/join/mgps/ptr/header/MaterialHeader;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method
