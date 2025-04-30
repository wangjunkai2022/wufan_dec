.class Lcom/join/mgps/fragment/b3$t;
.super Ljava/lang/Object;
.source "GmaeFormPostFragment_.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/fragment/b3;->o1(Lcom/join/mgps/dto/ResultMainBean;ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/dto/ResultMainBean;

.field final synthetic b:I

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/join/mgps/fragment/b3;


# direct methods
.method constructor <init>(Lcom/join/mgps/fragment/b3;Lcom/join/mgps/dto/ResultMainBean;ILjava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/fragment/b3$t;->d:Lcom/join/mgps/fragment/b3;

    iput-object p2, p0, Lcom/join/mgps/fragment/b3$t;->a:Lcom/join/mgps/dto/ResultMainBean;

    iput p3, p0, Lcom/join/mgps/fragment/b3$t;->b:I

    iput-object p4, p0, Lcom/join/mgps/fragment/b3$t;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/b3$t;->d:Lcom/join/mgps/fragment/b3;

    iget-object v1, p0, Lcom/join/mgps/fragment/b3$t;->a:Lcom/join/mgps/dto/ResultMainBean;

    iget v2, p0, Lcom/join/mgps/fragment/b3$t;->b:I

    iget-object v3, p0, Lcom/join/mgps/fragment/b3$t;->c:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/join/mgps/fragment/b3;->t1(Lcom/join/mgps/fragment/b3;Lcom/join/mgps/dto/ResultMainBean;ILjava/lang/String;)V

    return-void
.end method
