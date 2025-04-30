.class Lcom/join/mgps/fragment/h$d;
.super Ljava/lang/Object;
.source "ChoiceFragment_.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/fragment/h;->c0(Lcom/join/mgps/dto/HomeGameCarefullyBean;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/dto/HomeGameCarefullyBean;

.field final synthetic b:I

.field final synthetic c:I

.field final synthetic d:Lcom/join/mgps/fragment/h;


# direct methods
.method constructor <init>(Lcom/join/mgps/fragment/h;Lcom/join/mgps/dto/HomeGameCarefullyBean;II)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/fragment/h$d;->d:Lcom/join/mgps/fragment/h;

    iput-object p2, p0, Lcom/join/mgps/fragment/h$d;->a:Lcom/join/mgps/dto/HomeGameCarefullyBean;

    iput p3, p0, Lcom/join/mgps/fragment/h$d;->b:I

    iput p4, p0, Lcom/join/mgps/fragment/h$d;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/h$d;->d:Lcom/join/mgps/fragment/h;

    iget-object v1, p0, Lcom/join/mgps/fragment/h$d;->a:Lcom/join/mgps/dto/HomeGameCarefullyBean;

    iget v2, p0, Lcom/join/mgps/fragment/h$d;->b:I

    iget v3, p0, Lcom/join/mgps/fragment/h$d;->c:I

    invoke-static {v0, v1, v2, v3}, Lcom/join/mgps/fragment/h;->h0(Lcom/join/mgps/fragment/h;Lcom/join/mgps/dto/HomeGameCarefullyBean;II)V

    return-void
.end method
