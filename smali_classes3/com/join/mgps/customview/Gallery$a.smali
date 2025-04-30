.class Lcom/join/mgps/customview/Gallery$a;
.super Ljava/lang/Object;
.source "Gallery.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/customview/Gallery;
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
    iput-object p1, p0, Lcom/join/mgps/customview/Gallery$a;->a:Lcom/join/mgps/customview/Gallery;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/Gallery$a;->a:Lcom/join/mgps/customview/Gallery;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/join/mgps/customview/Gallery;->A(Lcom/join/mgps/customview/Gallery;Z)Z

    .line 2
    iget-object v0, p0, Lcom/join/mgps/customview/Gallery$a;->a:Lcom/join/mgps/customview/Gallery;

    invoke-virtual {v0}, Lcom/join/mgps/customview/Gallery;->p()V

    return-void
.end method
