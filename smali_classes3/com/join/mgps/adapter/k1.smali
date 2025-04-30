.class public final synthetic Lcom/join/mgps/adapter/k1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/join/mgps/adapter/l1;

.field public final synthetic b:Lcom/join/mgps/dto/BTActivityBean;


# direct methods
.method public synthetic constructor <init>(Lcom/join/mgps/adapter/l1;Lcom/join/mgps/dto/BTActivityBean;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/join/mgps/adapter/k1;->a:Lcom/join/mgps/adapter/l1;

    iput-object p2, p0, Lcom/join/mgps/adapter/k1;->b:Lcom/join/mgps/dto/BTActivityBean;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/join/mgps/adapter/k1;->a:Lcom/join/mgps/adapter/l1;

    iget-object v1, p0, Lcom/join/mgps/adapter/k1;->b:Lcom/join/mgps/dto/BTActivityBean;

    invoke-static {v0, v1, p1}, Lcom/join/mgps/adapter/l1;->a(Lcom/join/mgps/adapter/l1;Lcom/join/mgps/dto/BTActivityBean;Landroid/view/View;)V

    return-void
.end method
