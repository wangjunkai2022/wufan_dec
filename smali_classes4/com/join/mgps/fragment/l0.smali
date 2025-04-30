.class public final synthetic Lcom/join/mgps/fragment/l0;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/join/mgps/fragment/k0$d;

.field public final synthetic b:Lcom/join/mgps/dto/CommonGameInfoBean;


# direct methods
.method public synthetic constructor <init>(Lcom/join/mgps/fragment/k0$d;Lcom/join/mgps/dto/CommonGameInfoBean;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/join/mgps/fragment/l0;->a:Lcom/join/mgps/fragment/k0$d;

    iput-object p2, p0, Lcom/join/mgps/fragment/l0;->b:Lcom/join/mgps/dto/CommonGameInfoBean;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/join/mgps/fragment/l0;->a:Lcom/join/mgps/fragment/k0$d;

    iget-object v1, p0, Lcom/join/mgps/fragment/l0;->b:Lcom/join/mgps/dto/CommonGameInfoBean;

    invoke-static {v0, v1, p1}, Lcom/join/mgps/fragment/k0$d;->h(Lcom/join/mgps/fragment/k0$d;Lcom/join/mgps/dto/CommonGameInfoBean;Landroid/view/View;)V

    return-void
.end method
