.class Lcom/join/mgps/fragment/h$e;
.super Ljava/lang/Object;
.source "ChoiceFragment_.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/fragment/h;->b0(Lcom/join/mgps/dto/HomeGameCarefullyBean;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/dto/HomeGameCarefullyBean;

.field final synthetic b:I

.field final synthetic c:Lcom/join/mgps/fragment/h;


# direct methods
.method constructor <init>(Lcom/join/mgps/fragment/h;Lcom/join/mgps/dto/HomeGameCarefullyBean;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/fragment/h$e;->c:Lcom/join/mgps/fragment/h;

    iput-object p2, p0, Lcom/join/mgps/fragment/h$e;->a:Lcom/join/mgps/dto/HomeGameCarefullyBean;

    iput p3, p0, Lcom/join/mgps/fragment/h$e;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/h$e;->c:Lcom/join/mgps/fragment/h;

    iget-object v1, p0, Lcom/join/mgps/fragment/h$e;->a:Lcom/join/mgps/dto/HomeGameCarefullyBean;

    iget v2, p0, Lcom/join/mgps/fragment/h$e;->b:I

    invoke-static {v0, v1, v2}, Lcom/join/mgps/fragment/h;->i0(Lcom/join/mgps/fragment/h;Lcom/join/mgps/dto/HomeGameCarefullyBean;I)V

    return-void
.end method
