.class Lcom/join/mgps/customview/Gallery$b;
.super Ljava/lang/Object;
.source "Gallery.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/customview/Gallery;->onKeyUp(ILandroid/view/KeyEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/customview/Gallery;


# direct methods
.method constructor <init>(Lcom/join/mgps/customview/Gallery;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/Gallery$b;->a:Lcom/join/mgps/customview/Gallery;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/Gallery$b;->a:Lcom/join/mgps/customview/Gallery;

    invoke-static {v0}, Lcom/join/mgps/customview/Gallery;->B(Lcom/join/mgps/customview/Gallery;)V

    return-void
.end method
