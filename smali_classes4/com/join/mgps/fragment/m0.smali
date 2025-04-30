.class public final synthetic Lcom/join/mgps/fragment/m0;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic a:Lcom/join/mgps/fragment/k0$d$b;

.field public final synthetic b:Landroid/content/Context;

.field public final synthetic c:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Lcom/join/mgps/fragment/k0$d$b;Landroid/content/Context;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/join/mgps/fragment/m0;->a:Lcom/join/mgps/fragment/k0$d$b;

    iput-object p2, p0, Lcom/join/mgps/fragment/m0;->b:Landroid/content/Context;

    iput-object p3, p0, Lcom/join/mgps/fragment/m0;->c:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/join/mgps/fragment/m0;->a:Lcom/join/mgps/fragment/k0$d$b;

    iget-object v1, p0, Lcom/join/mgps/fragment/m0;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/join/mgps/fragment/m0;->c:Landroid/view/View;

    invoke-static {v0, v1, v2}, Lcom/join/mgps/fragment/k0$d$b;->a(Lcom/join/mgps/fragment/k0$d$b;Landroid/content/Context;Landroid/view/View;)Lkotlin/Unit;

    move-result-object v0

    return-object v0
.end method
