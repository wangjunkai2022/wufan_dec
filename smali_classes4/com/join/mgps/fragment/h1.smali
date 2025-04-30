.class public final synthetic Lcom/join/mgps/fragment/h1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/join/mgps/fragment/i1;


# direct methods
.method public synthetic constructor <init>(Lcom/join/mgps/fragment/i1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/join/mgps/fragment/h1;->a:Lcom/join/mgps/fragment/i1;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/join/mgps/fragment/h1;->a:Lcom/join/mgps/fragment/i1;

    invoke-static {v0}, Lcom/join/mgps/fragment/i1;->Q(Lcom/join/mgps/fragment/i1;)V

    return-void
.end method
