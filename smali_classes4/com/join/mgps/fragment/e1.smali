.class public final synthetic Lcom/join/mgps/fragment/e1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/join/mgps/fragment/i1;

.field public final synthetic b:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/join/mgps/fragment/i1;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/join/mgps/fragment/e1;->a:Lcom/join/mgps/fragment/i1;

    iput-object p2, p0, Lcom/join/mgps/fragment/e1;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/join/mgps/fragment/e1;->a:Lcom/join/mgps/fragment/i1;

    iget-object v1, p0, Lcom/join/mgps/fragment/e1;->b:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lcom/join/mgps/fragment/i1;->N(Lcom/join/mgps/fragment/i1;Ljava/lang/String;Landroid/view/View;)V

    return-void
.end method
