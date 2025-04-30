.class public final synthetic Lcom/join/mgps/adapter/i5;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic a:Lcom/join/mgps/adapter/h5$g;

.field public final synthetic b:Landroid/content/Context;

.field public final synthetic c:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Lcom/join/mgps/adapter/h5$g;Landroid/content/Context;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/join/mgps/adapter/i5;->a:Lcom/join/mgps/adapter/h5$g;

    iput-object p2, p0, Lcom/join/mgps/adapter/i5;->b:Landroid/content/Context;

    iput-object p3, p0, Lcom/join/mgps/adapter/i5;->c:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/join/mgps/adapter/i5;->a:Lcom/join/mgps/adapter/h5$g;

    iget-object v1, p0, Lcom/join/mgps/adapter/i5;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/join/mgps/adapter/i5;->c:Landroid/view/View;

    invoke-static {v0, v1, v2}, Lcom/join/mgps/adapter/h5$g;->a(Lcom/join/mgps/adapter/h5$g;Landroid/content/Context;Landroid/view/View;)Lkotlin/Unit;

    move-result-object v0

    return-object v0
.end method
