.class Lcom/join/mgps/fragment/j$a;
.super Ljava/lang/Object;
.source "ClassifyFragment_.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/fragment/j;->Z(Lcom/join/mgps/dto/ClassifyBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/dto/ClassifyBean;

.field final synthetic b:Lcom/join/mgps/fragment/j;


# direct methods
.method constructor <init>(Lcom/join/mgps/fragment/j;Lcom/join/mgps/dto/ClassifyBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/fragment/j$a;->b:Lcom/join/mgps/fragment/j;

    iput-object p2, p0, Lcom/join/mgps/fragment/j$a;->a:Lcom/join/mgps/dto/ClassifyBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/j$a;->b:Lcom/join/mgps/fragment/j;

    iget-object v1, p0, Lcom/join/mgps/fragment/j$a;->a:Lcom/join/mgps/dto/ClassifyBean;

    invoke-static {v0, v1}, Lcom/join/mgps/fragment/j;->b0(Lcom/join/mgps/fragment/j;Lcom/join/mgps/dto/ClassifyBean;)V

    return-void
.end method
